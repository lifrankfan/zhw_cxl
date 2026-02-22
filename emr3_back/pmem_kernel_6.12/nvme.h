#ifndef NVME_H
#define NVME_H

//#define PCI_BAR_ADDRESS 0xfad10000
//#define PCI_BAR_ADDRESS 0xfab10000
// #define PCI_BAR_ADDRESS 0x95100000
// #define PCI_BAR_SIZE 0x10000
// NVMe at 05:00.0
#define PCI_BAR_ADDRESS 0xa5600000
#define PCI_BAR_SIZE 0x4000

// #define FPGA_BUS_ID 0x43
// #define FPGA_BAR_0_ADDRESS 0x20beffc00000
// #define FPGA_BAR_1_ADDRESS 0x20beffa00000

// Intel Agilex 7 CXL FPGA at 94:00.0
// Intel Agilex 7 CXL FPGA at 94:00.0
#define FPGA_BUS_ID 0x94
// Dev0 BAR0 (CXL Control)
// #define FPGA_BAR_0_ADDRESS 0xe8800000

// Dev1 BAR0 (ZFP Registers) - Confirmed Address
#define FPGA_BAR_0_ADDRESS 0x213effc00000
#define FPGA_BAR_1_ADDRESS 0x213effc00000

#endif // NVME_H
