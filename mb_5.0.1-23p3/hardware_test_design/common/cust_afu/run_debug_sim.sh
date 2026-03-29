#!/bin/bash
    export PATH=/fast-lab-share/software/quartus/24.1/questa_fe/linux_x86_64:$PATH
export LM_LICENSE_FILE=27000@janux-a0.csl.illinois.edu
export MGLS_LICENSE_FILE=27000@janux-a0.csl.illinois.edu
# Cleanup legacy ModelSim libraries
rm -rf work tennm_ver
vlib work

echo "--- Compiling ZHW Decoder (SystemC-clang generated) ---"
vlog -sv -work work zhw_decode_fp32_2d.sv

echo "--- Compiling TB/Wrapper ---"
vlog -sv -work work +incdir+. cust_afu_csr_avmm_slave.sv psedu_read_write.sv cal_delay.sv cust_afu_wrapper.sv cust_afu_tb.sv cdc_sync_flop.v
if [ $? -ne 0 ]; then echo "Compile Failed"; exit 1; fi

echo "--- Running Sim ---"
vsim -c -L altera_mf_ver -L lpm_ver -L sgate_ver -L altera_lnsim_ver -L twentynm_ver -L tennm_ver -suppress 3722,2685 -do "run -all; quit" cust_afu_tb 2>&1 | tee debug_sim.log

echo "--- Checking DBG ---"
grep "DBG_LAT" debug_sim.log | tail -20
echo "--- Extracting Latency Report ---"
grep -A 40 "ZFP FPGA Decompression Latency Report" debug_sim.log | tee fpga_zfp_latency.log
echo ""
echo "--- Results saved to fpga_zfp_latency.log ---"
echo "--- Done ---"
