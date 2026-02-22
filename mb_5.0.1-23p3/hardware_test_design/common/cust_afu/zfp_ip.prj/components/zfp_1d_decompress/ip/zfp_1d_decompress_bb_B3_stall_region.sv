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

// SystemVerilog created from bb_zfp_1d_decompress_B3_stall_region
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_bb_B3_stall_region (
    input wire [63:0] in_iord_bl_in_stream_0_i_fifodata,
    input wire [0:0] in_iord_bl_in_stream_0_i_fifovalid,
    output wire [0:0] out_iord_bl_in_stream_0_o_fifoready,
    output wire [0:0] out_iord_bl_in_stream_0_o_fifoalmost_full,
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
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked79,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out,
    output wire [0:0] out_c0_exe1123,
    output wire [0:0] out_c0_exe2,
    output wire [31:0] out_c0_exe3,
    output wire [31:0] out_c1_exe3,
    output wire [63:0] out_c2_exe1,
    output wire [0:0] out_c2_exe2,
    output wire [0:0] out_c2_exe3,
    output wire [63:0] out_ublock_i_sroa_0_0_pop16,
    output wire [63:0] out_ublock_i_sroa_12_0_pop13,
    output wire [63:0] out_ublock_i_sroa_6_0_pop15,
    output wire [63:0] out_ublock_i_sroa_9_0_pop14,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_019_q;
    wire [63:0] c_i64_020_q;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_iord_bl_in_stream_0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_iord_bl_in_stream_0_o_fifoready;
    wire [63:0] i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_o_data;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_o_stall;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_2_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl;
    wire [0:0] i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_c2_exit_1_tpl;
    wire [0:0] i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_c2_exit_2_tpl;
    wire [0:0] i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_c2_exit_3_tpl;
    wire [0:0] zfp_1d_decompress_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] zfp_1d_decompress_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] zfp_1d_decompress_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [33:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_q;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_q;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_q;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_q;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_q;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_q;
    reg [0:0] redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_q;
    reg [0:0] redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_q;
    reg [0:0] redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_q;
    reg [0:0] redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_q;
    reg [0:0] redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_q;
    reg [0:0] redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_q;
    reg [0:0] redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_q;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [33:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [33:0] coalesced_delay_0_fifo_o_data;
    wire [63:0] bubble_join_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_q;
    wire [63:0] bubble_select_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [34:0] bubble_join_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_e;
    wire [33:0] bubble_join_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_d;
    wire [65:0] bubble_join_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_d;
    wire [0:0] bubble_join_zfp_1d_decompress_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_zfp_1d_decompress_B3_merge_reg_aunroll_x_b;
    wire [33:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [33:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_wireValid;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_wireStall;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_StallValid;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_toReg0;
    reg [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_fromReg0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_consumed0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_toReg1;
    reg [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_fromReg1;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_consumed1;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_or0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_backStall;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_V0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_V2;
    wire [0:0] SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_and1;
    wire [0:0] SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_V0;
    wire [0:0] SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_V0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_R_v_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_v_s_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_s_tv_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_backEN;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_backStall;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_V0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_R_v_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_v_s_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_s_tv_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_backEN;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_backStall;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_V0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_R_v_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_v_s_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_s_tv_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backEN;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backStall;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_V0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_0;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_1;
    reg [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_2;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_v_s_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_1;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_2;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backEN;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_or0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_or1;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backStall;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V0;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V1;
    wire [0:0] SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V2;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_R_v_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_V0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_R_v_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_V0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_R_v_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_V0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_R_v_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_V0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_R_v_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_V0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_1;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_2;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_3;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_1;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_2;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_3;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_or0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_or1;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_or2;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V1;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V2;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_V0;
    wire [0:0] bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_valid;
    wire bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_stall;
    wire bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_valid;
    wire bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_stall;
    wire bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_stall_bitsignaltemp;
    wire [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_i_valid;
    reg [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_valid;
    reg [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_data0;
    wire [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backStall;
    wire [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_V;
    wire [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_D0;
    wire [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_i_valid;
    reg [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_valid;
    reg [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_data0;
    wire [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backStall;
    wire [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V;
    wire [0:0] SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_D0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_i_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_data0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backStall;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_V;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_D0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_i_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_data0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backStall;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_V;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_D0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_i_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_data0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backStall;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_V;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_D0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_i_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_data0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backStall;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_D0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_i_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_valid;
    reg [31:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_data0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backStall;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_V;
    wire [31:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_D0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_i_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_valid;
    reg [31:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_data0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backStall;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_V;
    wire [31:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0(REG,84)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_d);
        end
    end

    // redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1(REG,85)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_q <= $unsigned(redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_q);
        end
    end

    // redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2(REG,86)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_D0);
        end
    end

    // redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3(REG,87)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_q <= $unsigned(redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_q);
        end
    end

    // bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg(STALLFIFO,269)
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_valid = SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_V0;
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall;
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_valid_bitsignaltemp = bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_valid[0];
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_stall_bitsignaltemp = bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_stall[0];
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_valid[0] = bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_stall[0] = bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(7),
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
    ) thebubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg (
        .i_valid(bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2(STALLENABLE,191)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_V0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_s_tv_0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_backStall & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backEN = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_v_s_0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backEN & SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_V;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backStall = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_R_v_0 & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_v_s_0;
            end

        end
    end

    // SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0(STALLENABLE,189)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_V0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_s_tv_0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_backStall & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backEN = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_v_s_0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backEN & SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_V;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backStall = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_R_v_0 & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3(STALLENABLE,156)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_V0 = SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_backStall = i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_wireValid = i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_valid_out;

    // c_i32_019(CONSTANT,3)
    assign c_i32_019_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3(BLACKBOX,32)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    zfp_1d_decompress_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_0 thei_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3 (
        .in_data_in(c_i32_019_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_e),
        .in_feedback_in_19(in_feedback_in_19),
        .in_feedback_valid_in_19(in_feedback_valid_in_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_stall_entry(BITJOIN,132)
    assign bubble_join_stall_entry_q = in_forked79;

    // bubble_select_stall_entry(BITSELECT,133)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,167)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = zfp_1d_decompress_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // zfp_1d_decompress_B3_merge_reg_aunroll_x(BLACKBOX,74)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    zfp_1d_decompress_B3_merge_reg thezfp_1d_decompress_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(zfp_1d_decompress_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(zfp_1d_decompress_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(zfp_1d_decompress_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_zfp_1d_decompress_B3_merge_reg_aunroll_x(BITJOIN,145)
    assign bubble_join_zfp_1d_decompress_B3_merge_reg_aunroll_x_q = zfp_1d_decompress_B3_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_zfp_1d_decompress_B3_merge_reg_aunroll_x(BITSELECT,146)
    assign bubble_select_zfp_1d_decompress_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_zfp_1d_decompress_B3_merge_reg_aunroll_x_q[0:0]);

    // SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x(STALLENABLE,176)
    // Valid signal propagation
    assign SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x_V0 = SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_o_stall | ~ (SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x_wireValid = zfp_1d_decompress_B3_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x(BLACKBOX,71)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit122_0_tpl@6
    // out out_c0_exit122_1_tpl@6
    // out out_c0_exit122_2_tpl@6
    // out out_c0_exit122_3_tpl@6
    // out out_c0_exit122_4_tpl@6
    zfp_1d_decompress_i_sfc_s_c0_in_for_body00008_zfp_1d_decompress1 thei_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_backStall),
        .in_i_valid(SE_out_zfp_1d_decompress_B3_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_zfp_1d_decompress_B3_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out(i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out(i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit122_0_tpl(),
        .out_c0_exit122_1_tpl(i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_1_tpl),
        .out_c0_exit122_2_tpl(i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_2_tpl),
        .out_c0_exit122_3_tpl(i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_3_tpl),
        .out_c0_exit122_4_tpl(i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x(STALLENABLE,170)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed0 = (~ (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_backStall) & SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_o_valid;

    // SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0(STALLENABLE,185)
    // Valid signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_V0 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_s_tv_0 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_backStall & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_backEN = ~ (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_v_s_0 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_backEN & SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_backStall = ~ (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_R_v_0 & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x(BITJOIN,136)
    assign bubble_join_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_q = {i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl, i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_3_tpl, i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_2_tpl, i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x(BITSELECT,137)
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_q[34:34]);

    // redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0(REG,90)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_e);
        end
    end

    // redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1(REG,91)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_q <= $unsigned(redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_q);
        end
    end

    // SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1(STALLENABLE,186)
    // Valid signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_V0 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_s_tv_0 = SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backStall & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_backEN = ~ (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_v_s_0 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_backEN & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_0_V0;
    // Backward Stall generation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_backStall = ~ (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_R_v_0 & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_s_tv_0;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_v_s_0;
            end

        end
    end

    // SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2(STALLREG,271)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_valid <= 1'b0;
            SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_valid <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backStall & (SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_valid | SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_i_valid);

            if (SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_data0 <= $unsigned(redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_i_valid = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_V0;
    // Stall signal propagation
    assign SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backStall = SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_valid | ~ (SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_i_valid);

    // Valid
    assign SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_V = SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_valid == 1'b1 ? SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_valid : SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_i_valid;

    assign SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_D0 = SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_valid == 1'b1 ? SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_r_data0 : redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_1_q;

    // redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2(REG,92)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_q <= $unsigned(SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_D0);
        end
    end

    // SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2(STALLENABLE,187)
    // Valid signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_V0 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_s_tv_0 = SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backStall & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backEN = ~ (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_v_s_0 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backEN & SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_V;
    // Backward Stall generation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backStall = ~ (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_R_v_0 & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_s_tv_0;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_v_s_0;
            end

        end
    end

    // SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3(STALLREG,272)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_valid <= 1'b0;
            SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_valid <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backStall & (SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_valid | SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_i_valid);

            if (SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_data0 <= $unsigned(redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_i_valid = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_V0;
    // Stall signal propagation
    assign SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backStall = SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_valid | ~ (SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_i_valid);

    // Valid
    assign SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V = SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_valid == 1'b1 ? SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_valid : SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_i_valid;

    assign SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_D0 = SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_valid == 1'b1 ? SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_r_data0 : redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_2_q;

    // redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3(REG,93)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_q <= $unsigned(SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_D0);
        end
    end

    // SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5(STALLENABLE,158)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_fromReg0 <= SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_fromReg1 <= SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_stall) & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_wireValid) | SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_consumed1 = (~ (SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_wireValid) | SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_StallValid = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_backStall & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_toReg0 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_StallValid & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_toReg1 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_StallValid & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_or0 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_consumed1 & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_or0);
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_backStall = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_V0 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_V1 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_wireValid = i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_valid_out;

    // i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5(BLACKBOX,33)@10
    // in in_stall_in@20000000
    // out out_data_out@11
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@11
    zfp_1d_decompress_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_0 thei_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5 (
        .in_data_in(c_i64_020_q),
        .in_dir(redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_q),
        .in_feedback_in_18(in_feedback_in_18),
        .in_feedback_valid_in_18(in_feedback_valid_in_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_backStall),
        .in_valid_in(SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V2),
        .out_data_out(i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3(STALLENABLE,188)
    // Valid signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V0 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_0;
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V1 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_1;
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V2 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_2;
    // Stall signal propagation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_0 = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backStall & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_0;
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_stall_out & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_1;
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_2 = i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_stall_out & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_2;
    // Backward Enable generation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_or0 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_0;
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_or1 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_1 | SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_or0;
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backEN = ~ (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_2 | SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_v_s_0 = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backEN & SR_SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V;
    // Backward Stall generation
    assign SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backStall = ~ (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_0 <= 1'b0;
            SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_1 <= 1'b0;
            SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_0 & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_0;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_0 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_1 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_1 & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_1;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_1 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_v_s_0;
            end

            if (SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_backEN == 1'b0)
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_2 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_2 & SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_s_tv_2;
            end
            else
            begin
                SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_R_v_2 <= SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_v_s_0;
            end

        end
    end

    // SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0(STALLREG,273)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_valid <= 1'b0;
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_valid <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backStall & (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_valid | SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_i_valid);

            if (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_data0 <= $unsigned(redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_i_valid = SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V0;
    // Stall signal propagation
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backStall = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_valid | ~ (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_i_valid);

    // Valid
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_V = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_valid : SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_i_valid;

    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_D0 = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_r_data0 : redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_q;

    // redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0(REG,94)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_q <= $unsigned(SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_D0);
        end
    end

    // redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1(REG,95)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_q <= $unsigned(redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_q);
        end
    end

    // SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1(STALLENABLE,190)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_V0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_s_tv_0 = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backStall & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_backEN = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_v_s_0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_backEN & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_0_V0;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_backStall = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_R_v_0 & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_v_s_0;
            end

        end
    end

    // SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2(STALLREG,274)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_valid <= 1'b0;
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_valid <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backStall & (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_valid | SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_i_valid);

            if (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_data0 <= $unsigned(redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_i_valid = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_V0;
    // Stall signal propagation
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backStall = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_valid | ~ (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_i_valid);

    // Valid
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_V = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_valid : SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_i_valid;

    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_D0 = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_r_data0 : redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_1_q;

    // redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2(REG,96)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_q <= $unsigned(SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_D0);
        end
    end

    // redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3(REG,97)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_q <= $unsigned(redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_q);
        end
    end

    // SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3(STALLENABLE,192)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_V0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_s_tv_0 = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backStall & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_backEN = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_v_s_0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_backEN & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_2_V0;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_backStall = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_R_v_0 & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_v_s_0;
            end

        end
    end

    // SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4(STALLREG,275)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_valid <= 1'b0;
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_valid <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backStall & (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_valid | SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_i_valid);

            if (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_data0 <= $unsigned(redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_i_valid = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_V0;
    // Stall signal propagation
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backStall = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_valid | ~ (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_i_valid);

    // Valid
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_V = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_valid : SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_i_valid;

    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_D0 = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_r_data0 : redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_3_q;

    // redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4(REG,98)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_q <= $unsigned(SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_D0);
        end
    end

    // SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4(STALLENABLE,193)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_V0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_s_tv_0 = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backStall & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backEN = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_v_s_0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backEN & SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_V;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backStall = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_R_v_0 & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_v_s_0;
            end

        end
    end

    // SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5(STALLREG,276)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_valid <= 1'b0;
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_valid <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backStall & (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_valid | SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_i_valid);

            if (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_data0 <= $unsigned(redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_i_valid = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_V0;
    // Stall signal propagation
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backStall = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_valid | ~ (SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_i_valid);

    // Valid
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_valid : SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_i_valid;

    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_D0 = SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_r_data0 : redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_4_q;

    // SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5(STALLENABLE,194)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_0;
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V1 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_1;
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V2 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_2;
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V3 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_3;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_0 = i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_stall_out & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_0;
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_1 = i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_stall_out & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_1;
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_2 = i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_stall_out & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_2;
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_3 = i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_stall_out & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_3;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_or0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_0;
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_or1 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_1 | SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_or0;
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_or2 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_2 | SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_or1;
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backEN = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_3 | SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_v_s_0 = SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backEN & SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backStall = ~ (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_0 <= 1'b0;
            SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_1 <= 1'b0;
            SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_2 <= 1'b0;
            SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_0 & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_v_s_0;
            end

            if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_1 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_1 & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_1;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_1 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_v_s_0;
            end

            if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_2 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_2 & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_2;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_2 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_v_s_0;
            end

            if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_3 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_3 & SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_s_tv_3;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_R_v_3 <= SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_v_s_0;
            end

        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5(REG,99)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_q <= $unsigned(SR_SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_D0);
        end
    end

    // c_i64_020(CONSTANT,4)
    assign c_i64_020_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9(BLACKBOX,34)@16
    // in in_stall_in@20000000
    // out out_data_out@17
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@17
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9 (
        .in_data_in(c_i64_020_q),
        .in_dir(redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_q),
        .in_feedback_in_16(in_feedback_in_16),
        .in_feedback_valid_in_16(in_feedback_valid_in_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall),
        .in_valid_in(SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V0),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6(BLACKBOX,35)@16
    // in in_stall_in@20000000
    // out out_data_out@17
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@17
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6 (
        .in_data_in(c_i64_020_q),
        .in_dir(redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_q),
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall),
        .in_valid_in(SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V1),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8(BLACKBOX,36)@16
    // in in_stall_in@20000000
    // out out_data_out@17
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@17
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8 (
        .in_data_in(c_i64_020_q),
        .in_dir(redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_q),
        .in_feedback_in_15(in_feedback_in_15),
        .in_feedback_valid_in_15(in_feedback_valid_in_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall),
        .in_valid_in(SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V2),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7(BLACKBOX,37)@16
    // in in_stall_in@20000000
    // out out_data_out@17
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@17
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7 (
        .in_data_in(c_i64_020_q),
        .in_dir(redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_q),
        .in_feedback_in_14(in_feedback_in_14),
        .in_feedback_valid_in_14(in_feedback_valid_in_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall),
        .in_valid_in(SE_redist5_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_10_5_V3),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5(BITJOIN,112)
    assign bubble_join_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_q = i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5(BITSELECT,113)
    assign bubble_select_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_q[63:0]);

    // bubble_join_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13(BITJOIN,102)
    assign bubble_join_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_q = i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_o_data;

    // bubble_select_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13(BITSELECT,103)
    assign bubble_select_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_b = $unsigned(bubble_join_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_q[63:0]);

    // i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x(BLACKBOX,73)@11
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@17
    // out out_c2_exit_0_tpl@17
    // out out_c2_exit_1_tpl@17
    // out out_c2_exit_2_tpl@17
    // out out_c2_exit_3_tpl@17
    zfp_1d_decompress_i_sfc_s_c2_in_for_body0000_zfp_1d_decompress15 thei_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x (
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall),
        .in_i_valid(SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_V0),
        .in_c2_eni4_0_tpl(GND_q),
        .in_c2_eni4_1_tpl(bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_b),
        .in_c2_eni4_2_tpl(bubble_select_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_b),
        .in_c2_eni4_3_tpl(bubble_select_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_b),
        .in_c2_eni4_4_tpl(bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_d),
        .out_o_stall(i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_o_valid),
        .out_c2_exit_0_tpl(),
        .out_c2_exit_1_tpl(i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_c2_exit_1_tpl),
        .out_c2_exit_2_tpl(i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_c2_exit_2_tpl),
        .out_c2_exit_3_tpl(i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_c2_exit_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,82)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,100)
    assign coalesced_delay_0_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_V2;
    assign coalesced_delay_0_fifo_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(12),
        .WIDTH(34),
        .STYLE("ms"),
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
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg(STALLFIFO,270)
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_valid = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_V0;
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(7),
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
    ) thebubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1(STALLENABLE,216)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and0 = bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_reg_o_valid;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and1 = coalesced_delay_0_fifo_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and2 = i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and3 = i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and4 = i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and5 = i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and6 = i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and7 = bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_wireValid = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_and7;

    // SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5(STALLENABLE,184)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_V0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_backStall & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_backEN & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_v_s_0;
            end

        end
    end

    // SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4(STALLENABLE,183)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_V0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_s_tv_0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_backStall & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backEN & SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_V;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_v_s_0;
            end

        end
    end

    // SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4(STALLREG,278)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_valid <= 1'b0;
            SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_valid <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backStall & (SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_valid | SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_i_valid);

            if (SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_i_valid = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backStall = SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_valid | ~ (SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_i_valid);

    // Valid
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_V = SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_valid : SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_i_valid;

    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_D0 = SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_r_data0 : redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_q;

    // SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3(STALLENABLE,182)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_V0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_s_tv_0 = SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backStall & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_backEN & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_v_s_0;
            end

        end
    end

    // SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2(STALLENABLE,181)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_V0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_s_tv_0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_3_backStall & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backEN & SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_V;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_v_s_0;
            end

        end
    end

    // SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2(STALLREG,277)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_valid <= 1'b0;
            SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_valid <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backStall & (SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_valid | SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_i_valid);

            if (SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_i_valid = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backStall = SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_valid | ~ (SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_i_valid);

    // Valid
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_V = SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_valid : SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_i_valid;

    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_D0 = SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_r_data0 : redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_q;

    // SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1(STALLENABLE,180)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_V0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_s_tv_0 = SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_2_backStall & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_backEN & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_v_s_0;
            end

        end
    end

    // SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0(STALLENABLE,179)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_V0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_s_tv_0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_1_backStall & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_backEN & SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_V2;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_v_s_0;
            end

        end
    end

    // SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x(STALLENABLE,173)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_V0 = SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_backStall = i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_and0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_V1;
    assign SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_and1 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_V1 & SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_and0;
    assign SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_wireValid = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_V1 & SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_and1;

    // bubble_join_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3(BITJOIN,109)
    assign bubble_join_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_q = i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3(BITSELECT,110)
    assign bubble_select_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_q[31:0]);

    // i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x(BLACKBOX,72)@7
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_c1_exit_0_tpl@11
    // out out_c1_exit_1_tpl@11
    // out out_c1_exit_2_tpl@11
    // out out_c1_exit_3_tpl@11
    zfp_1d_decompress_i_sfc_s_c1_in_for_body0000_zfp_1d_decompress11 thei_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_V0),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_b),
        .out_o_stall(i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x(STALLENABLE,172)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_backStall) & SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed1 = (~ (SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_backStall) & SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed2 = (~ (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_0_backStall) & SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_toReg2 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_or1 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_or0;
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_consumed2 & SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_or1);
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_V2 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_wireValid = i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_o_valid;

    // i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4(BLACKBOX,31)@10
    // in in_stall_in@20000000
    // out out_data_out@11
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@11
    zfp_1d_decompress_i_llvm_fpga_pop_i1_memdep_phi_pop20_0 thei_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4 (
        .in_data_in(GND_q),
        .in_dir(redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_q),
        .in_feedback_in_20(in_feedback_in_20),
        .in_feedback_valid_in_20(in_feedback_valid_in_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_backStall),
        .in_valid_in(SE_redist4_i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_c0_exit122_4_tpl_4_3_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4(STALLENABLE,154)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_backStall = i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_wireValid = SE_out_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_and0;

    // SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13(STALLENABLE,152)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_fromReg0 <= '0;
            SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_fromReg0 <= SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_toReg0;
            // Successor 1
            SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_fromReg1 <= SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_consumed0 = (~ (bubble_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_1_reg_o_stall) & SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_wireValid) | SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_fromReg0;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_consumed1 = (~ (SE_in_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_backStall) & SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_wireValid) | SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_StallValid = SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_backStall & SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_wireValid;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_toReg0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_StallValid & SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_consumed0;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_toReg1 = SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_StallValid & SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_or0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_consumed0;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_wireStall = ~ (SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_consumed1 & SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_or0);
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_backStall = SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_V0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_wireValid & ~ (SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_fromReg0);
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_V1 = SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_wireValid & ~ (SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_wireValid = i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4(BITJOIN,106)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_q = i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4(BITSELECT,107)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_q[0:0]);

    // bubble_join_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x(BITJOIN,139)
    assign bubble_join_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_q = {i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x(BITSELECT,140)
    assign bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_q[33:2]);

    // i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13(BLACKBOX,30)@11
    // in in_i_stall@20000000
    // out out_iord_bl_in_stream_0_o_fifoalmost_full@20000000
    // out out_iord_bl_in_stream_0_o_fifoready@20000000
    // out out_o_stall@20000000
    zfp_1d_decompress_i_iord_bl_in_stream_un00006_zfp_1d_decompress0 thei_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_c),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_b),
        .in_i_stall(SE_out_i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_V0),
        .in_iord_bl_in_stream_0_i_fifodata(in_iord_bl_in_stream_0_i_fifodata),
        .in_iord_bl_in_stream_0_i_fifovalid(in_iord_bl_in_stream_0_i_fifovalid),
        .out_iord_bl_in_stream_0_o_fifoalmost_full(i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_iord_bl_in_stream_0_o_fifoalmost_full),
        .out_iord_bl_in_stream_0_o_fifoready(i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_iord_bl_in_stream_0_o_fifoready),
        .out_o_data(i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_o_data),
        .out_o_stall(i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_o_stall),
        .out_o_valid(i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_iord_bl_in_stream_0_o_fifoready = i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_iord_bl_in_stream_0_o_fifoready;
    assign out_iord_bl_in_stream_0_o_fifoalmost_full = i_iord_bl_in_stream_unnamed_zfp_1d_decompress6_zfp_1d_decompress13_out_iord_bl_in_stream_0_o_fifoalmost_full;

    // feedback_stall_out_13_sync(GPOUT,16)
    assign out_feedback_stall_out_13 = i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_feedback_stall_out_13;

    // feedback_stall_out_14_sync(GPOUT,17)
    assign out_feedback_stall_out_14 = i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_feedback_stall_out_14;

    // feedback_stall_out_15_sync(GPOUT,18)
    assign out_feedback_stall_out_15 = i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_feedback_stall_out_15;

    // feedback_stall_out_16_sync(GPOUT,19)
    assign out_feedback_stall_out_16 = i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_feedback_stall_out_16;

    // feedback_stall_out_18_sync(GPOUT,20)
    assign out_feedback_stall_out_18 = i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_out_feedback_stall_out_18;

    // feedback_stall_out_19_sync(GPOUT,21)
    assign out_feedback_stall_out_19 = i_llvm_fpga_pop_i32_bs_sroa_7_023_pop19_zfp_1d_decompress3_out_feedback_stall_out_19;

    // feedback_stall_out_20_sync(GPOUT,22)
    assign out_feedback_stall_out_20 = i_llvm_fpga_pop_i1_memdep_phi_pop20_zfp_1d_decompress4_out_feedback_stall_out_20;

    // pipeline_valid_out_sync(GPOUT,63)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,67)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,69)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out = i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out = i_sfc_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out;

    // bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7(BITJOIN,128)
    assign bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_q = i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7(BITSELECT,129)
    assign bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_q[63:0]);

    // bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8(BITJOIN,124)
    assign bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_q = i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8(BITSELECT,125)
    assign bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_q[63:0]);

    // bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6(BITJOIN,120)
    assign bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_q = i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6(BITSELECT,121)
    assign bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_q[63:0]);

    // bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9(BITJOIN,116)
    assign bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_q = i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9(BITSELECT,117)
    assign bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_q[63:0]);

    // bubble_join_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x(BITJOIN,142)
    assign bubble_join_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_q = {i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_c2_exit_3_tpl, i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_c2_exit_2_tpl, i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_out_c2_exit_1_tpl};

    // bubble_select_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x(BITSELECT,143)
    assign bubble_select_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_q[64:64]);
    assign bubble_select_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_q[65:65]);

    // redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4(REG,88)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_D0);
        end
    end

    // redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5(REG,89)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_q <= $unsigned(redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_4_q);
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,149)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,150)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[33:0]);

    // sel_for_coalesced_delay_0(BITSELECT,83)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[33:33]);

    // dupName_0_sync_out_x(GPOUT,70)@17
    assign out_c0_exe1123 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe2 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_b;
    assign out_c1_exe3 = redist0_i_sfc_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress11_aunroll_x_out_c1_exit_3_tpl_6_5_q;
    assign out_c2_exe1 = bubble_select_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_b;
    assign out_c2_exe2 = bubble_select_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_c;
    assign out_c2_exe3 = bubble_select_i_sfc_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress15_aunroll_x_d;
    assign out_ublock_i_sroa_0_0_pop16 = bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop16_zfp_1d_decompress9_b;
    assign out_ublock_i_sroa_12_0_pop13 = bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop13_zfp_1d_decompress6_b;
    assign out_ublock_i_sroa_6_0_pop15 = bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop15_zfp_1d_decompress8_b;
    assign out_ublock_i_sroa_9_0_pop14 = bubble_select_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop14_zfp_1d_decompress7_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_024_pop18_zfp_1d_decompress5_1_V0;

    // rst_sync(RESETSYNC,279)
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
