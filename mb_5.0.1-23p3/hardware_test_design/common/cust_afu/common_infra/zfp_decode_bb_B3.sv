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

// SystemVerilog created from bb_zfp_decode_B3
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B3 (
    input wire [63:0] in_feedback_in_20,
    input wire [31:0] in_feedback_in_21,
    input wire [0:0] in_feedback_in_22,
    output wire [0:0] out_feedback_stall_out_20,
    output wire [0:0] out_feedback_stall_out_21,
    output wire [0:0] out_feedback_stall_out_22,
    input wire [0:0] in_feedback_valid_in_20,
    input wire [0:0] in_feedback_valid_in_21,
    input wire [0:0] in_feedback_valid_in_22,
    input wire [0:0] in_forked81_0,
    input wire [0:0] in_forked81_1,
    input wire [63:0] in_iord_bl_in_stream_0_i_fifodata,
    input wire [0:0] in_iord_bl_in_stream_0_i_fifovalid,
    input wire [31:0] in_lim_ext106_0,
    input wire [31:0] in_lim_ext106_1,
    input wire [31:0] in_reorder_limiter_enter111_0,
    input wire [31:0] in_reorder_limiter_enter111_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1176,
    output wire [0:0] out_c0_exe2177,
    output wire [31:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [31:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c1_exe3,
    output wire [63:0] out_c2_exe1,
    output wire [0:0] out_c2_exe2,
    output wire [0:0] out_c2_exe3,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_iord_bl_in_stream_0_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_in_stream_0_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zfp_decode_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_c0_exe1176;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_c0_exe2177;
    wire [31:0] bb_zfp_decode_B3_stall_region_out_c0_exe3;
    wire [31:0] bb_zfp_decode_B3_stall_region_out_c0_exe4;
    wire [31:0] bb_zfp_decode_B3_stall_region_out_c0_exe5;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_c0_exe6;
    wire [31:0] bb_zfp_decode_B3_stall_region_out_c0_exe7;
    wire [31:0] bb_zfp_decode_B3_stall_region_out_c0_exe8;
    wire [31:0] bb_zfp_decode_B3_stall_region_out_c1_exe3;
    wire [63:0] bb_zfp_decode_B3_stall_region_out_c2_exe1;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_c2_exe2;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_c2_exe3;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_feedback_stall_out_20;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_feedback_stall_out_21;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_feedback_stall_out_22;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_iord_bl_in_stream_0_o_fifoalmost_full;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_iord_bl_in_stream_0_o_fifoready;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_stall_out;
    wire [0:0] bb_zfp_decode_B3_stall_region_out_valid_out;
    wire [0:0] zfp_decode_B3_branch_out_c0_exe1176;
    wire [0:0] zfp_decode_B3_branch_out_c0_exe2177;
    wire [31:0] zfp_decode_B3_branch_out_c0_exe3;
    wire [31:0] zfp_decode_B3_branch_out_c0_exe4;
    wire [31:0] zfp_decode_B3_branch_out_c0_exe5;
    wire [0:0] zfp_decode_B3_branch_out_c0_exe6;
    wire [31:0] zfp_decode_B3_branch_out_c0_exe7;
    wire [31:0] zfp_decode_B3_branch_out_c0_exe8;
    wire [31:0] zfp_decode_B3_branch_out_c1_exe3;
    wire [63:0] zfp_decode_B3_branch_out_c2_exe1;
    wire [0:0] zfp_decode_B3_branch_out_c2_exe2;
    wire [0:0] zfp_decode_B3_branch_out_c2_exe3;
    wire [0:0] zfp_decode_B3_branch_out_stall_out;
    wire [0:0] zfp_decode_B3_branch_out_valid_out_0;
    wire [0:0] zfp_decode_B3_merge_out_forked81;
    wire [31:0] zfp_decode_B3_merge_out_lim_ext106;
    wire [31:0] zfp_decode_B3_merge_out_reorder_limiter_enter111;
    wire [0:0] zfp_decode_B3_merge_out_stall_out_0;
    wire [0:0] zfp_decode_B3_merge_out_stall_out_1;
    wire [0:0] zfp_decode_B3_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_decode_B3_branch(BLACKBOX,46)
    zfp_decode_B3_branch thezfp_decode_B3_branch (
        .in_c0_exe1176(bb_zfp_decode_B3_stall_region_out_c0_exe1176),
        .in_c0_exe2177(bb_zfp_decode_B3_stall_region_out_c0_exe2177),
        .in_c0_exe3(bb_zfp_decode_B3_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_zfp_decode_B3_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_zfp_decode_B3_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_zfp_decode_B3_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_zfp_decode_B3_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_zfp_decode_B3_stall_region_out_c0_exe8),
        .in_c1_exe3(bb_zfp_decode_B3_stall_region_out_c1_exe3),
        .in_c2_exe1(bb_zfp_decode_B3_stall_region_out_c2_exe1),
        .in_c2_exe2(bb_zfp_decode_B3_stall_region_out_c2_exe2),
        .in_c2_exe3(bb_zfp_decode_B3_stall_region_out_c2_exe3),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_zfp_decode_B3_stall_region_out_valid_out),
        .out_c0_exe1176(zfp_decode_B3_branch_out_c0_exe1176),
        .out_c0_exe2177(zfp_decode_B3_branch_out_c0_exe2177),
        .out_c0_exe3(zfp_decode_B3_branch_out_c0_exe3),
        .out_c0_exe4(zfp_decode_B3_branch_out_c0_exe4),
        .out_c0_exe5(zfp_decode_B3_branch_out_c0_exe5),
        .out_c0_exe6(zfp_decode_B3_branch_out_c0_exe6),
        .out_c0_exe7(zfp_decode_B3_branch_out_c0_exe7),
        .out_c0_exe8(zfp_decode_B3_branch_out_c0_exe8),
        .out_c1_exe3(zfp_decode_B3_branch_out_c1_exe3),
        .out_c2_exe1(zfp_decode_B3_branch_out_c2_exe1),
        .out_c2_exe2(zfp_decode_B3_branch_out_c2_exe2),
        .out_c2_exe3(zfp_decode_B3_branch_out_c2_exe3),
        .out_stall_out(zfp_decode_B3_branch_out_stall_out),
        .out_valid_out_0(zfp_decode_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_decode_B3_merge(BLACKBOX,47)
    zfp_decode_B3_merge thezfp_decode_B3_merge (
        .in_forked81_0(in_forked81_0),
        .in_forked81_1(in_forked81_1),
        .in_lim_ext106_0(in_lim_ext106_0),
        .in_lim_ext106_1(in_lim_ext106_1),
        .in_reorder_limiter_enter111_0(in_reorder_limiter_enter111_0),
        .in_reorder_limiter_enter111_1(in_reorder_limiter_enter111_1),
        .in_stall_in(bb_zfp_decode_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked81(zfp_decode_B3_merge_out_forked81),
        .out_lim_ext106(zfp_decode_B3_merge_out_lim_ext106),
        .out_reorder_limiter_enter111(zfp_decode_B3_merge_out_reorder_limiter_enter111),
        .out_stall_out_0(zfp_decode_B3_merge_out_stall_out_0),
        .out_stall_out_1(zfp_decode_B3_merge_out_stall_out_1),
        .out_valid_out(zfp_decode_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B3_stall_region(BLACKBOX,2)
    zfp_decode_bb_B3_stall_region thebb_zfp_decode_B3_stall_region (
        .in_feedback_in_20(in_feedback_in_20),
        .in_feedback_in_21(in_feedback_in_21),
        .in_feedback_in_22(in_feedback_in_22),
        .in_feedback_valid_in_20(in_feedback_valid_in_20),
        .in_feedback_valid_in_21(in_feedback_valid_in_21),
        .in_feedback_valid_in_22(in_feedback_valid_in_22),
        .in_forked81(zfp_decode_B3_merge_out_forked81),
        .in_iord_bl_in_stream_0_i_fifodata(in_iord_bl_in_stream_0_i_fifodata),
        .in_iord_bl_in_stream_0_i_fifovalid(in_iord_bl_in_stream_0_i_fifovalid),
        .in_lim_ext106(zfp_decode_B3_merge_out_lim_ext106),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter111(zfp_decode_B3_merge_out_reorder_limiter_enter111),
        .in_stall_in(zfp_decode_B3_branch_out_stall_out),
        .in_valid_in(zfp_decode_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out(bb_zfp_decode_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out(bb_zfp_decode_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out),
        .out_c0_exe1176(bb_zfp_decode_B3_stall_region_out_c0_exe1176),
        .out_c0_exe2177(bb_zfp_decode_B3_stall_region_out_c0_exe2177),
        .out_c0_exe3(bb_zfp_decode_B3_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_zfp_decode_B3_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_zfp_decode_B3_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_zfp_decode_B3_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_zfp_decode_B3_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_zfp_decode_B3_stall_region_out_c0_exe8),
        .out_c1_exe3(bb_zfp_decode_B3_stall_region_out_c1_exe3),
        .out_c2_exe1(bb_zfp_decode_B3_stall_region_out_c2_exe1),
        .out_c2_exe2(bb_zfp_decode_B3_stall_region_out_c2_exe2),
        .out_c2_exe3(bb_zfp_decode_B3_stall_region_out_c2_exe3),
        .out_feedback_stall_out_20(bb_zfp_decode_B3_stall_region_out_feedback_stall_out_20),
        .out_feedback_stall_out_21(bb_zfp_decode_B3_stall_region_out_feedback_stall_out_21),
        .out_feedback_stall_out_22(bb_zfp_decode_B3_stall_region_out_feedback_stall_out_22),
        .out_iord_bl_in_stream_0_o_fifoalmost_full(bb_zfp_decode_B3_stall_region_out_iord_bl_in_stream_0_o_fifoalmost_full),
        .out_iord_bl_in_stream_0_o_fifoready(bb_zfp_decode_B3_stall_region_out_iord_bl_in_stream_0_o_fifoready),
        .out_pipeline_valid_out(bb_zfp_decode_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_zfp_decode_B3_stall_region_out_stall_out),
        .out_valid_out(bb_zfp_decode_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_20_sync(GPOUT,6)
    assign out_feedback_stall_out_20 = bb_zfp_decode_B3_stall_region_out_feedback_stall_out_20;

    // feedback_stall_out_21_sync(GPOUT,7)
    assign out_feedback_stall_out_21 = bb_zfp_decode_B3_stall_region_out_feedback_stall_out_21;

    // feedback_stall_out_22_sync(GPOUT,8)
    assign out_feedback_stall_out_22 = bb_zfp_decode_B3_stall_region_out_feedback_stall_out_22;

    // out_c0_exe1176(GPOUT,23)
    assign out_c0_exe1176 = zfp_decode_B3_branch_out_c0_exe1176;

    // out_c0_exe2177(GPOUT,24)
    assign out_c0_exe2177 = zfp_decode_B3_branch_out_c0_exe2177;

    // out_c0_exe3(GPOUT,25)
    assign out_c0_exe3 = zfp_decode_B3_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,26)
    assign out_c0_exe4 = zfp_decode_B3_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,27)
    assign out_c0_exe5 = zfp_decode_B3_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,28)
    assign out_c0_exe6 = zfp_decode_B3_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,29)
    assign out_c0_exe7 = zfp_decode_B3_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,30)
    assign out_c0_exe8 = zfp_decode_B3_branch_out_c0_exe8;

    // out_c1_exe3(GPOUT,31)
    assign out_c1_exe3 = zfp_decode_B3_branch_out_c1_exe3;

    // out_c2_exe1(GPOUT,32)
    assign out_c2_exe1 = zfp_decode_B3_branch_out_c2_exe1;

    // out_c2_exe2(GPOUT,33)
    assign out_c2_exe2 = zfp_decode_B3_branch_out_c2_exe2;

    // out_c2_exe3(GPOUT,34)
    assign out_c2_exe3 = zfp_decode_B3_branch_out_c2_exe3;

    // out_exiting_stall_out(GPOUT,35)
    assign out_exiting_stall_out = bb_zfp_decode_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,36)
    assign out_exiting_valid_out = bb_zfp_decode_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out;

    // out_iord_bl_in_stream_0_o_fifoalmost_full(GPOUT,37)
    assign out_iord_bl_in_stream_0_o_fifoalmost_full = bb_zfp_decode_B3_stall_region_out_iord_bl_in_stream_0_o_fifoalmost_full;

    // out_iord_bl_in_stream_0_o_fifoready(GPOUT,38)
    assign out_iord_bl_in_stream_0_o_fifoready = bb_zfp_decode_B3_stall_region_out_iord_bl_in_stream_0_o_fifoready;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = zfp_decode_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,40)
    assign out_stall_out_1 = zfp_decode_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,41)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,42)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,43)
    assign out_valid_out_0 = zfp_decode_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,45)
    assign out_pipeline_valid_out = bb_zfp_decode_B3_stall_region_out_pipeline_valid_out;

    // rst_sync(RESETSYNC,48)
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
