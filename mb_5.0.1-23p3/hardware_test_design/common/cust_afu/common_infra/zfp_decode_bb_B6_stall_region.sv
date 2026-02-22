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

// SystemVerilog created from bb_zfp_decode_B6_stall_region
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B6_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond5495_pop38145,
    input wire [31:0] in_k_058_pop1999_pop40149,
    input wire [31:0] in_lim_ext108,
    input wire [31:0] in_lim_ext83_pop31138,
    input wire [0:0] in_notexit7697_pop39147,
    input wire [63:0] in_or_i_shuffle134,
    input wire [0:0] in_pop37136,
    input wire [31:0] in_reorder_limiter_enter113,
    input wire [31:0] in_reorder_limiter_enter86_pop32140,
    input wire [0:0] in_tobool_i3493_pop36129,
    input wire [63:0] in_ublock_sroa_0_0_pop18128,
    input wire [63:0] in_ublock_sroa_12_0_pop15125,
    input wire [63:0] in_ublock_sroa_6_0_pop17127,
    input wire [63:0] in_ublock_sroa_9_0_pop16126,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10293,
    output wire [63:0] out_c0_exe11294,
    output wire [63:0] out_c0_exe12295,
    output wire [63:0] out_c0_exe1284,
    output wire [63:0] out_c0_exe13296,
    output wire [63:0] out_c0_exe14297,
    output wire [63:0] out_c0_exe2285,
    output wire [63:0] out_c0_exe3286,
    output wire [63:0] out_c0_exe4287,
    output wire [0:0] out_c0_exe6289,
    output wire [0:0] out_c0_exe7290,
    output wire [31:0] out_c0_exe8291,
    output wire [0:0] out_c0_exe9292,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_profile_loop_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_10_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_11_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_12_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_13_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_14_tpl;
    wire [483:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [63:0] bubble_select_stall_entry_l;
    wire [63:0] bubble_select_stall_entry_m;
    wire [63:0] bubble_select_stall_entry_n;
    wire [63:0] bubble_select_stall_entry_o;
    wire [548:0] bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_k;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_l;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_m;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_n;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_o;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,16)
    assign bubble_join_stall_entry_q = {in_ublock_sroa_9_0_pop16126, in_ublock_sroa_6_0_pop17127, in_ublock_sroa_12_0_pop15125, in_ublock_sroa_0_0_pop18128, in_tobool_i3493_pop36129, in_reorder_limiter_enter86_pop32140, in_reorder_limiter_enter113, in_pop37136, in_or_i_shuffle134, in_notexit7697_pop39147, in_lim_ext83_pop31138, in_lim_ext108, in_k_058_pop1999_pop40149, in_exitcond5495_pop38145};

    // bubble_select_stall_entry(BITSELECT,17)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[161:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[162:162]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[194:163]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[226:195]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[227:227]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[291:228]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[355:292]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[419:356]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[483:420]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x(STALLENABLE,25)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_wireValid = i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x(BLACKBOX,14)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_profile_loop_o_valid@11
    // out out_c0_exit283_0_tpl@11
    // out out_c0_exit283_1_tpl@11
    // out out_c0_exit283_2_tpl@11
    // out out_c0_exit283_3_tpl@11
    // out out_c0_exit283_4_tpl@11
    // out out_c0_exit283_5_tpl@11
    // out out_c0_exit283_6_tpl@11
    // out out_c0_exit283_7_tpl@11
    // out out_c0_exit283_8_tpl@11
    // out out_c0_exit283_9_tpl@11
    // out out_c0_exit283_10_tpl@11
    // out out_c0_exit283_11_tpl@11
    // out out_c0_exit283_12_tpl@11
    // out out_c0_exit283_13_tpl@11
    // out out_c0_exit283_14_tpl@11
    // out out_c0_exit283_15_tpl@11
    // out out_c0_exit283_16_tpl@11
    zfp_decode_i_sfc_s_c0_in_for_body5_s_c0_enter25334_zfp_decode15 thei_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni15_0_tpl(GND_q),
        .in_c0_eni15_1_tpl(bubble_select_stall_entry_c),
        .in_c0_eni15_2_tpl(GND_q),
        .in_c0_eni15_3_tpl(bubble_select_stall_entry_g),
        .in_c0_eni15_4_tpl(bubble_select_stall_entry_n),
        .in_c0_eni15_5_tpl(bubble_select_stall_entry_o),
        .in_c0_eni15_6_tpl(bubble_select_stall_entry_m),
        .in_c0_eni15_7_tpl(bubble_select_stall_entry_l),
        .in_c0_eni15_8_tpl(bubble_select_stall_entry_h),
        .in_c0_eni15_9_tpl(bubble_select_stall_entry_j),
        .in_c0_eni15_10_tpl(bubble_select_stall_entry_b),
        .in_c0_eni15_11_tpl(bubble_select_stall_entry_e),
        .in_c0_eni15_12_tpl(bubble_select_stall_entry_k),
        .in_c0_eni15_13_tpl(bubble_select_stall_entry_f),
        .in_c0_eni15_14_tpl(bubble_select_stall_entry_d),
        .in_c0_eni15_15_tpl(bubble_select_stall_entry_i),
        .out_o_stall(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit283_0_tpl(),
        .out_c0_exit283_1_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_1_tpl),
        .out_c0_exit283_2_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_2_tpl),
        .out_c0_exit283_3_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_3_tpl),
        .out_c0_exit283_4_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_4_tpl),
        .out_c0_exit283_5_tpl(),
        .out_c0_exit283_6_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_6_tpl),
        .out_c0_exit283_7_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_7_tpl),
        .out_c0_exit283_8_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_8_tpl),
        .out_c0_exit283_9_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_9_tpl),
        .out_c0_exit283_10_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_10_tpl),
        .out_c0_exit283_11_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_11_tpl),
        .out_c0_exit283_12_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_12_tpl),
        .out_c0_exit283_13_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_13_tpl),
        .out_c0_exit283_14_tpl(i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_14_tpl),
        .out_c0_exit283_15_tpl(),
        .out_c0_exit283_16_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,22)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,11)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x(BITJOIN,20)
    assign bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q = {i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_14_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_13_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_12_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_11_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_10_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_9_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_8_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_7_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_6_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_4_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_3_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_2_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_c0_exit283_1_tpl, i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x(BITSELECT,21)
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[192:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[256:193]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[257:257]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[258:258]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[290:259]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[291:291]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[292:292]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[356:293]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[420:357]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[484:421]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_q[548:485]);

    // dupName_0_sync_out_x(GPOUT,13)@11
    assign out_c0_exe10293 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_k;
    assign out_c0_exe11294 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_l;
    assign out_c0_exe12295 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_m;
    assign out_c0_exe1284 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_c;
    assign out_c0_exe13296 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_n;
    assign out_c0_exe14297 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_o;
    assign out_c0_exe2285 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_d;
    assign out_c0_exe3286 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_e;
    assign out_c0_exe4287 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_f;
    assign out_c0_exe6289 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_g;
    assign out_c0_exe7290 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_h;
    assign out_c0_exe8291 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_i;
    assign out_c0_exe9292 = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_j;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode15_aunroll_x_V0;

    // rst_sync(RESETSYNC,36)
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
