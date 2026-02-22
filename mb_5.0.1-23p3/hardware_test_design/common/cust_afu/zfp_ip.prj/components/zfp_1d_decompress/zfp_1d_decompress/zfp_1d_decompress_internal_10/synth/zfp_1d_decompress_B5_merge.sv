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

// SystemVerilog created from zfp_1d_decompress_B5_merge
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_B5_merge (
    input wire [0:0] in_c0_exe21331_0,
    input wire [31:0] in_c0_exe41352_0,
    input wire [31:0] in_c0_exe73_0,
    input wire [0:0] in_c0_exe84_0,
    input wire [0:0] in_c0_exe95_0,
    input wire [63:0] in_c1_exe1016_0,
    input wire [63:0] in_c1_exe11497_0,
    input wire [63:0] in_c1_exe21508_0,
    input wire [63:0] in_c1_exe31519_0,
    input wire [63:0] in_c1_exe410_0,
    input wire [63:0] in_c1_exe511_0,
    input wire [63:0] in_c1_exe612_0,
    input wire [63:0] in_c1_exe713_0,
    input wire [63:0] in_c1_exe814_0,
    input wire [63:0] in_c1_exe915_0,
    input wire [0:0] in_c2_exe11416_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe21331,
    output wire [31:0] out_c0_exe41352,
    output wire [31:0] out_c0_exe73,
    output wire [0:0] out_c0_exe84,
    output wire [0:0] out_c0_exe95,
    output wire [63:0] out_c1_exe1016,
    output wire [63:0] out_c1_exe11497,
    output wire [63:0] out_c1_exe21508,
    output wire [63:0] out_c1_exe31519,
    output wire [63:0] out_c1_exe410,
    output wire [63:0] out_c1_exe511,
    output wire [63:0] out_c1_exe612,
    output wire [63:0] out_c1_exe713,
    output wire [63:0] out_c1_exe814,
    output wire [63:0] out_c1_exe915,
    output wire [0:0] out_c2_exe11416,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe21331(GPOUT,20)
    assign out_c0_exe21331 = in_c0_exe21331_0;

    // out_c0_exe41352(GPOUT,21)
    assign out_c0_exe41352 = in_c0_exe41352_0;

    // out_c0_exe73(GPOUT,22)
    assign out_c0_exe73 = in_c0_exe73_0;

    // out_c0_exe84(GPOUT,23)
    assign out_c0_exe84 = in_c0_exe84_0;

    // out_c0_exe95(GPOUT,24)
    assign out_c0_exe95 = in_c0_exe95_0;

    // out_c1_exe1016(GPOUT,25)
    assign out_c1_exe1016 = in_c1_exe1016_0;

    // out_c1_exe11497(GPOUT,26)
    assign out_c1_exe11497 = in_c1_exe11497_0;

    // out_c1_exe21508(GPOUT,27)
    assign out_c1_exe21508 = in_c1_exe21508_0;

    // out_c1_exe31519(GPOUT,28)
    assign out_c1_exe31519 = in_c1_exe31519_0;

    // out_c1_exe410(GPOUT,29)
    assign out_c1_exe410 = in_c1_exe410_0;

    // out_c1_exe511(GPOUT,30)
    assign out_c1_exe511 = in_c1_exe511_0;

    // out_c1_exe612(GPOUT,31)
    assign out_c1_exe612 = in_c1_exe612_0;

    // out_c1_exe713(GPOUT,32)
    assign out_c1_exe713 = in_c1_exe713_0;

    // out_c1_exe814(GPOUT,33)
    assign out_c1_exe814 = in_c1_exe814_0;

    // out_c1_exe915(GPOUT,34)
    assign out_c1_exe915 = in_c1_exe915_0;

    // out_c2_exe11416(GPOUT,35)
    assign out_c2_exe11416 = in_c2_exe11416_0;

    // stall_out(LOGICAL,38)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,36)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,37)
    assign out_valid_out = in_valid_in_0;

    // rst_sync(RESETSYNC,39)
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
