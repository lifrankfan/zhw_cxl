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

// SystemVerilog created from bb_zfp_1d_decompress_B6_stall_region
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_bb_B6_stall_region (
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_c0_exe2197,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [63:0] i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [63:0] i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_c0_exit195_2_tpl;
    wire [1:0] bubble_join_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_c;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,25)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x(STALLENABLE,28)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x(BLACKBOX,19)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_profile_loop_o_valid@10
    // out out_c0_exit195_0_tpl@10
    // out out_c0_exit195_1_tpl@10
    // out out_c0_exit195_2_tpl@10
    zfp_1d_decompress_i_sfc_s_c0_in_for_body00009_zfp_1d_decompress1 thei_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_c0_eni1190_0_tpl(GND_q),
        .in_c0_eni1190_1_tpl(GND_q),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_o_stall(i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit195_0_tpl(),
        .out_c0_exit195_1_tpl(),
        .out_c0_exit195_2_tpl(i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_c0_exit195_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,9)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_5_0;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_6_0;

    // bubble_join_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x(BITJOIN,23)
    assign bubble_join_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_q = {i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_c0_exit195_2_tpl, i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x(BITSELECT,24)
    assign bubble_select_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,16)@10
    assign out_c0_exe2197 = bubble_select_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_c;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_2_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress1_aunroll_x_out_intel_reserved_ffwd_8_0;

    // rst_sync(RESETSYNC,35)
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
