// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 23.3 (Release Build #92.1)
// 
// Legal Notice: Copyright 2022 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_s_c0_in_for_body5_s_c0_enter25334_zfp_decode15 (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c0_eni15_0_tpl,
    input wire [31:0] in_c0_eni15_1_tpl,
    input wire [0:0] in_c0_eni15_2_tpl,
    input wire [63:0] in_c0_eni15_3_tpl,
    input wire [63:0] in_c0_eni15_4_tpl,
    input wire [63:0] in_c0_eni15_5_tpl,
    input wire [63:0] in_c0_eni15_6_tpl,
    input wire [63:0] in_c0_eni15_7_tpl,
    input wire [0:0] in_c0_eni15_8_tpl,
    input wire [31:0] in_c0_eni15_9_tpl,
    input wire [0:0] in_c0_eni15_10_tpl,
    input wire [31:0] in_c0_eni15_11_tpl,
    input wire [0:0] in_c0_eni15_12_tpl,
    input wire [0:0] in_c0_eni15_13_tpl,
    input wire [31:0] in_c0_eni15_14_tpl,
    input wire [31:0] in_c0_eni15_15_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit283_0_tpl,
    output wire [63:0] out_c0_exit283_1_tpl,
    output wire [63:0] out_c0_exit283_2_tpl,
    output wire [63:0] out_c0_exit283_3_tpl,
    output wire [63:0] out_c0_exit283_4_tpl,
    output wire [0:0] out_c0_exit283_5_tpl,
    output wire [0:0] out_c0_exit283_6_tpl,
    output wire [0:0] out_c0_exit283_7_tpl,
    output wire [31:0] out_c0_exit283_8_tpl,
    output wire [0:0] out_c0_exit283_9_tpl,
    output wire [0:0] out_c0_exit283_10_tpl,
    output wire [63:0] out_c0_exit283_11_tpl,
    output wire [63:0] out_c0_exit283_12_tpl,
    output wire [63:0] out_c0_exit283_13_tpl,
    output wire [63:0] out_c0_exit283_14_tpl,
    output wire [31:0] out_c0_exit283_15_tpl,
    output wire [31:0] out_c0_exit283_16_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] cluster_valid_entry_q;
    wire [0:0] exiting_q;
    wire [0:0] loop_admit_i_empty;
    wire loop_admit_i_empty_bitsignaltemp;
    wire [0:0] loop_admit_i_exit;
    wire loop_admit_i_exit_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_dummy;
    wire loop_admit_i_exit_dummy_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_forked;
    wire loop_admit_i_exit_forked_bitsignaltemp;
    wire [0:0] loop_admit_i_exit_valid;
    wire loop_admit_i_exit_valid_bitsignaltemp;
    wire [0:0] loop_admit_i_stall;
    wire loop_admit_i_stall_bitsignaltemp;
    wire [0:0] loop_admit_o_dummy;
    wire loop_admit_o_dummy_bitsignaltemp;
    wire [0:0] loop_admit_o_forked;
    wire loop_admit_o_forked_bitsignaltemp;
    wire [0:0] loop_admit_o_stall;
    wire loop_admit_o_stall_bitsignaltemp;
    wire [0:0] loop_admit_o_valid;
    wire loop_admit_o_valid_bitsignaltemp;
    wire [0:0] loop_not_stall_q;
    wire [0:0] not_valid_in_q;
    reg [0:0] stall_out_reg_0_q;
    reg [0:0] stall_out_reg_1_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_1_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_2_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_3_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_8_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_9_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_10_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_11_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_12_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_13_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_pipeline_dummy_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_pipeline_forked_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_zfp_decode_B6_current_iter_isspec;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_0_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_1_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_2_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_3_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_5_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_8_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_9_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_10_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_11_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_12_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_13_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_14_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_15_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_16_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // loop_not_stall(LOGICAL,5)
    assign loop_not_stall_q = ~ (stall_out_reg_1_q);

    // cluster_valid_entry(LOGICAL,2)
    assign cluster_valid_entry_q = loop_not_stall_q & loop_admit_o_valid;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x(BLACKBOX,11)@7
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@11
    // out out_data_out_0_tpl@11
    // out out_data_out_1_tpl@11
    // out out_data_out_2_tpl@11
    // out out_data_out_3_tpl@11
    // out out_data_out_4_tpl@11
    // out out_data_out_5_tpl@11
    // out out_data_out_6_tpl@11
    // out out_data_out_7_tpl@11
    // out out_data_out_8_tpl@11
    // out out_data_out_9_tpl@11
    // out out_data_out_10_tpl@11
    // out out_data_out_11_tpl@11
    // out out_data_out_12_tpl@11
    // out out_data_out_13_tpl@11
    // out out_data_out_14_tpl@11
    // out out_data_out_15_tpl@11
    // out out_data_out_16_tpl@11
    zfp_decode_i_llvm_fpga_sfc_exit_s_c0_out0000_exit283_zfp_decode0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x (
        .in_input_accepted(cluster_valid_entry_q),
        .in_mask_valid(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_zfp_decode_B6_current_iter_isspec),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_16_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_16_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // stall_out_reg_0(REG,8)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_0_q <= i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_stall_entry;
        end
    end

    // stall_out_reg_1(REG,9)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_1_q <= stall_out_reg_0_q;
        end
    end

    // i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x(BLACKBOX,12)@0
    // out out_exiting_valid_out@20000000
    // out out_o_valid@7
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_profile_loop_o_valid@7
    // out out_zfp_decode_B6_current_iter_isspec@7
    // out out_c0_exi16282_0_tpl@7
    // out out_c0_exi16282_1_tpl@7
    // out out_c0_exi16282_2_tpl@7
    // out out_c0_exi16282_3_tpl@7
    // out out_c0_exi16282_4_tpl@7
    // out out_c0_exi16282_5_tpl@7
    // out out_c0_exi16282_6_tpl@7
    // out out_c0_exi16282_7_tpl@7
    // out out_c0_exi16282_8_tpl@7
    // out out_c0_exi16282_9_tpl@7
    // out out_c0_exi16282_10_tpl@7
    // out out_c0_exi16282_11_tpl@7
    // out out_c0_exi16282_12_tpl@7
    // out out_c0_exi16282_13_tpl@7
    // out out_c0_exi16282_14_tpl@7
    // out out_c0_exi16282_15_tpl@7
    // out out_c0_exi16282_16_tpl@7
    zfp_decode_i_sfc_logic_s_c0_in_for_body50000ter25334_zfp_decode0 thei_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x (
        .in_buffer_in(loop_admit_o_forked),
        .in_dummy_in(loop_admit_o_dummy),
        .in_i_valid(cluster_valid_entry_q),
        .in_c0_eni15_0_tpl(in_c0_eni15_0_tpl),
        .in_c0_eni15_1_tpl(in_c0_eni15_1_tpl),
        .in_c0_eni15_2_tpl(in_c0_eni15_2_tpl),
        .in_c0_eni15_3_tpl(in_c0_eni15_3_tpl),
        .in_c0_eni15_4_tpl(in_c0_eni15_4_tpl),
        .in_c0_eni15_5_tpl(in_c0_eni15_5_tpl),
        .in_c0_eni15_6_tpl(in_c0_eni15_6_tpl),
        .in_c0_eni15_7_tpl(in_c0_eni15_7_tpl),
        .in_c0_eni15_8_tpl(in_c0_eni15_8_tpl),
        .in_c0_eni15_9_tpl(in_c0_eni15_9_tpl),
        .in_c0_eni15_10_tpl(in_c0_eni15_10_tpl),
        .in_c0_eni15_11_tpl(in_c0_eni15_11_tpl),
        .in_c0_eni15_12_tpl(in_c0_eni15_12_tpl),
        .in_c0_eni15_13_tpl(in_c0_eni15_13_tpl),
        .in_c0_eni15_14_tpl(in_c0_eni15_14_tpl),
        .in_c0_eni15_15_tpl(in_c0_eni15_15_tpl),
        .out_exiting_valid_out(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_o_valid),
        .out_pipeline_dummy_out(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_pipeline_valid_out),
        .out_profile_loop_o_valid(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_profile_loop_o_valid),
        .out_zfp_decode_B6_current_iter_isspec(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_zfp_decode_B6_current_iter_isspec),
        .out_c0_exi16282_0_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_0_tpl),
        .out_c0_exi16282_1_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_1_tpl),
        .out_c0_exi16282_2_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_2_tpl),
        .out_c0_exi16282_3_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_3_tpl),
        .out_c0_exi16282_4_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_4_tpl),
        .out_c0_exi16282_5_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_5_tpl),
        .out_c0_exi16282_6_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_6_tpl),
        .out_c0_exi16282_7_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_7_tpl),
        .out_c0_exi16282_8_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_8_tpl),
        .out_c0_exi16282_9_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_9_tpl),
        .out_c0_exi16282_10_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_10_tpl),
        .out_c0_exi16282_11_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_11_tpl),
        .out_c0_exi16282_12_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_12_tpl),
        .out_c0_exi16282_13_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_13_tpl),
        .out_c0_exi16282_14_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_14_tpl),
        .out_c0_exi16282_15_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_15_tpl),
        .out_c0_exi16282_16_tpl(i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_c0_exi16282_16_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // exiting(LOGICAL,3)
    assign exiting_q = ~ (i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_exiting_valid_out);

    // not_valid_in(LOGICAL,6)
    assign not_valid_in_q = ~ (in_i_valid);

    // loop_admit(EXTIFACE,4)
    assign loop_admit_i_empty = not_valid_in_q;
    assign loop_admit_i_exit = exiting_q;
    assign loop_admit_i_exit_dummy = i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_pipeline_dummy_out;
    assign loop_admit_i_exit_forked = i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_pipeline_forked_out;
    assign loop_admit_i_exit_valid = i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_pipeline_valid_out;
    assign loop_admit_i_stall = stall_out_reg_1_q;
    assign loop_admit_i_empty_bitsignaltemp = loop_admit_i_empty[0];
    assign loop_admit_i_exit_bitsignaltemp = loop_admit_i_exit[0];
    assign loop_admit_i_exit_dummy_bitsignaltemp = loop_admit_i_exit_dummy[0];
    assign loop_admit_i_exit_forked_bitsignaltemp = loop_admit_i_exit_forked[0];
    assign loop_admit_i_exit_valid_bitsignaltemp = loop_admit_i_exit_valid[0];
    assign loop_admit_i_stall_bitsignaltemp = loop_admit_i_stall[0];
    assign loop_admit_o_dummy[0] = loop_admit_o_dummy_bitsignaltemp;
    assign loop_admit_o_forked[0] = loop_admit_o_forked_bitsignaltemp;
    assign loop_admit_o_stall[0] = loop_admit_o_stall_bitsignaltemp;
    assign loop_admit_o_valid[0] = loop_admit_o_valid_bitsignaltemp;
    acl_loop_admit #(
        .ENABLE_INTERLEAVING(0),
        .II(1),
        .ASYNC_RESET(0),
        .FAST_ADMIT(1),
        .LATENCY_UPSTREAM_EMPTY(1),
        .LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP(0),
        .SYNCHRONIZE_RESET(0)
    ) theloop_admit (
        .i_empty(loop_admit_i_empty_bitsignaltemp),
        .i_exit(loop_admit_i_exit_bitsignaltemp),
        .i_exit_dummy(loop_admit_i_exit_dummy_bitsignaltemp),
        .i_exit_forked(loop_admit_i_exit_forked_bitsignaltemp),
        .i_exit_valid(loop_admit_i_exit_valid_bitsignaltemp),
        .i_stall(loop_admit_i_stall_bitsignaltemp),
        .o_dummy(loop_admit_o_dummy_bitsignaltemp),
        .o_forked(loop_admit_o_forked_bitsignaltemp),
        .o_stall(loop_admit_o_stall_bitsignaltemp),
        .o_valid(loop_admit_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out(GPOUT,10)@20000000
    assign out_o_stall = loop_admit_o_stall;

    // dupName_0_sync_out_aunroll_x(GPOUT,14)@11
    assign out_c0_exit283_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit283_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit283_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit283_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit283_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit283_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit283_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit283_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit283_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit283_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit283_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit283_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit283_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit283_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit283_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit283_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit283_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_data_out_16_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_aunroll_x_out_valid_out;
    assign out_profile_loop_o_valid = i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0_aunroll_x_out_profile_loop_o_valid;

    // rst_sync(RESETSYNC,15)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
