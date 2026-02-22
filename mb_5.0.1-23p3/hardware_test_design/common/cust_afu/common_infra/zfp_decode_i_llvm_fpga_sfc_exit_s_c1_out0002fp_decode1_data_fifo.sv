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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode1_data_fifo
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_llvm_fpga_sfc_exit_s_c1_out0002fp_decode1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc12_in;
    wire [0:0] adapt_scalar_trunc12_q;
    wire [0:0] adapt_scalar_trunc14_in;
    wire [0:0] adapt_scalar_trunc14_q;
    wire [0:0] adapt_scalar_trunc16_in;
    wire [0:0] adapt_scalar_trunc16_q;
    wire [6:0] c_i7_04_q;
    wire [7:0] c_i8_09_q;
    wire [63:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_almost_full_bitsignaltemp;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect11_b;
    wire [0:0] ip_dsdk_adapt_bitselect13_b;
    wire [0:0] ip_dsdk_adapt_bitselect15_b;
    wire [31:0] ip_dsdk_adapt_bitselect17_b;


    // c_i8_09(CONSTANT,8)
    assign c_i8_09_q = $unsigned(8'b00000000);

    // c_i7_04(CONSTANT,5)
    assign c_i7_04_q = $unsigned(7'b0000000);

    // element_extension7(BITJOIN,12)
    assign element_extension7_q = {c_i7_04_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,11)
    assign element_extension5_q = {c_i7_04_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,10)
    assign element_extension3_q = {c_i7_04_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,9)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_3_tpl, c_i8_09_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0(EXTIFACE,13)
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(64)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,20)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_stall;

    // ip_dsdk_adapt_bitselect17(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect17_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_data[63:32];

    // ip_dsdk_adapt_bitselect15(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect15_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_data[16:16];

    // adapt_scalar_trunc16(ROUND,4)
    assign adapt_scalar_trunc16_in = ip_dsdk_adapt_bitselect15_b;
    assign adapt_scalar_trunc16_q = adapt_scalar_trunc16_in[0:0];

    // ip_dsdk_adapt_bitselect13(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect13_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_data[8:8];

    // adapt_scalar_trunc14(ROUND,3)
    assign adapt_scalar_trunc14_in = ip_dsdk_adapt_bitselect13_b;
    assign adapt_scalar_trunc14_q = adapt_scalar_trunc14_in[0:0];

    // ip_dsdk_adapt_bitselect11(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect11_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_data[0:0];

    // adapt_scalar_trunc12(ROUND,2)
    assign adapt_scalar_trunc12_in = ip_dsdk_adapt_bitselect11_b;
    assign adapt_scalar_trunc12_q = adapt_scalar_trunc12_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,22)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc12_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc14_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc16_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect17_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_decodes_c1_exit182_zfp_decode0_o_valid;

endmodule
