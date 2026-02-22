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

// SystemVerilog created from zfp_decode_B7_merge
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_B7_merge (
    input wire [0:0] in_c0_exe1029325_0,
    input wire [63:0] in_c0_exe1129426_0,
    input wire [63:0] in_c0_exe1229527_0,
    input wire [63:0] in_c0_exe128417_0,
    input wire [63:0] in_c0_exe1329628_0,
    input wire [63:0] in_c0_exe1429729_0,
    input wire [63:0] in_c0_exe228518_0,
    input wire [63:0] in_c0_exe328619_0,
    input wire [63:0] in_c0_exe428720_0,
    input wire [0:0] in_c0_exe729021_0,
    input wire [31:0] in_c0_exe829123_0,
    input wire [0:0] in_c0_exe929224_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1029325,
    output wire [63:0] out_c0_exe1129426,
    output wire [63:0] out_c0_exe1229527,
    output wire [63:0] out_c0_exe128417,
    output wire [63:0] out_c0_exe1329628,
    output wire [63:0] out_c0_exe1429729,
    output wire [63:0] out_c0_exe228518,
    output wire [63:0] out_c0_exe328619,
    output wire [63:0] out_c0_exe428720,
    output wire [0:0] out_c0_exe729021,
    output wire [31:0] out_c0_exe829123,
    output wire [0:0] out_c0_exe929224,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe1029325(GPOUT,16)
    assign out_c0_exe1029325 = in_c0_exe1029325_0;

    // out_c0_exe1129426(GPOUT,17)
    assign out_c0_exe1129426 = in_c0_exe1129426_0;

    // out_c0_exe1229527(GPOUT,18)
    assign out_c0_exe1229527 = in_c0_exe1229527_0;

    // out_c0_exe128417(GPOUT,19)
    assign out_c0_exe128417 = in_c0_exe128417_0;

    // out_c0_exe1329628(GPOUT,20)
    assign out_c0_exe1329628 = in_c0_exe1329628_0;

    // out_c0_exe1429729(GPOUT,21)
    assign out_c0_exe1429729 = in_c0_exe1429729_0;

    // out_c0_exe228518(GPOUT,22)
    assign out_c0_exe228518 = in_c0_exe228518_0;

    // out_c0_exe328619(GPOUT,23)
    assign out_c0_exe328619 = in_c0_exe328619_0;

    // out_c0_exe428720(GPOUT,24)
    assign out_c0_exe428720 = in_c0_exe428720_0;

    // out_c0_exe729021(GPOUT,25)
    assign out_c0_exe729021 = in_c0_exe729021_0;

    // out_c0_exe829123(GPOUT,26)
    assign out_c0_exe829123 = in_c0_exe829123_0;

    // out_c0_exe929224(GPOUT,27)
    assign out_c0_exe929224 = in_c0_exe929224_0;

    // stall_out(LOGICAL,30)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,29)
    assign out_valid_out = in_valid_in_0;

    // rst_sync(RESETSYNC,31)
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
