
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

// Configuration Matches Device 94:00.1 BAR0
#define FPGA_BAR_SIZE   0x200000

// CSR Offsets (Compatible with cust_afu_csr_avmm_slave.sv)
#define CSR_FUNC_TYPE   0x00
#define CSR_SRC_ADDR    0x08  // page_addr_0, Triggers Start if written!
#define CSR_DELAY       0x10  // delay_out
#define CSR_TEST_CASE   0x18  // test_case
#define CSR_RESP        0x20  // resp_out
#define CSR_DST_ADDR    0x50  // seed_init (repurposed for ZFP Dst in pseudo_read_write)
#define CSR_NUM_REQ     0x58  // num_request
#define CSR_LAT_DECODE   0x68  // Per-stage: decode (bit-plane)
#define CSR_LAT_UINT2INT 0x70  // Per-stage: uint-to-int
#define CSR_LAT_INVLIFT  0x78  // Per-stage: inverse lift

using namespace std;

// Helper to get Phys Addr from dmesg (simulated interaction)
uint64_t input_phys_addr = 0;
uint64_t output_phys_addr = 0;

void usage(const char* prog) {
    cerr << "Usage: " << prog << " <test_data_dir> <input_phys_addr> <output_phys_addr>" << endl;
    cerr << "Example: " << prog << " /path/to/test_data 0x1234000 0x5678000" << endl;
}

// Function to map memory
// use_dev_mem: true for /dev/mem, false for /dev/nvme_test
void* map_phys(uint64_t base, size_t size, bool use_dev_mem) {
    const char* dev_path = use_dev_mem ? "/dev/mem" : "/dev/nvme_test";
    int mem_fd = open(dev_path, O_RDWR | O_SYNC);
    if (mem_fd < 0) {
        perror("open device");
        cerr << "Failed to open " << dev_path << endl;
        return nullptr;
    }

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

    // Calculate number of cachelines (4096 bytes / 64 = 64 lines per page? No, ZFP size varies)
    // The previous code used zfp_size as size. 
    // In `psedu_read_write.sv`, `num_request` is used to count loop iterations.
    // Case 20 logic: 
    // `state == STATE_ZFP_RD_REQ`: `rw_cnt` goes from 0 to `num_request`.
    // Each request reads 64 bytes (cacheline). 
    // So `num_request` should be `zfp_size / 64`.
    
    uint64_t num_cachelines = (zfp_size + 63) / 64; 
    
    cout << "Loaded " << zfp_size << " bytes." << endl;
    cout << "Num Cachelines: " << num_cachelines << endl;

    // 3. Map Input Buffer and Copy Data (Use /dev/nvme_test, offset 0)
    cout << "Mapping Input Buffer (offset 0)" << endl;
    void* input_buf_virt = map_phys(0, 2 * 1024 * 1024, false); 
    if (!input_buf_virt) return 1;
    memcpy(input_buf_virt, zfp_data.data(), zfp_size);

    // 4. Map Output Buffer 
    cout << "Mapping Output Buffer (offset 0x200000)" << endl;
    void* output_buf_virt = map_phys(2 * 1024 * 1024, 2 * 1024 * 1024, false); 
    if (!output_buf_virt) return 1;
    memset(output_buf_virt, 0xCC, bod_size);

    // 5. Map FPGA BAR0 (Via /dev/nvme_test, offset 4MB)
    cout << "Mapping FPGA BAR0 (Driver Offset 4MB -> Phys 0x213effc00000)" << endl;
    void* fpga_bar = map_phys(4 * 1024 * 1024, FPGA_BAR_SIZE, false); 
    if (!fpga_bar) return 1;

    // 6. Configure FPGA
    cout << "Configuring FPGA..." << endl;
    
    // Write Test Case 20 (0x18)
    write_reg(fpga_bar, CSR_TEST_CASE, 20);
    
    // Write Destination Addr (0x50) (Used as seed_init in CSR logic, mapped to dst in pseudo_read_write for Case 20)
    write_reg(fpga_bar, CSR_DST_ADDR, output_phys_addr);
    
    // Write Num Requests (0x58)
    write_reg(fpga_bar, CSR_NUM_REQ, num_cachelines);
    
    // Start Trigger: Write Source Address to 0x08
    // cust_afu_csr_avmm_slave.sv: writing to 0x08 sets o_start_proc = 1
    cout << "Trigger: Writing Source Addr to 0x08..." << endl;
    write_reg(fpga_bar, CSR_SRC_ADDR, input_phys_addr);

    // Poll
    int done = 0;
    for(int i=0; i<200; i++) {
        // Check local buffer (optional, but good for verification)
        uint64_t first_word = *((volatile uint64_t*)output_buf_virt);
        if (first_word != 0xCCCCCCCCCCCCCCCC) {
             cout << "DATA APPEARED at iter " << dec << i << "!" << endl;
             done = 1;
             break;
        }
        this_thread::sleep_for(chrono::milliseconds(10));
    }
    
    // If polling memory fails, wait a bit more to be safe
    if (!done) {
        cout << "No data appeared in output buffer (or might be delayed)." << endl;
        this_thread::sleep_for(chrono::seconds(1));
    }

    // 9. Read Latency from 0x10
    uint64_t latency = read_reg(fpga_bar, CSR_DELAY);
    cout << "Reported Latency (0x10): " << dec << latency << " cycles" << endl;
    
    uint64_t resp_cnt = read_reg(fpga_bar, CSR_RESP); // Using 0x20 (resp_reg) which is mapped to resp_out which is driven by result_h in cal_delay
    // Wait, in cal_delay: result_h is driven by `resp_cnt` logic? No.
    // result_h is a separate counter.
    // In cal_delay for case 20: I didn't assign result_h_next.
    // `result_h_next` keeps value if not assigned in `else` block?
    // Let's check cal_delay again...
    // But CSR 0x20 is `resp_reg` connected to `resp_out`. `resp_out` connected to `result_h` of cal_delay.
    
    cout << "Response Count/Debug (0x20): " << dec << resp_cnt << endl;

    // Per-stage latencies
    uint64_t lat_decode   = read_reg(fpga_bar, CSR_LAT_DECODE);
    uint64_t lat_uint2int = read_reg(fpga_bar, CSR_LAT_UINT2INT);
    uint64_t lat_invlift  = read_reg(fpga_bar, CSR_LAT_INVLIFT);
    cout << "\n=== Per-Stage Latencies ===" << endl;
    cout << "  Decode (0x68):     " << dec << lat_decode   << " cycles" << endl;
    cout << "  Uint2Int (0x70):   " << dec << lat_uint2int << " cycles" << endl;
    cout << "  InvLift (0x78):    " << dec << lat_invlift  << " cycles" << endl;
    cout << "  Stage Sum:         " << dec << (lat_decode + lat_uint2int + lat_invlift) << " cycles" << endl;

    // 10. Verify Data
    cout << "Verifying..." << endl;
    uint64_t* result_data = (uint64_t*)output_buf_virt;
    int errors = 0;
    for (size_t i = 0; i < golden_data.size(); ++i) {
        if (result_data[i] != golden_data[i]) {
            if (errors < 5) {
                cout << "Mismatch at " << i << ": Expected 0x" << hex << golden_data[i] 
                     << " Got 0x" << result_data[i] << endl;
            }
            errors++;
        }
    }

    if (errors == 0) {
        cout << "PASS: All outputs match." << endl;
    } else {
        cout << "FAIL: " << dec << errors << " errors found." << endl;
    }

    return 0;
}
