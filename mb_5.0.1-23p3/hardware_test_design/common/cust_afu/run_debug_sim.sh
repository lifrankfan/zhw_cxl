#!/bin/bash
export PATH=/fast-lab-share/software/quartus/24.1/modelsim_ase/linuxaloem:$PATH
unset LM_LICENSE_FILE
unset SALT_LICENSE_SERVER
export MGLS_LICENSE_FILE=

# Cleanup locks
find work -name "_lock" -delete 2>/dev/null

echo "--- Compiling TB/Wrapper ---"
vlog -sv -work work +incdir+. cust_afu_csr_avmm_slave.sv psedu_read_write.sv cal_delay.sv cust_afu_wrapper.sv cust_afu_tb.sv cdc_sync_flop.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_ip.prj/components/zfp_decode/zfp_decode/synth/zfp_decode.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_ip.prj/components/zfp_decode/zfp_decode/zfp_decode_internal_10/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_ip.prj/components/zfp_decode/zfp_decode/zfp_decode_internal_10/synth/*.sv \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_uint_to_int_ip.prj/components/zfp_uint_to_int/zfp_uint_to_int/synth/zfp_uint_to_int.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_uint_to_int_ip.prj/components/zfp_uint_to_int/zfp_uint_to_int/zfp_uint_to_int_internal_10/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_uint_to_int_ip.prj/components/zfp_uint_to_int/zfp_uint_to_int/zfp_uint_to_int_internal_10/synth/*.sv \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_inv_lift_ip.prj/components/zfp_inv_lift/zfp_inv_lift/synth/zfp_inv_lift.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_inv_lift_ip.prj/components/zfp_inv_lift/zfp_inv_lift/zfp_inv_lift_internal_10/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_inv_lift_ip.prj/components/zfp_inv_lift/zfp_inv_lift/zfp_inv_lift_internal_10/synth/*.sv
if [ $? -ne 0 ]; then echo "Compile Failed"; exit 1; fi

echo "--- Running Sim ---"
vsim -c -L altera_mf_ver -L lpm_ver -L sgate_ver -L altera_lnsim_ver -L tennm_ver -suppress 3722,2685 -do "run -all; quit" cust_afu_tb 2>&1 | tee debug_sim.log

echo "--- Checking DBG ---"
grep "DBG_LAT" debug_sim.log
echo "--- Checking Latency ---"
grep -E "Latency|PASS|FAIL" debug_sim.log
echo "--- Done ---"
