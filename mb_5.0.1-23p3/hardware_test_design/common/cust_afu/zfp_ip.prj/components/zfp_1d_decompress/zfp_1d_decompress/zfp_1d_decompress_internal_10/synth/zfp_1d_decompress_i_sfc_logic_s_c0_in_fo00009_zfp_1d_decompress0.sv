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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body18_i_zfp_1d_decompresss_c0_enter19119_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c0_in_fo00009_zfp_1d_decompress0 (
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    output wire [0:0] out_c0_exi2194_0_tpl,
    output wire [0:0] out_c0_exi2194_1_tpl,
    output wire [0:0] out_c0_exi2194_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_zfp_1d_decompress_B6_current_iter_isspec,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1190_0_tpl,
    input wire [0:0] in_c0_eni1190_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_072_q;
    wire [31:0] c_i32_175_q;
    wire [31:0] c_i32_274_q;
    wire [31:0] c_i32_373_q;
    wire [2:0] c_i3_179_q;
    wire [2:0] c_i3_277_q;
    wire [63:0] c_i64_undef76_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [3:0] i_fpga_indvars_iv_next42_zfp_1d_decompress40_a;
    wire [3:0] i_fpga_indvars_iv_next42_zfp_1d_decompress40_b;
    logic [3:0] i_fpga_indvars_iv_next42_zfp_1d_decompress40_o;
    wire [3:0] i_fpga_indvars_iv_next42_zfp_1d_decompress40_q;
    wire [32:0] i_inc24_i_zfp_1d_decompress29_a;
    wire [32:0] i_inc24_i_zfp_1d_decompress29_b;
    logic [32:0] i_inc24_i_zfp_1d_decompress29_o;
    wire [32:0] i_inc24_i_zfp_1d_decompress29_q;
    reg [63:0] i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q;
    wire [0:0] i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_0_4_select48_zfp_1d_decompress17_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress13_zfp_1d_decompress42_out_intel_reserved_ffwd_5_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress14_zfp_1d_decompress43_out_intel_reserved_ffwd_6_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress15_zfp_1d_decompress44_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress16_zfp_1d_decompress45_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond64_zfp_1d_decompress39_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond64_zfp_1d_decompress39_out_feedback_valid_out_5;
    wire [0:0] i_notcmp61_zfp_1d_decompress38_q;
    wire [0:0] i_spec_select55_zfp_1d_decompress22_s;
    reg [63:0] i_spec_select55_zfp_1d_decompress22_q;
    wire [0:0] i_spec_select56_zfp_1d_decompress26_s;
    reg [63:0] i_spec_select56_zfp_1d_decompress26_q;
    wire [0:0] i_spec_select57_zfp_1d_decompress28_s;
    reg [63:0] i_spec_select57_zfp_1d_decompress28_q;
    wire [0:0] i_unnamed_zfp_1d_decompress10_qi;
    reg [0:0] i_unnamed_zfp_1d_decompress10_q;
    wire [0:0] i_unnamed_zfp_1d_decompress12_qi;
    reg [0:0] i_unnamed_zfp_1d_decompress12_q;
    wire [0:0] i_unnamed_zfp_1d_decompress19_qi;
    reg [0:0] i_unnamed_zfp_1d_decompress19_q;
    wire [0:0] i_unnamed_zfp_1d_decompress24_s;
    reg [63:0] i_unnamed_zfp_1d_decompress24_q;
    wire [0:0] i_zfp_1d_decompress_b6_current_iter_isspec_zfp_1d_decompress5_q;
    wire [0:0] i_zfp_1d_decompress_b6_next_iter_isreal_zfp_1d_decompress7_q;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next42_zfp_1d_decompress40_sel_x_b;
    wire [31:0] bgTrunc_i_inc24_i_zfp_1d_decompress29_sel_x_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x_out_dest_data_out_0_0_0_tpl;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x_out_dest_data_out_0_0_2_tpl;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x_s;
    reg [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_c_i5_03_x_q;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_o_data;
    wire [2:0] i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg29_q;
    wire [0:0] i_exitcond43_zfp_1d_decompress31_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond43_zfp_1d_decompress31_cmp_nsign_q_2_q;
    reg [0:0] redist0_i_exitcond43_zfp_1d_decompress31_cmp_nsign_q_2_delay_0;
    reg [0:0] redist1_sync_together86_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist1_sync_together86_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist2_sync_together86_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together86_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist4_sync_together86_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist5_sync_together86_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q;
    reg [0:0] redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_delay_0;
    reg [0:0] redist8_i_unnamed_zfp_1d_decompress19_q_2_q;
    reg [0:0] redist9_i_unnamed_zfp_1d_decompress14_q_2_q;
    reg [0:0] redist10_i_unnamed_zfp_1d_decompress12_q_2_q;
    reg [0:0] redist11_i_unnamed_zfp_1d_decompress10_q_2_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_data_out_2_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_data_out_2_delay_0;
    reg [0:0] redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_q;
    reg [0:0] redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_delay_0;
    reg [0:0] redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_delay_1;
    reg [0:0] redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_delay_2;
    reg [0:0] redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6_q;
    reg [0:0] redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6_delay_0;
    reg [0:0] redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_q;
    reg [0:0] redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_0;
    reg [0:0] redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_1;
    reg [0:0] redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together86_aunroll_x_in_i_valid_2(DELAY,161)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together86_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together86_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together86_aunroll_x_in_i_valid_2_q <= redist1_sync_together86_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist2_sync_together86_aunroll_x_in_i_valid_3(DELAY,162)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together86_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together86_aunroll_x_in_i_valid_3_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,126)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg23(REG,147)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i3_277(CONSTANT,35)
    assign c_i3_277_q = $unsigned(3'b010);

    // i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_c_i5_03_x(CONSTANT,104)
    assign i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_c_i5_03_x_q = $unsigned(5'b00000);

    // c_i3_179(CONSTANT,34)
    assign c_i3_179_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next42_zfp_1d_decompress40(ADD,39)@4
    assign i_fpga_indvars_iv_next42_zfp_1d_decompress40_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x_q};
    assign i_fpga_indvars_iv_next42_zfp_1d_decompress40_b = {1'b0, c_i3_179_q};
    assign i_fpga_indvars_iv_next42_zfp_1d_decompress40_o = $unsigned(i_fpga_indvars_iv_next42_zfp_1d_decompress40_a) + $unsigned(i_fpga_indvars_iv_next42_zfp_1d_decompress40_b);
    assign i_fpga_indvars_iv_next42_zfp_1d_decompress40_q = i_fpga_indvars_iv_next42_zfp_1d_decompress40_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next42_zfp_1d_decompress40_sel_x(BITSELECT,70)@4
    assign bgTrunc_i_fpga_indvars_iv_next42_zfp_1d_decompress40_sel_x_b = i_fpga_indvars_iv_next42_zfp_1d_decompress40_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_element_extension2_x(BITJOIN,105)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_element_extension2_x_q = {i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_c_i5_03_x_q, bgTrunc_i_fpga_indvars_iv_next42_zfp_1d_decompress40_sel_x_b};

    // i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x(LOGICAL,98)@1
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg25(REG,149)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2(DELAY,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q);
            redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q <= redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg24(REG,148)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x(FIFODELAY,106)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg25_q & i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q);
    assign i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_valid = valid_fanout_reg24_q & redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_data = i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_element_extension2_x_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x(BITSELECT,108)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress1_x_o_data[2:0];

    // i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x(MUX,89)@4
    assign i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x_s = redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x_s or i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b or c_i3_277_q)
    begin
        unique case (i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x_q = i_llvm_fpga_push_i3_fpga_indvars_iv41_push21_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x_q = c_i3_277_q;
            default : i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x_q = 3'b0;
        endcase
    end

    // i_exitcond43_zfp_1d_decompress31_cmp_nsign(LOGICAL,159)@4
    assign i_exitcond43_zfp_1d_decompress31_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv41_pop21_zfp_1d_decompress30_mux_x_q[2:2]));

    // i_llvm_fpga_push_i1_notexitcond64_zfp_1d_decompress39(BLACKBOX,50)@4
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_notexitcond64_0 thei_llvm_fpga_push_i1_notexitcond64_zfp_1d_decompress39 (
        .in_data_in(i_exitcond43_zfp_1d_decompress31_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond64_zfp_1d_decompress39_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond64_zfp_1d_decompress39_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2(BLACKBOX,42)@0
    // in in_stall_in@20000000
    zfp_1d_decompress_i_llvm_fpga_dummy_thre0000y_zfp_1d_decompress0 thei_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4(DELAY,175)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out);
            redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_1 <= redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_0;
            redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_2 <= redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_1;
            redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_q <= redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3(BLACKBOX,48)@0
    // in in_stall_in@20000000
    zfp_1d_decompress_i_llvm_fpga_forked_b6_0000d_zfp_1d_decompress0 thei_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4(DELAY,173)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out);
            redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_delay_1 <= redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_delay_0;
            redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_delay_2 <= redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_delay_1;
            redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_q <= redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6(BLACKBOX,49)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going63_0 thei_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6 (
        .in_data_in(redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_q),
        .in_dummy_in(redist15_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b6_dummy_zfp_1d_decompress2_out_dummy_out_4_q),
        .in_forked_in(redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond64_zfp_1d_decompress39_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond64_zfp_1d_decompress39_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,68)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_exiting_valid_out;

    // redist3_sync_together86_aunroll_x_in_i_valid_4(DELAY,163)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together86_aunroll_x_in_i_valid_4_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist4_sync_together86_aunroll_x_in_i_valid_5(DELAY,164)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_together86_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist4_sync_together86_aunroll_x_in_i_valid_5_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg26(REG,150)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist4_sync_together86_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg7(REG,131)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_0_4_select48_zfp_1d_decompress17(BLACKBOX,43)@5
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_0000_sroa_0_4_select48_0 thei_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_0_4_select48_zfp_1d_decompress17 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_0_4_select48_zfp_1d_decompress17_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_373(CONSTANT,33)
    assign c_i32_373_q = $unsigned(32'b00000000000000000000000000000011);

    // c_i32_072(CONSTANT,30)
    assign c_i32_072_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_175(CONSTANT,31)
    assign c_i32_175_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc24_i_zfp_1d_decompress29(ADD,40)@4
    assign i_inc24_i_zfp_1d_decompress29_a = {1'b0, i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_q};
    assign i_inc24_i_zfp_1d_decompress29_b = {1'b0, c_i32_175_q};
    assign i_inc24_i_zfp_1d_decompress29_o = $unsigned(i_inc24_i_zfp_1d_decompress29_a) + $unsigned(i_inc24_i_zfp_1d_decompress29_b);
    assign i_inc24_i_zfp_1d_decompress29_q = i_inc24_i_zfp_1d_decompress29_o[32:0];

    // bgTrunc_i_inc24_i_zfp_1d_decompress29_sel_x(BITSELECT,71)@4
    assign bgTrunc_i_inc24_i_zfp_1d_decompress29_sel_x_b = i_inc24_i_zfp_1d_decompress29_q[31:0];

    // valid_fanout_reg14(REG,138)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,137)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x(FIFODELAY,100)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_valid = valid_fanout_reg13_q & redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_data = bgTrunc_i_inc24_i_zfp_1d_decompress29_sel_x_b;
    assign i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc24_i_zfp_1d_decompress29_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x(MUX,88)@4
    assign i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_s = redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_s or i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_o_data or c_i32_072_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_q = i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i14_0_i18_push26_zfp_1d_decompress1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_q = c_i32_072_q;
            default : i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_q = 32'b0;
        endcase
    end

    // i_unnamed_zfp_1d_decompress10(LOGICAL,55)@4 + 1
    assign i_unnamed_zfp_1d_decompress10_qi = $unsigned(i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_q == c_i32_373_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress10_delay ( .xin(i_unnamed_zfp_1d_decompress10_qi), .xout(i_unnamed_zfp_1d_decompress10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_274(CONSTANT,32)
    assign c_i32_274_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_zfp_1d_decompress12(LOGICAL,56)@4 + 1
    assign i_unnamed_zfp_1d_decompress12_qi = $unsigned(i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_q == c_i32_274_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress12_delay ( .xin(i_unnamed_zfp_1d_decompress12_qi), .xout(i_unnamed_zfp_1d_decompress12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg6(REG,130)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x(BLACKBOX,86)@5
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_00007_zfp_1d_decompress0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_0_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .out_dest_data_out_0_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x_out_dest_data_out_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // comparator(LOGICAL,37)@4 + 1
    assign comparator_qi = $unsigned(i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_q == c_i32_175_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18(SELECTOR,41)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q <= i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_0_4_select48_zfp_1d_decompress17_out_dest_data_out_1_0;
            if (i_unnamed_zfp_1d_decompress10_q == 1'b1)
            begin
                i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x_out_dest_data_out_0_0_2_tpl;
            end
            if (i_unnamed_zfp_1d_decompress12_q == 1'b1)
            begin
                i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x_out_dest_data_out_0_0_1_tpl;
            end
            if (comparator_q == 1'b1)
            begin
                i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_assign1547_zfp_1d_decompress16_aunroll_x_out_dest_data_out_0_0_0_tpl;
            end
        end
    end

    // c_i64_undef76(CONSTANT,36)
    assign c_i64_undef76_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg16(REG,140)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4(DELAY,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_delay_0 <= $unsigned(redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q);
            redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q <= redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_delay_0;
        end
    end

    // valid_fanout_reg15(REG,139)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x(FIFODELAY,109)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg16_q & redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_valid = valid_fanout_reg15_q & redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_data = i_spec_select55_zfp_1d_decompress22_q;
    assign i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(i_spec_select55_zfp_1d_decompress22_q),
        .o_data(i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6(DELAY,174)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6_delay_0 <= $unsigned(redist13_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_4_q);
            redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6_q <= redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x(MUX,90)@6
    assign i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x_s = redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x_s or i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_o_data or c_i64_undef76_q)
    begin
        unique case (i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x_q = i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_0_0_push25_zfp_1d_decompress1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x_q = c_i64_undef76_q;
            default : i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x_q = 64'b0;
        endcase
    end

    // i_unnamed_zfp_1d_decompress19(LOGICAL,58)@4 + 1
    assign i_unnamed_zfp_1d_decompress19_qi = $unsigned(i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i14_0_i18_pop26_zfp_1d_decompress9_mux_x_q == c_i32_072_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress19_delay ( .xin(i_unnamed_zfp_1d_decompress19_qi), .xout(i_unnamed_zfp_1d_decompress19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_i_unnamed_zfp_1d_decompress19_q_2(DELAY,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_unnamed_zfp_1d_decompress19_q_2_q <= $unsigned(i_unnamed_zfp_1d_decompress19_q);
        end
    end

    // i_spec_select55_zfp_1d_decompress22(MUX,52)@6
    assign i_spec_select55_zfp_1d_decompress22_s = redist8_i_unnamed_zfp_1d_decompress19_q_2_q;
    always @(i_spec_select55_zfp_1d_decompress22_s or i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x_q or i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q)
    begin
        unique case (i_spec_select55_zfp_1d_decompress22_s)
            1'b0 : i_spec_select55_zfp_1d_decompress22_q = i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop25_zfp_1d_decompress21_mux_x_q;
            1'b1 : i_spec_select55_zfp_1d_decompress22_q = i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q;
            default : i_spec_select55_zfp_1d_decompress22_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_c_i7_03_x(CONSTANT,95)
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_c_i7_03_x_q = $unsigned(7'b0000000);

    // redist12_i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_data_out_2(DELAY,172)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_data_out);
            redist12_i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_data_out_2_q <= redist12_i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_data_out_2_delay_0;
        end
    end

    // i_zfp_1d_decompress_b6_next_iter_isreal_zfp_1d_decompress7(LOGICAL,61)@6
    assign i_zfp_1d_decompress_b6_next_iter_isreal_zfp_1d_decompress7_q = i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x_q & redist12_i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_element_extension2_x(BITJOIN,96)@6
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_element_extension2_x_q = {i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_c_i7_03_x_q, i_zfp_1d_decompress_b6_next_iter_isreal_zfp_1d_decompress7_q};

    // valid_fanout_reg4(REG,128)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg3(REG,127)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x(FIFODELAY,97)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg4_q & redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid = valid_fanout_reg3_q & redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_data = i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x(BITSELECT,99)@6
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x(MUX,87)@6
    assign i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x_s = redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x_s or i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x_q = i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x_q = 1'b0;
        endcase
    end

    // i_zfp_1d_decompress_b6_current_iter_isspec_zfp_1d_decompress5(LOGICAL,60)@6
    assign i_zfp_1d_decompress_b6_current_iter_isspec_zfp_1d_decompress5_q = i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b6_current_iter_isreal_zfp_1d_decompress4_mux_x_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress13_zfp_1d_decompress42(BLACKBOX,44)@6
    // out out_intel_reserved_ffwd_5_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00003_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress13_zfp_1d_decompress42 (
        .in_predicate_in(i_zfp_1d_decompress_b6_current_iter_isspec_zfp_1d_decompress5_q),
        .in_src_data_in_5_0(i_spec_select55_zfp_1d_decompress22_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress13_zfp_1d_decompress42_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,78)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress13_zfp_1d_decompress42_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg27(REG,151)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist4_sync_together86_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg18(REG,142)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg17(REG,141)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x(FIFODELAY,115)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg18_q & redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_valid = valid_fanout_reg17_q & redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_data = i_unnamed_zfp_1d_decompress24_q;
    assign i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(i_unnamed_zfp_1d_decompress24_q),
        .o_data(i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x(MUX,92)@6
    assign i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x_s = redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x_s or i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_o_data or c_i64_undef76_q)
    begin
        unique case (i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x_q = i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_5_0_push24_zfp_1d_decompress1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x_q = c_i64_undef76_q;
            default : i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x_q = 64'b0;
        endcase
    end

    // redist9_i_unnamed_zfp_1d_decompress14_q_2(DELAY,169)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_unnamed_zfp_1d_decompress14_q_2_q <= $unsigned(comparator_q);
        end
    end

    // i_unnamed_zfp_1d_decompress24(MUX,59)@6
    assign i_unnamed_zfp_1d_decompress24_s = redist9_i_unnamed_zfp_1d_decompress14_q_2_q;
    always @(i_unnamed_zfp_1d_decompress24_s or i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x_q or i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q)
    begin
        unique case (i_unnamed_zfp_1d_decompress24_s)
            1'b0 : i_unnamed_zfp_1d_decompress24_q = i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop24_zfp_1d_decompress23_mux_x_q;
            1'b1 : i_unnamed_zfp_1d_decompress24_q = i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q;
            default : i_unnamed_zfp_1d_decompress24_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress14_zfp_1d_decompress43(BLACKBOX,45)@6
    // out out_intel_reserved_ffwd_6_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00014_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress14_zfp_1d_decompress43 (
        .in_predicate_in(i_zfp_1d_decompress_b6_current_iter_isspec_zfp_1d_decompress5_q),
        .in_src_data_in_6_0(i_unnamed_zfp_1d_decompress24_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress14_zfp_1d_decompress43_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,80)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress14_zfp_1d_decompress43_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg28(REG,152)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist4_sync_together86_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg20(REG,144)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg19(REG,143)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x(FIFODELAY,118)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg20_q & redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_valid = valid_fanout_reg19_q & redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_data = i_spec_select56_zfp_1d_decompress26_q;
    assign i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(i_spec_select56_zfp_1d_decompress26_q),
        .o_data(i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x(MUX,93)@6
    assign i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x_s = redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x_s or i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_o_data or c_i64_undef76_q)
    begin
        unique case (i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x_q = i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_9_0_push23_zfp_1d_decompress1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x_q = c_i64_undef76_q;
            default : i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x_q = 64'b0;
        endcase
    end

    // redist10_i_unnamed_zfp_1d_decompress12_q_2(DELAY,170)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_unnamed_zfp_1d_decompress12_q_2_q <= $unsigned(i_unnamed_zfp_1d_decompress12_q);
        end
    end

    // i_spec_select56_zfp_1d_decompress26(MUX,53)@6
    assign i_spec_select56_zfp_1d_decompress26_s = redist10_i_unnamed_zfp_1d_decompress12_q_2_q;
    always @(i_spec_select56_zfp_1d_decompress26_s or i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x_q or i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q)
    begin
        unique case (i_spec_select56_zfp_1d_decompress26_s)
            1'b0 : i_spec_select56_zfp_1d_decompress26_q = i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop23_zfp_1d_decompress25_mux_x_q;
            1'b1 : i_spec_select56_zfp_1d_decompress26_q = i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q;
            default : i_spec_select56_zfp_1d_decompress26_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress15_zfp_1d_decompress44(BLACKBOX,46)@6
    // out out_intel_reserved_ffwd_7_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00005_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress15_zfp_1d_decompress44 (
        .in_predicate_in(i_zfp_1d_decompress_b6_current_iter_isspec_zfp_1d_decompress5_q),
        .in_src_data_in_7_0(i_spec_select56_zfp_1d_decompress26_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress15_zfp_1d_decompress44_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,81)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress15_zfp_1d_decompress44_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg29(REG,153)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist4_sync_together86_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg22(REG,146)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg21(REG,145)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x(FIFODELAY,112)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg22_q & redist6_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_valid = valid_fanout_reg21_q & redist7_i_llvm_fpga_push_i1_zfp_1d_decompress_b6_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_data = i_spec_select57_zfp_1d_decompress28_q;
    assign i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(i_spec_select57_zfp_1d_decompress28_q),
        .o_data(i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x(MUX,91)@6
    assign i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x_s = redist14_i_llvm_fpga_forked_zfp_1d_decompress_b6_forked_zfp_1d_decompress3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x_s or i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_o_data or c_i64_undef76_q)
    begin
        unique case (i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x_q = i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress0_i_llvm_fpga_push_i64_block_sroa_13_0_push22_zfp_1d_decompress1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x_q = c_i64_undef76_q;
            default : i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x_q = 64'b0;
        endcase
    end

    // redist11_i_unnamed_zfp_1d_decompress10_q_2(DELAY,171)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_unnamed_zfp_1d_decompress10_q_2_q <= $unsigned(i_unnamed_zfp_1d_decompress10_q);
        end
    end

    // i_spec_select57_zfp_1d_decompress28(MUX,54)@6
    assign i_spec_select57_zfp_1d_decompress28_s = redist11_i_unnamed_zfp_1d_decompress10_q_2_q;
    always @(i_spec_select57_zfp_1d_decompress28_s or i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x_q or i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q)
    begin
        unique case (i_spec_select57_zfp_1d_decompress28_s)
            1'b0 : i_spec_select57_zfp_1d_decompress28_q = i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop22_zfp_1d_decompress27_mux_x_q;
            1'b1 : i_spec_select57_zfp_1d_decompress28_q = i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt16_zfp_1d_decompress18_q;
            default : i_spec_select57_zfp_1d_decompress28_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress16_zfp_1d_decompress45(BLACKBOX,47)@6
    // out out_intel_reserved_ffwd_8_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00006_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress16_zfp_1d_decompress45 (
        .in_predicate_in(i_zfp_1d_decompress_b6_current_iter_isspec_zfp_1d_decompress5_q),
        .in_src_data_in_8_0(i_spec_select57_zfp_1d_decompress28_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress16_zfp_1d_decompress45_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,82)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress16_zfp_1d_decompress45_out_intel_reserved_ffwd_8_0;

    // dupName_4_regfree_osync_x(GPOUT,83)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_pipeline_dummy_out;

    // dupName_5_regfree_osync_x(GPOUT,84)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_pipeline_forked_out;

    // dupName_6_regfree_osync_x(GPOUT,85)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going63_zfp_1d_decompress6_out_pipeline_valid_out;

    // redist5_sync_together86_aunroll_x_in_i_valid_6(DELAY,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together86_aunroll_x_in_i_valid_6_q <= $unsigned(redist4_sync_together86_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg0(REG,124)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together86_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_notcmp61_zfp_1d_decompress38(LOGICAL,51)@6
    assign i_notcmp61_zfp_1d_decompress38_q = redist0_i_exitcond43_zfp_1d_decompress31_cmp_nsign_q_2_q ^ VCC_q;

    // redist0_i_exitcond43_zfp_1d_decompress31_cmp_nsign_q_2(DELAY,160)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond43_zfp_1d_decompress31_cmp_nsign_q_2_delay_0 <= $unsigned(i_exitcond43_zfp_1d_decompress31_cmp_nsign_q);
            redist0_i_exitcond43_zfp_1d_decompress31_cmp_nsign_q_2_q <= redist0_i_exitcond43_zfp_1d_decompress31_cmp_nsign_q_2_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,122)@6
    assign out_c0_exi2194_0_tpl = GND_q;
    assign out_c0_exi2194_1_tpl = redist0_i_exitcond43_zfp_1d_decompress31_cmp_nsign_q_2_q;
    assign out_c0_exi2194_2_tpl = i_notcmp61_zfp_1d_decompress38_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist5_sync_together86_aunroll_x_in_i_valid_6_q;
    assign out_zfp_1d_decompress_B6_current_iter_isspec = i_zfp_1d_decompress_b6_current_iter_isspec_zfp_1d_decompress5_q;

endmodule
