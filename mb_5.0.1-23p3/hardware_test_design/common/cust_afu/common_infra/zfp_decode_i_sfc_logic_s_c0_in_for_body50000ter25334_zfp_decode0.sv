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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body5_zfp_decodes_c0_enter25334_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_logic_s_c0_in_for_body50000ter25334_zfp_decode0 (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi16282_0_tpl,
    output wire [63:0] out_c0_exi16282_1_tpl,
    output wire [63:0] out_c0_exi16282_2_tpl,
    output wire [63:0] out_c0_exi16282_3_tpl,
    output wire [63:0] out_c0_exi16282_4_tpl,
    output wire [0:0] out_c0_exi16282_5_tpl,
    output wire [0:0] out_c0_exi16282_6_tpl,
    output wire [0:0] out_c0_exi16282_7_tpl,
    output wire [31:0] out_c0_exi16282_8_tpl,
    output wire [0:0] out_c0_exi16282_9_tpl,
    output wire [0:0] out_c0_exi16282_10_tpl,
    output wire [63:0] out_c0_exi16282_11_tpl,
    output wire [63:0] out_c0_exi16282_12_tpl,
    output wire [63:0] out_c0_exi16282_13_tpl,
    output wire [63:0] out_c0_exi16282_14_tpl,
    output wire [31:0] out_c0_exi16282_15_tpl,
    output wire [31:0] out_c0_exi16282_16_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_zfp_decode_B6_current_iter_isspec,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni15_0_tpl,
    input wire [31:0] in_c0_eni15_1_tpl,
    input wire [0:0] in_c0_eni15_2_tpl,
    input wire [63:0] in_c0_eni15_3_tpl,
    input wire [63:0] in_c0_eni15_4_tpl,
    input wire [63:0] in_c0_eni15_5_tpl,
    input wire [63:0] in_c0_eni15_6_tpl,
    input wire [63:0] in_c0_eni15_7_tpl,
    input wire [0:0] in_c0_eni15_8_tpl,
    input wire [31:0] in_c0_eni15_9_tpl,
    input wire [0:0] in_c0_eni15_10_tpl,
    input wire [31:0] in_c0_eni15_11_tpl,
    input wire [0:0] in_c0_eni15_12_tpl,
    input wire [0:0] in_c0_eni15_13_tpl,
    input wire [31:0] in_c0_eni15_14_tpl,
    input wire [31:0] in_c0_eni15_15_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0127_q;
    wire [31:0] c_i32_1131_q;
    wire [31:0] c_i32_2130_q;
    wire [31:0] c_i32_3129_q;
    wire [2:0] c_i3_1135_q;
    wire [2:0] c_i3_2133_q;
    wire [63:0] c_i64_1126_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [3:0] i_fpga_indvars_iv_next50_zfp_decode47_a;
    wire [3:0] i_fpga_indvars_iv_next50_zfp_decode47_b;
    logic [3:0] i_fpga_indvars_iv_next50_zfp_decode47_o;
    wire [3:0] i_fpga_indvars_iv_next50_zfp_decode47_q;
    wire [32:0] i_inc_zfp_decode43_a;
    wire [32:0] i_inc_zfp_decode43_b;
    logic [32:0] i_inc_zfp_decode43_o;
    wire [32:0] i_inc_zfp_decode43_q;
    reg [63:0] i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_decode_fpgaunique_1s_case_stmt_zfp_decode30_q;
    wire [0:0] i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode66_out_o_exit_outer_loop;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond66_zfp_decode60_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond66_zfp_decode60_out_feedback_valid_out_5;
    wire [0:0] i_notcmp63_zfp_decode59_q;
    wire [63:0] i_or_zfp_decode31_q;
    wire [0:0] i_reduction_zfp_decode_0_zfp_decode36_s;
    reg [63:0] i_reduction_zfp_decode_0_zfp_decode36_q;
    wire [0:0] i_reduction_zfp_decode_1_zfp_decode38_s;
    reg [63:0] i_reduction_zfp_decode_1_zfp_decode38_q;
    wire [0:0] i_reduction_zfp_decode_2_zfp_decode40_s;
    reg [63:0] i_reduction_zfp_decode_2_zfp_decode40_q;
    wire [0:0] i_reduction_zfp_decode_3_zfp_decode42_s;
    reg [63:0] i_reduction_zfp_decode_3_zfp_decode42_q;
    wire [0:0] i_selcond_zfp_decode_0_zfp_decode34_q;
    wire [0:0] i_selcond_zfp_decode_1_zfp_decode35_q;
    wire [0:0] i_selcond_zfp_decode_3_zfp_decode37_q;
    wire [0:0] i_selcond_zfp_decode_5_zfp_decode39_q;
    wire [0:0] i_selcond_zfp_decode_7_zfp_decode41_q;
    wire [63:0] i_sh_prom8_zfp_decode10_vt_join_q;
    wire [31:0] i_sh_prom8_zfp_decode10_vt_select_31_b;
    wire [63:0] i_sh_prom_zfp_decode13_vt_join_q;
    wire [31:0] i_sh_prom_zfp_decode13_vt_select_31_b;
    wire [0:0] i_tobool6_zfp_decode17_qi;
    reg [0:0] i_tobool6_zfp_decode17_q;
    wire [63:0] i_unnamed_zfp_decode16_qi;
    reg [63:0] i_unnamed_zfp_decode16_q;
    wire [0:0] i_unnamed_zfp_decode19_qi;
    reg [0:0] i_unnamed_zfp_decode19_q;
    wire [0:0] i_unnamed_zfp_decode21_qi;
    reg [0:0] i_unnamed_zfp_decode21_q;
    wire [0:0] i_unnamed_zfp_decode32_qi;
    reg [0:0] i_unnamed_zfp_decode32_q;
    wire [0:0] i_unnamed_zfp_decode49_q;
    wire [0:0] i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q;
    wire [0:0] i_zfp_decode_b6_is_real_thread_zfp_decode65_q;
    wire [0:0] i_zfp_decode_b6_next_iter_isreal_zfp_decode7_qi;
    reg [0:0] i_zfp_decode_b6_next_iter_isreal_zfp_decode7_q;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next50_zfp_decode47_sel_x_b;
    wire [31:0] bgTrunc_i_inc_zfp_decode43_sel_x_b;
    wire [63:0] c_i64_0128_recast_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x_s;
    reg [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_push50_zfp_decode0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_push50_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_c_i5_03_x_q;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_o_data;
    wire [2:0] i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_valid;
    wire i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_stall;
    wire i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_o_data;
    wire [63:0] i_sh_prom8_zfp_decode10_sel_x_b;
    wire [63:0] i_sh_prom_zfp_decode13_sel_x_b;
    wire [5:0] i_shl_zfp_decode0_shift_narrow_x_b;
    wire [5:0] dupName_1_i_unnamed_zfp_decode0_shift_narrow_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg32_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg35_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg38_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg39_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg41_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg42_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg44_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg45_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg47_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg48_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg50_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg51_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg53_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg54_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg56_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg57_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg59_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg60_q;
    wire [0:0] i_exitcond51_zfp_decode45_cmp_nsign_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid301_i_shl_zfp_decode0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid301_i_shl_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid302_i_shl_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage0Idx2Pad2_uid303_i_shl_zfp_decode0_shift_x_q;
    wire [61:0] leftShiftStage0Idx2Rng2_uid304_i_shl_zfp_decode0_shift_x_in;
    wire [61:0] leftShiftStage0Idx2Rng2_uid304_i_shl_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid305_i_shl_zfp_decode0_shift_x_q;
    wire [2:0] leftShiftStage0Idx3Pad3_uid306_i_shl_zfp_decode0_shift_x_q;
    wire [60:0] leftShiftStage0Idx3Rng3_uid307_i_shl_zfp_decode0_shift_x_in;
    wire [60:0] leftShiftStage0Idx3Rng3_uid307_i_shl_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid308_i_shl_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_s;
    reg [63:0] leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid311_i_shl_zfp_decode0_shift_x_q;
    wire [59:0] leftShiftStage1Idx1Rng4_uid312_i_shl_zfp_decode0_shift_x_in;
    wire [59:0] leftShiftStage1Idx1Rng4_uid312_i_shl_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid313_i_shl_zfp_decode0_shift_x_q;
    wire [7:0] leftShiftStage1Idx2Pad8_uid314_i_shl_zfp_decode0_shift_x_q;
    wire [55:0] leftShiftStage1Idx2Rng8_uid315_i_shl_zfp_decode0_shift_x_in;
    wire [55:0] leftShiftStage1Idx2Rng8_uid315_i_shl_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage1Idx2_uid316_i_shl_zfp_decode0_shift_x_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid317_i_shl_zfp_decode0_shift_x_q;
    wire [51:0] leftShiftStage1Idx3Rng12_uid318_i_shl_zfp_decode0_shift_x_in;
    wire [51:0] leftShiftStage1Idx3Rng12_uid318_i_shl_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage1Idx3_uid319_i_shl_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_s;
    reg [63:0] leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Pad16_uid322_i_shl_zfp_decode0_shift_x_q;
    wire [47:0] leftShiftStage2Idx1Rng16_uid323_i_shl_zfp_decode0_shift_x_in;
    wire [47:0] leftShiftStage2Idx1Rng16_uid323_i_shl_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage2Idx1_uid324_i_shl_zfp_decode0_shift_x_q;
    wire [31:0] leftShiftStage2Idx2Rng32_uid326_i_shl_zfp_decode0_shift_x_in;
    wire [31:0] leftShiftStage2Idx2Rng32_uid326_i_shl_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage2Idx2_uid327_i_shl_zfp_decode0_shift_x_q;
    wire [47:0] leftShiftStage2Idx3Pad48_uid328_i_shl_zfp_decode0_shift_x_q;
    wire [15:0] leftShiftStage2Idx3Rng48_uid329_i_shl_zfp_decode0_shift_x_in;
    wire [15:0] leftShiftStage2Idx3Rng48_uid329_i_shl_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage2Idx3_uid330_i_shl_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x_s;
    reg [63:0] leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_s;
    reg [63:0] leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
    wire [59:0] leftShiftStage1Idx1Rng4_uid348_dupName_1_i_unnamed_zfp_decode0_shift_x_in;
    wire [59:0] leftShiftStage1Idx1Rng4_uid348_dupName_1_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid349_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
    wire [55:0] leftShiftStage1Idx2Rng8_uid351_dupName_1_i_unnamed_zfp_decode0_shift_x_in;
    wire [55:0] leftShiftStage1Idx2Rng8_uid351_dupName_1_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage1Idx2_uid352_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
    wire [51:0] leftShiftStage1Idx3Rng12_uid354_dupName_1_i_unnamed_zfp_decode0_shift_x_in;
    wire [51:0] leftShiftStage1Idx3Rng12_uid354_dupName_1_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage1Idx3_uid355_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_s;
    reg [63:0] leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
    wire [47:0] leftShiftStage2Idx1Rng16_uid359_dupName_1_i_unnamed_zfp_decode0_shift_x_in;
    wire [47:0] leftShiftStage2Idx1Rng16_uid359_dupName_1_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage2Idx1_uid360_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
    wire [31:0] leftShiftStage2Idx2Rng32_uid362_dupName_1_i_unnamed_zfp_decode0_shift_x_in;
    wire [31:0] leftShiftStage2Idx2Rng32_uid362_dupName_1_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage2Idx2_uid363_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
    wire [15:0] leftShiftStage2Idx3Rng48_uid365_dupName_1_i_unnamed_zfp_decode0_shift_x_in;
    wire [15:0] leftShiftStage2Idx3Rng48_uid365_dupName_1_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage2Idx3_uid366_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x_s;
    reg [63:0] leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStageSel0Dto0_uid309_i_shl_zfp_decode0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid309_i_shl_zfp_decode0_shift_x_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto0_uid309_i_shl_zfp_decode0_shift_x_merged_bit_select_d;
    wire [1:0] leftShiftStageSel0Dto0_uid345_dupName_1_i_unnamed_zfp_decode0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid345_dupName_1_i_unnamed_zfp_decode0_shift_x_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto0_uid345_dupName_1_i_unnamed_zfp_decode0_shift_x_merged_bit_select_d;
    reg [31:0] redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_q;
    reg [31:0] redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_delay_0;
    reg [31:0] redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_delay_1;
    reg [0:0] redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_q;
    reg [0:0] redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_delay_0;
    reg [0:0] redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_delay_1;
    reg [0:0] redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_delay_2;
    reg [31:0] redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_q;
    reg [31:0] redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_delay_0;
    reg [31:0] redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_delay_1;
    reg [0:0] redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_q;
    reg [0:0] redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_delay_0;
    reg [0:0] redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_delay_1;
    reg [0:0] redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_delay_2;
    reg [31:0] redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_q;
    reg [31:0] redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_delay_0;
    reg [31:0] redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_delay_1;
    reg [0:0] redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_q;
    reg [0:0] redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_delay_0;
    reg [0:0] redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_delay_1;
    reg [0:0] redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_delay_2;
    reg [0:0] redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_q;
    reg [0:0] redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_delay_0;
    reg [0:0] redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_delay_1;
    reg [0:0] redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_delay_2;
    reg [0:0] redist14_sync_together140_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist15_sync_together140_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist16_sync_together140_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist17_sync_together140_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist17_sync_together140_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist18_sync_together140_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist19_sync_together140_aunroll_x_in_i_valid_7_q;
    reg [5:0] redist20_i_shl_zfp_decode0_shift_narrow_x_b_2_q;
    reg [5:0] redist20_i_shl_zfp_decode0_shift_narrow_x_b_2_delay_0;
    reg [0:0] redist21_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_1_q;
    reg [0:0] redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q;
    reg [0:0] redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q;
    reg [0:0] redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_q;
    reg [0:0] redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_delay_0;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q_3_q;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q_3_delay_0;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q_3_delay_1;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q_3_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q_3_delay_0;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q_3_delay_1;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q_3_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q_3_delay_0;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q_3_delay_1;
    reg [0:0] redist28_dupName_1_comparator_x_q_3_q;
    reg [0:0] redist28_dupName_1_comparator_x_q_3_delay_0;
    reg [0:0] redist29_dupName_0_comparator_x_q_3_q;
    reg [0:0] redist29_dupName_0_comparator_x_q_3_delay_0;
    reg [0:0] redist30_i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q_3_q;
    reg [0:0] redist30_i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q_3_delay_0;
    reg [0:0] redist30_i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q_3_delay_1;
    reg [0:0] redist31_i_unnamed_zfp_decode49_q_3_q;
    reg [0:0] redist31_i_unnamed_zfp_decode49_q_3_delay_0;
    reg [0:0] redist31_i_unnamed_zfp_decode49_q_3_delay_1;
    reg [0:0] redist32_i_unnamed_zfp_decode32_q_3_q;
    reg [0:0] redist32_i_unnamed_zfp_decode32_q_3_delay_0;
    reg [0:0] redist33_i_unnamed_zfp_decode23_q_3_q;
    reg [0:0] redist33_i_unnamed_zfp_decode23_q_3_delay_0;
    reg [0:0] redist36_i_notcmp63_zfp_decode59_q_3_q;
    reg [0:0] redist36_i_notcmp63_zfp_decode59_q_3_delay_0;
    reg [0:0] redist36_i_notcmp63_zfp_decode59_q_3_delay_1;
    reg [0:0] redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    reg [0:0] redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_delay_0;
    reg [0:0] redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_delay_1;
    reg [0:0] redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_delay_2;
    reg [0:0] redist38_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_5_q;
    reg [0:0] redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_q;
    reg [0:0] redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_delay_0;
    reg [0:0] redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_q;
    reg [0:0] redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_delay_0;
    reg [0:0] redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_delay_1;
    reg [0:0] redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_delay_2;
    reg [31:0] redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_inputreg0_q;
    reg [63:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_inputreg0_q;
    wire redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_reset0;
    wire [63:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_ia;
    wire [1:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_aa;
    wire [1:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_ab;
    wire [63:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_iq;
    wire [63:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_q;
    wire [1:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_i = 2'b11;
    wire [1:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_offset_q;
    wire [2:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_a;
    wire [2:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_b;
    logic [2:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_o;
    wire [2:0] redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_q;
    reg [63:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_inputreg0_q;
    reg [63:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_outputreg0_q;
    wire redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_reset0;
    wire [63:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_ia;
    wire [1:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_aa;
    wire [1:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_ab;
    wire [63:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_iq;
    wire [63:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_q;
    wire [1:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_wraddr_i = 2'b11;
    wire [1:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_offset_q;
    wire [2:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_a;
    wire [2:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_b;
    logic [2:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_o;
    wire [2:0] redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_q;
    reg [63:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_inputreg0_q;
    reg [63:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_outputreg0_q;
    wire redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_reset0;
    wire [63:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_ia;
    wire [1:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_aa;
    wire [1:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_ab;
    wire [63:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_iq;
    wire [63:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_q;
    wire [1:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_wraddr_i = 2'b11;
    wire [2:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_a;
    wire [2:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_b;
    logic [2:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_o;
    wire [2:0] redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_q;
    reg [63:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_inputreg0_q;
    reg [63:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_outputreg0_q;
    wire redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_reset0;
    wire [63:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_ia;
    wire [1:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_aa;
    wire [1:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_ab;
    wire [63:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_iq;
    wire [63:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_q;
    wire [1:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_wraddr_i = 2'b11;
    wire [2:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_a;
    wire [2:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_b;
    logic [2:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_o;
    wire [2:0] redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_q;
    reg [63:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_inputreg0_q;
    reg [63:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_outputreg0_q;
    wire redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_reset0;
    wire [63:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_ia;
    wire [1:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_aa;
    wire [1:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_ab;
    wire [63:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_iq;
    wire [63:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_q;
    wire [1:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_wraddr_i = 2'b11;
    wire [2:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_a;
    wire [2:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_b;
    logic [2:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_o;
    wire [2:0] redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_q;
    reg [31:0] redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_inputreg0_q;
    reg [31:0] redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_inputreg0_q;
    reg [31:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_inputreg0_q;
    reg [31:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_outputreg0_q;
    wire redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_reset0;
    wire [31:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_ia;
    wire [1:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_aa;
    wire [1:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_ab;
    wire [31:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_iq;
    wire [31:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_q;
    wire [1:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_wraddr_i = 2'b11;
    wire [2:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_a;
    wire [2:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_b;
    logic [2:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_o;
    wire [2:0] redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_q;
    reg [31:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_inputreg0_q;
    reg [31:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_outputreg0_q;
    wire redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_reset0;
    wire [31:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_ia;
    wire [1:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_aa;
    wire [1:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_ab;
    wire [31:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_iq;
    wire [31:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_q;
    wire [1:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_wraddr_i = 2'b11;
    wire [2:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_a;
    wire [2:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_b;
    logic [2:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_o;
    wire [2:0] redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist14_sync_together140_aunroll_x_in_i_valid_1(DELAY,385)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist14_sync_together140_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist14_sync_together140_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist15_sync_together140_aunroll_x_in_i_valid_2(DELAY,386)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together140_aunroll_x_in_i_valid_2_q <= $unsigned(redist14_sync_together140_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist16_sync_together140_aunroll_x_in_i_valid_3(DELAY,387)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist16_sync_together140_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist16_sync_together140_aunroll_x_in_i_valid_3_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,224)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg32(REG,254)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4(DELAY,377)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_delay_0 <= $unsigned(in_c0_eni15_8_tpl);
            redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_delay_1 <= redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_delay_0;
            redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_delay_2 <= redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_delay_1;
            redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_q <= redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_c_i7_03_x(CONSTANT,136)
    assign i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_llvm_fpga_push_i1_push50_zfp_decode0_element_extension2_x(BITJOIN,149)@4
    assign i_llvm_fpga_push_i1_push50_zfp_decode0_element_extension2_x_q = {i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_c_i7_03_x_q, i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x_q};

    // i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x(LOGICAL,139)@1
    assign i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg19(REG,241)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // redist21_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_1(DELAY,392)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_1_q <= $unsigned(i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
        end
    end

    // redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2(DELAY,393)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q <= $unsigned(redist21_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_1_q);
        end
    end

    // valid_fanout_reg18(REG,240)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x(FIFODELAY,150)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_stall = ~ (valid_fanout_reg19_q & i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_valid = valid_fanout_reg18_q & redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_data = i_llvm_fpga_push_i1_push50_zfp_decode0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_push50_zfp_decode0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_push50_zfp_decode0_adapt_scalar_trunc4_sel_x(BITSELECT,152)@4
    assign i_llvm_fpga_push_i1_push50_zfp_decode0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_push50_zfp_decode0_i_llvm_fpga_push_i1_push50_zfp_decode1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x(MUX,119)@4
    assign i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x_s = redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x_s or i_llvm_fpga_push_i1_push50_zfp_decode0_adapt_scalar_trunc4_sel_x_b or redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x_q = i_llvm_fpga_push_i1_push50_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x_q = redist6_sync_together140_aunroll_x_in_c0_eni15_8_tpl_4_q;
            default : i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x_q = 1'b0;
        endcase
    end

    // c_i3_2133(CONSTANT,54)
    assign c_i3_2133_q = $unsigned(3'b010);

    // i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_c_i5_03_x(CONSTANT,178)
    assign i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_c_i5_03_x_q = $unsigned(5'b00000);

    // c_i3_1135(CONSTANT,53)
    assign c_i3_1135_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next50_zfp_decode47(ADD,58)@4
    assign i_fpga_indvars_iv_next50_zfp_decode47_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x_q};
    assign i_fpga_indvars_iv_next50_zfp_decode47_b = {1'b0, c_i3_1135_q};
    assign i_fpga_indvars_iv_next50_zfp_decode47_o = $unsigned(i_fpga_indvars_iv_next50_zfp_decode47_a) + $unsigned(i_fpga_indvars_iv_next50_zfp_decode47_b);
    assign i_fpga_indvars_iv_next50_zfp_decode47_q = i_fpga_indvars_iv_next50_zfp_decode47_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next50_zfp_decode47_sel_x(BITSELECT,103)@4
    assign bgTrunc_i_fpga_indvars_iv_next50_zfp_decode47_sel_x_b = i_fpga_indvars_iv_next50_zfp_decode47_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_element_extension2_x(BITJOIN,179)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_element_extension2_x_q = {i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_c_i5_03_x_q, bgTrunc_i_fpga_indvars_iv_next50_zfp_decode47_sel_x_b};

    // valid_fanout_reg31(REG,253)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,252)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x(FIFODELAY,180)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_stall = ~ (valid_fanout_reg31_q & i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
    assign i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_valid = valid_fanout_reg30_q & redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_data = i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_element_extension2_x_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_adapt_scalar_trunc4_sel_x(BITSELECT,182)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode1_x_o_data[2:0];

    // i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x(MUX,125)@4
    assign i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x_s = redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x_s or i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_adapt_scalar_trunc4_sel_x_b or c_i3_2133_q)
    begin
        unique case (i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x_q = i_llvm_fpga_push_i3_fpga_indvars_iv49_push41_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x_q = c_i3_2133_q;
            default : i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x_q = 3'b0;
        endcase
    end

    // i_exitcond51_zfp_decode45_cmp_nsign(LOGICAL,296)@4
    assign i_exitcond51_zfp_decode45_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode0_i_llvm_fpga_pop_i3_fpga_indvars_iv49_pop41_zfp_decode44_mux_x_q[2:2]));

    // i_unnamed_zfp_decode49(LOGICAL,91)@4
    assign i_unnamed_zfp_decode49_q = i_exitcond51_zfp_decode45_cmp_nsign_q & i_llvm_fpga_pop_i1_pop50_zfp_decode0_i_llvm_fpga_pop_i1_pop50_zfp_decode48_mux_x_q;

    // i_llvm_fpga_push_i1_notexitcond66_zfp_decode60(BLACKBOX,65)@4
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    zfp_decode_i_llvm_fpga_push_i1_notexitcond66_0 thei_llvm_fpga_push_i1_notexitcond66_zfp_decode60 (
        .in_data_in(i_unnamed_zfp_decode49_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond66_zfp_decode60_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond66_zfp_decode60_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2(BLACKBOX,61)@0
    // in in_stall_in@20000000
    zfp_decode_i_llvm_fpga_dummy_thread_for_body5_dummy_0 thei_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4(DELAY,411)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out);
            redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_delay_1 <= redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_delay_0;
            redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_delay_2 <= redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_delay_1;
            redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_q <= redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3(BLACKBOX,62)@0
    // in in_stall_in@20000000
    zfp_decode_i_llvm_fpga_forked_b6_forked_zfp_decode0 thei_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4(DELAY,408)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out);
            redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_delay_1 <= redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_delay_0;
            redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_delay_2 <= redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_delay_1;
            redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q <= redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going65_zfp_decode6(BLACKBOX,63)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_decode_i_llvm_fpga_pipeline_keep_going65_0 thei_llvm_fpga_pipeline_keep_going65_zfp_decode6 (
        .in_data_in(redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q),
        .in_dummy_in(redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_q),
        .in_forked_in(redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond66_zfp_decode60_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond66_zfp_decode60_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,101)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,112)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,114)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,115)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_pipeline_valid_out;

    // i_zfp_decode_b6_next_iter_isreal_zfp_decode7(LOGICAL,94)@4 + 1
    assign i_zfp_decode_b6_next_iter_isreal_zfp_decode7_qi = i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x_q & i_llvm_fpga_pipeline_keep_going65_zfp_decode6_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_zfp_decode_b6_next_iter_isreal_zfp_decode7_delay ( .xin(i_zfp_decode_b6_next_iter_isreal_zfp_decode7_qi), .xout(i_zfp_decode_b6_next_iter_isreal_zfp_decode7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_element_extension2_x(BITJOIN,161)@5
    assign i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_element_extension2_x_q = {i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_c_i7_03_x_q, i_zfp_decode_b6_next_iter_isreal_zfp_decode7_q};

    // valid_fanout_reg4(REG,226)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3(DELAY,394)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q <= $unsigned(redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg3(REG,225)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x(FIFODELAY,162)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_valid = valid_fanout_reg3_q & redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_data = i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
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
    ) thei_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_adapt_scalar_trunc4_sel_x(BITSELECT,164)@4
    assign i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x(MUX,116)@4
    assign i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x_s = redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x_s or i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x_q = i_llvm_fpga_push_i1_zfp_decode_b6_next_iter_isreal_push_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x_q = 1'b0;
        endcase
    end

    // i_zfp_decode_b6_current_iter_isspec_zfp_decode5(LOGICAL,92)@4
    assign i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q = i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode0_i_llvm_fpga_pop_coalesce_i1_zfp_decode_b6_current_iter_isreal_zfp_decode4_mux_x_q ^ VCC_q;

    // redist30_i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q_3(DELAY,401)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q_3_delay_0 <= $unsigned(i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q);
            redist30_i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q_3_delay_1 <= redist30_i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q_3_delay_0;
            redist30_i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q_3_q <= redist30_i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q_3_delay_1;
        end
    end

    // redist17_sync_together140_aunroll_x_in_i_valid_5(DELAY,388)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together140_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist17_sync_together140_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist17_sync_together140_aunroll_x_in_i_valid_5_q <= redist17_sync_together140_aunroll_x_in_i_valid_5_delay_0;
        end
    end

    // redist18_sync_together140_aunroll_x_in_i_valid_6(DELAY,389)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together140_aunroll_x_in_i_valid_6_q <= $unsigned(redist17_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist19_sync_together140_aunroll_x_in_i_valid_7(DELAY,390)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_sync_together140_aunroll_x_in_i_valid_7_q <= $unsigned(redist18_sync_together140_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg0(REG,222)@6 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist18_sync_together140_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_offset(CONSTANT,423)
    assign redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_offset_q = $unsigned(2'b10);

    // redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt(ADD,456)
    assign redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_a = {1'b0, redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_wraddr_q};
    assign redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_b = {1'b0, redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_o <= $unsigned(redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_a) + $unsigned(redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_b);
        end
    end
    assign redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_q = redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_o[2:0];

    // redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_inputreg0(DELAY,451)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_inputreg0_q <= $unsigned(in_c0_eni15_15_tpl);
        end
    end

    // redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_wraddr(COUNTER,454)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_wraddr_i <= $unsigned(redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_wraddr_q = redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_wraddr_i[1:0];

    // redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem(DUALMEM,453)
    assign redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_ia = $unsigned(redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_inputreg0_q);
    assign redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_aa = redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_wraddr_q;
    assign redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_ab = redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex")
    ) redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_aa),
        .data_a(redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_ab),
        .q_b(redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_q = redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_iq[31:0];

    // redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_outputreg0(DELAY,452)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_outputreg0_q <= $unsigned(redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_mem_q);
        end
    end

    // redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt(ADD,450)
    assign redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_a = {1'b0, redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_wraddr_q};
    assign redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_b = {1'b0, redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_o <= $unsigned(redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_a) + $unsigned(redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_b);
        end
    end
    assign redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_q = redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_o[2:0];

    // redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_inputreg0(DELAY,445)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_inputreg0_q <= $unsigned(in_c0_eni15_14_tpl);
        end
    end

    // redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_wraddr(COUNTER,448)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_wraddr_i <= $unsigned(redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_wraddr_q = redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_wraddr_i[1:0];

    // redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem(DUALMEM,447)
    assign redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_ia = $unsigned(redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_inputreg0_q);
    assign redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_aa = redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_wraddr_q;
    assign redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_ab = redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex")
    ) redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_aa),
        .data_a(redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_ab),
        .q_b(redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_q = redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_iq[31:0];

    // redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_outputreg0(DELAY,446)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_outputreg0_q <= $unsigned(redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_mem_q);
        end
    end

    // redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt(ADD,442)
    assign redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_a = {1'b0, redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_wraddr_q};
    assign redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_b = {1'b0, redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_o <= $unsigned(redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_a) + $unsigned(redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_b);
        end
    end
    assign redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_q = redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_o[2:0];

    // redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_inputreg0(DELAY,437)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_inputreg0_q <= $unsigned(in_c0_eni15_7_tpl);
        end
    end

    // redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_wraddr(COUNTER,440)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_wraddr_i <= $unsigned(redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_wraddr_q = redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_wraddr_i[1:0];

    // redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem(DUALMEM,439)
    assign redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_ia = $unsigned(redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_inputreg0_q);
    assign redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_aa = redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_wraddr_q;
    assign redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_ab = redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex")
    ) redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_aa),
        .data_a(redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_ab),
        .q_b(redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_q = redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_iq[63:0];

    // redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_outputreg0(DELAY,438)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_outputreg0_q <= $unsigned(redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_mem_q);
        end
    end

    // valid_fanout_reg60(REG,282)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg60_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5(DELAY,395)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_delay_0 <= $unsigned(redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q);
            redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_q <= redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_delay_0;
        end
    end

    // valid_fanout_reg59(REG,281)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg59_q <= $unsigned(redist17_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x(FIFODELAY,186)@4 + 1
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@7
    assign i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_stall = ~ (valid_fanout_reg60_q & redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_valid = valid_fanout_reg59_q & redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_data = i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_5(DELAY,409)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_5_q <= $unsigned(redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q);
        end
    end

    // redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7(DELAY,410)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_delay_0 <= $unsigned(redist38_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_5_q);
            redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_q <= redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_delay_0;
        end
    end

    // i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x(MUX,127)@7
    assign i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_s = redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_q;
    always @(i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_s or i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_o_data or redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_q = i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_0_pop18104_push57_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_q = redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_outputreg0_q;
            default : i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_q = 64'b0;
        endcase
    end

    // redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt(ADD,424)
    assign redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_a = {1'b0, redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_wraddr_q};
    assign redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_b = {1'b0, redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_o <= $unsigned(redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_a) + $unsigned(redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_b);
        end
    end
    assign redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_q = redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_o[2:0];

    // redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_inputreg0(DELAY,419)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_inputreg0_q <= $unsigned(in_c0_eni15_4_tpl);
        end
    end

    // redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_wraddr(COUNTER,422)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_wraddr_i <= $unsigned(redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_wraddr_q = redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_wraddr_i[1:0];

    // redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem(DUALMEM,421)
    assign redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_ia = $unsigned(redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_inputreg0_q);
    assign redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_aa = redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_wraddr_q;
    assign redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_ab = redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex")
    ) redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_aa),
        .data_a(redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_ab),
        .q_b(redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_q = redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_iq[63:0];

    // redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_outputreg0(DELAY,420)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_outputreg0_q <= $unsigned(redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_mem_q);
        end
    end

    // valid_fanout_reg57(REG,279)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg56(REG,278)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(redist17_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x(FIFODELAY,198)@4 + 1
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@7
    assign i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_stall = ~ (valid_fanout_reg57_q & redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_valid = valid_fanout_reg56_q & redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_data = i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x(MUX,131)@7
    assign i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_s = redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_q;
    always @(i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_s or i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_o_data or redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_q = i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_0_pop17103_push56_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_q = redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_outputreg0_q;
            default : i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_q = 64'b0;
        endcase
    end

    // redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt(ADD,430)
    assign redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_a = {1'b0, redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_wraddr_q};
    assign redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_b = {1'b0, redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_o <= $unsigned(redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_a) + $unsigned(redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_b);
        end
    end
    assign redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_q = redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_o[2:0];

    // redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_inputreg0(DELAY,425)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_inputreg0_q <= $unsigned(in_c0_eni15_5_tpl);
        end
    end

    // redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_wraddr(COUNTER,428)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_wraddr_i <= $unsigned(redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_wraddr_q = redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_wraddr_i[1:0];

    // redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem(DUALMEM,427)
    assign redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_ia = $unsigned(redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_inputreg0_q);
    assign redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_aa = redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_wraddr_q;
    assign redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_ab = redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex")
    ) redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_aa),
        .data_a(redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_ab),
        .q_b(redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_q = redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_iq[63:0];

    // redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_outputreg0(DELAY,426)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_outputreg0_q <= $unsigned(redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_mem_q);
        end
    end

    // valid_fanout_reg54(REG,276)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg53(REG,275)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(redist17_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x(FIFODELAY,204)@4 + 1
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@7
    assign i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_stall = ~ (valid_fanout_reg54_q & redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_valid = valid_fanout_reg53_q & redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_data = i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x(MUX,133)@7
    assign i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_s = redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_q;
    always @(i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_s or i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_o_data or redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_q = i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_0_pop16102_push55_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_q = redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_outputreg0_q;
            default : i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_q = 64'b0;
        endcase
    end

    // redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt(ADD,436)
    assign redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_a = {1'b0, redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_wraddr_q};
    assign redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_b = {1'b0, redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_o <= $unsigned(redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_a) + $unsigned(redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_b);
        end
    end
    assign redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_q = redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_o[2:0];

    // redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_inputreg0(DELAY,431)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_inputreg0_q <= $unsigned(in_c0_eni15_6_tpl);
        end
    end

    // redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_wraddr(COUNTER,434)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_wraddr_i <= $unsigned(redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_wraddr_q = redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_wraddr_i[1:0];

    // redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem(DUALMEM,433)
    assign redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_ia = $unsigned(redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_inputreg0_q);
    assign redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_aa = redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_wraddr_q;
    assign redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_ab = redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex")
    ) redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_aa),
        .data_a(redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_ab),
        .q_b(redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_q = redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_iq[63:0];

    // redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_outputreg0(DELAY,432)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_outputreg0_q <= $unsigned(redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_mem_q);
        end
    end

    // valid_fanout_reg51(REG,273)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg50(REG,272)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(redist17_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x(FIFODELAY,192)@4 + 1
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@7
    assign i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_stall = ~ (valid_fanout_reg51_q & redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_valid = valid_fanout_reg50_q & redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_data = i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x(MUX,129)@7
    assign i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_s = redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_q;
    always @(i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_s or i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_o_data or redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_q = i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_0_pop15101_push54_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_q = redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_outputreg0_q;
            default : i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_q = 64'b0;
        endcase
    end

    // redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4(DELAY,382)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_delay_0 <= $unsigned(in_c0_eni15_13_tpl);
            redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_delay_1 <= redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_delay_0;
            redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_delay_2 <= redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_delay_1;
            redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_q <= redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_element_extension2_x(BITJOIN,143)@4
    assign i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_element_extension2_x_q = {i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q};

    // valid_fanout_reg48(REG,270)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg47(REG,269)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x(FIFODELAY,144)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_stall = ~ (valid_fanout_reg48_q & i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_valid = valid_fanout_reg47_q & redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_data = i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_adapt_scalar_trunc4_sel_x(BITSELECT,146)@4
    assign i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x(MUX,118)@4
    assign i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_s = redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_s or i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_adapt_scalar_trunc4_sel_x_b or redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q = i_llvm_fpga_push_i1_notexit7698_push52_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q = redist11_sync_together140_aunroll_x_in_c0_eni15_13_tpl_4_q;
            default : i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q = 1'b0;
        endcase
    end

    // redist27_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q_3(DELAY,398)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q);
            redist27_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q_3_delay_1 <= redist27_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q_3_delay_0;
            redist27_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q_3_q <= redist27_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q_3_delay_1;
        end
    end

    // redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4(DELAY,381)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_delay_0 <= $unsigned(in_c0_eni15_12_tpl);
            redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_delay_1 <= redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_delay_0;
            redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_delay_2 <= redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_delay_1;
            redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_q <= redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_element_extension2_x(BITJOIN,155)@4
    assign i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_element_extension2_x_q = {i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_c_i7_03_x_q, i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q};

    // valid_fanout_reg45(REG,267)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg44(REG,266)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x(FIFODELAY,156)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_stall = ~ (valid_fanout_reg45_q & i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_valid = valid_fanout_reg44_q & redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_data = i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_adapt_scalar_trunc4_sel_x(BITSELECT,158)@4
    assign i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x(MUX,120)@4
    assign i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_s = redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_s or i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_adapt_scalar_trunc4_sel_x_b or redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q = i_llvm_fpga_push_i1_tobool_i3494_push49_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q = redist10_sync_together140_aunroll_x_in_c0_eni15_12_tpl_4_q;
            default : i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q = 1'b0;
        endcase
    end

    // redist26_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q_3(DELAY,397)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q);
            redist26_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q_3_delay_1 <= redist26_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q_3_delay_0;
            redist26_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q_3_q <= redist26_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q_3_delay_1;
        end
    end

    // redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_inputreg0(DELAY,444)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_inputreg0_q <= $unsigned(in_c0_eni15_11_tpl);
        end
    end

    // redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4(DELAY,380)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_delay_0 <= $unsigned(redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_inputreg0_q);
            redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_delay_1 <= redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_delay_0;
            redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_q <= redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg42(REG,264)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg41(REG,263)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x(FIFODELAY,171)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_stall = ~ (valid_fanout_reg42_q & i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_valid = valid_fanout_reg41_q & redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_data = i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q;
    assign i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x(MUX,123)@4
    assign i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_s = redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_s or i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_o_data or redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q = i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode0_i_llvm_fpga_push_i32_lim_ext84_push47_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q = redist9_sync_together140_aunroll_x_in_c0_eni15_11_tpl_4_q;
            default : i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q = 32'b0;
        endcase
    end

    // redist25_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q_3(DELAY,396)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q);
            redist25_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q_3_delay_1 <= redist25_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q_3_delay_0;
            redist25_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q_3_q <= redist25_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q_3_delay_1;
        end
    end

    // valid_fanout_reg39(REG,261)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_zfp_decode_b6_is_real_thread_zfp_decode65(LOGICAL,93)@4
    assign i_zfp_decode_b6_is_real_thread_zfp_decode65_q = redist40_i_llvm_fpga_dummy_thread_for_body5_dummy_zfp_decode2_out_dummy_out_4_q | i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q;

    // redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_inputreg0(DELAY,443)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_inputreg0_q <= $unsigned(in_c0_eni15_9_tpl);
        end
    end

    // redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4(DELAY,378)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_delay_0 <= $unsigned(redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_inputreg0_q);
            redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_delay_1 <= redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_delay_0;
            redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_q <= redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg35(REG,257)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg34(REG,256)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x(FIFODELAY,174)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_stall = ~ (valid_fanout_reg35_q & i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_valid = valid_fanout_reg34_q & redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_data = i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x(MUX,124)@4
    assign i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_s = redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_s or i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_o_data or redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_q = i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode0_i_llvm_fpga_push_i32_reorder_limiter_enter87_push48_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_q = redist7_sync_together140_aunroll_x_in_c0_eni15_9_tpl_4_q;
            default : i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_q = 32'b0;
        endcase
    end

    // redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4(DELAY,379)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_delay_0 <= $unsigned(in_c0_eni15_10_tpl);
            redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_delay_1 <= redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_delay_0;
            redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_delay_2 <= redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_delay_1;
            redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_q <= redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_element_extension2_x(BITJOIN,137)@4
    assign i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_element_extension2_x_q = {i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_c_i7_03_x_q, i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x_q};

    // valid_fanout_reg38(REG,260)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg37(REG,259)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x(FIFODELAY,138)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_stall = ~ (valid_fanout_reg38_q & i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_valid = valid_fanout_reg37_q & redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_data = i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_adapt_scalar_trunc4_sel_x(BITSELECT,140)@4
    assign i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x(MUX,117)@4
    assign i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x_s = redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x_s or i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_adapt_scalar_trunc4_sel_x_b or redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x_q = i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x_q = redist8_sync_together140_aunroll_x_in_c0_eni15_10_tpl_4_q;
            default : i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x_q = 1'b0;
        endcase
    end

    // i_notcmp63_zfp_decode59(LOGICAL,66)@4
    assign i_notcmp63_zfp_decode59_q = i_unnamed_zfp_decode49_q ^ VCC_q;

    // i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode66(BLACKBOX,64)@4
    // out out_o_exit_outer_loop@7
    // out out_o_stall@7
    // out out_o_valid@7
    zfp_decode_i_llvm_fpga_pipeline_order_pa0000i32_reorder_parent_0 thei_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode66 (
        .in_i_exit_inner_loop(i_notcmp63_zfp_decode59_q),
        .in_i_exit_outer_loop(i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode0_i_llvm_fpga_pop_i1_exitcond5496_pop51_zfp_decode63_mux_x_q),
        .in_i_outer_loop_token(i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode0_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop48_zfp_decode61_mux_x_q),
        .in_i_predicate(i_zfp_decode_b6_is_real_thread_zfp_decode65_q),
        .in_i_stall(GND_q),
        .in_i_start_inner_loop(redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q),
        .in_i_valid(valid_fanout_reg39_q),
        .out_o_exit_outer_loop(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode66_out_o_exit_outer_loop),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_notcmp63_zfp_decode59_q_3(DELAY,407)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_notcmp63_zfp_decode59_q_3_delay_0 <= $unsigned(i_notcmp63_zfp_decode59_q);
            redist36_i_notcmp63_zfp_decode59_q_3_delay_1 <= redist36_i_notcmp63_zfp_decode59_q_3_delay_0;
            redist36_i_notcmp63_zfp_decode59_q_3_q <= redist36_i_notcmp63_zfp_decode59_q_3_delay_1;
        end
    end

    // redist31_i_unnamed_zfp_decode49_q_3(DELAY,402)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_unnamed_zfp_decode49_q_3_delay_0 <= $unsigned(i_unnamed_zfp_decode49_q);
            redist31_i_unnamed_zfp_decode49_q_3_delay_1 <= redist31_i_unnamed_zfp_decode49_q_3_delay_0;
            redist31_i_unnamed_zfp_decode49_q_3_q <= redist31_i_unnamed_zfp_decode49_q_3_delay_1;
        end
    end

    // leftShiftStage2Idx3Rng48_uid329_i_shl_zfp_decode0_shift_x(BITSELECT,328)@6
    assign leftShiftStage2Idx3Rng48_uid329_i_shl_zfp_decode0_shift_x_in = leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_q[15:0];
    assign leftShiftStage2Idx3Rng48_uid329_i_shl_zfp_decode0_shift_x_b = leftShiftStage2Idx3Rng48_uid329_i_shl_zfp_decode0_shift_x_in[15:0];

    // leftShiftStage2Idx3Pad48_uid328_i_shl_zfp_decode0_shift_x(CONSTANT,327)
    assign leftShiftStage2Idx3Pad48_uid328_i_shl_zfp_decode0_shift_x_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage2Idx3_uid330_i_shl_zfp_decode0_shift_x(BITJOIN,329)@6
    assign leftShiftStage2Idx3_uid330_i_shl_zfp_decode0_shift_x_q = {leftShiftStage2Idx3Rng48_uid329_i_shl_zfp_decode0_shift_x_b, leftShiftStage2Idx3Pad48_uid328_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage2Idx2Rng32_uid326_i_shl_zfp_decode0_shift_x(BITSELECT,325)@6
    assign leftShiftStage2Idx2Rng32_uid326_i_shl_zfp_decode0_shift_x_in = leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_q[31:0];
    assign leftShiftStage2Idx2Rng32_uid326_i_shl_zfp_decode0_shift_x_b = leftShiftStage2Idx2Rng32_uid326_i_shl_zfp_decode0_shift_x_in[31:0];

    // c_i32_0127(CONSTANT,49)
    assign c_i32_0127_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage2Idx2_uid327_i_shl_zfp_decode0_shift_x(BITJOIN,326)@6
    assign leftShiftStage2Idx2_uid327_i_shl_zfp_decode0_shift_x_q = {leftShiftStage2Idx2Rng32_uid326_i_shl_zfp_decode0_shift_x_b, c_i32_0127_q};

    // leftShiftStage2Idx1Rng16_uid323_i_shl_zfp_decode0_shift_x(BITSELECT,322)@6
    assign leftShiftStage2Idx1Rng16_uid323_i_shl_zfp_decode0_shift_x_in = leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_q[47:0];
    assign leftShiftStage2Idx1Rng16_uid323_i_shl_zfp_decode0_shift_x_b = leftShiftStage2Idx1Rng16_uid323_i_shl_zfp_decode0_shift_x_in[47:0];

    // leftShiftStage2Idx1Pad16_uid322_i_shl_zfp_decode0_shift_x(CONSTANT,321)
    assign leftShiftStage2Idx1Pad16_uid322_i_shl_zfp_decode0_shift_x_q = $unsigned(16'b0000000000000000);

    // leftShiftStage2Idx1_uid324_i_shl_zfp_decode0_shift_x(BITJOIN,323)@6
    assign leftShiftStage2Idx1_uid324_i_shl_zfp_decode0_shift_x_q = {leftShiftStage2Idx1Rng16_uid323_i_shl_zfp_decode0_shift_x_b, leftShiftStage2Idx1Pad16_uid322_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid318_i_shl_zfp_decode0_shift_x(BITSELECT,317)@6
    assign leftShiftStage1Idx3Rng12_uid318_i_shl_zfp_decode0_shift_x_in = leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q[51:0];
    assign leftShiftStage1Idx3Rng12_uid318_i_shl_zfp_decode0_shift_x_b = leftShiftStage1Idx3Rng12_uid318_i_shl_zfp_decode0_shift_x_in[51:0];

    // leftShiftStage1Idx3Pad12_uid317_i_shl_zfp_decode0_shift_x(CONSTANT,316)
    assign leftShiftStage1Idx3Pad12_uid317_i_shl_zfp_decode0_shift_x_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid319_i_shl_zfp_decode0_shift_x(BITJOIN,318)@6
    assign leftShiftStage1Idx3_uid319_i_shl_zfp_decode0_shift_x_q = {leftShiftStage1Idx3Rng12_uid318_i_shl_zfp_decode0_shift_x_b, leftShiftStage1Idx3Pad12_uid317_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid315_i_shl_zfp_decode0_shift_x(BITSELECT,314)@6
    assign leftShiftStage1Idx2Rng8_uid315_i_shl_zfp_decode0_shift_x_in = leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q[55:0];
    assign leftShiftStage1Idx2Rng8_uid315_i_shl_zfp_decode0_shift_x_b = leftShiftStage1Idx2Rng8_uid315_i_shl_zfp_decode0_shift_x_in[55:0];

    // leftShiftStage1Idx2Pad8_uid314_i_shl_zfp_decode0_shift_x(CONSTANT,313)
    assign leftShiftStage1Idx2Pad8_uid314_i_shl_zfp_decode0_shift_x_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid316_i_shl_zfp_decode0_shift_x(BITJOIN,315)@6
    assign leftShiftStage1Idx2_uid316_i_shl_zfp_decode0_shift_x_q = {leftShiftStage1Idx2Rng8_uid315_i_shl_zfp_decode0_shift_x_b, leftShiftStage1Idx2Pad8_uid314_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage1Idx1Rng4_uid312_i_shl_zfp_decode0_shift_x(BITSELECT,311)@6
    assign leftShiftStage1Idx1Rng4_uid312_i_shl_zfp_decode0_shift_x_in = leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q[59:0];
    assign leftShiftStage1Idx1Rng4_uid312_i_shl_zfp_decode0_shift_x_b = leftShiftStage1Idx1Rng4_uid312_i_shl_zfp_decode0_shift_x_in[59:0];

    // leftShiftStage1Idx1Pad4_uid311_i_shl_zfp_decode0_shift_x(CONSTANT,310)
    assign leftShiftStage1Idx1Pad4_uid311_i_shl_zfp_decode0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid313_i_shl_zfp_decode0_shift_x(BITJOIN,312)@6
    assign leftShiftStage1Idx1_uid313_i_shl_zfp_decode0_shift_x_q = {leftShiftStage1Idx1Rng4_uid312_i_shl_zfp_decode0_shift_x_b, leftShiftStage1Idx1Pad4_uid311_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage0Idx3Rng3_uid307_i_shl_zfp_decode0_shift_x(BITSELECT,306)
    assign leftShiftStage0Idx3Rng3_uid307_i_shl_zfp_decode0_shift_x_in = c_i64_1126_q[60:0];
    assign leftShiftStage0Idx3Rng3_uid307_i_shl_zfp_decode0_shift_x_b = leftShiftStage0Idx3Rng3_uid307_i_shl_zfp_decode0_shift_x_in[60:0];

    // leftShiftStage0Idx3Pad3_uid306_i_shl_zfp_decode0_shift_x(CONSTANT,305)
    assign leftShiftStage0Idx3Pad3_uid306_i_shl_zfp_decode0_shift_x_q = $unsigned(3'b000);

    // leftShiftStage0Idx3_uid308_i_shl_zfp_decode0_shift_x(BITJOIN,307)
    assign leftShiftStage0Idx3_uid308_i_shl_zfp_decode0_shift_x_q = {leftShiftStage0Idx3Rng3_uid307_i_shl_zfp_decode0_shift_x_b, leftShiftStage0Idx3Pad3_uid306_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid304_i_shl_zfp_decode0_shift_x(BITSELECT,303)
    assign leftShiftStage0Idx2Rng2_uid304_i_shl_zfp_decode0_shift_x_in = c_i64_1126_q[61:0];
    assign leftShiftStage0Idx2Rng2_uid304_i_shl_zfp_decode0_shift_x_b = leftShiftStage0Idx2Rng2_uid304_i_shl_zfp_decode0_shift_x_in[61:0];

    // leftShiftStage0Idx2Pad2_uid303_i_shl_zfp_decode0_shift_x(CONSTANT,302)
    assign leftShiftStage0Idx2Pad2_uid303_i_shl_zfp_decode0_shift_x_q = $unsigned(2'b00);

    // leftShiftStage0Idx2_uid305_i_shl_zfp_decode0_shift_x(BITJOIN,304)
    assign leftShiftStage0Idx2_uid305_i_shl_zfp_decode0_shift_x_q = {leftShiftStage0Idx2Rng2_uid304_i_shl_zfp_decode0_shift_x_b, leftShiftStage0Idx2Pad2_uid303_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid301_i_shl_zfp_decode0_shift_x(BITSELECT,300)
    assign leftShiftStage0Idx1Rng1_uid301_i_shl_zfp_decode0_shift_x_in = c_i64_1126_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid301_i_shl_zfp_decode0_shift_x_b = leftShiftStage0Idx1Rng1_uid301_i_shl_zfp_decode0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid302_i_shl_zfp_decode0_shift_x(BITJOIN,301)
    assign leftShiftStage0Idx1_uid302_i_shl_zfp_decode0_shift_x_q = {leftShiftStage0Idx1Rng1_uid301_i_shl_zfp_decode0_shift_x_b, GND_q};

    // c_i64_1126(CONSTANT,55)
    assign c_i64_1126_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x(MUX,309)@6
    assign leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_s = leftShiftStageSel0Dto0_uid309_i_shl_zfp_decode0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_s or c_i64_1126_q or leftShiftStage0Idx1_uid302_i_shl_zfp_decode0_shift_x_q or leftShiftStage0Idx2_uid305_i_shl_zfp_decode0_shift_x_q or leftShiftStage0Idx3_uid308_i_shl_zfp_decode0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_s)
            2'b00 : leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q = c_i64_1126_q;
            2'b01 : leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q = leftShiftStage0Idx1_uid302_i_shl_zfp_decode0_shift_x_q;
            2'b10 : leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q = leftShiftStage0Idx2_uid305_i_shl_zfp_decode0_shift_x_q;
            2'b11 : leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q = leftShiftStage0Idx3_uid308_i_shl_zfp_decode0_shift_x_q;
            default : leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x(MUX,320)@6
    assign leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_s = leftShiftStageSel0Dto0_uid309_i_shl_zfp_decode0_shift_x_merged_bit_select_c;
    always @(leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_s or leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q or leftShiftStage1Idx1_uid313_i_shl_zfp_decode0_shift_x_q or leftShiftStage1Idx2_uid316_i_shl_zfp_decode0_shift_x_q or leftShiftStage1Idx3_uid319_i_shl_zfp_decode0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_s)
            2'b00 : leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_q = leftShiftStage0_uid310_i_shl_zfp_decode0_shift_x_q;
            2'b01 : leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_q = leftShiftStage1Idx1_uid313_i_shl_zfp_decode0_shift_x_q;
            2'b10 : leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_q = leftShiftStage1Idx2_uid316_i_shl_zfp_decode0_shift_x_q;
            2'b11 : leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_q = leftShiftStage1Idx3_uid319_i_shl_zfp_decode0_shift_x_q;
            default : leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_q = 64'b0;
        endcase
    end

    // redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_inputreg0(DELAY,413)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_inputreg0_q <= $unsigned(in_c0_eni15_1_tpl);
        end
    end

    // redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4(DELAY,371)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_delay_0 <= $unsigned(redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_inputreg0_q);
            redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_delay_1 <= redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_delay_0;
            redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_q <= redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg17(REG,239)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,238)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x(FIFODELAY,168)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_valid = valid_fanout_reg16_q & redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_data = i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_q;
    assign i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x(MUX,122)@4
    assign i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_s = redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_s or i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_o_data or redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_q = i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode0_i_llvm_fpga_push_i32_k_058_pop19100_push53_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_q = redist0_sync_together140_aunroll_x_in_c0_eni15_1_tpl_4_q;
            default : i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_q = 32'b0;
        endcase
    end

    // i_sh_prom8_zfp_decode10_sel_x(BITSELECT,210)@4
    assign i_sh_prom8_zfp_decode10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode0_i_llvm_fpga_pop_i32_k_058_pop19100_pop53_zfp_decode9_mux_x_q[31:0]};

    // i_sh_prom8_zfp_decode10_vt_select_31(BITSELECT,80)@4
    assign i_sh_prom8_zfp_decode10_vt_select_31_b = i_sh_prom8_zfp_decode10_sel_x_b[31:0];

    // i_sh_prom8_zfp_decode10_vt_join(BITJOIN,79)@4
    assign i_sh_prom8_zfp_decode10_vt_join_q = {c_i32_0127_q, i_sh_prom8_zfp_decode10_vt_select_31_b};

    // i_shl_zfp_decode0_shift_narrow_x(BITSELECT,214)@4
    assign i_shl_zfp_decode0_shift_narrow_x_b = i_sh_prom8_zfp_decode10_vt_join_q[5:0];

    // redist20_i_shl_zfp_decode0_shift_narrow_x_b_2(DELAY,391)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_shl_zfp_decode0_shift_narrow_x_b_2_delay_0 <= $unsigned(i_shl_zfp_decode0_shift_narrow_x_b);
            redist20_i_shl_zfp_decode0_shift_narrow_x_b_2_q <= redist20_i_shl_zfp_decode0_shift_narrow_x_b_2_delay_0;
        end
    end

    // leftShiftStageSel0Dto0_uid309_i_shl_zfp_decode0_shift_x_merged_bit_select(BITSELECT,369)@6
    assign leftShiftStageSel0Dto0_uid309_i_shl_zfp_decode0_shift_x_merged_bit_select_b = redist20_i_shl_zfp_decode0_shift_narrow_x_b_2_q[1:0];
    assign leftShiftStageSel0Dto0_uid309_i_shl_zfp_decode0_shift_x_merged_bit_select_c = redist20_i_shl_zfp_decode0_shift_narrow_x_b_2_q[3:2];
    assign leftShiftStageSel0Dto0_uid309_i_shl_zfp_decode0_shift_x_merged_bit_select_d = redist20_i_shl_zfp_decode0_shift_narrow_x_b_2_q[5:4];

    // leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x(MUX,331)@6 + 1
    assign leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x_s = leftShiftStageSel0Dto0_uid309_i_shl_zfp_decode0_shift_x_merged_bit_select_d;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x_s)
                2'b00 : leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x_q <= leftShiftStage1_uid321_i_shl_zfp_decode0_shift_x_q;
                2'b01 : leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x_q <= leftShiftStage2Idx1_uid324_i_shl_zfp_decode0_shift_x_q;
                2'b10 : leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x_q <= leftShiftStage2Idx2_uid327_i_shl_zfp_decode0_shift_x_q;
                2'b11 : leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x_q <= leftShiftStage2Idx3_uid330_i_shl_zfp_decode0_shift_x_q;
                default : leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x_q <= 64'b0;
            endcase
        end
    end

    // valid_fanout_reg29(REG,251)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg28(REG,250)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist17_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x(FIFODELAY,195)@4 + 1
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@7
    assign i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_stall = ~ (valid_fanout_reg29_q & redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_valid = valid_fanout_reg28_q & redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_data = i_reduction_zfp_decode_0_zfp_decode36_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_reduction_zfp_decode_0_zfp_decode36_q),
        .o_data(i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x(MUX,130)@7
    assign i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_s = redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_q;
    always @(i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_s or i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_o_data or redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_q = i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_12_1_push42_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_q = redist4_sync_together140_aunroll_x_in_c0_eni15_6_tpl_7_outputreg0_q;
            default : i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_q = 64'b0;
        endcase
    end

    // c_i32_3129(CONSTANT,52)
    assign c_i32_3129_q = $unsigned(32'b00000000000000000000000000000011);

    // c_i32_1131(CONSTANT,50)
    assign c_i32_1131_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_zfp_decode43(ADD,59)@4
    assign i_inc_zfp_decode43_a = {1'b0, i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_q};
    assign i_inc_zfp_decode43_b = {1'b0, c_i32_1131_q};
    assign i_inc_zfp_decode43_o = $unsigned(i_inc_zfp_decode43_a) + $unsigned(i_inc_zfp_decode43_b);
    assign i_inc_zfp_decode43_q = i_inc_zfp_decode43_o[32:0];

    // bgTrunc_i_inc_zfp_decode43_sel_x(BITSELECT,104)@4
    assign bgTrunc_i_inc_zfp_decode43_sel_x_b = i_inc_zfp_decode43_q[31:0];

    // valid_fanout_reg21(REG,243)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,242)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x(FIFODELAY,165)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_stall = ~ (valid_fanout_reg21_q & i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_valid = valid_fanout_reg20_q & redist22_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_data = bgTrunc_i_inc_zfp_decode43_sel_x_b;
    assign i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_zfp_decode43_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x(MUX,121)@4
    assign i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_s = redist37_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_s or i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_o_data or c_i32_0127_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_q = i_llvm_fpga_push_i32_i_055_push46_zfp_decode0_i_llvm_fpga_push_i32_i_055_push46_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_q = c_i32_0127_q;
            default : i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_q = 32'b0;
        endcase
    end

    // i_unnamed_zfp_decode19(LOGICAL,87)@4 + 1
    assign i_unnamed_zfp_decode19_qi = $unsigned(i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_q == c_i32_3129_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_decode19_delay ( .xin(i_unnamed_zfp_decode19_qi), .xout(i_unnamed_zfp_decode19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist28_dupName_1_comparator_x_q_3(DELAY,399)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_dupName_1_comparator_x_q_3_delay_0 <= $unsigned(i_unnamed_zfp_decode19_q);
            redist28_dupName_1_comparator_x_q_3_q <= redist28_dupName_1_comparator_x_q_3_delay_0;
        end
    end

    // valid_fanout_reg27(REG,249)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg26(REG,248)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist17_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x(FIFODELAY,207)@4 + 1
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@7
    assign i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_stall = ~ (valid_fanout_reg27_q & redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_valid = valid_fanout_reg26_q & redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_data = i_reduction_zfp_decode_1_zfp_decode38_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_reduction_zfp_decode_1_zfp_decode38_q),
        .o_data(i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x(MUX,134)@7
    assign i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_s = redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_q;
    always @(i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_s or i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_o_data or redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_q = i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_9_1_push43_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_q = redist3_sync_together140_aunroll_x_in_c0_eni15_5_tpl_7_outputreg0_q;
            default : i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_q = 64'b0;
        endcase
    end

    // c_i32_2130(CONSTANT,51)
    assign c_i32_2130_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_zfp_decode21(LOGICAL,88)@4 + 1
    assign i_unnamed_zfp_decode21_qi = $unsigned(i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_q == c_i32_2130_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_decode21_delay ( .xin(i_unnamed_zfp_decode21_qi), .xout(i_unnamed_zfp_decode21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_dupName_0_comparator_x_q_3(DELAY,400)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_dupName_0_comparator_x_q_3_delay_0 <= $unsigned(i_unnamed_zfp_decode21_q);
            redist29_dupName_0_comparator_x_q_3_q <= redist29_dupName_0_comparator_x_q_3_delay_0;
        end
    end

    // valid_fanout_reg25(REG,247)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg24(REG,246)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist17_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x(FIFODELAY,201)@4 + 1
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@7
    assign i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_stall = ~ (valid_fanout_reg25_q & redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_valid = valid_fanout_reg24_q & redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_data = i_reduction_zfp_decode_2_zfp_decode40_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_reduction_zfp_decode_2_zfp_decode40_q),
        .o_data(i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x(MUX,132)@7
    assign i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_s = redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_q;
    always @(i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_s or i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_o_data or redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_q = i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_6_1_push44_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_q = redist2_sync_together140_aunroll_x_in_c0_eni15_4_tpl_7_outputreg0_q;
            default : i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_q = 64'b0;
        endcase
    end

    // comparator(LOGICAL,56)@4 + 1
    assign comparator_qi = $unsigned(i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_q == c_i32_1131_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_i_unnamed_zfp_decode23_q_3(DELAY,404)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_unnamed_zfp_decode23_q_3_delay_0 <= $unsigned(comparator_q);
            redist33_i_unnamed_zfp_decode23_q_3_q <= redist33_i_unnamed_zfp_decode23_q_3_delay_0;
        end
    end

    // i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_decode_fpgaunique_1s_case_stmt_zfp_decode30(SELECTOR,60)@7
    always @(redist33_i_unnamed_zfp_decode23_q_3_q or i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_q or redist29_dupName_0_comparator_x_q_3_q or i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_q or redist28_dupName_1_comparator_x_q_3_q or i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_q or i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_q)
    begin
        i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_decode_fpgaunique_1s_case_stmt_zfp_decode30_q = i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_q;
        if (redist28_dupName_1_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_decode_fpgaunique_1s_case_stmt_zfp_decode30_q = i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_q;
        end
        if (redist29_dupName_0_comparator_x_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_decode_fpgaunique_1s_case_stmt_zfp_decode30_q = i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_q;
        end
        if (redist33_i_unnamed_zfp_decode23_q_3_q == 1'b1)
        begin
            i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_decode_fpgaunique_1s_case_stmt_zfp_decode30_q = i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_q;
        end
    end

    // i_or_zfp_decode31(LOGICAL,67)@7
    assign i_or_zfp_decode31_q = i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_decode_fpgaunique_1s_case_stmt_zfp_decode30_q | leftShiftStage2_uid332_i_shl_zfp_decode0_shift_x_q;

    // valid_fanout_reg23(REG,245)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg22(REG,244)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist17_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x(FIFODELAY,189)@4 + 1
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@7
    assign i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_stall = ~ (valid_fanout_reg23_q & redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_valid = valid_fanout_reg22_q & redist24_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_data = i_reduction_zfp_decode_3_zfp_decode42_q;
    assign i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_reduction_zfp_decode_3_zfp_decode42_q),
        .o_data(i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x(MUX,128)@7
    assign i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_s = redist39_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_7_q;
    always @(i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_s or i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_o_data or redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_q = i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode0_i_llvm_fpga_push_i64_ublock_sroa_0_1_push45_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_q = redist5_sync_together140_aunroll_x_in_c0_eni15_7_tpl_7_outputreg0_q;
            default : i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_q = 64'b0;
        endcase
    end

    // i_unnamed_zfp_decode32(LOGICAL,90)@4 + 1
    assign i_unnamed_zfp_decode32_qi = $unsigned(i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_q == c_i32_0127_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_decode32_delay ( .xin(i_unnamed_zfp_decode32_qi), .xout(i_unnamed_zfp_decode32_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_i_unnamed_zfp_decode32_q_3(DELAY,403)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_unnamed_zfp_decode32_q_3_delay_0 <= $unsigned(i_unnamed_zfp_decode32_q);
            redist32_i_unnamed_zfp_decode32_q_3_q <= redist32_i_unnamed_zfp_decode32_q_3_delay_0;
        end
    end

    // c_i64_0128_recast_x(CONSTANT,110)
    assign c_i64_0128_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_offset(CONSTANT,417)
    assign redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_offset_q = $unsigned(2'b11);

    // redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt(ADD,418)
    assign redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_a = {1'b0, redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_q};
    assign redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_b = {1'b0, redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_o <= $unsigned(redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_a) + $unsigned(redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_b);
        end
    end
    assign redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_q = redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_o[2:0];

    // redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_inputreg0(DELAY,414)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_inputreg0_q <= $unsigned(in_c0_eni15_3_tpl);
        end
    end

    // redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_wraddr(COUNTER,416)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_i <= $unsigned(redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_q = redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_i[1:0];

    // redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem(DUALMEM,415)
    assign redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_ia = $unsigned(redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_inputreg0_q);
    assign redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_aa = redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_q;
    assign redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_ab = redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Agilex")
    ) redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_aa),
        .data_a(redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_ab),
        .q_b(redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_q = redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_iq[63:0];

    // valid_fanout_reg15(REG,237)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist14_sync_together140_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,236)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist16_sync_together140_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x(FIFODELAY,183)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_stall = ~ (valid_fanout_reg15_q & redist21_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_valid = valid_fanout_reg14_q & redist23_i_llvm_fpga_push_i1_exitcond5496_push51_zfp_decode0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_data = i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_q;
    assign i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x (
        .i_valid(i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x(MUX,126)@5
    assign i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_s = redist38_i_llvm_fpga_forked_zfp_decode_b6_forked_zfp_decode3_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_s or i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_o_data or redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_q)
    begin
        unique case (i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_q = i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode0_i_llvm_fpga_push_i64_or_i_shuffle105_push58_zfp_decode1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_q = redist1_sync_together140_aunroll_x_in_c0_eni15_3_tpl_5_mem_q;
            default : i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_q = 64'b0;
        endcase
    end

    // leftShiftStage2Idx3Rng48_uid365_dupName_1_i_unnamed_zfp_decode0_shift_x(BITSELECT,364)@4
    assign leftShiftStage2Idx3Rng48_uid365_dupName_1_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_q[15:0];
    assign leftShiftStage2Idx3Rng48_uid365_dupName_1_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage2Idx3Rng48_uid365_dupName_1_i_unnamed_zfp_decode0_shift_x_in[15:0];

    // leftShiftStage2Idx3_uid366_dupName_1_i_unnamed_zfp_decode0_shift_x(BITJOIN,365)@4
    assign leftShiftStage2Idx3_uid366_dupName_1_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage2Idx3Rng48_uid365_dupName_1_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage2Idx3Pad48_uid328_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage2Idx2Rng32_uid362_dupName_1_i_unnamed_zfp_decode0_shift_x(BITSELECT,361)@4
    assign leftShiftStage2Idx2Rng32_uid362_dupName_1_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_q[31:0];
    assign leftShiftStage2Idx2Rng32_uid362_dupName_1_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage2Idx2Rng32_uid362_dupName_1_i_unnamed_zfp_decode0_shift_x_in[31:0];

    // leftShiftStage2Idx2_uid363_dupName_1_i_unnamed_zfp_decode0_shift_x(BITJOIN,362)@4
    assign leftShiftStage2Idx2_uid363_dupName_1_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage2Idx2Rng32_uid362_dupName_1_i_unnamed_zfp_decode0_shift_x_b, c_i32_0127_q};

    // leftShiftStage2Idx1Rng16_uid359_dupName_1_i_unnamed_zfp_decode0_shift_x(BITSELECT,358)@4
    assign leftShiftStage2Idx1Rng16_uid359_dupName_1_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_q[47:0];
    assign leftShiftStage2Idx1Rng16_uid359_dupName_1_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage2Idx1Rng16_uid359_dupName_1_i_unnamed_zfp_decode0_shift_x_in[47:0];

    // leftShiftStage2Idx1_uid360_dupName_1_i_unnamed_zfp_decode0_shift_x(BITJOIN,359)@4
    assign leftShiftStage2Idx1_uid360_dupName_1_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage2Idx1Rng16_uid359_dupName_1_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage2Idx1Pad16_uid322_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid354_dupName_1_i_unnamed_zfp_decode0_shift_x(BITSELECT,353)@4
    assign leftShiftStage1Idx3Rng12_uid354_dupName_1_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q[51:0];
    assign leftShiftStage1Idx3Rng12_uid354_dupName_1_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage1Idx3Rng12_uid354_dupName_1_i_unnamed_zfp_decode0_shift_x_in[51:0];

    // leftShiftStage1Idx3_uid355_dupName_1_i_unnamed_zfp_decode0_shift_x(BITJOIN,354)@4
    assign leftShiftStage1Idx3_uid355_dupName_1_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage1Idx3Rng12_uid354_dupName_1_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage1Idx3Pad12_uid317_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid351_dupName_1_i_unnamed_zfp_decode0_shift_x(BITSELECT,350)@4
    assign leftShiftStage1Idx2Rng8_uid351_dupName_1_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q[55:0];
    assign leftShiftStage1Idx2Rng8_uid351_dupName_1_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage1Idx2Rng8_uid351_dupName_1_i_unnamed_zfp_decode0_shift_x_in[55:0];

    // leftShiftStage1Idx2_uid352_dupName_1_i_unnamed_zfp_decode0_shift_x(BITJOIN,351)@4
    assign leftShiftStage1Idx2_uid352_dupName_1_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage1Idx2Rng8_uid351_dupName_1_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage1Idx2Pad8_uid314_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage1Idx1Rng4_uid348_dupName_1_i_unnamed_zfp_decode0_shift_x(BITSELECT,347)@4
    assign leftShiftStage1Idx1Rng4_uid348_dupName_1_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q[59:0];
    assign leftShiftStage1Idx1Rng4_uid348_dupName_1_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage1Idx1Rng4_uid348_dupName_1_i_unnamed_zfp_decode0_shift_x_in[59:0];

    // leftShiftStage1Idx1_uid349_dupName_1_i_unnamed_zfp_decode0_shift_x(BITJOIN,348)@4
    assign leftShiftStage1Idx1_uid349_dupName_1_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage1Idx1Rng4_uid348_dupName_1_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage1Idx1Pad4_uid311_i_shl_zfp_decode0_shift_x_q};

    // leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x(MUX,345)@4
    assign leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_s = leftShiftStageSel0Dto0_uid345_dupName_1_i_unnamed_zfp_decode0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_s or c_i64_1126_q or leftShiftStage0Idx1_uid302_i_shl_zfp_decode0_shift_x_q or leftShiftStage0Idx2_uid305_i_shl_zfp_decode0_shift_x_q or leftShiftStage0Idx3_uid308_i_shl_zfp_decode0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_s)
            2'b00 : leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q = c_i64_1126_q;
            2'b01 : leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage0Idx1_uid302_i_shl_zfp_decode0_shift_x_q;
            2'b10 : leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage0Idx2_uid305_i_shl_zfp_decode0_shift_x_q;
            2'b11 : leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage0Idx3_uid308_i_shl_zfp_decode0_shift_x_q;
            default : leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x(MUX,356)@4
    assign leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_s = leftShiftStageSel0Dto0_uid345_dupName_1_i_unnamed_zfp_decode0_shift_x_merged_bit_select_c;
    always @(leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_s or leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q or leftShiftStage1Idx1_uid349_dupName_1_i_unnamed_zfp_decode0_shift_x_q or leftShiftStage1Idx2_uid352_dupName_1_i_unnamed_zfp_decode0_shift_x_q or leftShiftStage1Idx3_uid355_dupName_1_i_unnamed_zfp_decode0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_s)
            2'b00 : leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage0_uid346_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
            2'b01 : leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage1Idx1_uid349_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
            2'b10 : leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage1Idx2_uid352_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
            2'b11 : leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage1Idx3_uid355_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
            default : leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom_zfp_decode13_sel_x(BITSELECT,211)@4
    assign i_sh_prom_zfp_decode13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode0_i_llvm_fpga_pop_i32_i_055_pop46_zfp_decode12_mux_x_q[31:0]};

    // i_sh_prom_zfp_decode13_vt_select_31(BITSELECT,84)@4
    assign i_sh_prom_zfp_decode13_vt_select_31_b = i_sh_prom_zfp_decode13_sel_x_b[31:0];

    // i_sh_prom_zfp_decode13_vt_join(BITJOIN,83)@4
    assign i_sh_prom_zfp_decode13_vt_join_q = {c_i32_0127_q, i_sh_prom_zfp_decode13_vt_select_31_b};

    // dupName_1_i_unnamed_zfp_decode0_shift_narrow_x(BITSELECT,220)@4
    assign dupName_1_i_unnamed_zfp_decode0_shift_narrow_x_b = i_sh_prom_zfp_decode13_vt_join_q[5:0];

    // leftShiftStageSel0Dto0_uid345_dupName_1_i_unnamed_zfp_decode0_shift_x_merged_bit_select(BITSELECT,370)@4
    assign leftShiftStageSel0Dto0_uid345_dupName_1_i_unnamed_zfp_decode0_shift_x_merged_bit_select_b = dupName_1_i_unnamed_zfp_decode0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid345_dupName_1_i_unnamed_zfp_decode0_shift_x_merged_bit_select_c = dupName_1_i_unnamed_zfp_decode0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid345_dupName_1_i_unnamed_zfp_decode0_shift_x_merged_bit_select_d = dupName_1_i_unnamed_zfp_decode0_shift_narrow_x_b[5:4];

    // leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x(MUX,367)@4 + 1
    assign leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x_s = leftShiftStageSel0Dto0_uid345_dupName_1_i_unnamed_zfp_decode0_shift_x_merged_bit_select_d;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x_s)
                2'b00 : leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x_q <= leftShiftStage1_uid357_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
                2'b01 : leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x_q <= leftShiftStage2Idx1_uid360_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
                2'b10 : leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x_q <= leftShiftStage2Idx2_uid363_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
                2'b11 : leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x_q <= leftShiftStage2Idx3_uid366_dupName_1_i_unnamed_zfp_decode0_shift_x_q;
                default : leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x_q <= 64'b0;
            endcase
        end
    end

    // i_unnamed_zfp_decode16(LOGICAL,86)@5 + 1
    assign i_unnamed_zfp_decode16_qi = leftShiftStage2_uid368_dupName_1_i_unnamed_zfp_decode0_shift_x_q & i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode0_i_llvm_fpga_pop_i64_or_i_shuffle105_pop58_zfp_decode15_mux_x_q;
    dspba_delay_ver #( .width(64), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_decode16_delay ( .xin(i_unnamed_zfp_decode16_qi), .xout(i_unnamed_zfp_decode16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_tobool6_zfp_decode17(LOGICAL,85)@6 + 1
    assign i_tobool6_zfp_decode17_qi = $unsigned(i_unnamed_zfp_decode16_q == c_i64_0128_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool6_zfp_decode17_delay ( .xin(i_tobool6_zfp_decode17_qi), .xout(i_tobool6_zfp_decode17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_selcond_zfp_decode_0_zfp_decode34(LOGICAL,72)@7
    assign i_selcond_zfp_decode_0_zfp_decode34_q = i_tobool6_zfp_decode17_q ^ VCC_q;

    // i_selcond_zfp_decode_7_zfp_decode41(LOGICAL,76)@7
    assign i_selcond_zfp_decode_7_zfp_decode41_q = i_selcond_zfp_decode_0_zfp_decode34_q & redist32_i_unnamed_zfp_decode32_q_3_q;

    // i_reduction_zfp_decode_3_zfp_decode42(MUX,71)@7
    assign i_reduction_zfp_decode_3_zfp_decode42_s = i_selcond_zfp_decode_7_zfp_decode41_q;
    always @(i_reduction_zfp_decode_3_zfp_decode42_s or i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_q or i_or_zfp_decode31_q)
    begin
        unique case (i_reduction_zfp_decode_3_zfp_decode42_s)
            1'b0 : i_reduction_zfp_decode_3_zfp_decode42_q = i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_1_pop45_zfp_decode29_mux_x_q;
            1'b1 : i_reduction_zfp_decode_3_zfp_decode42_q = i_or_zfp_decode31_q;
            default : i_reduction_zfp_decode_3_zfp_decode42_q = 64'b0;
        endcase
    end

    // i_selcond_zfp_decode_5_zfp_decode39(LOGICAL,75)@7
    assign i_selcond_zfp_decode_5_zfp_decode39_q = i_selcond_zfp_decode_0_zfp_decode34_q & redist33_i_unnamed_zfp_decode23_q_3_q;

    // i_reduction_zfp_decode_2_zfp_decode40(MUX,70)@7
    assign i_reduction_zfp_decode_2_zfp_decode40_s = i_selcond_zfp_decode_5_zfp_decode39_q;
    always @(i_reduction_zfp_decode_2_zfp_decode40_s or i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_q or i_or_zfp_decode31_q)
    begin
        unique case (i_reduction_zfp_decode_2_zfp_decode40_s)
            1'b0 : i_reduction_zfp_decode_2_zfp_decode40_q = i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_1_pop44_zfp_decode25_mux_x_q;
            1'b1 : i_reduction_zfp_decode_2_zfp_decode40_q = i_or_zfp_decode31_q;
            default : i_reduction_zfp_decode_2_zfp_decode40_q = 64'b0;
        endcase
    end

    // i_selcond_zfp_decode_3_zfp_decode37(LOGICAL,74)@7
    assign i_selcond_zfp_decode_3_zfp_decode37_q = i_selcond_zfp_decode_0_zfp_decode34_q & redist29_dupName_0_comparator_x_q_3_q;

    // i_reduction_zfp_decode_1_zfp_decode38(MUX,69)@7
    assign i_reduction_zfp_decode_1_zfp_decode38_s = i_selcond_zfp_decode_3_zfp_decode37_q;
    always @(i_reduction_zfp_decode_1_zfp_decode38_s or i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_q or i_or_zfp_decode31_q)
    begin
        unique case (i_reduction_zfp_decode_1_zfp_decode38_s)
            1'b0 : i_reduction_zfp_decode_1_zfp_decode38_q = i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_1_pop43_zfp_decode27_mux_x_q;
            1'b1 : i_reduction_zfp_decode_1_zfp_decode38_q = i_or_zfp_decode31_q;
            default : i_reduction_zfp_decode_1_zfp_decode38_q = 64'b0;
        endcase
    end

    // i_selcond_zfp_decode_1_zfp_decode35(LOGICAL,73)@7
    assign i_selcond_zfp_decode_1_zfp_decode35_q = i_selcond_zfp_decode_0_zfp_decode34_q & redist28_dupName_1_comparator_x_q_3_q;

    // i_reduction_zfp_decode_0_zfp_decode36(MUX,68)@7
    assign i_reduction_zfp_decode_0_zfp_decode36_s = i_selcond_zfp_decode_1_zfp_decode35_q;
    always @(i_reduction_zfp_decode_0_zfp_decode36_s or i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_q or i_or_zfp_decode31_q)
    begin
        unique case (i_reduction_zfp_decode_0_zfp_decode36_s)
            1'b0 : i_reduction_zfp_decode_0_zfp_decode36_q = i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_1_pop42_zfp_decode28_mux_x_q;
            1'b1 : i_reduction_zfp_decode_0_zfp_decode36_q = i_or_zfp_decode31_q;
            default : i_reduction_zfp_decode_0_zfp_decode36_q = 64'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,216)@7
    assign out_c0_exi16282_0_tpl = GND_q;
    assign out_c0_exi16282_1_tpl = i_reduction_zfp_decode_0_zfp_decode36_q;
    assign out_c0_exi16282_2_tpl = i_reduction_zfp_decode_1_zfp_decode38_q;
    assign out_c0_exi16282_3_tpl = i_reduction_zfp_decode_2_zfp_decode40_q;
    assign out_c0_exi16282_4_tpl = i_reduction_zfp_decode_3_zfp_decode42_q;
    assign out_c0_exi16282_5_tpl = redist31_i_unnamed_zfp_decode49_q_3_q;
    assign out_c0_exi16282_6_tpl = redist36_i_notcmp63_zfp_decode59_q_3_q;
    assign out_c0_exi16282_7_tpl = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode66_out_o_exit_outer_loop;
    assign out_c0_exi16282_8_tpl = redist25_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode0_i_llvm_fpga_pop_i32_lim_ext84_pop47_zfp_decode67_mux_x_q_3_q;
    assign out_c0_exi16282_9_tpl = redist26_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode0_i_llvm_fpga_pop_i1_tobool_i3494_pop49_zfp_decode69_mux_x_q_3_q;
    assign out_c0_exi16282_10_tpl = redist27_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode0_i_llvm_fpga_pop_i1_notexit7698_pop52_zfp_decode71_mux_x_q_3_q;
    assign out_c0_exi16282_11_tpl = i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15101_pop54_zfp_decode73_mux_x_q;
    assign out_c0_exi16282_12_tpl = i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16102_pop55_zfp_decode75_mux_x_q;
    assign out_c0_exi16282_13_tpl = i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17103_pop56_zfp_decode77_mux_x_q;
    assign out_c0_exi16282_14_tpl = i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode0_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18104_pop57_zfp_decode79_mux_x_q;
    assign out_c0_exi16282_15_tpl = redist12_sync_together140_aunroll_x_in_c0_eni15_14_tpl_7_outputreg0_q;
    assign out_c0_exi16282_16_tpl = redist13_sync_together140_aunroll_x_in_c0_eni15_15_tpl_7_outputreg0_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist19_sync_together140_aunroll_x_in_i_valid_7_q;
    assign out_zfp_decode_B6_current_iter_isspec = redist30_i_zfp_decode_b6_current_iter_isspec_zfp_decode5_q_3_q;

endmodule
