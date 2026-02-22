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

// SystemVerilog created from zfp_1d_decompress_B3_branch
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_B3_branch (
    input wire [0:0] in_c0_exe1123,
    input wire [0:0] in_c0_exe2,
    input wire [31:0] in_c0_exe3,
    input wire [31:0] in_c1_exe3,
    input wire [63:0] in_c2_exe1,
    input wire [0:0] in_c2_exe2,
    input wire [0:0] in_c2_exe3,
    input wire [0:0] in_stall_in_0,
    input wire [63:0] in_ublock_i_sroa_0_0_pop16,
    input wire [63:0] in_ublock_i_sroa_12_0_pop13,
    input wire [63:0] in_ublock_i_sroa_6_0_pop15,
    input wire [63:0] in_ublock_i_sroa_9_0_pop14,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1123,
    output wire [0:0] out_c0_exe2,
    output wire [31:0] out_c0_exe3,
    output wire [31:0] out_c1_exe3,
    output wire [63:0] out_c2_exe1,
    output wire [0:0] out_c2_exe2,
    output wire [0:0] out_c2_exe3,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_ublock_i_sroa_0_0_pop16,
    output wire [63:0] out_ublock_i_sroa_12_0_pop13,
    output wire [63:0] out_ublock_i_sroa_6_0_pop15,
    output wire [63:0] out_ublock_i_sroa_9_0_pop14,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe1123(GPOUT,15)
    assign out_c0_exe1123 = in_c0_exe1123;

    // out_c0_exe2(GPOUT,16)
    assign out_c0_exe2 = in_c0_exe2;

    // out_c0_exe3(GPOUT,17)
    assign out_c0_exe3 = in_c0_exe3;

    // out_c1_exe3(GPOUT,18)
    assign out_c1_exe3 = in_c1_exe3;

    // out_c2_exe1(GPOUT,19)
    assign out_c2_exe1 = in_c2_exe1;

    // out_c2_exe2(GPOUT,20)
    assign out_c2_exe2 = in_c2_exe2;

    // out_c2_exe3(GPOUT,21)
    assign out_c2_exe3 = in_c2_exe3;

    // stall_out(LOGICAL,28)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,22)
    assign out_stall_out = stall_out_q;

    // out_ublock_i_sroa_0_0_pop16(GPOUT,23)
    assign out_ublock_i_sroa_0_0_pop16 = in_ublock_i_sroa_0_0_pop16;

    // out_ublock_i_sroa_12_0_pop13(GPOUT,24)
    assign out_ublock_i_sroa_12_0_pop13 = in_ublock_i_sroa_12_0_pop13;

    // out_ublock_i_sroa_6_0_pop15(GPOUT,25)
    assign out_ublock_i_sroa_6_0_pop15 = in_ublock_i_sroa_6_0_pop15;

    // out_ublock_i_sroa_9_0_pop14(GPOUT,26)
    assign out_ublock_i_sroa_9_0_pop14 = in_ublock_i_sroa_9_0_pop14;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,29)
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
