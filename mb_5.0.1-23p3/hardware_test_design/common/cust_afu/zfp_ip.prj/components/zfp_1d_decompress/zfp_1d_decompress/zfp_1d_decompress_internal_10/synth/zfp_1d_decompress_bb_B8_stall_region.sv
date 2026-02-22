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

// SystemVerilog created from bb_zfp_1d_decompress_B8_stall_region
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_bb_B8_stall_region (
    input wire [0:0] in_iowr_bl_out_stream_i_fifoready,
    output wire [63:0] out_iowr_bl_out_stream_o_fifodata,
    output wire [0:0] out_iowr_bl_out_stream_o_fifovalid,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe3209,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_iowr_bl_out_stream_o_fifodata;
    wire [0:0] i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_iowr_bl_out_stream_o_fifovalid;
    wire [0:0] i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_o_stall;
    wire [0:0] i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_profile_loop_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_c0_exit206_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_c0_exit206_3_tpl;
    wire [65:0] bubble_join_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_d;
    wire [0:0] SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_wireValid;
    wire [0:0] SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_and0;
    wire [0:0] SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_backStall;
    wire [0:0] SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_V1;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,31)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x(BLACKBOX,23)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@19
    // out out_profile_loop_o_valid@19
    // out out_c0_exit206_0_tpl@19
    // out out_c0_exit206_1_tpl@19
    // out out_c0_exit206_2_tpl@19
    // out out_c0_exit206_3_tpl@19
    zfp_1d_decompress_i_sfc_s_c0_in_for_body00000_zfp_1d_decompress1 thei_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_c0_eni1200_0_tpl(GND_q),
        .in_c0_eni1200_1_tpl(GND_q),
        .out_o_stall(i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit206_0_tpl(),
        .out_c0_exit206_1_tpl(i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_c0_exit206_1_tpl),
        .out_c0_exit206_2_tpl(),
        .out_c0_exit206_3_tpl(i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_c0_exit206_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x(STALLENABLE,34)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_consumed0 = (~ (SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_backStall) & SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_consumed1 = (~ (i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_o_valid;

    // SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3(STALLENABLE,30)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_V0 = SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_backStall = in_stall_in | ~ (SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_and0 = i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_o_valid;
    assign SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_wireValid = SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_V0 & SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_and0;

    // bubble_join_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x(BITJOIN,27)
    assign bubble_join_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_q = {i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_c0_exit206_3_tpl, i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_c0_exit206_1_tpl, i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x(BITSELECT,28)
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_q[65:65]);

    // i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3(BLACKBOX,8)@19
    // in in_i_stall@20000000
    // out out_iowr_bl_out_stream_o_fifodata@20000000
    // out out_iowr_bl_out_stream_o_fifovalid@20000000
    // out out_o_stall@20000000
    zfp_1d_decompress_i_iowr_bl_out_stream_u00006_zfp_1d_decompress0 thei_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3 (
        .in_i_data(bubble_select_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_c),
        .in_i_stall(SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_V1),
        .in_iowr_bl_out_stream_i_fifoready(in_iowr_bl_out_stream_i_fifoready),
        .out_iowr_bl_out_stream_o_fifodata(i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_iowr_bl_out_stream_o_fifodata),
        .out_iowr_bl_out_stream_o_fifovalid(i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_iowr_bl_out_stream_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_o_stall),
        .out_o_valid(i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_iowr_bl_out_stream_o_fifodata = i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_iowr_bl_out_stream_o_fifodata;
    assign out_iowr_bl_out_stream_o_fifovalid = i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_out_iowr_bl_out_stream_o_fifovalid;

    // sync_out(GPOUT,20)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,22)@19
    assign out_c0_exe3209 = bubble_select_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_d;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_body_zfp_1d_decompresss_c0_enter20120_zfp_1d_decompress1_aunroll_x_b;
    assign out_valid_out = SE_out_i_iowr_bl_out_stream_unnamed_zfp_1d_decompress26_zfp_1d_decompress3_V0;

    // rst_sync(RESETSYNC,43)
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
