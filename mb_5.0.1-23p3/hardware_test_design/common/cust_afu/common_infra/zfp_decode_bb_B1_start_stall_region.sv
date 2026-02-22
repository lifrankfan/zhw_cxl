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

// SystemVerilog created from bb_zfp_decode_B1_start_stall_region
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B1_start_stall_region (
    input wire [0:0] in_iord_bl_call_zfp_decode_i_fifodata,
    input wire [0:0] in_iord_bl_call_zfp_decode_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_wgl_10_enter_exit_valid_in,
    input wire [0:0] in_wgl_10_enter_exit_stall_in,
    output wire [0:0] out_iord_bl_call_zfp_decode_o_fifoready,
    output wire [0:0] out_iord_bl_call_zfp_decode_o_fifoalmost_full,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_reorder_limiter_enter,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_wgl_10_enter_exit_valid_out,
    output wire [0:0] out_wgl_10_enter_exit_stall_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_iord_bl_call_zfp_decode_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_iord_bl_call_zfp_decode_o_fifoready;
    wire [0:0] i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_o_stall;
    wire [0:0] i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_valid_out;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_o_data;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_o_stall;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_o_valid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_wgl_10_enter_exit_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_wgl_10_enter_exit_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] zfp_decode_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] zfp_decode_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] zfp_decode_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    reg [31:0] redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_b;
    wire [31:0] bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_q;
    wire [31:0] bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_c;
    wire [31:0] bubble_join_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_b;
    wire [0:0] bubble_join_zfp_decode_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_zfp_decode_B1_start_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_V0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_and0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_and1;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_V1;
    wire [0:0] SE_out_zfp_decode_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_zfp_decode_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_zfp_decode_B1_start_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_valid;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_stall;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_valid;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_stall;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_stall_bitsignaltemp;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,51)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,52)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,71)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = zfp_decode_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // zfp_decode_B1_start_merge_reg_aunroll_x(BLACKBOX,39)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    zfp_decode_B1_start_merge_reg thezfp_decode_B1_start_merge_reg_aunroll_x (
        .in_stall_in(SE_out_zfp_decode_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(zfp_decode_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(zfp_decode_B1_start_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(zfp_decode_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_zfp_decode_B1_start_merge_reg_aunroll_x(BITJOIN,62)
    assign bubble_join_zfp_decode_B1_start_merge_reg_aunroll_x_q = zfp_decode_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_zfp_decode_B1_start_merge_reg_aunroll_x(BITSELECT,63)
    assign bubble_select_zfp_decode_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_zfp_decode_B1_start_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_zfp_decode_B1_start_merge_reg_aunroll_x(STALLENABLE,78)
    // Valid signal propagation
    assign SE_out_zfp_decode_B1_start_merge_reg_aunroll_x_V0 = SE_out_zfp_decode_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_zfp_decode_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_o_stall | ~ (SE_out_zfp_decode_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_zfp_decode_B1_start_merge_reg_aunroll_x_wireValid = zfp_decode_B1_start_merge_reg_aunroll_x_out_valid_out;

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1(STALLENABLE,103)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_stall_out | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_wireValid = bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_valid;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3(BLACKBOX,12)@10
    // in in_stall_in@20000000
    // out out_data_out@11
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@11
    zfp_decode_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_backStall),
        .in_valid_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3(STALLENABLE,68)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_backStall = i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3(BITJOIN,44)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3(BITSELECT,45)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_q[0:0]);

    // i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7(BLACKBOX,11)@11
    // in in_i_stall@20000000
    // out out_iord_bl_call_zfp_decode_o_fifoalmost_full@20000000
    // out out_iord_bl_call_zfp_decode_o_fifoready@20000000
    // out out_o_stall@20000000
    zfp_decode_i_iord_bl_call_unnamed_zfp_decode1_zfp_decode0 thei_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7 (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_b),
        .in_i_stall(SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_V0),
        .in_iord_bl_call_zfp_decode_i_fifodata(in_iord_bl_call_zfp_decode_i_fifodata),
        .in_iord_bl_call_zfp_decode_i_fifovalid(in_iord_bl_call_zfp_decode_i_fifovalid),
        .out_iord_bl_call_zfp_decode_o_fifoalmost_full(i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_iord_bl_call_zfp_decode_o_fifoalmost_full),
        .out_iord_bl_call_zfp_decode_o_fifoready(i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_iord_bl_call_zfp_decode_o_fifoready),
        .out_o_data(),
        .out_o_stall(i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_o_stall),
        .out_o_valid(i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8(STALLENABLE,70)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_V0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_and0 = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_o_valid;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_and1 = i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_o_valid & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_and0;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_wireValid = SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_V0 & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_and1;

    // bubble_join_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x(BITJOIN,59)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_q = i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x(BITSELECT,60)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_q[31:0]);

    // i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8(BLACKBOX,13)@10
    // in in_i_stall@20000000
    // out out_o_data@11
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_wgl_10_enter_exit_stall_out@20000000
    // out out_wgl_10_enter_exit_valid_out@20000000
    zfp_decode_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_0 thei_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8 (
        .in_i_data(bubble_select_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_V1),
        .in_wgl_10_enter_exit_stall_in(in_wgl_10_enter_exit_stall_in),
        .in_wgl_10_enter_exit_valid_in(in_wgl_10_enter_exit_valid_in),
        .out_o_data(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_o_data),
        .out_o_stall(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_o_stall),
        .out_o_valid(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_o_valid),
        .out_wgl_10_enter_exit_stall_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_wgl_10_enter_exit_stall_out),
        .out_wgl_10_enter_exit_valid_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_wgl_10_enter_exit_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0(STALLENABLE,79)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_V0 = SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_backStall & SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN = ~ (SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0 = SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN & SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall = ~ (SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 & SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x(STALLENABLE,76)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_consumed0 = (~ (SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall) & SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_consumed1 = (~ (i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_o_stall) & SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x(BITJOIN,55)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_q = {i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x(BITSELECT,56)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_q[1:1]);

    // i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x(BLACKBOX,38)@5
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_c1_exit_0_tpl@10
    // out out_c1_exit_1_tpl@10
    zfp_decode_i_sfc_s_c1_in_wt_entry_s_c1_enter_zfp_decode5 thei_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg(STALLFIFO,114)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_valid = SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_stall = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_valid_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_valid[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_stall_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_stall[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_valid[0] = bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_stall[0] = bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(6),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg (
        .i_valid(bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x(STALLENABLE,74)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_consumed0 = (~ (bubble_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_1_reg_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x(BLACKBOX,37)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@5
    // out out_c0_exit_1_tpl@5
    // out out_c0_exit_2_tpl@5
    zfp_decode_i_sfc_s_c0_in_wt_entry_s_c0_enter30_zfp_decode1 thei_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_backStall),
        .in_i_valid(SE_out_zfp_decode_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_zfp_decode_B1_start_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_zfp_decode2_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,9)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_decode3_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,27)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_zfp_decodes_c0_enter30_zfp_decode1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,34)
    assign out_iord_bl_call_zfp_decode_o_fifoready = i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_iord_bl_call_zfp_decode_o_fifoready;
    assign out_iord_bl_call_zfp_decode_o_fifoalmost_full = i_iord_bl_call_zfp_decode_unnamed_zfp_decode1_zfp_decode7_out_iord_bl_call_zfp_decode_o_fifoalmost_full;

    // bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8(BITJOIN,47)
    assign bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_q = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_o_data;

    // bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8(BITSELECT,48)
    assign bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_b = $unsigned(bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_q[31:0]);

    // redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0(REG,41)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_b);
        end
    end

    // dupName_0_sync_out_x(GPOUT,35)@11
    assign out_c1_exe1 = redist0_i_sfc_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode5_aunroll_x_out_c1_exit_1_tpl_1_0_q;
    assign out_reorder_limiter_enter = bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_b;
    assign out_valid_out = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,36)
    assign out_wgl_10_enter_exit_valid_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_wgl_10_enter_exit_valid_out;
    assign out_wgl_10_enter_exit_stall_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_zfp_decode8_out_wgl_10_enter_exit_stall_out;

    // rst_sync(RESETSYNC,115)
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
