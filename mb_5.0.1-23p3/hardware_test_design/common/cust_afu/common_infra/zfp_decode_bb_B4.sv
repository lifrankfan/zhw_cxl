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

// SystemVerilog created from bb_zfp_decode_B4
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B4 (
    input wire [63:0] in_feedback_in_15,
    input wire [63:0] in_feedback_in_16,
    input wire [63:0] in_feedback_in_17,
    input wire [63:0] in_feedback_in_18,
    output wire [63:0] out_feedback_out_20,
    output wire [31:0] out_feedback_out_21,
    output wire [0:0] out_feedback_out_22,
    input wire [0:0] in_feedback_stall_in_20,
    input wire [0:0] in_feedback_stall_in_21,
    input wire [0:0] in_feedback_stall_in_22,
    output wire [0:0] out_feedback_stall_out_15,
    output wire [0:0] out_feedback_stall_out_16,
    output wire [0:0] out_feedback_stall_out_17,
    output wire [0:0] out_feedback_stall_out_18,
    input wire [0:0] in_feedback_valid_in_15,
    input wire [0:0] in_feedback_valid_in_16,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [0:0] in_feedback_valid_in_18,
    output wire [0:0] out_feedback_valid_out_20,
    output wire [0:0] out_feedback_valid_out_21,
    output wire [0:0] out_feedback_valid_out_22,
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
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe128,
    output wire [0:0] out_c0_exe139,
    output wire [31:0] out_c0_exe1410,
    output wire [31:0] out_c0_exe1611,
    output wire [31:0] out_c0_exe1712,
    output wire [0:0] out_c0_exe22171,
    output wire [0:0] out_c0_exe52203,
    output wire [31:0] out_c0_exe82234,
    output wire [31:0] out_c0_exe95,
    output wire [63:0] out_c1_exe223815,
    output wire [0:0] out_stall_out_0,
    output wire [63:0] out_ublock_sroa_0_0_pop18,
    output wire [63:0] out_ublock_sroa_12_0_pop15,
    output wire [63:0] out_ublock_sroa_6_0_pop17,
    output wire [63:0] out_ublock_sroa_9_0_pop16,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zfp_decode_B4_stall_region_out_c0_exe128;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_c0_exe139;
    wire [31:0] bb_zfp_decode_B4_stall_region_out_c0_exe1410;
    wire [31:0] bb_zfp_decode_B4_stall_region_out_c0_exe1611;
    wire [31:0] bb_zfp_decode_B4_stall_region_out_c0_exe1712;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_c0_exe22171;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_c0_exe52203;
    wire [31:0] bb_zfp_decode_B4_stall_region_out_c0_exe82234;
    wire [31:0] bb_zfp_decode_B4_stall_region_out_c0_exe95;
    wire [63:0] bb_zfp_decode_B4_stall_region_out_c1_exe223815;
    wire [63:0] bb_zfp_decode_B4_stall_region_out_feedback_out_20;
    wire [31:0] bb_zfp_decode_B4_stall_region_out_feedback_out_21;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_feedback_out_22;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_feedback_stall_out_15;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_feedback_stall_out_16;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_feedback_stall_out_17;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_feedback_stall_out_18;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_feedback_valid_out_20;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_feedback_valid_out_21;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_feedback_valid_out_22;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_stall_out;
    wire [63:0] bb_zfp_decode_B4_stall_region_out_ublock_sroa_0_0_pop18;
    wire [63:0] bb_zfp_decode_B4_stall_region_out_ublock_sroa_12_0_pop15;
    wire [63:0] bb_zfp_decode_B4_stall_region_out_ublock_sroa_6_0_pop17;
    wire [63:0] bb_zfp_decode_B4_stall_region_out_ublock_sroa_9_0_pop16;
    wire [0:0] bb_zfp_decode_B4_stall_region_out_valid_out;
    wire [0:0] zfp_decode_B4_branch_out_c0_exe128;
    wire [0:0] zfp_decode_B4_branch_out_c0_exe139;
    wire [31:0] zfp_decode_B4_branch_out_c0_exe1410;
    wire [31:0] zfp_decode_B4_branch_out_c0_exe1611;
    wire [31:0] zfp_decode_B4_branch_out_c0_exe1712;
    wire [0:0] zfp_decode_B4_branch_out_c0_exe22171;
    wire [0:0] zfp_decode_B4_branch_out_c0_exe52203;
    wire [31:0] zfp_decode_B4_branch_out_c0_exe82234;
    wire [31:0] zfp_decode_B4_branch_out_c0_exe95;
    wire [63:0] zfp_decode_B4_branch_out_c1_exe223815;
    wire [0:0] zfp_decode_B4_branch_out_stall_out;
    wire [63:0] zfp_decode_B4_branch_out_ublock_sroa_0_0_pop18;
    wire [63:0] zfp_decode_B4_branch_out_ublock_sroa_12_0_pop15;
    wire [63:0] zfp_decode_B4_branch_out_ublock_sroa_6_0_pop17;
    wire [63:0] zfp_decode_B4_branch_out_ublock_sroa_9_0_pop16;
    wire [0:0] zfp_decode_B4_branch_out_valid_out_0;
    wire [0:0] zfp_decode_B4_merge_out_c0_exe106;
    wire [31:0] zfp_decode_B4_merge_out_c0_exe117;
    wire [0:0] zfp_decode_B4_merge_out_c0_exe128;
    wire [0:0] zfp_decode_B4_merge_out_c0_exe139;
    wire [31:0] zfp_decode_B4_merge_out_c0_exe1410;
    wire [31:0] zfp_decode_B4_merge_out_c0_exe1611;
    wire [31:0] zfp_decode_B4_merge_out_c0_exe1712;
    wire [0:0] zfp_decode_B4_merge_out_c0_exe22171;
    wire [31:0] zfp_decode_B4_merge_out_c0_exe42192;
    wire [0:0] zfp_decode_B4_merge_out_c0_exe52203;
    wire [31:0] zfp_decode_B4_merge_out_c0_exe82234;
    wire [31:0] zfp_decode_B4_merge_out_c0_exe95;
    wire [63:0] zfp_decode_B4_merge_out_c1_exe123714;
    wire [63:0] zfp_decode_B4_merge_out_c1_exe223815;
    wire [63:0] zfp_decode_B4_merge_out_c1_exe323916;
    wire [0:0] zfp_decode_B4_merge_out_c2_exe122913;
    wire [0:0] zfp_decode_B4_merge_out_stall_out_0;
    wire [0:0] zfp_decode_B4_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_decode_B4_branch(BLACKBOX,58)
    zfp_decode_B4_branch thezfp_decode_B4_branch (
        .in_c0_exe128(bb_zfp_decode_B4_stall_region_out_c0_exe128),
        .in_c0_exe139(bb_zfp_decode_B4_stall_region_out_c0_exe139),
        .in_c0_exe1410(bb_zfp_decode_B4_stall_region_out_c0_exe1410),
        .in_c0_exe1611(bb_zfp_decode_B4_stall_region_out_c0_exe1611),
        .in_c0_exe1712(bb_zfp_decode_B4_stall_region_out_c0_exe1712),
        .in_c0_exe22171(bb_zfp_decode_B4_stall_region_out_c0_exe22171),
        .in_c0_exe52203(bb_zfp_decode_B4_stall_region_out_c0_exe52203),
        .in_c0_exe82234(bb_zfp_decode_B4_stall_region_out_c0_exe82234),
        .in_c0_exe95(bb_zfp_decode_B4_stall_region_out_c0_exe95),
        .in_c1_exe223815(bb_zfp_decode_B4_stall_region_out_c1_exe223815),
        .in_stall_in_0(in_stall_in_0),
        .in_ublock_sroa_0_0_pop18(bb_zfp_decode_B4_stall_region_out_ublock_sroa_0_0_pop18),
        .in_ublock_sroa_12_0_pop15(bb_zfp_decode_B4_stall_region_out_ublock_sroa_12_0_pop15),
        .in_ublock_sroa_6_0_pop17(bb_zfp_decode_B4_stall_region_out_ublock_sroa_6_0_pop17),
        .in_ublock_sroa_9_0_pop16(bb_zfp_decode_B4_stall_region_out_ublock_sroa_9_0_pop16),
        .in_valid_in(bb_zfp_decode_B4_stall_region_out_valid_out),
        .out_c0_exe128(zfp_decode_B4_branch_out_c0_exe128),
        .out_c0_exe139(zfp_decode_B4_branch_out_c0_exe139),
        .out_c0_exe1410(zfp_decode_B4_branch_out_c0_exe1410),
        .out_c0_exe1611(zfp_decode_B4_branch_out_c0_exe1611),
        .out_c0_exe1712(zfp_decode_B4_branch_out_c0_exe1712),
        .out_c0_exe22171(zfp_decode_B4_branch_out_c0_exe22171),
        .out_c0_exe52203(zfp_decode_B4_branch_out_c0_exe52203),
        .out_c0_exe82234(zfp_decode_B4_branch_out_c0_exe82234),
        .out_c0_exe95(zfp_decode_B4_branch_out_c0_exe95),
        .out_c1_exe223815(zfp_decode_B4_branch_out_c1_exe223815),
        .out_stall_out(zfp_decode_B4_branch_out_stall_out),
        .out_ublock_sroa_0_0_pop18(zfp_decode_B4_branch_out_ublock_sroa_0_0_pop18),
        .out_ublock_sroa_12_0_pop15(zfp_decode_B4_branch_out_ublock_sroa_12_0_pop15),
        .out_ublock_sroa_6_0_pop17(zfp_decode_B4_branch_out_ublock_sroa_6_0_pop17),
        .out_ublock_sroa_9_0_pop16(zfp_decode_B4_branch_out_ublock_sroa_9_0_pop16),
        .out_valid_out_0(zfp_decode_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_decode_B4_merge(BLACKBOX,59)
    zfp_decode_B4_merge thezfp_decode_B4_merge (
        .in_c0_exe106_0(in_c0_exe106_0),
        .in_c0_exe117_0(in_c0_exe117_0),
        .in_c0_exe128_0(in_c0_exe128_0),
        .in_c0_exe139_0(in_c0_exe139_0),
        .in_c0_exe1410_0(in_c0_exe1410_0),
        .in_c0_exe1611_0(in_c0_exe1611_0),
        .in_c0_exe1712_0(in_c0_exe1712_0),
        .in_c0_exe22171_0(in_c0_exe22171_0),
        .in_c0_exe42192_0(in_c0_exe42192_0),
        .in_c0_exe52203_0(in_c0_exe52203_0),
        .in_c0_exe82234_0(in_c0_exe82234_0),
        .in_c0_exe95_0(in_c0_exe95_0),
        .in_c1_exe123714_0(in_c1_exe123714_0),
        .in_c1_exe223815_0(in_c1_exe223815_0),
        .in_c1_exe323916_0(in_c1_exe323916_0),
        .in_c2_exe122913_0(in_c2_exe122913_0),
        .in_stall_in(bb_zfp_decode_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe106(zfp_decode_B4_merge_out_c0_exe106),
        .out_c0_exe117(zfp_decode_B4_merge_out_c0_exe117),
        .out_c0_exe128(zfp_decode_B4_merge_out_c0_exe128),
        .out_c0_exe139(zfp_decode_B4_merge_out_c0_exe139),
        .out_c0_exe1410(zfp_decode_B4_merge_out_c0_exe1410),
        .out_c0_exe1611(zfp_decode_B4_merge_out_c0_exe1611),
        .out_c0_exe1712(zfp_decode_B4_merge_out_c0_exe1712),
        .out_c0_exe22171(zfp_decode_B4_merge_out_c0_exe22171),
        .out_c0_exe42192(zfp_decode_B4_merge_out_c0_exe42192),
        .out_c0_exe52203(zfp_decode_B4_merge_out_c0_exe52203),
        .out_c0_exe82234(zfp_decode_B4_merge_out_c0_exe82234),
        .out_c0_exe95(zfp_decode_B4_merge_out_c0_exe95),
        .out_c1_exe123714(zfp_decode_B4_merge_out_c1_exe123714),
        .out_c1_exe223815(zfp_decode_B4_merge_out_c1_exe223815),
        .out_c1_exe323916(zfp_decode_B4_merge_out_c1_exe323916),
        .out_c2_exe122913(zfp_decode_B4_merge_out_c2_exe122913),
        .out_stall_out_0(zfp_decode_B4_merge_out_stall_out_0),
        .out_valid_out(zfp_decode_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B4_stall_region(BLACKBOX,2)
    zfp_decode_bb_B4_stall_region thebb_zfp_decode_B4_stall_region (
        .in_c0_exe106(zfp_decode_B4_merge_out_c0_exe106),
        .in_c0_exe117(zfp_decode_B4_merge_out_c0_exe117),
        .in_c0_exe128(zfp_decode_B4_merge_out_c0_exe128),
        .in_c0_exe139(zfp_decode_B4_merge_out_c0_exe139),
        .in_c0_exe1410(zfp_decode_B4_merge_out_c0_exe1410),
        .in_c0_exe1611(zfp_decode_B4_merge_out_c0_exe1611),
        .in_c0_exe1712(zfp_decode_B4_merge_out_c0_exe1712),
        .in_c0_exe22171(zfp_decode_B4_merge_out_c0_exe22171),
        .in_c0_exe42192(zfp_decode_B4_merge_out_c0_exe42192),
        .in_c0_exe52203(zfp_decode_B4_merge_out_c0_exe52203),
        .in_c0_exe82234(zfp_decode_B4_merge_out_c0_exe82234),
        .in_c0_exe95(zfp_decode_B4_merge_out_c0_exe95),
        .in_c1_exe123714(zfp_decode_B4_merge_out_c1_exe123714),
        .in_c1_exe223815(zfp_decode_B4_merge_out_c1_exe223815),
        .in_c1_exe323916(zfp_decode_B4_merge_out_c1_exe323916),
        .in_c2_exe122913(zfp_decode_B4_merge_out_c2_exe122913),
        .in_feedback_in_15(in_feedback_in_15),
        .in_feedback_in_16(in_feedback_in_16),
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_in_18(in_feedback_in_18),
        .in_feedback_stall_in_20(in_feedback_stall_in_20),
        .in_feedback_stall_in_21(in_feedback_stall_in_21),
        .in_feedback_stall_in_22(in_feedback_stall_in_22),
        .in_feedback_valid_in_15(in_feedback_valid_in_15),
        .in_feedback_valid_in_16(in_feedback_valid_in_16),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_feedback_valid_in_18(in_feedback_valid_in_18),
        .in_stall_in(zfp_decode_B4_branch_out_stall_out),
        .in_valid_in(zfp_decode_B4_merge_out_valid_out),
        .out_c0_exe128(bb_zfp_decode_B4_stall_region_out_c0_exe128),
        .out_c0_exe139(bb_zfp_decode_B4_stall_region_out_c0_exe139),
        .out_c0_exe1410(bb_zfp_decode_B4_stall_region_out_c0_exe1410),
        .out_c0_exe1611(bb_zfp_decode_B4_stall_region_out_c0_exe1611),
        .out_c0_exe1712(bb_zfp_decode_B4_stall_region_out_c0_exe1712),
        .out_c0_exe22171(bb_zfp_decode_B4_stall_region_out_c0_exe22171),
        .out_c0_exe52203(bb_zfp_decode_B4_stall_region_out_c0_exe52203),
        .out_c0_exe82234(bb_zfp_decode_B4_stall_region_out_c0_exe82234),
        .out_c0_exe95(bb_zfp_decode_B4_stall_region_out_c0_exe95),
        .out_c1_exe223815(bb_zfp_decode_B4_stall_region_out_c1_exe223815),
        .out_feedback_out_20(bb_zfp_decode_B4_stall_region_out_feedback_out_20),
        .out_feedback_out_21(bb_zfp_decode_B4_stall_region_out_feedback_out_21),
        .out_feedback_out_22(bb_zfp_decode_B4_stall_region_out_feedback_out_22),
        .out_feedback_stall_out_15(bb_zfp_decode_B4_stall_region_out_feedback_stall_out_15),
        .out_feedback_stall_out_16(bb_zfp_decode_B4_stall_region_out_feedback_stall_out_16),
        .out_feedback_stall_out_17(bb_zfp_decode_B4_stall_region_out_feedback_stall_out_17),
        .out_feedback_stall_out_18(bb_zfp_decode_B4_stall_region_out_feedback_stall_out_18),
        .out_feedback_valid_out_20(bb_zfp_decode_B4_stall_region_out_feedback_valid_out_20),
        .out_feedback_valid_out_21(bb_zfp_decode_B4_stall_region_out_feedback_valid_out_21),
        .out_feedback_valid_out_22(bb_zfp_decode_B4_stall_region_out_feedback_valid_out_22),
        .out_stall_out(bb_zfp_decode_B4_stall_region_out_stall_out),
        .out_ublock_sroa_0_0_pop18(bb_zfp_decode_B4_stall_region_out_ublock_sroa_0_0_pop18),
        .out_ublock_sroa_12_0_pop15(bb_zfp_decode_B4_stall_region_out_ublock_sroa_12_0_pop15),
        .out_ublock_sroa_6_0_pop17(bb_zfp_decode_B4_stall_region_out_ublock_sroa_6_0_pop17),
        .out_ublock_sroa_9_0_pop16(bb_zfp_decode_B4_stall_region_out_ublock_sroa_9_0_pop16),
        .out_valid_out(bb_zfp_decode_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_20_sync(GPOUT,7)
    assign out_feedback_out_20 = bb_zfp_decode_B4_stall_region_out_feedback_out_20;

    // feedback_out_21_sync(GPOUT,8)
    assign out_feedback_out_21 = bb_zfp_decode_B4_stall_region_out_feedback_out_21;

    // feedback_out_22_sync(GPOUT,9)
    assign out_feedback_out_22 = bb_zfp_decode_B4_stall_region_out_feedback_out_22;

    // feedback_stall_out_15_sync(GPOUT,13)
    assign out_feedback_stall_out_15 = bb_zfp_decode_B4_stall_region_out_feedback_stall_out_15;

    // feedback_stall_out_16_sync(GPOUT,14)
    assign out_feedback_stall_out_16 = bb_zfp_decode_B4_stall_region_out_feedback_stall_out_16;

    // feedback_stall_out_17_sync(GPOUT,15)
    assign out_feedback_stall_out_17 = bb_zfp_decode_B4_stall_region_out_feedback_stall_out_17;

    // feedback_stall_out_18_sync(GPOUT,16)
    assign out_feedback_stall_out_18 = bb_zfp_decode_B4_stall_region_out_feedback_stall_out_18;

    // feedback_valid_out_20_sync(GPOUT,21)
    assign out_feedback_valid_out_20 = bb_zfp_decode_B4_stall_region_out_feedback_valid_out_20;

    // feedback_valid_out_21_sync(GPOUT,22)
    assign out_feedback_valid_out_21 = bb_zfp_decode_B4_stall_region_out_feedback_valid_out_21;

    // feedback_valid_out_22_sync(GPOUT,23)
    assign out_feedback_valid_out_22 = bb_zfp_decode_B4_stall_region_out_feedback_valid_out_22;

    // out_c0_exe128(GPOUT,42)
    assign out_c0_exe128 = zfp_decode_B4_branch_out_c0_exe128;

    // out_c0_exe139(GPOUT,43)
    assign out_c0_exe139 = zfp_decode_B4_branch_out_c0_exe139;

    // out_c0_exe1410(GPOUT,44)
    assign out_c0_exe1410 = zfp_decode_B4_branch_out_c0_exe1410;

    // out_c0_exe1611(GPOUT,45)
    assign out_c0_exe1611 = zfp_decode_B4_branch_out_c0_exe1611;

    // out_c0_exe1712(GPOUT,46)
    assign out_c0_exe1712 = zfp_decode_B4_branch_out_c0_exe1712;

    // out_c0_exe22171(GPOUT,47)
    assign out_c0_exe22171 = zfp_decode_B4_branch_out_c0_exe22171;

    // out_c0_exe52203(GPOUT,48)
    assign out_c0_exe52203 = zfp_decode_B4_branch_out_c0_exe52203;

    // out_c0_exe82234(GPOUT,49)
    assign out_c0_exe82234 = zfp_decode_B4_branch_out_c0_exe82234;

    // out_c0_exe95(GPOUT,50)
    assign out_c0_exe95 = zfp_decode_B4_branch_out_c0_exe95;

    // out_c1_exe223815(GPOUT,51)
    assign out_c1_exe223815 = zfp_decode_B4_branch_out_c1_exe223815;

    // out_stall_out_0(GPOUT,52)
    assign out_stall_out_0 = zfp_decode_B4_merge_out_stall_out_0;

    // out_ublock_sroa_0_0_pop18(GPOUT,53)
    assign out_ublock_sroa_0_0_pop18 = zfp_decode_B4_branch_out_ublock_sroa_0_0_pop18;

    // out_ublock_sroa_12_0_pop15(GPOUT,54)
    assign out_ublock_sroa_12_0_pop15 = zfp_decode_B4_branch_out_ublock_sroa_12_0_pop15;

    // out_ublock_sroa_6_0_pop17(GPOUT,55)
    assign out_ublock_sroa_6_0_pop17 = zfp_decode_B4_branch_out_ublock_sroa_6_0_pop17;

    // out_ublock_sroa_9_0_pop16(GPOUT,56)
    assign out_ublock_sroa_9_0_pop16 = zfp_decode_B4_branch_out_ublock_sroa_9_0_pop16;

    // out_valid_out_0(GPOUT,57)
    assign out_valid_out_0 = zfp_decode_B4_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,60)
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
