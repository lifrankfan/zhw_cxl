#!/bin/bash
    export PATH=/fast-lab-share/software/quartus/24.1/questa_fe/linux_x86_64:$PATH
export LM_LICENSE_FILE=27000@janux-a0.csl.illinois.edu
export MGLS_LICENSE_FILE=27000@janux-a0.csl.illinois.edu
# Cleanup legacy ModelSim libraries
rm -rf work zfp_decode_lib zfp_u2i_lib zfp_inv_lift_lib tennm_ver
vlib work


echo "--- Compiling TB/Wrapper ---"
vlib zfp_decode_lib
vlog -sv -work zfp_decode_lib /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_decode_f32/zfp_decode_f32/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_decode_f32/zfp_decode_f32/*_internal_10/synth/acl_ecc_pkg.sv \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_decode_f32/zfp_decode_f32/*_internal_10/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_decode_f32/zfp_decode_f32/*_internal_10/synth/*.sv

vlib zfp_u2i_lib
vlog -sv -work zfp_u2i_lib /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_uint_to_int_f32/zfp_uint_to_int_f32/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_uint_to_int_f32/zfp_uint_to_int_f32/*_internal_10/synth/acl_ecc_pkg.sv \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_uint_to_int_f32/zfp_uint_to_int_f32/*_internal_10/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_uint_to_int_f32/zfp_uint_to_int_f32/*_internal_10/synth/*.sv

vlib zfp_inv_lift_lib
vlog -sv -work zfp_inv_lift_lib /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_inv_lift_f32/zfp_inv_lift_f32/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_inv_lift_f32/zfp_inv_lift_f32/*_internal_10/synth/acl_ecc_pkg.sv \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_inv_lift_f32/zfp_inv_lift_f32/*_internal_10/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32_tlp.prj/components/zfp_inv_lift_f32/zfp_inv_lift_f32/*_internal_10/synth/*.sv

vlib zfp_u2i_lib
vlog -sv -work zfp_u2i_lib /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32.prj/components/zfp_uint_to_int_f32/zfp_uint_to_int_f32/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32.prj/components/zfp_uint_to_int_f32/zfp_uint_to_int_f32/*_internal_10/synth/acl_ecc_pkg.sv \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32.prj/components/zfp_uint_to_int_f32/zfp_uint_to_int_f32/*_internal_10/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32.prj/components/zfp_uint_to_int_f32/zfp_uint_to_int_f32/*_internal_10/synth/*.sv

vlib zfp_inv_lift_lib
vlog -sv -work zfp_inv_lift_lib /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32.prj/components/zfp_inv_lift_f32/zfp_inv_lift_f32/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32.prj/components/zfp_inv_lift_f32/zfp_inv_lift_f32/*_internal_10/synth/acl_ecc_pkg.sv \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32.prj/components/zfp_inv_lift_f32/zfp_inv_lift_f32/*_internal_10/synth/*.v \
    /fast-lab-share/lifan3/zfp/zhw/src/zfp_decode_f32.prj/components/zfp_inv_lift_f32/zfp_inv_lift_f32/*_internal_10/synth/*.sv

vlog -sv -work work +incdir+. cust_afu_csr_avmm_slave.sv psedu_read_write.sv cal_delay.sv cust_afu_wrapper.sv cust_afu_tb.sv cdc_sync_flop.v
if [ $? -ne 0 ]; then echo "Compile Failed"; exit 1; fi

echo "--- Running Sim ---"
vsim -c -L zfp_decode_lib -L zfp_u2i_lib -L zfp_inv_lift_lib -L altera_mf_ver -L lpm_ver -L sgate_ver -L altera_lnsim_ver -L twentynm_ver -L tennm_ver -suppress 3722,2685 -do "run -all; quit" cust_afu_tb 2>&1 | tee debug_sim.log

echo "--- Checking DBG ---"
grep "DBG_LAT" debug_sim.log | tail -20
echo "--- Extracting Latency Report ---"
grep -A 40 "ZFP FPGA Decompression Latency Report" debug_sim.log | tee fpga_zfp_latency.log
echo ""
echo "--- Results saved to fpga_zfp_latency.log ---"
echo "--- Done ---"
