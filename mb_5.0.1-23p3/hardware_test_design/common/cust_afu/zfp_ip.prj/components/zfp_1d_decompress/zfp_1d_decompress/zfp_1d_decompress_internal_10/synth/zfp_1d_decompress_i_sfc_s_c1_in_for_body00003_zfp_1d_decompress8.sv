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

// SystemVerilog created from i_sfc_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress8
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_s_c1_in_for_body00003_zfp_1d_decompress8 (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c0_exe10,
    input wire [0:0] in_c0_exe5,
    input wire [0:0] in_c1_eni11_0_tpl,
    input wire [31:0] in_c1_eni11_1_tpl,
    input wire [0:0] in_c1_eni11_2_tpl,
    input wire [63:0] in_c1_eni11_3_tpl,
    input wire [0:0] in_c1_eni11_4_tpl,
    input wire [63:0] in_c1_eni11_5_tpl,
    input wire [31:0] in_c1_eni11_6_tpl,
    input wire [63:0] in_c1_eni11_7_tpl,
    input wire [63:0] in_c1_eni11_8_tpl,
    input wire [63:0] in_c1_eni11_9_tpl,
    input wire [63:0] in_c1_eni11_10_tpl,
    input wire [0:0] in_c1_eni11_11_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c1_exit148_0_tpl,
    output wire [63:0] out_c1_exit148_1_tpl,
    output wire [63:0] out_c1_exit148_2_tpl,
    output wire [63:0] out_c1_exit148_3_tpl,
    output wire [63:0] out_c1_exit148_4_tpl,
    output wire [63:0] out_c1_exit148_5_tpl,
    output wire [63:0] out_c1_exit148_6_tpl,
    output wire [63:0] out_c1_exit148_7_tpl,
    output wire [63:0] out_c1_exit148_8_tpl,
    output wire [63:0] out_c1_exit148_9_tpl,
    output wire [63:0] out_c1_exit148_10_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_1_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_2_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_3_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_4_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_5_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_6_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_7_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_8_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_9_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_0_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_1_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_2_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_3_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_4_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_5_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_6_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_7_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_8_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_9_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_10_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x(BLACKBOX,8)@7
    // out out_o_valid@10
    // out out_unnamed_zfp_1d_decompress1@10
    // out out_c1_exi10_0_tpl@10
    // out out_c1_exi10_1_tpl@10
    // out out_c1_exi10_2_tpl@10
    // out out_c1_exi10_3_tpl@10
    // out out_c1_exi10_4_tpl@10
    // out out_c1_exi10_5_tpl@10
    // out out_c1_exi10_6_tpl@10
    // out out_c1_exi10_7_tpl@10
    // out out_c1_exi10_8_tpl@10
    // out out_c1_exi10_9_tpl@10
    // out out_c1_exi10_10_tpl@10
    zfp_1d_decompress_i_sfc_logic_s_c1_in_fo00003_zfp_1d_decompress0 thei_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_c1_eni11_0_tpl(in_c1_eni11_0_tpl),
        .in_c1_eni11_1_tpl(in_c1_eni11_1_tpl),
        .in_c1_eni11_2_tpl(in_c1_eni11_2_tpl),
        .in_c1_eni11_3_tpl(in_c1_eni11_3_tpl),
        .in_c1_eni11_4_tpl(in_c1_eni11_4_tpl),
        .in_c1_eni11_5_tpl(in_c1_eni11_5_tpl),
        .in_c1_eni11_6_tpl(in_c1_eni11_6_tpl),
        .in_c1_eni11_7_tpl(in_c1_eni11_7_tpl),
        .in_c1_eni11_8_tpl(in_c1_eni11_8_tpl),
        .in_c1_eni11_9_tpl(in_c1_eni11_9_tpl),
        .in_c1_eni11_10_tpl(in_c1_eni11_10_tpl),
        .in_c1_eni11_11_tpl(in_c1_eni11_11_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_o_valid),
        .out_unnamed_zfp_1d_decompress1(),
        .out_c1_exi10_0_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_0_tpl),
        .out_c1_exi10_1_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_1_tpl),
        .out_c1_exi10_2_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_2_tpl),
        .out_c1_exi10_3_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_3_tpl),
        .out_c1_exi10_4_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_4_tpl),
        .out_c1_exi10_5_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_5_tpl),
        .out_c1_exi10_6_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_6_tpl),
        .out_c1_exi10_7_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_7_tpl),
        .out_c1_exi10_8_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_8_tpl),
        .out_c1_exi10_9_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_9_tpl),
        .out_c1_exi10_10_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_10_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x(BLACKBOX,7)@10
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@14
    // out out_data_out_0_tpl@14
    // out out_data_out_1_tpl@14
    // out out_data_out_2_tpl@14
    // out out_data_out_3_tpl@14
    // out out_data_out_4_tpl@14
    // out out_data_out_5_tpl@14
    // out out_data_out_6_tpl@14
    // out out_data_out_7_tpl@14
    // out out_data_out_8_tpl@14
    // out out_data_out_9_tpl@14
    // out out_data_out_10_tpl@14
    zfp_1d_decompress_i_llvm_fpga_sfc_exit_s00008_zfp_1d_decompress0 thei_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x (
        .in_dec_pipelined_thread(in_c0_exe5),
        .in_inc_pipelined_thread(in_c0_exe10),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0_aunroll_x_out_c1_exi10_10_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_10_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out(GPOUT,6)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,10)@14
    assign out_c1_exit148_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit148_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_1_tpl;
    assign out_c1_exit148_2_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_2_tpl;
    assign out_c1_exit148_3_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_3_tpl;
    assign out_c1_exit148_4_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_4_tpl;
    assign out_c1_exit148_5_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_5_tpl;
    assign out_c1_exit148_6_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_6_tpl;
    assign out_c1_exit148_7_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_7_tpl;
    assign out_c1_exit148_8_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_8_tpl;
    assign out_c1_exit148_9_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_9_tpl;
    assign out_c1_exit148_10_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_data_out_10_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body6_i_zfp_1d_decompresss_c1_exit148_zfp_1d_decompress1_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,11)
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
