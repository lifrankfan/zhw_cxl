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

// SystemVerilog created from bb_zfp_1d_decompress_B2_stall_region
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_bb_B2_stall_region (
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x(STALLENABLE,23)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x(BLACKBOX,16)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c0_exit119_0_tpl@5
    // out out_intel_reserved_ffwd_0_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_2_tpl@20000000
    zfp_1d_decompress_i_sfc_s_c0_in_for_cond00008_zfp_1d_decompress0 thei_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_unnamed_zfp_1d_decompress3_0_tpl(GND_q),
        .out_o_stall(i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_o_valid),
        .out_c0_exit119_0_tpl(),
        .out_intel_reserved_ffwd_0_0_0_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,20)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,15)@5
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_V0;

    // regfree_osync_aunroll_x(GPOUT,17)
    assign out_intel_reserved_ffwd_0_0_0_tpl = i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    assign out_intel_reserved_ffwd_0_0_1_tpl = i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    assign out_intel_reserved_ffwd_0_0_2_tpl = i_sfc_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;

    // rst_sync(RESETSYNC,28)
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
