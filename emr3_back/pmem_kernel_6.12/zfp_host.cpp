
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <cstring>
#include <cstdint>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <cstdlib>
#include <cstdio>
#include <thread>
#include <chrono>

// Configuration Matches nvme.h
// Configuration Matches Device 94:00.1 BAR0
#define FPGA_BAR_0_ADDR 0x213effc00000 
#define FPGA_BAR_SIZE   0x200000
#define PAGE_SIZE       4096

// CSR Offsets (Original Map inferred from behavior)
#define CSR_DST_LO      0x00
#define CSR_SRC_LO      0x08
#define CSR_STATUS      0x10
#define CSR_SIZE        0x18
#define CSR_CTRL        0x20
#define CSR_LATENCY     0x28

using namespace std;

// Helper to get Phys Addr from dmesg (simulated interaction)
// In a real scenario, this might read a sysfs file or user provides it.
// For now, we ask user to provide them as args.
uint64_t input_phys_addr = 0;
uint64_t output_phys_addr = 0;

void usage(const char* prog) {
    cerr << "Usage: " << prog << " <test_data_dir> <input_phys_addr> <output_phys_addr>" << endl;
    cerr << "Example: " << prog << " /path/to/test_data 0x1234000 0x5678000" << endl;
}

// Function to map memory
// use_dev_mem: true for /dev/mem (Requires STRICT_DEVMEM=n or permitted range), 
//              false for /dev/nvme_test (Kernel Driver defines offsets)
void* map_phys(uint64_t base, size_t size, bool use_dev_mem) {
    const char* dev_path = use_dev_mem ? "/dev/mem" : "/dev/nvme_test";
    int mem_fd = open(dev_path, O_RDWR | O_SYNC);
    if (mem_fd < 0) {
        perror("open device");
        cerr << "Failed to open " << dev_path << endl;
        return nullptr;
    }

    // For /dev/nvme_test: 
    // base 0 -> Input Buffer
    // base 2MB -> Output Buffer
    // base 4MB -> BAR0 (0x213effc00000)
    // base 6MB -> BAR2 (0x213effa00000)

    void* mapped_base = mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED, mem_fd, base);
    if (mapped_base == MAP_FAILED) {
        perror("mmap");
        close(mem_fd);
        return nullptr;
    }
    close(mem_fd);
    return mapped_base;
}

// Function to write specific value to register (64-bit)
void write_reg(void* base, uint32_t offset, uint64_t val) {
    *((volatile uint64_t*)((uint8_t*)base + offset)) = val;
}

// Function to read specific value from register (64-bit)
uint64_t read_reg(void* base, uint32_t offset) {
    return *((volatile uint64_t*)((uint8_t*)base + offset));
}

int main(int argc, char** argv) {
    if (argc != 4) {
        usage(argv[0]);
        return 1;
    }

    string test_data_dir = argv[1];
    input_phys_addr = strtoull(argv[2], NULL, 0);
    output_phys_addr = strtoull(argv[3], NULL, 0);

    // Hardcoded test case for now: ISABEL 1D
    string zfp_file = test_data_dir + "/isabel/ISABEL-4x4096_2D_rate_64.zfp";
    string bod_file = test_data_dir + "/isabel/ISABEL-4x4096_2D_rate_64_zfp.bod";

    // 1. Load Input Data (.zfp)
    ifstream zfp_in(zfp_file, ios::binary | ios::ate);
    if (!zfp_in) { cerr << "Failed to open " << zfp_file << endl; return 1; }
    size_t zfp_size = zfp_in.tellg();
    zfp_in.seekg(0, ios::beg);
    vector<uint8_t> zfp_data(zfp_size);
    if (!zfp_in.read((char*)zfp_data.data(), zfp_size)) { cerr << "Read failed" << endl; return 1; }

    // 2. Load Golden output (.bod)
    ifstream bod_in(bod_file, ios::binary | ios::ate);
    if (!bod_in) { cerr << "Failed to open " << bod_file << endl; return 1; }
    size_t bod_size = bod_in.tellg();
    bod_in.seekg(0, ios::beg);
    vector<uint64_t> golden_data(bod_size / 8);
    if (!bod_in.read((char*)golden_data.data(), bod_size)) { cerr << "Read failed" << endl; return 1; }

    cout << "Loaded " << zfp_size << " bytes of compressed data." << endl;
    cout << "Expecting " << golden_data.size() << " doubles (" << bod_size << " bytes)." << endl;

    // 3. Map Input Buffer and Copy Data (Use /dev/nvme_test, offset 0)
    cout << "Mapping Input Buffer (offset 0)" << endl;
    void* input_buf_virt = map_phys(0, 2 * 1024 * 1024, false); // false = use /dev/nvme_test
    if (!input_buf_virt) return 1;
    memcpy(input_buf_virt, zfp_data.data(), zfp_size);

    // 4. Map Output Buffer (Back to Main Code)
    cout << "Mapping Output Buffer (offset 0x200000)" << endl;
    void* output_buf_virt = map_phys(2 * 1024 * 1024, 2 * 1024 * 1024, false); // false = use /dev/nvme_test
    if (!output_buf_virt) return 1;
    // Pre-fill with pattern to detect partial writes
    memset(output_buf_virt, 0xCC, bod_size);

    // 5. Map FPGA BAR0 (Via /dev/nvme_test, offset 4MB)
    cout << "Mapping FPGA BAR0 (Driver Offset 4MB -> Phys 0x213effc00000)" << endl;
    // use_dev_mem = false -> Use /dev/nvme_test
    void* fpga_bar = map_phys(4 * 1024 * 1024, FPGA_BAR_SIZE, false); 
    if (!fpga_bar) return 1;

    // 6. Configure FPGA (Original Map: 00=Dst, 08=Src, 18=Size, 20=Ctrl)
    cout << "Configuring FPGA (Original Map)..." << endl;
    
    // Reset Ctrl first to be safe
    write_reg(fpga_bar, CSR_CTRL, 0);
    
    write_reg(fpga_bar, CSR_DST_LO, output_phys_addr); 
    write_reg(fpga_bar, CSR_SRC_LO, input_phys_addr);
    write_reg(fpga_bar, CSR_SIZE, zfp_size);           
    
    // Verify registers
    cout << "Verifying Registers..." << endl;
    cout << "DST_LO (0x00): 0x" << hex << read_reg(fpga_bar, CSR_DST_LO) << endl;
    cout << "SRC_LO (0x08): 0x" << hex << read_reg(fpga_bar, CSR_SRC_LO) << endl;
    cout << "SIZE   (0x18): 0x" << hex << read_reg(fpga_bar, CSR_SIZE) << endl;
    cout << "CTRL   (0x20): 0x" << hex << read_reg(fpga_bar, CSR_CTRL) << endl;

    // 7. Start Sequence
    cout << "Trigger: Writing 1 to CSR_CTRL (0x20)..." << endl;
    write_reg(fpga_bar, CSR_CTRL, 1);
    
    // Poll
    int done = 0;
    for(int i=0; i<200; i++) {
        uint64_t ctrl = read_reg(fpga_bar, CSR_CTRL);
        uint64_t status = read_reg(fpga_bar, CSR_STATUS); // 0x10
        
        // Check if output buffer was touched (check first long)
        uint64_t first_word = *((volatile uint64_t*)output_buf_virt);
        
        if (first_word != 0xCCCCCCCCCCCCCCCC) {
             cout << "DATA APPEARED at iter " << dec << i << "!" << endl;
             done = 1;
             break;
        }
        
        if (i % 20 == 0) cout << "Poll[" << dec << i << "]: Ctrl(20)=" << hex << ctrl << " Stat(10)=" << status << endl;
        
        this_thread::sleep_for(chrono::milliseconds(10));
    }
    
    if (!done) cout << "No data appeared in output buffer." << endl;

    // 9. Read Latency
    uint32_t latency = read_reg(fpga_bar, CSR_LATENCY);
    cout << "Reported Latency: " << dec << latency << " cycles" << endl;

    // 10. Verify
    cout << "Verifying..." << endl;
    uint64_t* result_data = (uint64_t*)output_buf_virt;
    int errors = 0;
    int untouched = 0;
    for (size_t i = 0; i < golden_data.size(); ++i) {
        if (result_data[i] == 0xCCCCCCCCCCCCCCCC) {
            untouched++;
        }
        if (result_data[i] != golden_data[i]) {
            if (errors < 10) {
                cout << "Mismatch at " << i << ": Expected 0x" << hex << golden_data[i] 
                     << " Got 0x" << result_data[i] << endl;
            }
            errors++;
        }
    }
    
    if (untouched > 0) cout << "WARNING: " << dec << untouched << " dwords were UTOUCHED (0xCC)." << endl;

    if (errors == 0) {
        cout << "PASS: All " << dec << golden_data.size() << " outputs match." << endl;
    } else {
        cout << "FAIL: " << dec << errors << " errors found." << endl;
    }

    return 0;
}
