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

// SystemVerilog created from zfp_decode_B4_merge
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_B4_merge (
    input wire [0:0] in_c0_exe106_0,
    input wire [31:0] in_c0_exe117_0,
    input wire [0:0] in_c0_exe128_0,
    input wire [0:0] in_c0_exe139_0,
    input wire [31:0] in_c0_exe1410_0,
    input wire [31:0] in_c0_exe1611_0,
    input wire [31:0] in_c0_exe1712_0,
    input wire [0:0] in_c0_exe22171_0,
    input wire [31:0] in_c0_exe42192_0,
    input wire [0:0] in_c0_exe52203_0,
    input wire [31:0] in_c0_exe82234_0,
    input wire [31:0] in_c0_exe95_0,
    input wire [63:0] in_c1_exe123714_0,
    input wire [63:0] in_c1_exe223815_0,
    input wire [63:0] in_c1_exe323916_0,
    input wire [0:0] in_c2_exe122913_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe106,
    output wire [31:0] out_c0_exe117,
    output wire [0:0] out_c0_exe128,
    output wire [0:0] out_c0_exe139,
    output wire [31:0] out_c0_exe1410,
    output wire [31:0] out_c0_exe1611,
    output wire [31:0] out_c0_exe1712,
    output wire [0:0] out_c0_exe22171,
    output wire [31:0] out_c0_exe42192,
    output wire [0:0] out_c0_exe52203,
    output wire [31:0] out_c0_exe82234,
    output wire [31:0] out_c0_exe95,
    output wire [63:0] out_c1_exe123714,
    output wire [63:0] out_c1_exe223815,
    output wire [63:0] out_c1_exe323916,
    output wire [0:0] out_c2_exe122913,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe106(GPOUT,20)
    assign out_c0_exe106 = in_c0_exe106_0;

    // out_c0_exe117(GPOUT,21)
    assign out_c0_exe117 = in_c0_exe117_0;

    // out_c0_exe128(GPOUT,22)
    assign out_c0_exe128 = in_c0_exe128_0;

    // out_c0_exe139(GPOUT,23)
    assign out_c0_exe139 = in_c0_exe139_0;

    // out_c0_exe1410(GPOUT,24)
    assign out_c0_exe1410 = in_c0_exe1410_0;

    // out_c0_exe1611(GPOUT,25)
    assign out_c0_exe1611 = in_c0_exe1611_0;

    // out_c0_exe1712(GPOUT,26)
    assign out_c0_exe1712 = in_c0_exe1712_0;

    // out_c0_exe22171(GPOUT,27)
    assign out_c0_exe22171 = in_c0_exe22171_0;

    // out_c0_exe42192(GPOUT,28)
    assign out_c0_exe42192 = in_c0_exe42192_0;

    // out_c0_exe52203(GPOUT,29)
    assign out_c0_exe52203 = in_c0_exe52203_0;

    // out_c0_exe82234(GPOUT,30)
    assign out_c0_exe82234 = in_c0_exe82234_0;

    // out_c0_exe95(GPOUT,31)
    assign out_c0_exe95 = in_c0_exe95_0;

    // out_c1_exe123714(GPOUT,32)
    assign out_c1_exe123714 = in_c1_exe123714_0;

    // out_c1_exe223815(GPOUT,33)
    assign out_c1_exe223815 = in_c1_exe223815_0;

    // out_c1_exe323916(GPOUT,34)
    assign out_c1_exe323916 = in_c1_exe323916_0;

    // out_c2_exe122913(GPOUT,35)
    assign out_c2_exe122913 = in_c2_exe122913_0;

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
