#!/bin/bash
set -x

# ZFP Per-Stage Latency Measurement Simulation
# Uses 3 split HLS IPs: zfp_decode, zfp_uint_to_int, zfp_inv_lift
# Simulator: ModelSim ASE (Quartus 24.1)

# Environment setup
export PATH=/fast-lab-share/software/quartus/24.1/modelsim_ase/linuxaloem:$PATH
unset LM_LICENSE_FILE
unset SALT_LICENSE_SERVER
export MGLS_LICENSE_FILE=

# Force clean recompile
rm -rf work

export QUARTUS_ROOT=/fast-lab-share/software/quartus/24.1/quartus

# Clean up previous simulation
rm -rf work common_infra
vlib work
mkdir -p common_infra

# ----------------------------- Compile Libraries -----------------------------
echo "Compiling Libraries..."
vlog -work work $QUARTUS_ROOT/eda/sim_lib/altera_mf.v
vlog -work work $QUARTUS_ROOT/eda/sim_lib/220model.v
vlog -work work $QUARTUS_ROOT/eda/sim_lib/sgate.v
vlog -sv -work work $QUARTUS_ROOT/eda/sim_lib/altera_lnsim.sv
vlog -sv -work work $QUARTUS_ROOT/eda/sim_lib/tennm_atoms.sv

# ----------------------------- Copy HLS IP Files -----------------------------
S1_INT=zfp_decode_ip.prj/components/zfp_decode/zfp_decode/zfp_decode_internal_10/synth
S2_INT=zfp_uint_to_int_ip.prj/components/zfp_uint_to_int/zfp_uint_to_int/zfp_uint_to_int_internal_10/synth
S3_INT=zfp_inv_lift_ip.prj/components/zfp_inv_lift/zfp_inv_lift/zfp_inv_lift_internal_10/synth

echo "Copying HLS IP files to common_infra (deduplicating)..."
# Copy .sv files — use cp -n to avoid overwriting identical shared files
cp -n $S1_INT/*.sv common_infra/ 2>/dev/null
cp -n $S2_INT/*.sv common_infra/ 2>/dev/null
cp -n $S3_INT/*.sv common_infra/ 2>/dev/null

# Copy .v files — same dedup
cp -n $S1_INT/*.v common_infra/ 2>/dev/null
cp -n $S2_INT/*.v common_infra/ 2>/dev/null
cp -n $S3_INT/*.v common_infra/ 2>/dev/null

# Copy .svh files if they exist
cp -n $S1_INT/*.svh common_infra/ 2>/dev/null
cp -n $S2_INT/*.svh common_infra/ 2>/dev/null
cp -n $S3_INT/*.svh common_infra/ 2>/dev/null

# Copy top-level internal wrappers
cp -n zfp_decode_ip.prj/components/zfp_decode/zfp_decode_internal.v common_infra/zfp_decode_internal.v
cp -n zfp_uint_to_int_ip.prj/components/zfp_uint_to_int/zfp_uint_to_int_internal.v common_infra/zfp_uint_to_int_internal.v
cp -n zfp_inv_lift_ip.prj/components/zfp_inv_lift/zfp_inv_lift_internal.v common_infra/zfp_inv_lift_internal.v

# CDC sync flop
cat > common_infra/cdc_sync_flop.sv << 'EOF_CDC'
module cdc_sync_flop #(
    parameter RESET_LEVEL = 0,
    parameter WIDTH = 1
)(
    input  logic clk,
    input  logic reset,
    input  logic [WIDTH-1:0] i_data,
    output logic [WIDTH-1:0] o_data
);
    logic [WIDTH-1:0] sync_r1;
    always_ff @(posedge clk or negedge reset) begin
        if (!reset) begin
            sync_r1 <= {WIDTH{RESET_LEVEL[0]}};
            o_data  <= {WIDTH{RESET_LEVEL[0]}};
        end else begin
            sync_r1 <= i_data;
            o_data  <= sync_r1;
        end
    end
endmodule
EOF_CDC

# ---- Compile common_infra ----
# Compile packages first, then .sv, then .v (all as SystemVerilog)
echo "Compiling common_infra..."
vlog -sv -work work +incdir+common_infra common_infra/acl_ecc_pkg.sv
vlog -sv -work work +incdir+common_infra common_infra/*.sv
[ $? -ne 0 ] && echo "WARN: some .sv errors (may be OK if duplicates)" 
vlog -sv -work work +incdir+common_infra common_infra/*.v
[ $? -ne 0 ] && echo "WARN: some .v errors (may be OK if duplicates)"

# ---- Compile top-level IP wrappers ----
echo "Compiling top-level IP wrappers..."
vlog -sv -work work \
    zfp_decode_ip.prj/components/zfp_decode/zfp_decode/synth/zfp_decode.v \
    zfp_uint_to_int_ip.prj/components/zfp_uint_to_int/zfp_uint_to_int/synth/zfp_uint_to_int.v \
    zfp_inv_lift_ip.prj/components/zfp_inv_lift/zfp_inv_lift/synth/zfp_inv_lift.v
[ $? -ne 0 ] && echo "FAIL: top-level IP wrappers" && exit 1

# ---- Compile Wrapper and Testbench ----
echo "Compiling Wrapper and Testbench..."
vlog -sv -work work +incdir+. \
    cust_afu_csr_avmm_slave.sv \
    psedu_read_write.sv \
    cal_delay.sv \
    cust_afu_wrapper.sv \
    cust_afu_tb.sv
[ $? -ne 0 ] && echo "FAIL: wrapper/tb" && exit 1

# ---- Run Simulation ----
echo "Running Simulation..."
vsim -c -suppress 3722,2685 -do "run -all; quit" cust_afu_tb 2>&1 | tee sim.log

echo "=== Simulation Done ==="
echo ""
echo "=== Latency Summary ==="
grep -E "Latency|PASS|FAIL|Stage|Overall|Decode|Uint|Inv|============" sim.log
