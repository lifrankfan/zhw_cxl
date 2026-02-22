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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int1_data_fifo
// Created for function/kernel zfp_uint_to_int
// SystemVerilog created on Fri Feb 13 18:08:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_uint_to_int_i_llvm_fpga_sfc_exit_s_c0003nt_to_int1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc7_in;
    wire [0:0] adapt_scalar_trunc7_q;
    wire [6:0] c_i7_04_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension3_q;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_almost_empty;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_almost_empty_bitsignaltemp;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_empty;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_empty_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect6_b;


    // c_i7_04(CONSTANT,3)
    assign c_i7_04_q = $unsigned(7'b0000000);

    // element_extension3(BITJOIN,5)
    assign element_extension3_q = {c_i7_04_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,4)
    assign dsdk_ip_adapt_bitjoin1_q = element_extension3_q;

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0(EXTIFACE,6)
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_almost_empty[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_almost_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_empty[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_valid_bitsignaltemp;
    hld_fifo #(
        .ALMOST_EMPTY_CUTOFF(7),
        .DEPTH(512),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .STALL_IN_EARLINESS(3),
        .SYNCHRONIZE_RESET(0),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .WIDTH(8)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_i_valid_bitsignaltemp),
        .o_almost_empty(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_almost_empty_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_data),
        .o_empty(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_empty_bitsignaltemp),
        .o_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,9)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_stall;

    // ip_dsdk_adapt_bitselect6(BITSELECT,7)
    assign ip_dsdk_adapt_bitselect6_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_data[0:0];

    // adapt_scalar_trunc7(ROUND,2)
    assign adapt_scalar_trunc7_in = ip_dsdk_adapt_bitselect6_b;
    assign adapt_scalar_trunc7_q = adapt_scalar_trunc7_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,11)@20000030
    assign out_o_almost_empty = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_almost_empty;
    assign out_o_data_0_tpl = adapt_scalar_trunc7_q;
    assign out_o_empty = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_empty;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_uint_to_ints_c1_exit_zfp_uint_to_int0_o_valid;

endmodule
