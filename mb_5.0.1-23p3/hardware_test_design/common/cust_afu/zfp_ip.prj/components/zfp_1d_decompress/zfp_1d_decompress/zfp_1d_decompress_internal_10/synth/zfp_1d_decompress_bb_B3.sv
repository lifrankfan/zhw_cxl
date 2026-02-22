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

// SystemVerilog created from bb_zfp_1d_decompress_B3
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_bb_B3 (
    input wire [63:0] in_feedback_in_13,
    input wire [63:0] in_feedback_in_14,
    input wire [63:0] in_feedback_in_15,
    input wire [63:0] in_feedback_in_16,
    input wire [63:0] in_feedback_in_18,
    input wire [31:0] in_feedback_in_19,
    input wire [0:0] in_feedback_in_20,
    output wire [0:0] out_feedback_stall_out_13,
    output wire [0:0] out_feedback_stall_out_14,
    output wire [0:0] out_feedback_stall_out_15,
    output wire [0:0] out_feedback_stall_out_16,
    output wire [0:0] out_feedback_stall_out_18,
    output wire [0:0] out_feedback_stall_out_19,
    output wire [0:0] out_feedback_stall_out_20,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_feedback_valid_in_14,
    input wire [0:0] in_feedback_valid_in_15,
    input wire [0:0] in_feedback_valid_in_16,
    input wire [0:0] in_feedback_valid_in_18,
    input wire [0:0] in_feedback_valid_in_19,
    input wire [0:0] in_feedback_valid_in_20,
    input wire [0:0] in_forked79_0,
    input wire [0:0] in_forked79_1,
    input wire [63:0] in_iord_bl_in_stream_0_i_fifodata,
    input wire [0:0] in_iord_bl_in_stream_0_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1123,
    output wire [0:0] out_c0_exe2,
    output wire [31:0] out_c0_exe3,
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
    output wire [63:0] out_ublock_i_sroa_0_0_pop16,
    output wire [63:0] out_ublock_i_sroa_12_0_pop13,
    output wire [63:0] out_ublock_i_sroa_6_0_pop15,
    output wire [63:0] out_ublock_i_sroa_9_0_pop14,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_c0_exe1123;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_c0_exe2;
    wire [31:0] bb_zfp_1d_decompress_B3_stall_region_out_c0_exe3;
    wire [31:0] bb_zfp_1d_decompress_B3_stall_region_out_c1_exe3;
    wire [63:0] bb_zfp_1d_decompress_B3_stall_region_out_c2_exe1;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_c2_exe2;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_c2_exe3;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_13;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_14;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_15;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_16;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_18;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_19;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_20;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_iord_bl_in_stream_0_o_fifoalmost_full;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_iord_bl_in_stream_0_o_fifoready;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_stall_out;
    wire [63:0] bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_0_0_pop16;
    wire [63:0] bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_12_0_pop13;
    wire [63:0] bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_6_0_pop15;
    wire [63:0] bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_9_0_pop14;
    wire [0:0] bb_zfp_1d_decompress_B3_stall_region_out_valid_out;
    wire [0:0] zfp_1d_decompress_B3_branch_out_c0_exe1123;
    wire [0:0] zfp_1d_decompress_B3_branch_out_c0_exe2;
    wire [31:0] zfp_1d_decompress_B3_branch_out_c0_exe3;
    wire [31:0] zfp_1d_decompress_B3_branch_out_c1_exe3;
    wire [63:0] zfp_1d_decompress_B3_branch_out_c2_exe1;
    wire [0:0] zfp_1d_decompress_B3_branch_out_c2_exe2;
    wire [0:0] zfp_1d_decompress_B3_branch_out_c2_exe3;
    wire [0:0] zfp_1d_decompress_B3_branch_out_stall_out;
    wire [63:0] zfp_1d_decompress_B3_branch_out_ublock_i_sroa_0_0_pop16;
    wire [63:0] zfp_1d_decompress_B3_branch_out_ublock_i_sroa_12_0_pop13;
    wire [63:0] zfp_1d_decompress_B3_branch_out_ublock_i_sroa_6_0_pop15;
    wire [63:0] zfp_1d_decompress_B3_branch_out_ublock_i_sroa_9_0_pop14;
    wire [0:0] zfp_1d_decompress_B3_branch_out_valid_out_0;
    wire [0:0] zfp_1d_decompress_B3_merge_out_forked79;
    wire [0:0] zfp_1d_decompress_B3_merge_out_stall_out_0;
    wire [0:0] zfp_1d_decompress_B3_merge_out_stall_out_1;
    wire [0:0] zfp_1d_decompress_B3_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_1d_decompress_B3_branch(BLACKBOX,53)
    zfp_1d_decompress_B3_branch thezfp_1d_decompress_B3_branch (
        .in_c0_exe1123(bb_zfp_1d_decompress_B3_stall_region_out_c0_exe1123),
        .in_c0_exe2(bb_zfp_1d_decompress_B3_stall_region_out_c0_exe2),
        .in_c0_exe3(bb_zfp_1d_decompress_B3_stall_region_out_c0_exe3),
        .in_c1_exe3(bb_zfp_1d_decompress_B3_stall_region_out_c1_exe3),
        .in_c2_exe1(bb_zfp_1d_decompress_B3_stall_region_out_c2_exe1),
        .in_c2_exe2(bb_zfp_1d_decompress_B3_stall_region_out_c2_exe2),
        .in_c2_exe3(bb_zfp_1d_decompress_B3_stall_region_out_c2_exe3),
        .in_stall_in_0(in_stall_in_0),
        .in_ublock_i_sroa_0_0_pop16(bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_0_0_pop16),
        .in_ublock_i_sroa_12_0_pop13(bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_12_0_pop13),
        .in_ublock_i_sroa_6_0_pop15(bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_6_0_pop15),
        .in_ublock_i_sroa_9_0_pop14(bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_9_0_pop14),
        .in_valid_in(bb_zfp_1d_decompress_B3_stall_region_out_valid_out),
        .out_c0_exe1123(zfp_1d_decompress_B3_branch_out_c0_exe1123),
        .out_c0_exe2(zfp_1d_decompress_B3_branch_out_c0_exe2),
        .out_c0_exe3(zfp_1d_decompress_B3_branch_out_c0_exe3),
        .out_c1_exe3(zfp_1d_decompress_B3_branch_out_c1_exe3),
        .out_c2_exe1(zfp_1d_decompress_B3_branch_out_c2_exe1),
        .out_c2_exe2(zfp_1d_decompress_B3_branch_out_c2_exe2),
        .out_c2_exe3(zfp_1d_decompress_B3_branch_out_c2_exe3),
        .out_stall_out(zfp_1d_decompress_B3_branch_out_stall_out),
        .out_ublock_i_sroa_0_0_pop16(zfp_1d_decompress_B3_branch_out_ublock_i_sroa_0_0_pop16),
        .out_ublock_i_sroa_12_0_pop13(zfp_1d_decompress_B3_branch_out_ublock_i_sroa_12_0_pop13),
        .out_ublock_i_sroa_6_0_pop15(zfp_1d_decompress_B3_branch_out_ublock_i_sroa_6_0_pop15),
        .out_ublock_i_sroa_9_0_pop14(zfp_1d_decompress_B3_branch_out_ublock_i_sroa_9_0_pop14),
        .out_valid_out_0(zfp_1d_decompress_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_1d_decompress_B3_merge(BLACKBOX,54)
    zfp_1d_decompress_B3_merge thezfp_1d_decompress_B3_merge (
        .in_forked79_0(in_forked79_0),
        .in_forked79_1(in_forked79_1),
        .in_stall_in(bb_zfp_1d_decompress_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked79(zfp_1d_decompress_B3_merge_out_forked79),
        .out_stall_out_0(zfp_1d_decompress_B3_merge_out_stall_out_0),
        .out_stall_out_1(zfp_1d_decompress_B3_merge_out_stall_out_1),
        .out_valid_out(zfp_1d_decompress_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B3_stall_region(BLACKBOX,2)
    zfp_1d_decompress_bb_B3_stall_region thebb_zfp_1d_decompress_B3_stall_region (
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_in_14(in_feedback_in_14),
        .in_feedback_in_15(in_feedback_in_15),
        .in_feedback_in_16(in_feedback_in_16),
        .in_feedback_in_18(in_feedback_in_18),
        .in_feedback_in_19(in_feedback_in_19),
        .in_feedback_in_20(in_feedback_in_20),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_feedback_valid_in_14(in_feedback_valid_in_14),
        .in_feedback_valid_in_15(in_feedback_valid_in_15),
        .in_feedback_valid_in_16(in_feedback_valid_in_16),
        .in_feedback_valid_in_18(in_feedback_valid_in_18),
        .in_feedback_valid_in_19(in_feedback_valid_in_19),
        .in_feedback_valid_in_20(in_feedback_valid_in_20),
        .in_forked79(zfp_1d_decompress_B3_merge_out_forked79),
        .in_iord_bl_in_stream_0_i_fifodata(in_iord_bl_in_stream_0_i_fifodata),
        .in_iord_bl_in_stream_0_i_fifovalid(in_iord_bl_in_stream_0_i_fifovalid),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(zfp_1d_decompress_B3_branch_out_stall_out),
        .in_valid_in(zfp_1d_decompress_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out(bb_zfp_1d_decompress_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out(bb_zfp_1d_decompress_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out),
        .out_c0_exe1123(bb_zfp_1d_decompress_B3_stall_region_out_c0_exe1123),
        .out_c0_exe2(bb_zfp_1d_decompress_B3_stall_region_out_c0_exe2),
        .out_c0_exe3(bb_zfp_1d_decompress_B3_stall_region_out_c0_exe3),
        .out_c1_exe3(bb_zfp_1d_decompress_B3_stall_region_out_c1_exe3),
        .out_c2_exe1(bb_zfp_1d_decompress_B3_stall_region_out_c2_exe1),
        .out_c2_exe2(bb_zfp_1d_decompress_B3_stall_region_out_c2_exe2),
        .out_c2_exe3(bb_zfp_1d_decompress_B3_stall_region_out_c2_exe3),
        .out_feedback_stall_out_13(bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_13),
        .out_feedback_stall_out_14(bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_14),
        .out_feedback_stall_out_15(bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_15),
        .out_feedback_stall_out_16(bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_16),
        .out_feedback_stall_out_18(bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_18),
        .out_feedback_stall_out_19(bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_19),
        .out_feedback_stall_out_20(bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_20),
        .out_iord_bl_in_stream_0_o_fifoalmost_full(bb_zfp_1d_decompress_B3_stall_region_out_iord_bl_in_stream_0_o_fifoalmost_full),
        .out_iord_bl_in_stream_0_o_fifoready(bb_zfp_1d_decompress_B3_stall_region_out_iord_bl_in_stream_0_o_fifoready),
        .out_pipeline_valid_out(bb_zfp_1d_decompress_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_zfp_1d_decompress_B3_stall_region_out_stall_out),
        .out_ublock_i_sroa_0_0_pop16(bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_0_0_pop16),
        .out_ublock_i_sroa_12_0_pop13(bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_12_0_pop13),
        .out_ublock_i_sroa_6_0_pop15(bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_6_0_pop15),
        .out_ublock_i_sroa_9_0_pop14(bb_zfp_1d_decompress_B3_stall_region_out_ublock_i_sroa_9_0_pop14),
        .out_valid_out(bb_zfp_1d_decompress_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_13_sync(GPOUT,10)
    assign out_feedback_stall_out_13 = bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_13;

    // feedback_stall_out_14_sync(GPOUT,11)
    assign out_feedback_stall_out_14 = bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_14;

    // feedback_stall_out_15_sync(GPOUT,12)
    assign out_feedback_stall_out_15 = bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_15;

    // feedback_stall_out_16_sync(GPOUT,13)
    assign out_feedback_stall_out_16 = bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_16;

    // feedback_stall_out_18_sync(GPOUT,14)
    assign out_feedback_stall_out_18 = bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_18;

    // feedback_stall_out_19_sync(GPOUT,15)
    assign out_feedback_stall_out_19 = bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_19;

    // feedback_stall_out_20_sync(GPOUT,16)
    assign out_feedback_stall_out_20 = bb_zfp_1d_decompress_B3_stall_region_out_feedback_stall_out_20;

    // out_c0_exe1123(GPOUT,31)
    assign out_c0_exe1123 = zfp_1d_decompress_B3_branch_out_c0_exe1123;

    // out_c0_exe2(GPOUT,32)
    assign out_c0_exe2 = zfp_1d_decompress_B3_branch_out_c0_exe2;

    // out_c0_exe3(GPOUT,33)
    assign out_c0_exe3 = zfp_1d_decompress_B3_branch_out_c0_exe3;

    // out_c1_exe3(GPOUT,34)
    assign out_c1_exe3 = zfp_1d_decompress_B3_branch_out_c1_exe3;

    // out_c2_exe1(GPOUT,35)
    assign out_c2_exe1 = zfp_1d_decompress_B3_branch_out_c2_exe1;

    // out_c2_exe2(GPOUT,36)
    assign out_c2_exe2 = zfp_1d_decompress_B3_branch_out_c2_exe2;

    // out_c2_exe3(GPOUT,37)
    assign out_c2_exe3 = zfp_1d_decompress_B3_branch_out_c2_exe3;

    // out_exiting_stall_out(GPOUT,38)
    assign out_exiting_stall_out = bb_zfp_1d_decompress_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,39)
    assign out_exiting_valid_out = bb_zfp_1d_decompress_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out;

    // out_iord_bl_in_stream_0_o_fifoalmost_full(GPOUT,40)
    assign out_iord_bl_in_stream_0_o_fifoalmost_full = bb_zfp_1d_decompress_B3_stall_region_out_iord_bl_in_stream_0_o_fifoalmost_full;

    // out_iord_bl_in_stream_0_o_fifoready(GPOUT,41)
    assign out_iord_bl_in_stream_0_o_fifoready = bb_zfp_1d_decompress_B3_stall_region_out_iord_bl_in_stream_0_o_fifoready;

    // out_stall_out_0(GPOUT,42)
    assign out_stall_out_0 = zfp_1d_decompress_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,43)
    assign out_stall_out_1 = zfp_1d_decompress_B3_merge_out_stall_out_1;

    // out_ublock_i_sroa_0_0_pop16(GPOUT,44)
    assign out_ublock_i_sroa_0_0_pop16 = zfp_1d_decompress_B3_branch_out_ublock_i_sroa_0_0_pop16;

    // out_ublock_i_sroa_12_0_pop13(GPOUT,45)
    assign out_ublock_i_sroa_12_0_pop13 = zfp_1d_decompress_B3_branch_out_ublock_i_sroa_12_0_pop13;

    // out_ublock_i_sroa_6_0_pop15(GPOUT,46)
    assign out_ublock_i_sroa_6_0_pop15 = zfp_1d_decompress_B3_branch_out_ublock_i_sroa_6_0_pop15;

    // out_ublock_i_sroa_9_0_pop14(GPOUT,47)
    assign out_ublock_i_sroa_9_0_pop14 = zfp_1d_decompress_B3_branch_out_ublock_i_sroa_9_0_pop14;

    // out_valid_in_0(GPOUT,48)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,49)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,50)
    assign out_valid_out_0 = zfp_1d_decompress_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,52)
    assign out_pipeline_valid_out = bb_zfp_1d_decompress_B3_stall_region_out_pipeline_valid_out;

    // rst_sync(RESETSYNC,55)
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
