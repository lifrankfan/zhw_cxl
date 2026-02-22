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

// SystemVerilog created from bb_zfp_1d_decompress_B4
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_bb_B4 (
    input wire [63:0] in_acl_192_0,
    input wire [63:0] in_acl_192_1,
    input wire [0:0] in_exitcond4095_0,
    input wire [0:0] in_exitcond4095_1,
    input wire [0:0] in_forked81_0,
    input wire [0:0] in_forked81_1,
    input wire [63:0] in_iord_bl_in_stream_1_i_fifodata,
    input wire [0:0] in_iord_bl_in_stream_1_i_fifovalid,
    input wire [31:0] in_k1_0_i25_pop1797_0,
    input wire [31:0] in_k1_0_i25_pop1797_1,
    input wire [0:0] in_notexit7496_0,
    input wire [0:0] in_notexit7496_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_sub_i_i93_0,
    input wire [31:0] in_sub_i_i93_1,
    input wire [0:0] in_tobool_i_i94_0,
    input wire [0:0] in_tobool_i_i94_1,
    input wire [63:0] in_ublock_i_sroa_0_0_pop16101_0,
    input wire [63:0] in_ublock_i_sroa_0_0_pop16101_1,
    input wire [63:0] in_ublock_i_sroa_12_0_pop1398_0,
    input wire [63:0] in_ublock_i_sroa_12_0_pop1398_1,
    input wire [63:0] in_ublock_i_sroa_6_0_pop15100_0,
    input wire [63:0] in_ublock_i_sroa_6_0_pop15100_1,
    input wire [63:0] in_ublock_i_sroa_9_0_pop1499_0,
    input wire [63:0] in_ublock_i_sroa_9_0_pop1499_1,
    input wire [0:0] in_unnamed_zfp_1d_decompress7_0,
    input wire [0:0] in_unnamed_zfp_1d_decompress7_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2133,
    output wire [31:0] out_c0_exe4135,
    output wire [31:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [63:0] out_c1_exe10,
    output wire [63:0] out_c1_exe1149,
    output wire [63:0] out_c1_exe2150,
    output wire [63:0] out_c1_exe3151,
    output wire [63:0] out_c1_exe4,
    output wire [63:0] out_c1_exe5,
    output wire [63:0] out_c1_exe6,
    output wire [63:0] out_c1_exe7,
    output wire [63:0] out_c1_exe8,
    output wire [63:0] out_c1_exe9,
    output wire [0:0] out_c2_exe1141,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_iord_bl_in_stream_1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_in_stream_1_o_fifoready,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_stall_out;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_valid_out;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_c0_exe2133;
    wire [31:0] bb_zfp_1d_decompress_B4_stall_region_out_c0_exe4135;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_c0_exe6;
    wire [31:0] bb_zfp_1d_decompress_B4_stall_region_out_c0_exe7;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_c0_exe8;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_c0_exe9;
    wire [63:0] bb_zfp_1d_decompress_B4_stall_region_out_c1_exe10;
    wire [63:0] bb_zfp_1d_decompress_B4_stall_region_out_c1_exe1149;
    wire [63:0] bb_zfp_1d_decompress_B4_stall_region_out_c1_exe2150;
    wire [63:0] bb_zfp_1d_decompress_B4_stall_region_out_c1_exe3151;
    wire [63:0] bb_zfp_1d_decompress_B4_stall_region_out_c1_exe4;
    wire [63:0] bb_zfp_1d_decompress_B4_stall_region_out_c1_exe5;
    wire [63:0] bb_zfp_1d_decompress_B4_stall_region_out_c1_exe6;
    wire [63:0] bb_zfp_1d_decompress_B4_stall_region_out_c1_exe7;
    wire [63:0] bb_zfp_1d_decompress_B4_stall_region_out_c1_exe8;
    wire [63:0] bb_zfp_1d_decompress_B4_stall_region_out_c1_exe9;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_c2_exe1141;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_iord_bl_in_stream_1_o_fifoalmost_full;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_iord_bl_in_stream_1_o_fifoready;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_stall_out;
    wire [0:0] bb_zfp_1d_decompress_B4_stall_region_out_valid_out;
    wire [0:0] zfp_1d_decompress_B4_branch_out_c0_exe2133;
    wire [31:0] zfp_1d_decompress_B4_branch_out_c0_exe4135;
    wire [31:0] zfp_1d_decompress_B4_branch_out_c0_exe7;
    wire [0:0] zfp_1d_decompress_B4_branch_out_c0_exe8;
    wire [0:0] zfp_1d_decompress_B4_branch_out_c0_exe9;
    wire [63:0] zfp_1d_decompress_B4_branch_out_c1_exe10;
    wire [63:0] zfp_1d_decompress_B4_branch_out_c1_exe1149;
    wire [63:0] zfp_1d_decompress_B4_branch_out_c1_exe2150;
    wire [63:0] zfp_1d_decompress_B4_branch_out_c1_exe3151;
    wire [63:0] zfp_1d_decompress_B4_branch_out_c1_exe4;
    wire [63:0] zfp_1d_decompress_B4_branch_out_c1_exe5;
    wire [63:0] zfp_1d_decompress_B4_branch_out_c1_exe6;
    wire [63:0] zfp_1d_decompress_B4_branch_out_c1_exe7;
    wire [63:0] zfp_1d_decompress_B4_branch_out_c1_exe8;
    wire [63:0] zfp_1d_decompress_B4_branch_out_c1_exe9;
    wire [0:0] zfp_1d_decompress_B4_branch_out_c2_exe1141;
    wire [0:0] zfp_1d_decompress_B4_branch_out_stall_out;
    wire [0:0] zfp_1d_decompress_B4_branch_out_valid_out_0;
    wire [0:0] zfp_1d_decompress_B4_branch_out_valid_out_1;
    wire [63:0] zfp_1d_decompress_B4_merge_out_acl_192;
    wire [0:0] zfp_1d_decompress_B4_merge_out_exitcond4095;
    wire [0:0] zfp_1d_decompress_B4_merge_out_forked81;
    wire [31:0] zfp_1d_decompress_B4_merge_out_k1_0_i25_pop1797;
    wire [0:0] zfp_1d_decompress_B4_merge_out_notexit7496;
    wire [0:0] zfp_1d_decompress_B4_merge_out_stall_out_0;
    wire [0:0] zfp_1d_decompress_B4_merge_out_stall_out_1;
    wire [31:0] zfp_1d_decompress_B4_merge_out_sub_i_i93;
    wire [0:0] zfp_1d_decompress_B4_merge_out_tobool_i_i94;
    wire [63:0] zfp_1d_decompress_B4_merge_out_ublock_i_sroa_0_0_pop16101;
    wire [63:0] zfp_1d_decompress_B4_merge_out_ublock_i_sroa_12_0_pop1398;
    wire [63:0] zfp_1d_decompress_B4_merge_out_ublock_i_sroa_6_0_pop15100;
    wire [63:0] zfp_1d_decompress_B4_merge_out_ublock_i_sroa_9_0_pop1499;
    wire [0:0] zfp_1d_decompress_B4_merge_out_unnamed_zfp_1d_decompress7;
    wire [0:0] zfp_1d_decompress_B4_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_1d_decompress_B4_merge(BLACKBOX,63)
    zfp_1d_decompress_B4_merge thezfp_1d_decompress_B4_merge (
        .in_acl_192_0(in_acl_192_0),
        .in_acl_192_1(in_acl_192_1),
        .in_exitcond4095_0(in_exitcond4095_0),
        .in_exitcond4095_1(in_exitcond4095_1),
        .in_forked81_0(in_forked81_0),
        .in_forked81_1(in_forked81_1),
        .in_k1_0_i25_pop1797_0(in_k1_0_i25_pop1797_0),
        .in_k1_0_i25_pop1797_1(in_k1_0_i25_pop1797_1),
        .in_notexit7496_0(in_notexit7496_0),
        .in_notexit7496_1(in_notexit7496_1),
        .in_stall_in(bb_zfp_1d_decompress_B4_stall_region_out_stall_out),
        .in_sub_i_i93_0(in_sub_i_i93_0),
        .in_sub_i_i93_1(in_sub_i_i93_1),
        .in_tobool_i_i94_0(in_tobool_i_i94_0),
        .in_tobool_i_i94_1(in_tobool_i_i94_1),
        .in_ublock_i_sroa_0_0_pop16101_0(in_ublock_i_sroa_0_0_pop16101_0),
        .in_ublock_i_sroa_0_0_pop16101_1(in_ublock_i_sroa_0_0_pop16101_1),
        .in_ublock_i_sroa_12_0_pop1398_0(in_ublock_i_sroa_12_0_pop1398_0),
        .in_ublock_i_sroa_12_0_pop1398_1(in_ublock_i_sroa_12_0_pop1398_1),
        .in_ublock_i_sroa_6_0_pop15100_0(in_ublock_i_sroa_6_0_pop15100_0),
        .in_ublock_i_sroa_6_0_pop15100_1(in_ublock_i_sroa_6_0_pop15100_1),
        .in_ublock_i_sroa_9_0_pop1499_0(in_ublock_i_sroa_9_0_pop1499_0),
        .in_ublock_i_sroa_9_0_pop1499_1(in_ublock_i_sroa_9_0_pop1499_1),
        .in_unnamed_zfp_1d_decompress7_0(in_unnamed_zfp_1d_decompress7_0),
        .in_unnamed_zfp_1d_decompress7_1(in_unnamed_zfp_1d_decompress7_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_acl_192(zfp_1d_decompress_B4_merge_out_acl_192),
        .out_exitcond4095(zfp_1d_decompress_B4_merge_out_exitcond4095),
        .out_forked81(zfp_1d_decompress_B4_merge_out_forked81),
        .out_k1_0_i25_pop1797(zfp_1d_decompress_B4_merge_out_k1_0_i25_pop1797),
        .out_notexit7496(zfp_1d_decompress_B4_merge_out_notexit7496),
        .out_stall_out_0(zfp_1d_decompress_B4_merge_out_stall_out_0),
        .out_stall_out_1(zfp_1d_decompress_B4_merge_out_stall_out_1),
        .out_sub_i_i93(zfp_1d_decompress_B4_merge_out_sub_i_i93),
        .out_tobool_i_i94(zfp_1d_decompress_B4_merge_out_tobool_i_i94),
        .out_ublock_i_sroa_0_0_pop16101(zfp_1d_decompress_B4_merge_out_ublock_i_sroa_0_0_pop16101),
        .out_ublock_i_sroa_12_0_pop1398(zfp_1d_decompress_B4_merge_out_ublock_i_sroa_12_0_pop1398),
        .out_ublock_i_sroa_6_0_pop15100(zfp_1d_decompress_B4_merge_out_ublock_i_sroa_6_0_pop15100),
        .out_ublock_i_sroa_9_0_pop1499(zfp_1d_decompress_B4_merge_out_ublock_i_sroa_9_0_pop1499),
        .out_unnamed_zfp_1d_decompress7(zfp_1d_decompress_B4_merge_out_unnamed_zfp_1d_decompress7),
        .out_valid_out(zfp_1d_decompress_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B4_stall_region(BLACKBOX,2)
    zfp_1d_decompress_bb_B4_stall_region thebb_zfp_1d_decompress_B4_stall_region (
        .in_acl_192(zfp_1d_decompress_B4_merge_out_acl_192),
        .in_exitcond4095(zfp_1d_decompress_B4_merge_out_exitcond4095),
        .in_forked81(zfp_1d_decompress_B4_merge_out_forked81),
        .in_iord_bl_in_stream_1_i_fifodata(in_iord_bl_in_stream_1_i_fifodata),
        .in_iord_bl_in_stream_1_i_fifovalid(in_iord_bl_in_stream_1_i_fifovalid),
        .in_k1_0_i25_pop1797(zfp_1d_decompress_B4_merge_out_k1_0_i25_pop1797),
        .in_notexit7496(zfp_1d_decompress_B4_merge_out_notexit7496),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(zfp_1d_decompress_B4_branch_out_stall_out),
        .in_sub_i_i93(zfp_1d_decompress_B4_merge_out_sub_i_i93),
        .in_tobool_i_i94(zfp_1d_decompress_B4_merge_out_tobool_i_i94),
        .in_ublock_i_sroa_0_0_pop16101(zfp_1d_decompress_B4_merge_out_ublock_i_sroa_0_0_pop16101),
        .in_ublock_i_sroa_12_0_pop1398(zfp_1d_decompress_B4_merge_out_ublock_i_sroa_12_0_pop1398),
        .in_ublock_i_sroa_6_0_pop15100(zfp_1d_decompress_B4_merge_out_ublock_i_sroa_6_0_pop15100),
        .in_ublock_i_sroa_9_0_pop1499(zfp_1d_decompress_B4_merge_out_ublock_i_sroa_9_0_pop1499),
        .in_unnamed_zfp_1d_decompress7(zfp_1d_decompress_B4_merge_out_unnamed_zfp_1d_decompress7),
        .in_valid_in(zfp_1d_decompress_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_stall_out(bb_zfp_1d_decompress_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_valid_out(bb_zfp_1d_decompress_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_valid_out),
        .out_c0_exe2133(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe2133),
        .out_c0_exe4135(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe4135),
        .out_c0_exe6(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe9),
        .out_c1_exe10(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe10),
        .out_c1_exe1149(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe1149),
        .out_c1_exe2150(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe2150),
        .out_c1_exe3151(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe3151),
        .out_c1_exe4(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe4),
        .out_c1_exe5(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe5),
        .out_c1_exe6(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe6),
        .out_c1_exe7(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe7),
        .out_c1_exe8(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe8),
        .out_c1_exe9(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe9),
        .out_c2_exe1141(bb_zfp_1d_decompress_B4_stall_region_out_c2_exe1141),
        .out_iord_bl_in_stream_1_o_fifoalmost_full(bb_zfp_1d_decompress_B4_stall_region_out_iord_bl_in_stream_1_o_fifoalmost_full),
        .out_iord_bl_in_stream_1_o_fifoready(bb_zfp_1d_decompress_B4_stall_region_out_iord_bl_in_stream_1_o_fifoready),
        .out_pipeline_valid_out(bb_zfp_1d_decompress_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_zfp_1d_decompress_B4_stall_region_out_stall_out),
        .out_valid_out(bb_zfp_1d_decompress_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_1d_decompress_B4_branch(BLACKBOX,62)
    zfp_1d_decompress_B4_branch thezfp_1d_decompress_B4_branch (
        .in_c0_exe2133(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe2133),
        .in_c0_exe4135(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe4135),
        .in_c0_exe6(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_zfp_1d_decompress_B4_stall_region_out_c0_exe9),
        .in_c1_exe10(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe10),
        .in_c1_exe1149(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe1149),
        .in_c1_exe2150(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe2150),
        .in_c1_exe3151(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe3151),
        .in_c1_exe4(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe4),
        .in_c1_exe5(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe5),
        .in_c1_exe6(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe6),
        .in_c1_exe7(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe7),
        .in_c1_exe8(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe8),
        .in_c1_exe9(bb_zfp_1d_decompress_B4_stall_region_out_c1_exe9),
        .in_c2_exe1141(bb_zfp_1d_decompress_B4_stall_region_out_c2_exe1141),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_zfp_1d_decompress_B4_stall_region_out_valid_out),
        .out_c0_exe2133(zfp_1d_decompress_B4_branch_out_c0_exe2133),
        .out_c0_exe4135(zfp_1d_decompress_B4_branch_out_c0_exe4135),
        .out_c0_exe7(zfp_1d_decompress_B4_branch_out_c0_exe7),
        .out_c0_exe8(zfp_1d_decompress_B4_branch_out_c0_exe8),
        .out_c0_exe9(zfp_1d_decompress_B4_branch_out_c0_exe9),
        .out_c1_exe10(zfp_1d_decompress_B4_branch_out_c1_exe10),
        .out_c1_exe1149(zfp_1d_decompress_B4_branch_out_c1_exe1149),
        .out_c1_exe2150(zfp_1d_decompress_B4_branch_out_c1_exe2150),
        .out_c1_exe3151(zfp_1d_decompress_B4_branch_out_c1_exe3151),
        .out_c1_exe4(zfp_1d_decompress_B4_branch_out_c1_exe4),
        .out_c1_exe5(zfp_1d_decompress_B4_branch_out_c1_exe5),
        .out_c1_exe6(zfp_1d_decompress_B4_branch_out_c1_exe6),
        .out_c1_exe7(zfp_1d_decompress_B4_branch_out_c1_exe7),
        .out_c1_exe8(zfp_1d_decompress_B4_branch_out_c1_exe8),
        .out_c1_exe9(zfp_1d_decompress_B4_branch_out_c1_exe9),
        .out_c2_exe1141(zfp_1d_decompress_B4_branch_out_c2_exe1141),
        .out_stall_out(zfp_1d_decompress_B4_branch_out_stall_out),
        .out_valid_out_0(zfp_1d_decompress_B4_branch_out_valid_out_0),
        .out_valid_out_1(zfp_1d_decompress_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2133(GPOUT,33)
    assign out_c0_exe2133 = zfp_1d_decompress_B4_branch_out_c0_exe2133;

    // out_c0_exe4135(GPOUT,34)
    assign out_c0_exe4135 = zfp_1d_decompress_B4_branch_out_c0_exe4135;

    // out_c0_exe7(GPOUT,35)
    assign out_c0_exe7 = zfp_1d_decompress_B4_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,36)
    assign out_c0_exe8 = zfp_1d_decompress_B4_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,37)
    assign out_c0_exe9 = zfp_1d_decompress_B4_branch_out_c0_exe9;

    // out_c1_exe10(GPOUT,38)
    assign out_c1_exe10 = zfp_1d_decompress_B4_branch_out_c1_exe10;

    // out_c1_exe1149(GPOUT,39)
    assign out_c1_exe1149 = zfp_1d_decompress_B4_branch_out_c1_exe1149;

    // out_c1_exe2150(GPOUT,40)
    assign out_c1_exe2150 = zfp_1d_decompress_B4_branch_out_c1_exe2150;

    // out_c1_exe3151(GPOUT,41)
    assign out_c1_exe3151 = zfp_1d_decompress_B4_branch_out_c1_exe3151;

    // out_c1_exe4(GPOUT,42)
    assign out_c1_exe4 = zfp_1d_decompress_B4_branch_out_c1_exe4;

    // out_c1_exe5(GPOUT,43)
    assign out_c1_exe5 = zfp_1d_decompress_B4_branch_out_c1_exe5;

    // out_c1_exe6(GPOUT,44)
    assign out_c1_exe6 = zfp_1d_decompress_B4_branch_out_c1_exe6;

    // out_c1_exe7(GPOUT,45)
    assign out_c1_exe7 = zfp_1d_decompress_B4_branch_out_c1_exe7;

    // out_c1_exe8(GPOUT,46)
    assign out_c1_exe8 = zfp_1d_decompress_B4_branch_out_c1_exe8;

    // out_c1_exe9(GPOUT,47)
    assign out_c1_exe9 = zfp_1d_decompress_B4_branch_out_c1_exe9;

    // out_c2_exe1141(GPOUT,48)
    assign out_c2_exe1141 = zfp_1d_decompress_B4_branch_out_c2_exe1141;

    // out_exiting_stall_out(GPOUT,49)
    assign out_exiting_stall_out = bb_zfp_1d_decompress_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,50)
    assign out_exiting_valid_out = bb_zfp_1d_decompress_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_valid_out;

    // out_iord_bl_in_stream_1_o_fifoalmost_full(GPOUT,51)
    assign out_iord_bl_in_stream_1_o_fifoalmost_full = bb_zfp_1d_decompress_B4_stall_region_out_iord_bl_in_stream_1_o_fifoalmost_full;

    // out_iord_bl_in_stream_1_o_fifoready(GPOUT,52)
    assign out_iord_bl_in_stream_1_o_fifoready = bb_zfp_1d_decompress_B4_stall_region_out_iord_bl_in_stream_1_o_fifoready;

    // out_stall_in_0(GPOUT,53)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,54)
    assign out_stall_out_0 = zfp_1d_decompress_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,55)
    assign out_stall_out_1 = zfp_1d_decompress_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,56)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,57)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,58)
    assign out_valid_out_0 = zfp_1d_decompress_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,59)
    assign out_valid_out_1 = zfp_1d_decompress_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,61)
    assign out_pipeline_valid_out = bb_zfp_1d_decompress_B4_stall_region_out_pipeline_valid_out;

    // rst_sync(RESETSYNC,64)
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
