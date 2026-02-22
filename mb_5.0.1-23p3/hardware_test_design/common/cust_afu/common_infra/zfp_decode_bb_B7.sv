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

// SystemVerilog created from bb_zfp_decode_B7
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B7 (
    output wire [63:0] out_feedback_out_15,
    output wire [63:0] out_feedback_out_16,
    output wire [63:0] out_feedback_out_17,
    output wire [63:0] out_feedback_out_18,
    input wire [0:0] in_feedback_stall_in_15,
    input wire [0:0] in_feedback_stall_in_16,
    input wire [0:0] in_feedback_stall_in_17,
    input wire [0:0] in_feedback_stall_in_18,
    output wire [0:0] out_feedback_valid_out_15,
    output wire [0:0] out_feedback_valid_out_16,
    output wire [0:0] out_feedback_valid_out_17,
    output wire [0:0] out_feedback_valid_out_18,
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
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe829123,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zfp_decode_B7_stall_region_out_c0_exe729021;
    wire [31:0] bb_zfp_decode_B7_stall_region_out_c0_exe829123;
    wire [63:0] bb_zfp_decode_B7_stall_region_out_feedback_out_15;
    wire [63:0] bb_zfp_decode_B7_stall_region_out_feedback_out_16;
    wire [63:0] bb_zfp_decode_B7_stall_region_out_feedback_out_17;
    wire [63:0] bb_zfp_decode_B7_stall_region_out_feedback_out_18;
    wire [0:0] bb_zfp_decode_B7_stall_region_out_feedback_valid_out_15;
    wire [0:0] bb_zfp_decode_B7_stall_region_out_feedback_valid_out_16;
    wire [0:0] bb_zfp_decode_B7_stall_region_out_feedback_valid_out_17;
    wire [0:0] bb_zfp_decode_B7_stall_region_out_feedback_valid_out_18;
    wire [63:0] bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_zfp_decode_B7_stall_region_out_stall_out;
    wire [0:0] bb_zfp_decode_B7_stall_region_out_valid_out;
    wire [31:0] zfp_decode_B7_branch_out_c0_exe829123;
    wire [0:0] zfp_decode_B7_branch_out_stall_out;
    wire [0:0] zfp_decode_B7_branch_out_valid_out_0;
    wire [0:0] zfp_decode_B7_branch_out_valid_out_1;
    wire [0:0] zfp_decode_B7_merge_out_c0_exe1029325;
    wire [63:0] zfp_decode_B7_merge_out_c0_exe1129426;
    wire [63:0] zfp_decode_B7_merge_out_c0_exe1229527;
    wire [63:0] zfp_decode_B7_merge_out_c0_exe128417;
    wire [63:0] zfp_decode_B7_merge_out_c0_exe1329628;
    wire [63:0] zfp_decode_B7_merge_out_c0_exe1429729;
    wire [63:0] zfp_decode_B7_merge_out_c0_exe228518;
    wire [63:0] zfp_decode_B7_merge_out_c0_exe328619;
    wire [63:0] zfp_decode_B7_merge_out_c0_exe428720;
    wire [0:0] zfp_decode_B7_merge_out_c0_exe729021;
    wire [31:0] zfp_decode_B7_merge_out_c0_exe829123;
    wire [0:0] zfp_decode_B7_merge_out_c0_exe929224;
    wire [0:0] zfp_decode_B7_merge_out_stall_out_0;
    wire [0:0] zfp_decode_B7_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_decode_B7_branch(BLACKBOX,39)
    zfp_decode_B7_branch thezfp_decode_B7_branch (
        .in_c0_exe729021(bb_zfp_decode_B7_stall_region_out_c0_exe729021),
        .in_c0_exe829123(bb_zfp_decode_B7_stall_region_out_c0_exe829123),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_zfp_decode_B7_stall_region_out_valid_out),
        .out_c0_exe829123(zfp_decode_B7_branch_out_c0_exe829123),
        .out_stall_out(zfp_decode_B7_branch_out_stall_out),
        .out_valid_out_0(zfp_decode_B7_branch_out_valid_out_0),
        .out_valid_out_1(zfp_decode_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_decode_B7_merge(BLACKBOX,40)
    zfp_decode_B7_merge thezfp_decode_B7_merge (
        .in_c0_exe1029325_0(in_c0_exe1029325_0),
        .in_c0_exe1129426_0(in_c0_exe1129426_0),
        .in_c0_exe1229527_0(in_c0_exe1229527_0),
        .in_c0_exe128417_0(in_c0_exe128417_0),
        .in_c0_exe1329628_0(in_c0_exe1329628_0),
        .in_c0_exe1429729_0(in_c0_exe1429729_0),
        .in_c0_exe228518_0(in_c0_exe228518_0),
        .in_c0_exe328619_0(in_c0_exe328619_0),
        .in_c0_exe428720_0(in_c0_exe428720_0),
        .in_c0_exe729021_0(in_c0_exe729021_0),
        .in_c0_exe829123_0(in_c0_exe829123_0),
        .in_c0_exe929224_0(in_c0_exe929224_0),
        .in_stall_in(bb_zfp_decode_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1029325(zfp_decode_B7_merge_out_c0_exe1029325),
        .out_c0_exe1129426(zfp_decode_B7_merge_out_c0_exe1129426),
        .out_c0_exe1229527(zfp_decode_B7_merge_out_c0_exe1229527),
        .out_c0_exe128417(zfp_decode_B7_merge_out_c0_exe128417),
        .out_c0_exe1329628(zfp_decode_B7_merge_out_c0_exe1329628),
        .out_c0_exe1429729(zfp_decode_B7_merge_out_c0_exe1429729),
        .out_c0_exe228518(zfp_decode_B7_merge_out_c0_exe228518),
        .out_c0_exe328619(zfp_decode_B7_merge_out_c0_exe328619),
        .out_c0_exe428720(zfp_decode_B7_merge_out_c0_exe428720),
        .out_c0_exe729021(zfp_decode_B7_merge_out_c0_exe729021),
        .out_c0_exe829123(zfp_decode_B7_merge_out_c0_exe829123),
        .out_c0_exe929224(zfp_decode_B7_merge_out_c0_exe929224),
        .out_stall_out_0(zfp_decode_B7_merge_out_stall_out_0),
        .out_valid_out(zfp_decode_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B7_stall_region(BLACKBOX,2)
    zfp_decode_bb_B7_stall_region thebb_zfp_decode_B7_stall_region (
        .in_c0_exe1029325(zfp_decode_B7_merge_out_c0_exe1029325),
        .in_c0_exe1129426(zfp_decode_B7_merge_out_c0_exe1129426),
        .in_c0_exe1229527(zfp_decode_B7_merge_out_c0_exe1229527),
        .in_c0_exe128417(zfp_decode_B7_merge_out_c0_exe128417),
        .in_c0_exe1329628(zfp_decode_B7_merge_out_c0_exe1329628),
        .in_c0_exe1429729(zfp_decode_B7_merge_out_c0_exe1429729),
        .in_c0_exe228518(zfp_decode_B7_merge_out_c0_exe228518),
        .in_c0_exe328619(zfp_decode_B7_merge_out_c0_exe328619),
        .in_c0_exe428720(zfp_decode_B7_merge_out_c0_exe428720),
        .in_c0_exe729021(zfp_decode_B7_merge_out_c0_exe729021),
        .in_c0_exe829123(zfp_decode_B7_merge_out_c0_exe829123),
        .in_c0_exe929224(zfp_decode_B7_merge_out_c0_exe929224),
        .in_feedback_stall_in_15(in_feedback_stall_in_15),
        .in_feedback_stall_in_16(in_feedback_stall_in_16),
        .in_feedback_stall_in_17(in_feedback_stall_in_17),
        .in_feedback_stall_in_18(in_feedback_stall_in_18),
        .in_stall_in(zfp_decode_B7_branch_out_stall_out),
        .in_valid_in(zfp_decode_B7_merge_out_valid_out),
        .out_c0_exe729021(bb_zfp_decode_B7_stall_region_out_c0_exe729021),
        .out_c0_exe829123(bb_zfp_decode_B7_stall_region_out_c0_exe829123),
        .out_feedback_out_15(bb_zfp_decode_B7_stall_region_out_feedback_out_15),
        .out_feedback_out_16(bb_zfp_decode_B7_stall_region_out_feedback_out_16),
        .out_feedback_out_17(bb_zfp_decode_B7_stall_region_out_feedback_out_17),
        .out_feedback_out_18(bb_zfp_decode_B7_stall_region_out_feedback_out_18),
        .out_feedback_valid_out_15(bb_zfp_decode_B7_stall_region_out_feedback_valid_out_15),
        .out_feedback_valid_out_16(bb_zfp_decode_B7_stall_region_out_feedback_valid_out_16),
        .out_feedback_valid_out_17(bb_zfp_decode_B7_stall_region_out_feedback_valid_out_17),
        .out_feedback_valid_out_18(bb_zfp_decode_B7_stall_region_out_feedback_valid_out_18),
        .out_intel_reserved_ffwd_1_0(bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_4_0),
        .out_stall_out(bb_zfp_decode_B7_stall_region_out_stall_out),
        .out_valid_out(bb_zfp_decode_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_15_sync(GPOUT,3)
    assign out_feedback_out_15 = bb_zfp_decode_B7_stall_region_out_feedback_out_15;

    // feedback_out_16_sync(GPOUT,4)
    assign out_feedback_out_16 = bb_zfp_decode_B7_stall_region_out_feedback_out_16;

    // feedback_out_17_sync(GPOUT,5)
    assign out_feedback_out_17 = bb_zfp_decode_B7_stall_region_out_feedback_out_17;

    // feedback_out_18_sync(GPOUT,6)
    assign out_feedback_out_18 = bb_zfp_decode_B7_stall_region_out_feedback_out_18;

    // feedback_valid_out_15_sync(GPOUT,11)
    assign out_feedback_valid_out_15 = bb_zfp_decode_B7_stall_region_out_feedback_valid_out_15;

    // feedback_valid_out_16_sync(GPOUT,12)
    assign out_feedback_valid_out_16 = bb_zfp_decode_B7_stall_region_out_feedback_valid_out_16;

    // feedback_valid_out_17_sync(GPOUT,13)
    assign out_feedback_valid_out_17 = bb_zfp_decode_B7_stall_region_out_feedback_valid_out_17;

    // feedback_valid_out_18_sync(GPOUT,14)
    assign out_feedback_valid_out_18 = bb_zfp_decode_B7_stall_region_out_feedback_valid_out_18;

    // out_c0_exe829123(GPOUT,30)
    assign out_c0_exe829123 = zfp_decode_B7_branch_out_c0_exe829123;

    // out_intel_reserved_ffwd_1_0(GPOUT,31)
    assign out_intel_reserved_ffwd_1_0 = bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,32)
    assign out_intel_reserved_ffwd_2_0 = bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,33)
    assign out_intel_reserved_ffwd_3_0 = bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,34)
    assign out_intel_reserved_ffwd_4_0 = bb_zfp_decode_B7_stall_region_out_intel_reserved_ffwd_4_0;

    // out_stall_in_0(GPOUT,35)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,36)
    assign out_stall_out_0 = zfp_decode_B7_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = zfp_decode_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,38)
    assign out_valid_out_1 = zfp_decode_B7_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,41)
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
