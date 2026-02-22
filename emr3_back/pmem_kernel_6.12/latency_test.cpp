
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <cstdint>
#include <chrono>
#include <iostream>
#include <thread>

// Register Offsets for psedu_read_write.sv
// Based on cust_afu_csr_avmm_slave.sv:
// 0x00: Func Type (RW)
// 0x08: Page Addr (RW) - Base Address for DMA
// 0x10: Delay (RW)
// 0x18: Test Case (RW) - Selector
// 0x20: Response (RO)
// 0x28: Addr Cnt (RO)
// 0x30: Data Cnt (RO)
// 0x38: Resp Cnt (RO)
// 0x40: ID Cnt (RO)
// 0x48: ID Cnt 1 (RO)
// 0x50: Seed Init (RW)
// 0x58: Num Request (RW)
// 0x60: Addr Range (RW)

// Test Cases from psedu_read_write.sv:
// 1: NC RD random #num_request
// 2: CO RD random #num_request
// 3: CS RD random #num_request
// 4-6: HDM biased reads
// 7-9: Writes (NC, CO, CS)
// Let's use Test Case 2 (CO RD) or similar to read from Host memory.

#define CSR_FUNC_TYPE   0x00
#define CSR_PAGE_ADDR   0x08
#define CSR_TEST_CASE   0x18
#define CSR_NUM_REQ     0x58
#define CSR_ADDR_RANGE  0x60
#define CSR_SEED        0x50

#define START_FLAG      0x1 // We need to write to PageAddr to trigger start_proc?
// Actually cust_afu_wrapper says writing to ANY CSR might trigger things depending on CDC.
// But start_proc comes from cust_afu_csr_avmm_slave.sv

void print_csr(uint8_t *mmio, uint64_t offset, const char *name) {
    uint64_t val = *((volatile uint64_t *)(mmio + offset));
    printf("CSR %s (0x%lx): 0x%lx\n", name, offset, val);
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <phys_addr_of_buffer>\n", argv[0]);
        printf("Example: %s 0xffe00000\n", argv[0]);
        return 1;
    }

    uint64_t phys_addr = strtoull(argv[1], NULL, 0);
    
    // Open MMIO Driver (our char device, or /dev/mem if we had it, but we use nvme_test)
    // Wait, we need to access BAR0. Our nvme_test invokes mmap to map BAR0 at offset 4MB.
    
    int fd = open("/dev/nvme_test", O_RDWR);
    if (fd < 0) {
        perror("Failed to open /dev/nvme_test");
        return 1;
    }

    // Map BAR0 (Offset 4MB = 0x400000)
    // Size 4KB is enough for CSRs
    uint8_t *mmio = (uint8_t *)mmap(NULL, 0x1000, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0x400000);
    if (mmio == MAP_FAILED) {
        perror("Failed to mmap BAR0");
        return 1;
    }

    printf("Mapped BAR0. reading ID...\n");
    print_csr(mmio, CSR_TEST_CASE, "TestCase");

    // Reset / Config
    printf("Configuring Latency Test...\n");
    
    // 1. Set Seed
    *((volatile uint64_t *)(mmio + CSR_SEED)) = 0x1234;
    
    // 2. Set Num Request (e.g., 1024 cache lines)
    *((volatile uint64_t *)(mmio + CSR_NUM_REQ)) = 1024;
    
    // 3. Set Addr Range (Mask)
    *((volatile uint64_t *)(mmio + CSR_ADDR_RANGE)) = 0xFFF; // Small range
    
    // 4. Set Page Addr (Base Physical Address)
    *((volatile uint64_t *)(mmio + CSR_PAGE_ADDR)) = phys_addr;
    
    // 5. Set Test Case (e.g., 2 = Coherent Read)
    // Writing this might NOT trigger start.
    *((volatile uint64_t *)(mmio + CSR_TEST_CASE)) = 2;
    
    printf("Configuration Done. Triggering Start via Page Addr Write...\n");
    
    // In previous analysis, writing Page Addr seemed to trigger start_proc.
    // Let's re-write Page Addr to be sure.
    *((volatile uint64_t *)(mmio + CSR_PAGE_ADDR)) = phys_addr;

    // Poll for completion?
    // psedu_read_write doesn't seem to have a "Done" bit in CSRs visible in the slave map?
    // It has "resp_cnt_out". If this increments, we are winning.
    
    printf("Polling Counters...\n");
    for (int i = 0; i < 10; i++) {
        print_csr(mmio, 0x28, "AddrCnt");
        print_csr(mmio, 0x30, "DataCnt");
        print_csr(mmio, 0x38, "RespCnt");
        usleep(100000);
    }
    
    printf("Test Complete.\n");
    return 0;
}
