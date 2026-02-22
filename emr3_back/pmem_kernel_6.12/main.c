#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/mm.h>
#include <asm/cacheflush.h>
#include <linux/moduleparam.h>
#include <linux/virtio.h>  // For virt_to_phys
#include <linux/pci.h>     // For pci_dev, dma_alloc_coherent
#include "cxl_func.h"
#include "nvme.h"

#include <linux/fs.h>      // For file_operations, register_chrdev_region
#include <linux/cdev.h>    // For cdev structure
#include <linux/device.h>  // For class_create, device_create
#include <linux/uaccess.h> // For copy_to_user/copy_from_user

static int cxl_set = 1; // Default value
module_param(cxl_set, int, 0644);
MODULE_PARM_DESC(cxl_set, "cxl_set parameter to control behavior (0, 1, or other values)");

// DMA Buffers
#define BUF_SIZE (2 * 1024 * 1024)
struct pci_dev *zfp_pdev = NULL;
struct pci_dev *cxl_pdev_0 = NULL; // Dev0 for CXL registers
void *kbuf_0 = NULL;
void *kbuf_1 = NULL;
dma_addr_t dma_addr_0;
dma_addr_t dma_addr_1;

// Global BAR info
resource_size_t d0_b0_start = 0, d0_b0_len = 0;
resource_size_t d0_b2_start = 0, d0_b2_len = 0;
resource_size_t d1_b0_start = 0, d1_b0_len = 0;
resource_size_t d1_b2_start = 0, d1_b2_len = 0;

// Character device variables
static dev_t dev_num;
static struct cdev my_cdev;
static struct class *my_class;
static struct device *my_device;
#define DEVICE_NAME "nvme_test"
#define CLASS_NAME  "nvme_test_class"

// mmap function implementation
static int my_mmap(struct file *filp, struct vm_area_struct *vma)
{
    unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
    unsigned long size = vma->vm_end - vma->vm_start;
    int ret;

    pr_info("ZY: my_mmap request: offset=0x%lx size=0x%lx\n", offset, size);

    if (offset == 0) {
        // Map Input Buffer (Coherent DMA) - Uses dma_addr_0
        pr_info("ZY: Mapping Input Buffer (0x000000)\n");
        vma->vm_pgoff = 0; // Reset offset for dma_mmap_coherent
        ret = dma_mmap_coherent(&zfp_pdev->dev, vma, kbuf_0, dma_addr_0, size);
        if (ret < 0) pr_err("ZY: dma_mmap_coherent(Input) failed: %d\n", ret);
        return ret;
    } else if (offset == 2 * 1024 * 1024) { // 2MB offset
        // Map Output Buffer (Coherent DMA) - Uses dma_addr_1
        pr_info("ZY: Mapping Output Buffer (0x200000)\n");
        vma->vm_pgoff = 0; // Reset offset for dma_mmap_coherent
        ret = dma_mmap_coherent(&zfp_pdev->dev, vma, kbuf_1, dma_addr_1, size);
        if (ret < 0) pr_err("ZY: dma_mmap_coherent(Output) failed: %d\n", ret);
        return ret;
    } else if (offset == 4 * 1024 * 1024) { // 4MB offset
        // Map FPGA Registers (Dev1 BAR0 - 0x213effc00000)
        // Use Global d1_b0_start which was confirmed correct by scan
        phys_addr_t paddr = d1_b0_start ? d1_b0_start : 0x213effc00000; 
        
        pr_info("ZY: Mapping Registers (0x400000) -> Phys 0x%llx\n", (u64)paddr);
        
        vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
        if (remap_pfn_range(vma, vma->vm_start, paddr >> PAGE_SHIFT, size, vma->vm_page_prot)) {
            pr_err("ZY: remap_pfn_range(Registes) failed\n");
            return -EAGAIN;
        }
    } else if (offset == 8 * 1024 * 1024) { // 8MB offset
        // Map CXL Control Registers (Dev0 BAR0 - e.g. 0xe8800000)
        phys_addr_t paddr = d0_b0_start ? d0_b0_start : 0xe8800000;
        
        pr_info("ZY: Mapping CXL Control (0x800000) -> Phys 0x%llx\n", (u64)paddr);
        
        vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
        if (remap_pfn_range(vma, vma->vm_start, paddr >> PAGE_SHIFT, size, vma->vm_page_prot)) {
            pr_err("ZY: remap_pfn_range(CXL Ctrl) failed\n");
            return -EAGAIN;
        }
    } else {
        pr_err("ZY: my_mmap invalid offset 0x%lx\n", offset);
        return -EINVAL;
    }

    return 0;
}

static struct file_operations fops = {
    .owner = THIS_MODULE,
    .mmap = my_mmap,
};

static int __init my_module_init(void)
{
    int ret;

    // 1. Find and Enable Host PCI Device (ZFP Function 1: 94:00.1)
    zfp_pdev = pci_get_domain_bus_and_slot(0, 0x94, 1);
    if (!zfp_pdev) {
        pr_err("ZY: Failed to find ZFP PCI device (94:00.1)\n");
        return -ENODEV;
    }

    if (pci_enable_device(zfp_pdev)) {
        pr_err("ZY: Failed to enable ZFP PCI device\n");
        return -EIO;
    }
    
    pci_set_master(zfp_pdev); // Enable Bus Master for DMA
    dma_set_mask_and_coherent(&zfp_pdev->dev, DMA_BIT_MASK(64));
    
    d1_b0_start = pci_resource_start(zfp_pdev, 0);
    d1_b0_len = pci_resource_len(zfp_pdev, 0);
    d1_b2_start = pci_resource_start(zfp_pdev, 2);
    d1_b2_len = pci_resource_len(zfp_pdev, 2);
    pr_info("ZY: Dev1 (94:00.1) Enabled. BAR0: 0x%llx, BAR2: 0x%llx\n", (u64)d1_b0_start, (u64)d1_b2_start);

    // 1b. Find and Enable CXL Control Device (Function 0: 94:00.0)
    cxl_pdev_0 = pci_get_domain_bus_and_slot(0, 0x94, 0);
    if (cxl_pdev_0) {
        if (pci_enable_device(cxl_pdev_0)) {
            pr_err("ZY: Failed to enable CXL PCI device (94:00.0)\n");
        } else {
            u16 cmd;
            pci_read_config_word(cxl_pdev_0, PCI_COMMAND, &cmd);
            pr_info("ZY: Dev0 Initial CMD: 0x%x\n", cmd);
            
            pci_set_master(cxl_pdev_0);
            // Verify/Force Memory Access
            pci_write_config_word(cxl_pdev_0, PCI_COMMAND, cmd | PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);
            
            pci_read_config_word(cxl_pdev_0, PCI_COMMAND, &cmd);
            pr_info("ZY: Dev0 Final CMD: 0x%x\n", cmd);
            
            d0_b0_start = pci_resource_start(cxl_pdev_0, 0);
            d0_b0_len = pci_resource_len(cxl_pdev_0, 0);
            d0_b2_start = pci_resource_start(cxl_pdev_0, 2);
            d0_b2_len = pci_resource_len(cxl_pdev_0, 2);
            
            pr_info("ZY: Dev0 (94:00.0) Enabled. BAR0: 0x%llx, BAR2: 0x%llx\n", (u64)d0_b0_start, (u64)d0_b2_start);
        }
    } else {
        pr_warn("ZY: Could not find CXL PCI device (94:00.0)\n");
    }

    // 2. Allocate Coherent DMA Buffers
    kbuf_0 = dma_alloc_coherent(&zfp_pdev->dev, BUF_SIZE, &dma_addr_0, GFP_KERNEL);
    if (!kbuf_0) {
        pr_err("ZY: Failed to allocate DMA Buffer 0\n");
        goto disable_pci;
    }
    
    kbuf_1 = dma_alloc_coherent(&zfp_pdev->dev, BUF_SIZE, &dma_addr_1, GFP_KERNEL);
    if (!kbuf_1) {
        pr_err("ZY: Failed to allocate DMA Buffer 1\n");
        goto free_buf0;
    }

    // PRINT THE DMA ADDRESSES FOR THE USER
    pr_info("ZY: Input Buffer DMA Addr: 0x%llx\n", (unsigned long long)dma_addr_0);
    pr_info("ZY: Output Buffer DMA Addr: 0x%llx\n", (unsigned long long)dma_addr_1);
    pr_info("ZY: ZFP Device Enabled. Ready for Host App.\n");

    // 3. Register character device
    ret = alloc_chrdev_region(&dev_num, 0, 1, DEVICE_NAME);
    if (ret < 0) {
        pr_err("ZY: Failed to allocate char device region\n");
        goto free_buf1;
    }

    cdev_init(&my_cdev, &fops);
    ret = cdev_add(&my_cdev, dev_num, 1);
    if (ret < 0) {
        pr_err("ZY: Failed to add cdev\n");
        goto unregister_chrdev;
    }

    my_class = class_create(CLASS_NAME); 
    if (IS_ERR(my_class)) {
        pr_err("ZY: Failed to create class\n");
        goto del_cdev;
    }

    my_device = device_create(my_class, NULL, dev_num, NULL, DEVICE_NAME);
    if (IS_ERR(my_device)) {
        pr_err("ZY: Failed to create device\n");
        goto destroy_class;
    }

    // --- Dual-Stage Initialization (Final) ---
    if (d0_b0_start) {
        // Map 2MB to reach both blocks
        void __iomem *bar0 = ioremap(d0_b0_start, 0x200000);
        if (bar0) {
            
            // 1. CXL Component Registers (at 0x154000)
            void __iomem *cxl_regs = bar0 + 0x154000;
            pr_info("ZY: [Stage 1] Init CXL Component Registers at 0x154000...\n");
            
            writeq(0x0, cxl_regs + 0x100);    // Reset Init
            // ReqID 0x9401 (Bus 94, Dev 00, Func 1) for ZFP DMA
            writeq(0x9401, cxl_regs + 0x18);  // Set ReqID (0x9401)
            writeq(0x0, cxl_regs + 0x20);     // Set Block Index
            writeq(0x1, cxl_regs + 0x100);    // Set Init
            
            // 2. Custom AFU Registers (at 0x148000) - Test Harness
            void __iomem *afu_regs = bar0 + 0x148000;
            
            // 1. Set Test Case (0x18)
            writeq(0x1, afu_regs + 0x18);
            
            // 2. Set Page Addr (0x08) - Triggers START of Test Harness
            writeq(0x2, afu_regs + 0x08);
            
            iounmap(bar0);
        }
    }
    
    // --- Scan Dev1 BAR0 (Likely ZFP Target) ---
    if (d1_b0_start) {
        void __iomem *bar0_d1 = ioremap(d1_b0_start, 0x10000); // Map 64KB
        if (bar0_d1) {
            pr_info("ZY: Scanning Dev1 (94:00.1) BAR0 for ZFP Registers...\n");
            
            // Check 0x00, 0x08, 0x20 (Original ZFP Map)
            pr_info("ZY: D1_BAR0[0x00] (Dst?): 0x%llx\n", readq(bar0_d1 + 0x00));
            pr_info("ZY: D1_BAR0[0x08] (Src?): 0x%llx\n", readq(bar0_d1 + 0x08));
            pr_info("ZY: D1_BAR0[0x18] (Size?): 0x%llx\n", readq(bar0_d1 + 0x18)); 
            pr_info("ZY: D1_BAR0[0x20] (Ctrl?): 0x%llx\n", readq(bar0_d1 + 0x20));
            
            // Try Writing to 0x20 (Start)
            writeq(0xDEADBEEF, bar0_d1 + 0x20);
            pr_info("ZY: D1_BAR0[0x20] Wrote DEADBEEF -> Read 0x%llx\n", readq(bar0_d1 + 0x20));
            
            iounmap(bar0_d1);
        } else {
            pr_err("ZY: Failed to ioremap Dev1 BAR0\n");
        }
    }

    // 4. Run any specific tests if requested (optional)
    switch(cxl_set) {
        case 5: // TEST ALL BARS (Sweep)
            {
                void __iomem *ptr;
                int i;
                
                // --- Dev0 BAR0 ---
                if (d0_b0_start) {
                    ptr = ioremap(d0_b0_start, 0x100); 
                    if (ptr) {
                        pr_info("ZY: Scanning Dev0 BAR0 (32-bit)...\n");
                        for (i = 0; i < 0x20; i += 4) {
                            pr_info("ZY: D0_B0[0x%x] = 0x%08x\n", i, readl(ptr + i));
                        }
                        iounmap(ptr);
                    }
                }
                
                // --- Dev0 BAR2 ---
                if (d0_b2_start) {
                    ptr = ioremap(d0_b2_start, 0x100);
                    if (ptr) {
                        pr_info("ZY: Scanning Dev0 BAR2 (32-bit)...\n");
                        for (i = 0; i < 0x20; i += 4) {
                            u32 val = readl(ptr + i);
                            writel(0xFEEDFACE, ptr + i);
                            u32 val2 = readl(ptr + i);
                            pr_info("ZY: D0_B2[0x%x]: 0x%08x -> Wrote FEEDFACE -> 0x%08x\n", i, val, val2);
                        }
                        iounmap(ptr);
                    }
                }

                // --- Dev1 BAR0 ---
                if (d1_b0_start) {
                    ptr = ioremap(d1_b0_start, 0x1000);
                    if (ptr) {
                        pr_info("ZY: Scanning Dev1 BAR0 (32-bit, 0x0-0x200)...\n");
                        for (i = 0; i < 0x200; i += 4) {
                             u32 val = readl(ptr + i);
                             if (val != 0) {
                                 pr_info("ZY: D1_B0[0x%x] = 0x%08x\n", i, val);
                             }
                        }
                        iounmap(ptr);
                    }
                }
                
                // --- Dev1 BAR2 ---
                if (d1_b2_start) {
                    ptr = ioremap(d1_b2_start, 0x100);
                    if (ptr) {
                        pr_info("ZY: Scanning Dev1 BAR2 (32-bit)...\n");
                         for (i = 0; i < 0x20; i += 4) {
                             pr_info("ZY: D1_B2[0x%x] = 0x%08x\n", i, readl(ptr + i));
                        }
                        iounmap(ptr);
                    }
                }

            }
            break;
    }
    
    return 0;

destroy_class:
    class_destroy(my_class);
del_cdev:
    cdev_del(&my_cdev);
unregister_chrdev:
    unregister_chrdev_region(dev_num, 1);
free_buf1:
    dma_free_coherent(&zfp_pdev->dev, BUF_SIZE, kbuf_1, dma_addr_1);
free_buf0:
    dma_free_coherent(&zfp_pdev->dev, BUF_SIZE, kbuf_0, dma_addr_0);
disable_pci:
    pci_disable_device(zfp_pdev);
    if (cxl_pdev_0) pci_disable_device(cxl_pdev_0); 
    return -1;
}

static void __exit my_module_exit(void)
{
    device_destroy(my_class, dev_num);
    class_destroy(my_class);
    cdev_del(&my_cdev);
    unregister_chrdev_region(dev_num, 1);

    if (kbuf_0) dma_free_coherent(&zfp_pdev->dev, BUF_SIZE, kbuf_0, dma_addr_0);
    if (kbuf_1) dma_free_coherent(&zfp_pdev->dev, BUF_SIZE, kbuf_1, dma_addr_1);
    
    if (zfp_pdev) pci_disable_device(zfp_pdev);
    if (cxl_pdev_0) pci_disable_device(cxl_pdev_0); 
    
    printk(KERN_INFO "ZY: Kernel module unloaded, pages freed.\n");
}

module_init(my_module_init);
module_exit(my_module_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Lifan3");
MODULE_DESCRIPTION("NVMe/ZFP Kernel Module with DMA Support");
MODULE_VERSION("1.1");
