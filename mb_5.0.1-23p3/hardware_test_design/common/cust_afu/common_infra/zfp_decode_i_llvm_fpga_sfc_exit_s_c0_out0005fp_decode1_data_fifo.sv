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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_llvm_fpga_sfc_exit_s_c0_out0005fp_decode1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [63:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [63:0] in_i_data_3_tpl,
    input wire [63:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [63:0] in_i_data_11_tpl,
    input wire [63:0] in_i_data_12_tpl,
    input wire [63:0] in_i_data_13_tpl,
    input wire [63:0] in_i_data_14_tpl,
    input wire [31:0] in_i_data_15_tpl,
    input wire [31:0] in_i_data_16_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [63:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [63:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [63:0] out_o_data_11_tpl,
    output wire [63:0] out_o_data_12_tpl,
    output wire [63:0] out_o_data_13_tpl,
    output wire [63:0] out_o_data_14_tpl,
    output wire [31:0] out_o_data_15_tpl,
    output wire [31:0] out_o_data_16_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc20_in;
    wire [0:0] adapt_scalar_trunc20_q;
    wire [0:0] adapt_scalar_trunc30_in;
    wire [0:0] adapt_scalar_trunc30_q;
    wire [0:0] adapt_scalar_trunc32_in;
    wire [0:0] adapt_scalar_trunc32_q;
    wire [0:0] adapt_scalar_trunc34_in;
    wire [0:0] adapt_scalar_trunc34_q;
    wire [0:0] adapt_scalar_trunc38_in;
    wire [0:0] adapt_scalar_trunc38_q;
    wire [0:0] adapt_scalar_trunc40_in;
    wire [0:0] adapt_scalar_trunc40_q;
    wire [47:0] c_i48_017_q;
    wire [55:0] c_i56_05_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_012_q;
    wire [767:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [767:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_almost_full_bitsignaltemp;
    wire [767:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect19_b;
    wire [63:0] ip_dsdk_adapt_bitselect21_b;
    wire [63:0] ip_dsdk_adapt_bitselect23_b;
    wire [63:0] ip_dsdk_adapt_bitselect25_b;
    wire [63:0] ip_dsdk_adapt_bitselect27_b;
    wire [0:0] ip_dsdk_adapt_bitselect29_b;
    wire [0:0] ip_dsdk_adapt_bitselect31_b;
    wire [0:0] ip_dsdk_adapt_bitselect33_b;
    wire [31:0] ip_dsdk_adapt_bitselect35_b;
    wire [0:0] ip_dsdk_adapt_bitselect37_b;
    wire [0:0] ip_dsdk_adapt_bitselect39_b;
    wire [63:0] ip_dsdk_adapt_bitselect41_b;
    wire [63:0] ip_dsdk_adapt_bitselect43_b;
    wire [63:0] ip_dsdk_adapt_bitselect45_b;
    wire [63:0] ip_dsdk_adapt_bitselect47_b;
    wire [31:0] ip_dsdk_adapt_bitselect49_b;
    wire [31:0] ip_dsdk_adapt_bitselect51_b;


    // c_i48_017(CONSTANT,8)
    assign c_i48_017_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // c_i7_011(CONSTANT,10)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension15(BITJOIN,20)
    assign element_extension15_q = {c_i7_011_q, in_i_data_10_tpl};

    // element_extension13(BITJOIN,19)
    assign element_extension13_q = {c_i7_011_q, in_i_data_9_tpl};

    // c_i8_012(CONSTANT,16)
    assign c_i8_012_q = $unsigned(8'b00000000);

    // element_extension10(BITJOIN,18)
    assign element_extension10_q = {c_i7_011_q, in_i_data_7_tpl};

    // element_extension8(BITJOIN,23)
    assign element_extension8_q = {c_i7_011_q, in_i_data_6_tpl};

    // element_extension6(BITJOIN,22)
    assign element_extension6_q = {c_i7_011_q, in_i_data_5_tpl};

    // c_i56_05(CONSTANT,9)
    assign c_i56_05_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension3(BITJOIN,21)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,17)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_16_tpl, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, c_i48_017_q, element_extension15_q, element_extension13_q, in_i_data_8_tpl, c_i8_012_q, element_extension10_q, element_extension8_q, element_extension6_q, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, in_i_data_1_tpl, c_i56_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0(EXTIFACE,24)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(768)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,54)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_stall;

    // ip_dsdk_adapt_bitselect51(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[767:736];

    // ip_dsdk_adapt_bitselect49(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[735:704];

    // ip_dsdk_adapt_bitselect47(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[703:640];

    // ip_dsdk_adapt_bitselect45(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect45_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[639:576];

    // ip_dsdk_adapt_bitselect43(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[575:512];

    // ip_dsdk_adapt_bitselect41(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[511:448];

    // ip_dsdk_adapt_bitselect39(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[392:392];

    // adapt_scalar_trunc40(ROUND,7)
    assign adapt_scalar_trunc40_in = ip_dsdk_adapt_bitselect39_b;
    assign adapt_scalar_trunc40_q = adapt_scalar_trunc40_in[0:0];

    // ip_dsdk_adapt_bitselect37(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[384:384];

    // adapt_scalar_trunc38(ROUND,6)
    assign adapt_scalar_trunc38_in = ip_dsdk_adapt_bitselect37_b;
    assign adapt_scalar_trunc38_q = adapt_scalar_trunc38_in[0:0];

    // ip_dsdk_adapt_bitselect35(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[383:352];

    // ip_dsdk_adapt_bitselect33(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect33_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[336:336];

    // adapt_scalar_trunc34(ROUND,5)
    assign adapt_scalar_trunc34_in = ip_dsdk_adapt_bitselect33_b;
    assign adapt_scalar_trunc34_q = adapt_scalar_trunc34_in[0:0];

    // ip_dsdk_adapt_bitselect31(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect31_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[328:328];

    // adapt_scalar_trunc32(ROUND,4)
    assign adapt_scalar_trunc32_in = ip_dsdk_adapt_bitselect31_b;
    assign adapt_scalar_trunc32_q = adapt_scalar_trunc32_in[0:0];

    // ip_dsdk_adapt_bitselect29(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect29_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[320:320];

    // adapt_scalar_trunc30(ROUND,3)
    assign adapt_scalar_trunc30_in = ip_dsdk_adapt_bitselect29_b;
    assign adapt_scalar_trunc30_q = adapt_scalar_trunc30_in[0:0];

    // ip_dsdk_adapt_bitselect27(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect27_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[319:256];

    // ip_dsdk_adapt_bitselect25(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect25_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[255:192];

    // ip_dsdk_adapt_bitselect23(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect23_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[191:128];

    // ip_dsdk_adapt_bitselect21(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect21_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[127:64];

    // ip_dsdk_adapt_bitselect19(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect19_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_data[0:0];

    // adapt_scalar_trunc20(ROUND,2)
    assign adapt_scalar_trunc20_in = ip_dsdk_adapt_bitselect19_b;
    assign adapt_scalar_trunc20_q = adapt_scalar_trunc20_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,56)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc20_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect21_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect23_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect25_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect27_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc30_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc32_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc34_q;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect35_b;
    assign out_o_data_9_tpl = adapt_scalar_trunc38_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc40_q;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect41_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect43_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect45_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect47_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect49_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect51_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0_o_valid;

endmodule
