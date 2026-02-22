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

// SystemVerilog created from bb_zfp_decode_B5
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B5 (
    input wire [63:0] in_acl_1117_0,
    input wire [63:0] in_acl_1117_1,
    input wire [0:0] in_exitcond54120_0,
    input wire [0:0] in_exitcond54120_1,
    input wire [0:0] in_forked81116_0,
    input wire [0:0] in_forked81116_1,
    input wire [0:0] in_forked89_0,
    input wire [0:0] in_forked89_1,
    input wire [63:0] in_iord_bl_in_stream_1_i_fifodata,
    input wire [0:0] in_iord_bl_in_stream_1_i_fifovalid,
    input wire [31:0] in_k_058_pop19122_0,
    input wire [31:0] in_k_058_pop19122_1,
    input wire [31:0] in_lim_ext110_0,
    input wire [31:0] in_lim_ext110_1,
    input wire [31:0] in_lim_ext82_pop23123_0,
    input wire [31:0] in_lim_ext82_pop23123_1,
    input wire [0:0] in_notexit76121_0,
    input wire [0:0] in_notexit76121_1,
    input wire [31:0] in_reorder_limiter_enter115_0,
    input wire [31:0] in_reorder_limiter_enter115_1,
    input wire [31:0] in_reorder_limiter_enter85_pop24124_0,
    input wire [31:0] in_reorder_limiter_enter85_pop24124_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_sub_i30118_0,
    input wire [31:0] in_sub_i30118_1,
    input wire [0:0] in_tobool_i34119_0,
    input wire [0:0] in_tobool_i34119_1,
    input wire [0:0] in_unnamed_zfp_decode8_0,
    input wire [0:0] in_unnamed_zfp_decode8_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [31:0] out_c0_exe14,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe2217,
    output wire [31:0] out_c0_exe4219,
    output wire [0:0] out_c0_exe5220,
    output wire [31:0] out_c0_exe8223,
    output wire [31:0] out_c0_exe9,
    output wire [63:0] out_c1_exe1237,
    output wire [63:0] out_c1_exe2238,
    output wire [63:0] out_c1_exe3239,
    output wire [0:0] out_c2_exe1229,
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

    wire [0:0] bb_zfp_decode_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_c0_exe10;
    wire [31:0] bb_zfp_decode_B5_stall_region_out_c0_exe11;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_c0_exe12;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_c0_exe13;
    wire [31:0] bb_zfp_decode_B5_stall_region_out_c0_exe14;
    wire [31:0] bb_zfp_decode_B5_stall_region_out_c0_exe16;
    wire [31:0] bb_zfp_decode_B5_stall_region_out_c0_exe17;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_c0_exe2217;
    wire [31:0] bb_zfp_decode_B5_stall_region_out_c0_exe4219;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_c0_exe5220;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_c0_exe7222;
    wire [31:0] bb_zfp_decode_B5_stall_region_out_c0_exe8223;
    wire [31:0] bb_zfp_decode_B5_stall_region_out_c0_exe9;
    wire [63:0] bb_zfp_decode_B5_stall_region_out_c1_exe1237;
    wire [63:0] bb_zfp_decode_B5_stall_region_out_c1_exe2238;
    wire [63:0] bb_zfp_decode_B5_stall_region_out_c1_exe3239;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_c2_exe1229;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_iord_bl_in_stream_1_o_fifoalmost_full;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_iord_bl_in_stream_1_o_fifoready;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_stall_out;
    wire [0:0] bb_zfp_decode_B5_stall_region_out_valid_out;
    wire [0:0] zfp_decode_B5_branch_out_c0_exe10;
    wire [31:0] zfp_decode_B5_branch_out_c0_exe11;
    wire [0:0] zfp_decode_B5_branch_out_c0_exe12;
    wire [0:0] zfp_decode_B5_branch_out_c0_exe13;
    wire [31:0] zfp_decode_B5_branch_out_c0_exe14;
    wire [31:0] zfp_decode_B5_branch_out_c0_exe16;
    wire [31:0] zfp_decode_B5_branch_out_c0_exe17;
    wire [0:0] zfp_decode_B5_branch_out_c0_exe2217;
    wire [31:0] zfp_decode_B5_branch_out_c0_exe4219;
    wire [0:0] zfp_decode_B5_branch_out_c0_exe5220;
    wire [31:0] zfp_decode_B5_branch_out_c0_exe8223;
    wire [31:0] zfp_decode_B5_branch_out_c0_exe9;
    wire [63:0] zfp_decode_B5_branch_out_c1_exe1237;
    wire [63:0] zfp_decode_B5_branch_out_c1_exe2238;
    wire [63:0] zfp_decode_B5_branch_out_c1_exe3239;
    wire [0:0] zfp_decode_B5_branch_out_c2_exe1229;
    wire [0:0] zfp_decode_B5_branch_out_stall_out;
    wire [0:0] zfp_decode_B5_branch_out_valid_out_0;
    wire [0:0] zfp_decode_B5_branch_out_valid_out_1;
    wire [63:0] zfp_decode_B5_merge_out_acl_1117;
    wire [0:0] zfp_decode_B5_merge_out_exitcond54120;
    wire [0:0] zfp_decode_B5_merge_out_forked81116;
    wire [0:0] zfp_decode_B5_merge_out_forked89;
    wire [31:0] zfp_decode_B5_merge_out_k_058_pop19122;
    wire [31:0] zfp_decode_B5_merge_out_lim_ext110;
    wire [31:0] zfp_decode_B5_merge_out_lim_ext82_pop23123;
    wire [0:0] zfp_decode_B5_merge_out_notexit76121;
    wire [31:0] zfp_decode_B5_merge_out_reorder_limiter_enter115;
    wire [31:0] zfp_decode_B5_merge_out_reorder_limiter_enter85_pop24124;
    wire [0:0] zfp_decode_B5_merge_out_stall_out_0;
    wire [0:0] zfp_decode_B5_merge_out_stall_out_1;
    wire [31:0] zfp_decode_B5_merge_out_sub_i30118;
    wire [0:0] zfp_decode_B5_merge_out_tobool_i34119;
    wire [0:0] zfp_decode_B5_merge_out_unnamed_zfp_decode8;
    wire [0:0] zfp_decode_B5_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_decode_B5_merge(BLACKBOX,65)
    zfp_decode_B5_merge thezfp_decode_B5_merge (
        .in_acl_1117_0(in_acl_1117_0),
        .in_acl_1117_1(in_acl_1117_1),
        .in_exitcond54120_0(in_exitcond54120_0),
        .in_exitcond54120_1(in_exitcond54120_1),
        .in_forked81116_0(in_forked81116_0),
        .in_forked81116_1(in_forked81116_1),
        .in_forked89_0(in_forked89_0),
        .in_forked89_1(in_forked89_1),
        .in_k_058_pop19122_0(in_k_058_pop19122_0),
        .in_k_058_pop19122_1(in_k_058_pop19122_1),
        .in_lim_ext110_0(in_lim_ext110_0),
        .in_lim_ext110_1(in_lim_ext110_1),
        .in_lim_ext82_pop23123_0(in_lim_ext82_pop23123_0),
        .in_lim_ext82_pop23123_1(in_lim_ext82_pop23123_1),
        .in_notexit76121_0(in_notexit76121_0),
        .in_notexit76121_1(in_notexit76121_1),
        .in_reorder_limiter_enter115_0(in_reorder_limiter_enter115_0),
        .in_reorder_limiter_enter115_1(in_reorder_limiter_enter115_1),
        .in_reorder_limiter_enter85_pop24124_0(in_reorder_limiter_enter85_pop24124_0),
        .in_reorder_limiter_enter85_pop24124_1(in_reorder_limiter_enter85_pop24124_1),
        .in_stall_in(bb_zfp_decode_B5_stall_region_out_stall_out),
        .in_sub_i30118_0(in_sub_i30118_0),
        .in_sub_i30118_1(in_sub_i30118_1),
        .in_tobool_i34119_0(in_tobool_i34119_0),
        .in_tobool_i34119_1(in_tobool_i34119_1),
        .in_unnamed_zfp_decode8_0(in_unnamed_zfp_decode8_0),
        .in_unnamed_zfp_decode8_1(in_unnamed_zfp_decode8_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_acl_1117(zfp_decode_B5_merge_out_acl_1117),
        .out_exitcond54120(zfp_decode_B5_merge_out_exitcond54120),
        .out_forked81116(zfp_decode_B5_merge_out_forked81116),
        .out_forked89(zfp_decode_B5_merge_out_forked89),
        .out_k_058_pop19122(zfp_decode_B5_merge_out_k_058_pop19122),
        .out_lim_ext110(zfp_decode_B5_merge_out_lim_ext110),
        .out_lim_ext82_pop23123(zfp_decode_B5_merge_out_lim_ext82_pop23123),
        .out_notexit76121(zfp_decode_B5_merge_out_notexit76121),
        .out_reorder_limiter_enter115(zfp_decode_B5_merge_out_reorder_limiter_enter115),
        .out_reorder_limiter_enter85_pop24124(zfp_decode_B5_merge_out_reorder_limiter_enter85_pop24124),
        .out_stall_out_0(zfp_decode_B5_merge_out_stall_out_0),
        .out_stall_out_1(zfp_decode_B5_merge_out_stall_out_1),
        .out_sub_i30118(zfp_decode_B5_merge_out_sub_i30118),
        .out_tobool_i34119(zfp_decode_B5_merge_out_tobool_i34119),
        .out_unnamed_zfp_decode8(zfp_decode_B5_merge_out_unnamed_zfp_decode8),
        .out_valid_out(zfp_decode_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B5_stall_region(BLACKBOX,2)
    zfp_decode_bb_B5_stall_region thebb_zfp_decode_B5_stall_region (
        .in_acl_1117(zfp_decode_B5_merge_out_acl_1117),
        .in_exitcond54120(zfp_decode_B5_merge_out_exitcond54120),
        .in_forked81116(zfp_decode_B5_merge_out_forked81116),
        .in_forked89(zfp_decode_B5_merge_out_forked89),
        .in_iord_bl_in_stream_1_i_fifodata(in_iord_bl_in_stream_1_i_fifodata),
        .in_iord_bl_in_stream_1_i_fifovalid(in_iord_bl_in_stream_1_i_fifovalid),
        .in_k_058_pop19122(zfp_decode_B5_merge_out_k_058_pop19122),
        .in_lim_ext110(zfp_decode_B5_merge_out_lim_ext110),
        .in_lim_ext82_pop23123(zfp_decode_B5_merge_out_lim_ext82_pop23123),
        .in_notexit76121(zfp_decode_B5_merge_out_notexit76121),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter115(zfp_decode_B5_merge_out_reorder_limiter_enter115),
        .in_reorder_limiter_enter85_pop24124(zfp_decode_B5_merge_out_reorder_limiter_enter85_pop24124),
        .in_stall_in(zfp_decode_B5_branch_out_stall_out),
        .in_sub_i30118(zfp_decode_B5_merge_out_sub_i30118),
        .in_tobool_i34119(zfp_decode_B5_merge_out_tobool_i34119),
        .in_unnamed_zfp_decode8(zfp_decode_B5_merge_out_unnamed_zfp_decode8),
        .in_valid_in(zfp_decode_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out(bb_zfp_decode_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out(bb_zfp_decode_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out),
        .out_c0_exe10(bb_zfp_decode_B5_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_zfp_decode_B5_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_zfp_decode_B5_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_zfp_decode_B5_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_zfp_decode_B5_stall_region_out_c0_exe14),
        .out_c0_exe16(bb_zfp_decode_B5_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_zfp_decode_B5_stall_region_out_c0_exe17),
        .out_c0_exe2217(bb_zfp_decode_B5_stall_region_out_c0_exe2217),
        .out_c0_exe4219(bb_zfp_decode_B5_stall_region_out_c0_exe4219),
        .out_c0_exe5220(bb_zfp_decode_B5_stall_region_out_c0_exe5220),
        .out_c0_exe7222(bb_zfp_decode_B5_stall_region_out_c0_exe7222),
        .out_c0_exe8223(bb_zfp_decode_B5_stall_region_out_c0_exe8223),
        .out_c0_exe9(bb_zfp_decode_B5_stall_region_out_c0_exe9),
        .out_c1_exe1237(bb_zfp_decode_B5_stall_region_out_c1_exe1237),
        .out_c1_exe2238(bb_zfp_decode_B5_stall_region_out_c1_exe2238),
        .out_c1_exe3239(bb_zfp_decode_B5_stall_region_out_c1_exe3239),
        .out_c2_exe1229(bb_zfp_decode_B5_stall_region_out_c2_exe1229),
        .out_iord_bl_in_stream_1_o_fifoalmost_full(bb_zfp_decode_B5_stall_region_out_iord_bl_in_stream_1_o_fifoalmost_full),
        .out_iord_bl_in_stream_1_o_fifoready(bb_zfp_decode_B5_stall_region_out_iord_bl_in_stream_1_o_fifoready),
        .out_pipeline_valid_out(bb_zfp_decode_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_zfp_decode_B5_stall_region_out_stall_out),
        .out_valid_out(bb_zfp_decode_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_decode_B5_branch(BLACKBOX,64)
    zfp_decode_B5_branch thezfp_decode_B5_branch (
        .in_c0_exe10(bb_zfp_decode_B5_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_zfp_decode_B5_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_zfp_decode_B5_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_zfp_decode_B5_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_zfp_decode_B5_stall_region_out_c0_exe14),
        .in_c0_exe16(bb_zfp_decode_B5_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_zfp_decode_B5_stall_region_out_c0_exe17),
        .in_c0_exe2217(bb_zfp_decode_B5_stall_region_out_c0_exe2217),
        .in_c0_exe4219(bb_zfp_decode_B5_stall_region_out_c0_exe4219),
        .in_c0_exe5220(bb_zfp_decode_B5_stall_region_out_c0_exe5220),
        .in_c0_exe7222(bb_zfp_decode_B5_stall_region_out_c0_exe7222),
        .in_c0_exe8223(bb_zfp_decode_B5_stall_region_out_c0_exe8223),
        .in_c0_exe9(bb_zfp_decode_B5_stall_region_out_c0_exe9),
        .in_c1_exe1237(bb_zfp_decode_B5_stall_region_out_c1_exe1237),
        .in_c1_exe2238(bb_zfp_decode_B5_stall_region_out_c1_exe2238),
        .in_c1_exe3239(bb_zfp_decode_B5_stall_region_out_c1_exe3239),
        .in_c2_exe1229(bb_zfp_decode_B5_stall_region_out_c2_exe1229),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_zfp_decode_B5_stall_region_out_valid_out),
        .out_c0_exe10(zfp_decode_B5_branch_out_c0_exe10),
        .out_c0_exe11(zfp_decode_B5_branch_out_c0_exe11),
        .out_c0_exe12(zfp_decode_B5_branch_out_c0_exe12),
        .out_c0_exe13(zfp_decode_B5_branch_out_c0_exe13),
        .out_c0_exe14(zfp_decode_B5_branch_out_c0_exe14),
        .out_c0_exe16(zfp_decode_B5_branch_out_c0_exe16),
        .out_c0_exe17(zfp_decode_B5_branch_out_c0_exe17),
        .out_c0_exe2217(zfp_decode_B5_branch_out_c0_exe2217),
        .out_c0_exe4219(zfp_decode_B5_branch_out_c0_exe4219),
        .out_c0_exe5220(zfp_decode_B5_branch_out_c0_exe5220),
        .out_c0_exe8223(zfp_decode_B5_branch_out_c0_exe8223),
        .out_c0_exe9(zfp_decode_B5_branch_out_c0_exe9),
        .out_c1_exe1237(zfp_decode_B5_branch_out_c1_exe1237),
        .out_c1_exe2238(zfp_decode_B5_branch_out_c1_exe2238),
        .out_c1_exe3239(zfp_decode_B5_branch_out_c1_exe3239),
        .out_c2_exe1229(zfp_decode_B5_branch_out_c2_exe1229),
        .out_stall_out(zfp_decode_B5_branch_out_stall_out),
        .out_valid_out_0(zfp_decode_B5_branch_out_valid_out_0),
        .out_valid_out_1(zfp_decode_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,35)
    assign out_c0_exe10 = zfp_decode_B5_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,36)
    assign out_c0_exe11 = zfp_decode_B5_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,37)
    assign out_c0_exe12 = zfp_decode_B5_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,38)
    assign out_c0_exe13 = zfp_decode_B5_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,39)
    assign out_c0_exe14 = zfp_decode_B5_branch_out_c0_exe14;

    // out_c0_exe16(GPOUT,40)
    assign out_c0_exe16 = zfp_decode_B5_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,41)
    assign out_c0_exe17 = zfp_decode_B5_branch_out_c0_exe17;

    // out_c0_exe2217(GPOUT,42)
    assign out_c0_exe2217 = zfp_decode_B5_branch_out_c0_exe2217;

    // out_c0_exe4219(GPOUT,43)
    assign out_c0_exe4219 = zfp_decode_B5_branch_out_c0_exe4219;

    // out_c0_exe5220(GPOUT,44)
    assign out_c0_exe5220 = zfp_decode_B5_branch_out_c0_exe5220;

    // out_c0_exe8223(GPOUT,45)
    assign out_c0_exe8223 = zfp_decode_B5_branch_out_c0_exe8223;

    // out_c0_exe9(GPOUT,46)
    assign out_c0_exe9 = zfp_decode_B5_branch_out_c0_exe9;

    // out_c1_exe1237(GPOUT,47)
    assign out_c1_exe1237 = zfp_decode_B5_branch_out_c1_exe1237;

    // out_c1_exe2238(GPOUT,48)
    assign out_c1_exe2238 = zfp_decode_B5_branch_out_c1_exe2238;

    // out_c1_exe3239(GPOUT,49)
    assign out_c1_exe3239 = zfp_decode_B5_branch_out_c1_exe3239;

    // out_c2_exe1229(GPOUT,50)
    assign out_c2_exe1229 = zfp_decode_B5_branch_out_c2_exe1229;

    // out_exiting_stall_out(GPOUT,51)
    assign out_exiting_stall_out = bb_zfp_decode_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,52)
    assign out_exiting_valid_out = bb_zfp_decode_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out;

    // out_iord_bl_in_stream_1_o_fifoalmost_full(GPOUT,53)
    assign out_iord_bl_in_stream_1_o_fifoalmost_full = bb_zfp_decode_B5_stall_region_out_iord_bl_in_stream_1_o_fifoalmost_full;

    // out_iord_bl_in_stream_1_o_fifoready(GPOUT,54)
    assign out_iord_bl_in_stream_1_o_fifoready = bb_zfp_decode_B5_stall_region_out_iord_bl_in_stream_1_o_fifoready;

    // out_stall_in_0(GPOUT,55)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,56)
    assign out_stall_out_0 = zfp_decode_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,57)
    assign out_stall_out_1 = zfp_decode_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,58)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,59)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,60)
    assign out_valid_out_0 = zfp_decode_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,61)
    assign out_valid_out_1 = zfp_decode_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,63)
    assign out_pipeline_valid_out = bb_zfp_decode_B5_stall_region_out_pipeline_valid_out;

    // rst_sync(RESETSYNC,66)
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
