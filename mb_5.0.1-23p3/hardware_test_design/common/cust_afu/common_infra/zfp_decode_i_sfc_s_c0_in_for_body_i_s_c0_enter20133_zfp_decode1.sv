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

// SystemVerilog created from i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_s_c0_in_for_body_i_s_c0_enter20133_zfp_decode1 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [31:0] in_c0_eni13_1_tpl,
    input wire [0:0] in_c0_eni13_2_tpl,
    input wire [0:0] in_c0_eni13_3_tpl,
    input wire [0:0] in_c0_eni13_4_tpl,
    input wire [31:0] in_c0_eni13_5_tpl,
    input wire [31:0] in_c0_eni13_6_tpl,
    input wire [0:0] in_c0_eni13_7_tpl,
    input wire [0:0] in_c0_eni13_8_tpl,
    input wire [0:0] in_c0_eni13_9_tpl,
    input wire [31:0] in_c0_eni13_10_tpl,
    input wire [31:0] in_c0_eni13_11_tpl,
    input wire [31:0] in_c0_eni13_12_tpl,
    input wire [63:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit215_0_tpl,
    output wire [0:0] out_c0_exit215_1_tpl,
    output wire [0:0] out_c0_exit215_2_tpl,
    output wire [0:0] out_c0_exit215_3_tpl,
    output wire [31:0] out_c0_exit215_4_tpl,
    output wire [0:0] out_c0_exit215_5_tpl,
    output wire [0:0] out_c0_exit215_6_tpl,
    output wire [0:0] out_c0_exit215_7_tpl,
    output wire [31:0] out_c0_exit215_8_tpl,
    output wire [31:0] out_c0_exit215_9_tpl,
    output wire [0:0] out_c0_exit215_10_tpl,
    output wire [31:0] out_c0_exit215_11_tpl,
    output wire [0:0] out_c0_exit215_12_tpl,
    output wire [0:0] out_c0_exit215_13_tpl,
    output wire [31:0] out_c0_exit215_14_tpl,
    output wire [0:0] out_c0_exit215_15_tpl,
    output wire [31:0] out_c0_exit215_16_tpl,
    output wire [31:0] out_c0_exit215_17_tpl,
    output wire [63:0] out_c0_exit215_18_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_9_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_12_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_14_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_16_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_17_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_18_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_3_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_5_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_8_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_9_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_10_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_11_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_12_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_13_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_14_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_15_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_16_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_17_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_18_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x(BLACKBOX,11)@3
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@7
    // out out_data_out_0_tpl@7
    // out out_data_out_1_tpl@7
    // out out_data_out_2_tpl@7
    // out out_data_out_3_tpl@7
    // out out_data_out_4_tpl@7
    // out out_data_out_5_tpl@7
    // out out_data_out_6_tpl@7
    // out out_data_out_7_tpl@7
    // out out_data_out_8_tpl@7
    // out out_data_out_9_tpl@7
    // out out_data_out_10_tpl@7
    // out out_data_out_11_tpl@7
    // out out_data_out_12_tpl@7
    // out out_data_out_13_tpl@7
    // out out_data_out_14_tpl@7
    // out out_data_out_15_tpl@7
    // out out_data_out_16_tpl@7
    // out out_data_out_17_tpl@7
    // out out_data_out_18_tpl@7
    zfp_decode_i_llvm_fpga_sfc_exit_s_c0_out0000_exit215_zfp_decode0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_18_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_18_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x(BLACKBOX,12)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out@20000000
    // out out_o_valid@3
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_zfp_decode0@3
    // out out_c0_exi18_0_tpl@3
    // out out_c0_exi18_1_tpl@3
    // out out_c0_exi18_2_tpl@3
    // out out_c0_exi18_3_tpl@3
    // out out_c0_exi18_4_tpl@3
    // out out_c0_exi18_5_tpl@3
    // out out_c0_exi18_6_tpl@3
    // out out_c0_exi18_7_tpl@3
    // out out_c0_exi18_8_tpl@3
    // out out_c0_exi18_9_tpl@3
    // out out_c0_exi18_10_tpl@3
    // out out_c0_exi18_11_tpl@3
    // out out_c0_exi18_12_tpl@3
    // out out_c0_exi18_13_tpl@3
    // out out_c0_exi18_14_tpl@3
    // out out_c0_exi18_15_tpl@3
    // out out_c0_exi18_16_tpl@3
    // out out_c0_exi18_17_tpl@3
    // out out_c0_exi18_18_tpl@3
    zfp_decode_i_sfc_logic_s_c0_in_for_body_0000ter20133_zfp_decode0 thei_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni13_0_tpl(in_c0_eni13_0_tpl),
        .in_c0_eni13_1_tpl(in_c0_eni13_1_tpl),
        .in_c0_eni13_2_tpl(in_c0_eni13_2_tpl),
        .in_c0_eni13_3_tpl(in_c0_eni13_3_tpl),
        .in_c0_eni13_4_tpl(in_c0_eni13_4_tpl),
        .in_c0_eni13_5_tpl(in_c0_eni13_5_tpl),
        .in_c0_eni13_6_tpl(in_c0_eni13_6_tpl),
        .in_c0_eni13_7_tpl(in_c0_eni13_7_tpl),
        .in_c0_eni13_8_tpl(in_c0_eni13_8_tpl),
        .in_c0_eni13_9_tpl(in_c0_eni13_9_tpl),
        .in_c0_eni13_10_tpl(in_c0_eni13_10_tpl),
        .in_c0_eni13_11_tpl(in_c0_eni13_11_tpl),
        .in_c0_eni13_12_tpl(in_c0_eni13_12_tpl),
        .in_c0_eni13_13_tpl(in_c0_eni13_13_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_zfp_decode0(),
        .out_c0_exi18_0_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_0_tpl),
        .out_c0_exi18_1_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_1_tpl),
        .out_c0_exi18_2_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_2_tpl),
        .out_c0_exi18_3_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_3_tpl),
        .out_c0_exi18_4_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_4_tpl),
        .out_c0_exi18_5_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_5_tpl),
        .out_c0_exi18_6_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_6_tpl),
        .out_c0_exi18_7_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_7_tpl),
        .out_c0_exi18_8_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_8_tpl),
        .out_c0_exi18_9_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_9_tpl),
        .out_c0_exi18_10_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_10_tpl),
        .out_c0_exi18_11_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_11_tpl),
        .out_c0_exi18_12_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_12_tpl),
        .out_c0_exi18_13_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_13_tpl),
        .out_c0_exi18_14_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_14_tpl),
        .out_c0_exi18_15_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_15_tpl),
        .out_c0_exi18_16_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_16_tpl),
        .out_c0_exi18_17_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_17_tpl),
        .out_c0_exi18_18_tpl(i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_c0_exi18_18_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,7)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out = i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out;

    // sync_out(GPOUT,9)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,10)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out = i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out;

    // dupName_0_sync_out_aunroll_x(GPOUT,14)@7
    assign out_c0_exit215_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit215_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit215_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit215_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit215_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit215_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit215_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit215_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit215_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit215_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit215_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit215_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit215_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit215_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit215_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit215_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit215_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit215_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit215_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_data_out_18_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_zfp_decodes_c0_exit215_zfp_decode1_aunroll_x_out_valid_out;

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
