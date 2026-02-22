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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_zfp_1d_decompresss_c0_enter14012_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:04:27 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c0_in_fo00002_zfp_1d_decompress0 (
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi3144_0_tpl,
    output wire [63:0] out_c0_exi3144_1_tpl,
    output wire [0:0] out_c0_exi3144_2_tpl,
    output wire [0:0] out_c0_exi3144_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_zfp_1d_decompress_B8_current_iter_isspec,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1139_0_tpl,
    input wire [0:0] in_c0_eni1139_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_1151_q;
    wire [15:0] c_i16_2047150_q;
    wire [31:0] c_i32_0143_q;
    wire [31:0] c_i32_10145_q;
    wire [31:0] c_i32_1086155_q;
    wire [31:0] c_i32_11149_q;
    wire [31:0] c_i32_1141_q;
    wire [31:0] c_i32_1142_q;
    wire [31:0] c_i32_12148_q;
    wire [31:0] c_i32_32144_q;
    wire [31:0] c_i32_53146_q;
    wire [2:0] c_i3_1160_q;
    wire [2:0] c_i3_2158_q;
    wire [63:0] c_i64_1152_q;
    wire [63:0] c_i64_undef133_q;
    wire [7:0] c_i8_291_q;
    wire [62:0] i_acl_1_i_zfp_1d_decompress85_vt_const_63_q;
    wire [63:0] i_acl_1_i_zfp_1d_decompress85_vt_join_q;
    wire [0:0] i_acl_1_i_zfp_1d_decompress85_vt_select_0_b;
    wire [32:0] i_add_i42_i_zfp_1d_decompress45_a;
    wire [32:0] i_add_i42_i_zfp_1d_decompress45_b;
    logic [32:0] i_add_i42_i_zfp_1d_decompress45_o;
    wire [32:0] i_add_i42_i_zfp_1d_decompress45_q;
    wire [24:0] i_add_i42_i_zfp_1d_decompress45_vt_const_31_q;
    wire [31:0] i_add_i42_i_zfp_1d_decompress45_vt_join_q;
    wire [6:0] i_add_i42_i_zfp_1d_decompress45_vt_select_6_b;
    wire [64:0] i_add_i5_zfp_1d_decompress93_a;
    wire [64:0] i_add_i5_zfp_1d_decompress93_b;
    logic [64:0] i_add_i5_zfp_1d_decompress93_o;
    wire [64:0] i_add_i5_zfp_1d_decompress93_q;
    wire [64:0] i_add_i_i_zfp_1d_decompress15_a;
    wire [64:0] i_add_i_i_zfp_1d_decompress15_b;
    logic [64:0] i_add_i_i_zfp_1d_decompress15_o;
    wire [64:0] i_add_i_i_zfp_1d_decompress15_q;
    wire [15:0] i_and2647_i_zfp_1d_decompress66_q;
    wire [4:0] i_and2647_i_zfp_1d_decompress66_vt_const_15_q;
    wire [15:0] i_and2647_i_zfp_1d_decompress66_vt_join_q;
    wire [10:0] i_and2647_i_zfp_1d_decompress66_vt_select_10_b;
    wire [31:0] i_and28_i_zfp_1d_decompress67_q;
    wire [1:0] i_and28_i_zfp_1d_decompress67_vt_const_1_q;
    wire [27:0] i_and28_i_zfp_1d_decompress67_vt_const_31_q;
    wire [31:0] i_and28_i_zfp_1d_decompress67_vt_join_q;
    wire [1:0] i_and28_i_zfp_1d_decompress67_vt_select_3_b;
    wire [63:0] i_and36_i_zfp_1d_decompress76_q;
    wire [63:0] i_and36_i_zfp_1d_decompress76_vt_join_q;
    wire [0:0] i_and36_i_zfp_1d_decompress76_vt_select_0_b;
    wire [3:0] i_and7_i_zfp_1d_decompress49_vt_const_3_q;
    wire [25:0] i_and7_i_zfp_1d_decompress49_vt_const_31_q;
    wire [31:0] i_and7_i_zfp_1d_decompress49_vt_join_q;
    wire [1:0] i_and7_i_zfp_1d_decompress49_vt_select_5_b;
    wire [31:0] i_and8_i_zfp_1d_decompress52_vt_join_q;
    wire [1:0] i_and8_i_zfp_1d_decompress52_vt_select_3_b;
    wire [0:0] i_cmp35_i_zfp_1d_decompress74_qi;
    reg [0:0] i_cmp35_i_zfp_1d_decompress74_q;
    wire [0:0] i_cmp37_i_zfp_1d_decompress77_qi;
    reg [0:0] i_cmp37_i_zfp_1d_decompress77_q;
    wire [33:0] i_cmp40_i_zfp_1d_decompress80_a;
    wire [33:0] i_cmp40_i_zfp_1d_decompress80_b;
    logic [33:0] i_cmp40_i_zfp_1d_decompress80_o;
    wire [0:0] i_cmp40_i_zfp_1d_decompress80_c;
    wire [33:0] i_cmp4_i_zfp_1d_decompress47_a;
    wire [33:0] i_cmp4_i_zfp_1d_decompress47_b;
    logic [33:0] i_cmp4_i_zfp_1d_decompress47_o;
    wire [0:0] i_cmp4_i_zfp_1d_decompress47_c;
    wire [0:0] i_cmp_i_i1_zfp_1d_decompress43_q;
    wire [0:0] i_cmp_i_zfp_1d_decompress86_q;
    wire [15:0] i_conv17_i_zfp_1d_decompress60_q;
    wire [15:0] i_conv17_i_zfp_1d_decompress60_vt_join_q;
    wire [10:0] i_conv17_i_zfp_1d_decompress60_vt_select_10_b;
    wire [15:0] i_conv23_i_zfp_1d_decompress65_q;
    wire [20:0] i_conv33_i_zfp_1d_decompress73_vt_const_31_q;
    wire [31:0] i_conv33_i_zfp_1d_decompress73_vt_join_q;
    wire [10:0] i_conv33_i_zfp_1d_decompress73_vt_select_10_b;
    wire [3:0] i_fpga_indvars_iv_next18_zfp_1d_decompress103_a;
    wire [3:0] i_fpga_indvars_iv_next18_zfp_1d_decompress103_b;
    logic [3:0] i_fpga_indvars_iv_next18_zfp_1d_decompress103_o;
    wire [3:0] i_fpga_indvars_iv_next18_zfp_1d_decompress103_q;
    wire [0:0] i_i_zfp_1d_decompress82_s;
    reg [63:0] i_i_zfp_1d_decompress82_q;
    wire [32:0] i_inc_zfp_1d_decompress96_a;
    wire [32:0] i_inc_zfp_1d_decompress96_b;
    logic [32:0] i_inc_zfp_1d_decompress96_o;
    wire [32:0] i_inc_zfp_1d_decompress96_q;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_data;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_sum;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_vt_join_q;
    wire [5:0] i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_vt_select_5_b;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_data;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_sum;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_join_q;
    wire [5:0] i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_select_5_b;
    wire [0:0] i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_add10_i28_zfp_1d_decompress112_out_dest_data_out_8_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_add11_i29_zfp_1d_decompress109_out_dest_data_out_9_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_sub13_i31_zfp_1d_decompress9_out_dest_data_out_10_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_sub15_i32_zfp_1d_decompress110_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_zfp_1d_decompress102_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_zfp_1d_decompress102_out_feedback_valid_out_3;
    wire [0:0] i_narrow_i_zfp_1d_decompress84_q;
    wire [31:0] i_neg22_i_i_zfp_1d_decompress41_q;
    wire [31:0] i_neg_i_i_zfp_1d_decompress29_q;
    wire [0:0] i_not_cmp4_i_zfp_1d_decompress83_qi;
    reg [0:0] i_not_cmp4_i_zfp_1d_decompress83_q;
    wire [0:0] i_notcmp_zfp_1d_decompress101_q;
    wire [31:0] i_or10_i_i_zfp_1d_decompress28_qi;
    reg [31:0] i_or10_i_i_zfp_1d_decompress28_q;
    wire [31:0] i_or13_i_i_zfp_1d_decompress32_q;
    wire [31:0] i_or15_i_i_zfp_1d_decompress34_qi;
    reg [31:0] i_or15_i_i_zfp_1d_decompress34_q;
    wire [31:0] i_or17_i_i_zfp_1d_decompress36_q;
    wire [31:0] i_or19_i_i_zfp_1d_decompress38_q;
    wire [31:0] i_or21_i_i_zfp_1d_decompress40_q;
    wire [31:0] i_or4_i_i_zfp_1d_decompress22_qi;
    reg [31:0] i_or4_i_i_zfp_1d_decompress22_q;
    wire [31:0] i_or6_i_i_zfp_1d_decompress24_q;
    wire [31:0] i_or8_i_i_zfp_1d_decompress26_q;
    wire [0:0] i_or_cond48_i_zfp_1d_decompress81_q;
    wire [0:0] i_or_cond_not_i_zfp_1d_decompress79_q;
    wire [63:0] i_or_i46_i_zfp_1d_decompress19_q;
    wire [63:0] i_or_i46_i_zfp_1d_decompress19_vt_join_q;
    wire [31:0] i_or_i46_i_zfp_1d_decompress19_vt_select_31_b;
    wire [0:0] i_replace_phi_zfp_1d_decompress11_s;
    reg [63:0] i_replace_phi_zfp_1d_decompress11_q;
    wire [61:0] i_sh_prom122_i_zfp_1d_decompress56_vt_const_63_q;
    wire [63:0] i_sh_prom122_i_zfp_1d_decompress56_vt_join_q;
    wire [1:0] i_sh_prom122_i_zfp_1d_decompress56_vt_select_1_b;
    wire [59:0] i_sh_prom29_i_zfp_1d_decompress68_vt_const_63_q;
    wire [63:0] i_sh_prom29_i_zfp_1d_decompress68_vt_join_q;
    wire [1:0] i_sh_prom29_i_zfp_1d_decompress68_vt_select_3_b;
    wire [63:0] i_sh_prom313_i_zfp_1d_decompress71_vt_join_q;
    wire [1:0] i_sh_prom313_i_zfp_1d_decompress71_vt_select_1_b;
    wire [63:0] i_sh_prom9_i_zfp_1d_decompress53_vt_join_q;
    wire [1:0] i_sh_prom9_i_zfp_1d_decompress53_vt_select_3_b;
    wire [57:0] i_sh_prom_i_zfp_1d_decompress50_vt_const_63_q;
    wire [63:0] i_sh_prom_i_zfp_1d_decompress50_vt_join_q;
    wire [1:0] i_sh_prom_i_zfp_1d_decompress50_vt_select_5_b;
    wire [31:0] i_shr12_i_i_zfp_1d_decompress31_vt_join_q;
    wire [30:0] i_shr12_i_i_zfp_1d_decompress31_vt_select_30_b;
    wire [31:0] i_shr14_i_i_zfp_1d_decompress33_vt_join_q;
    wire [29:0] i_shr14_i_i_zfp_1d_decompress33_vt_select_29_b;
    wire [31:0] i_shr16_i_i_zfp_1d_decompress35_vt_join_q;
    wire [27:0] i_shr16_i_i_zfp_1d_decompress35_vt_select_27_b;
    wire [7:0] i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q;
    wire [31:0] i_shr18_i_i_zfp_1d_decompress37_vt_join_q;
    wire [23:0] i_shr18_i_i_zfp_1d_decompress37_vt_select_23_b;
    wire [15:0] i_shr20_i_i_zfp_1d_decompress39_vt_const_31_q;
    wire [31:0] i_shr20_i_i_zfp_1d_decompress39_vt_join_q;
    wire [15:0] i_shr20_i_i_zfp_1d_decompress39_vt_select_15_b;
    wire [32:0] i_shr2_i44_i_zfp_1d_decompress18_vt_const_63_q;
    wire [63:0] i_shr2_i44_i_zfp_1d_decompress18_vt_join_q;
    wire [30:0] i_shr2_i44_i_zfp_1d_decompress18_vt_select_30_b;
    wire [31:0] i_shr3_i_i_zfp_1d_decompress21_vt_join_q;
    wire [29:0] i_shr3_i_i_zfp_1d_decompress21_vt_select_29_b;
    wire [31:0] i_shr5_i_i_zfp_1d_decompress23_vt_join_q;
    wire [27:0] i_shr5_i_i_zfp_1d_decompress23_vt_select_27_b;
    wire [31:0] i_shr7_i_i_zfp_1d_decompress25_vt_join_q;
    wire [23:0] i_shr7_i_i_zfp_1d_decompress25_vt_select_23_b;
    wire [31:0] i_shr9_i_i_zfp_1d_decompress27_vt_join_q;
    wire [15:0] i_shr9_i_i_zfp_1d_decompress27_vt_select_15_b;
    wire [63:0] i_shr_i_i_zfp_1d_decompress16_vt_join_q;
    wire [31:0] i_shr_i_i_zfp_1d_decompress16_vt_select_31_b;
    wire [32:0] i_sub14_i_zfp_1d_decompress58_a;
    wire [32:0] i_sub14_i_zfp_1d_decompress58_b;
    logic [32:0] i_sub14_i_zfp_1d_decompress58_o;
    wire [32:0] i_sub14_i_zfp_1d_decompress58_q;
    wire [32:0] i_sub18_i_zfp_1d_decompress61_a;
    wire [32:0] i_sub18_i_zfp_1d_decompress61_b;
    logic [32:0] i_sub18_i_zfp_1d_decompress61_o;
    wire [32:0] i_sub18_i_zfp_1d_decompress61_q;
    wire [32:0] i_sub5_i_zfp_1d_decompress48_a;
    wire [32:0] i_sub5_i_zfp_1d_decompress48_b;
    logic [32:0] i_sub5_i_zfp_1d_decompress48_o;
    wire [32:0] i_sub5_i_zfp_1d_decompress48_q;
    wire [23:0] i_sub5_i_zfp_1d_decompress48_vt_const_31_q;
    wire [31:0] i_sub5_i_zfp_1d_decompress48_vt_join_q;
    wire [7:0] i_sub5_i_zfp_1d_decompress48_vt_select_7_b;
    wire [32:0] i_sub_i4_zfp_1d_decompress88_a;
    wire [32:0] i_sub_i4_zfp_1d_decompress88_b;
    logic [32:0] i_sub_i4_zfp_1d_decompress88_o;
    wire [32:0] i_sub_i4_zfp_1d_decompress88_q;
    wire [31:0] i_sub_i4_zfp_1d_decompress88_vt_join_q;
    wire [10:0] i_sub_i4_zfp_1d_decompress88_vt_select_10_b;
    wire [0:0] i_unnamed_zfp_1d_decompress105_qi;
    reg [0:0] i_unnamed_zfp_1d_decompress105_q;
    wire [0:0] i_unnamed_zfp_1d_decompress107_qi;
    reg [0:0] i_unnamed_zfp_1d_decompress107_q;
    wire [0:0] i_unnamed_zfp_1d_decompress111_s;
    reg [63:0] i_unnamed_zfp_1d_decompress111_q;
    wire [0:0] i_unnamed_zfp_1d_decompress113_s;
    reg [63:0] i_unnamed_zfp_1d_decompress113_q;
    wire [0:0] i_unnamed_zfp_1d_decompress46_s;
    reg [31:0] i_unnamed_zfp_1d_decompress46_q;
    wire [31:0] i_unnamed_zfp_1d_decompress46_vt_join_q;
    wire [6:0] i_unnamed_zfp_1d_decompress46_vt_select_6_b;
    wire [0:0] i_unnamed_zfp_1d_decompress89_s;
    reg [31:0] i_unnamed_zfp_1d_decompress89_q;
    wire [31:0] i_unnamed_zfp_1d_decompress89_vt_join_q;
    wire [10:0] i_unnamed_zfp_1d_decompress89_vt_select_10_b;
    wire [63:0] i_x_lobit_i_zfp_1d_decompress12_vt_join_q;
    wire [0:0] i_x_lobit_i_zfp_1d_decompress12_vt_select_0_b;
    wire [63:0] i_xor_i_i_zfp_1d_decompress14_qi;
    reg [63:0] i_xor_i_i_zfp_1d_decompress14_q;
    wire [0:0] i_zfp_1d_decompress_b8_current_iter_isspec_zfp_1d_decompress5_q;
    wire [0:0] i_zfp_1d_decompress_b8_next_iter_isreal_zfp_1d_decompress7_q;
    wire [31:0] bgTrunc_i_add_i42_i_zfp_1d_decompress45_sel_x_b;
    wire [63:0] bgTrunc_i_add_i5_zfp_1d_decompress93_sel_x_b;
    wire [63:0] bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next18_zfp_1d_decompress103_sel_x_b;
    wire [31:0] bgTrunc_i_inc_zfp_1d_decompress96_sel_x_b;
    wire [31:0] bgTrunc_i_sub14_i_zfp_1d_decompress58_sel_x_b;
    wire [31:0] bgTrunc_i_sub18_i_zfp_1d_decompress61_sel_x_b;
    wire [31:0] bgTrunc_i_sub5_i_zfp_1d_decompress48_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i4_zfp_1d_decompress88_sel_x_b;
    wire [31:0] c_i32_2137_recast_x_q;
    wire [31:0] c_i32_3161_recast_x_q;
    wire [31:0] c_i32_64154_recast_x_q;
    wire [63:0] i_acl_1_i_zfp_1d_decompress85_sel_x_b;
    wire [1:0] i_and30_trunc_i_zfp_1d_decompress70_sel_x_b;
    wire [31:0] i_conv1_i_i_zfp_1d_decompress17_sel_x_b;
    wire [31:0] i_conv33_i_zfp_1d_decompress73_sel_x_b;
    wire [167:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a;
    wire [63:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q;
    wire [167:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress95_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress95_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x_s;
    reg [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_o_data;
    wire [2:0] i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_valid;
    wire i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_stall;
    wire i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_o_data;
    wire [4:0] i_notmask_i_zfp_1d_decompress0_shift_narrow_x_b;
    wire [31:0] i_or_i_i_zfp_1d_decompress20_sel_x_b;
    wire [63:0] i_sh_prom122_i_zfp_1d_decompress56_sel_x_b;
    wire [63:0] i_sh_prom29_i_zfp_1d_decompress68_sel_x_b;
    wire [63:0] i_sh_prom313_i_zfp_1d_decompress71_sel_x_b;
    wire [63:0] i_sh_prom9_i_zfp_1d_decompress53_sel_x_b;
    wire [63:0] i_sh_prom_i_zfp_1d_decompress50_sel_x_b;
    wire [5:0] i_shl10_i_zfp_1d_decompress0_shift_narrow_x_b;
    wire [5:0] i_shl13_i_zfp_1d_decompress0_shift_narrow_x_b;
    wire [4:0] i_shl19_i_zfp_1d_decompress0_shift_narrow_x_b;
    wire [5:0] i_shl_i2_zfp_1d_decompress0_shift_narrow_x_b;
    wire [5:0] i_shr32_i_zfp_1d_decompress0_shift_narrow_x_b;
    wire [5:0] i_shr_i3_zfp_1d_decompress0_shift_narrow_x_b;
    wire [15:0] i_unnamed_zfp_1d_decompress59_sel_x_b;
    wire [15:0] i_unnamed_zfp_1d_decompress64_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    wire [31:0] i_and7_i_zfp_1d_decompress49_join_q;
    wire [31:0] i_and8_i_zfp_1d_decompress52_join_q;
    wire [0:0] i_exitcond19_zfp_1d_decompress98_cmp_nsign_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid460_i_notmask_i_zfp_1d_decompress0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid460_i_notmask_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid461_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [29:0] leftShiftStage0Idx2Rng2_uid463_i_notmask_i_zfp_1d_decompress0_shift_x_in;
    wire [29:0] leftShiftStage0Idx2Rng2_uid463_i_notmask_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage0Idx2_uid464_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [2:0] leftShiftStage0Idx3Pad3_uid465_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [28:0] leftShiftStage0Idx3Rng3_uid466_i_notmask_i_zfp_1d_decompress0_shift_x_in;
    wire [28:0] leftShiftStage0Idx3Rng3_uid466_i_notmask_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage0Idx3_uid467_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid471_i_notmask_i_zfp_1d_decompress0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid471_i_notmask_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid472_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid474_i_notmask_i_zfp_1d_decompress0_shift_x_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid474_i_notmask_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage1Idx2_uid475_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid476_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid477_i_notmask_i_zfp_1d_decompress0_shift_x_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid477_i_notmask_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage1Idx3_uid478_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Rng16_uid482_i_notmask_i_zfp_1d_decompress0_shift_x_in;
    wire [15:0] leftShiftStage2Idx1Rng16_uid482_i_notmask_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid483_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] leftShiftStage2_uid485_i_notmask_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] leftShiftStage2_uid485_i_notmask_i_zfp_1d_decompress0_shift_x_q;
    wire [59:0] leftShiftStage0Idx1Rng4_uid490_i_shl10_i_zfp_1d_decompress0_shift_x_in;
    wire [59:0] leftShiftStage0Idx1Rng4_uid490_i_shl10_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid491_i_shl10_i_zfp_1d_decompress0_shift_x_q;
    wire [55:0] leftShiftStage0Idx2Rng8_uid493_i_shl10_i_zfp_1d_decompress0_shift_x_in;
    wire [55:0] leftShiftStage0Idx2Rng8_uid493_i_shl10_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid494_i_shl10_i_zfp_1d_decompress0_shift_x_q;
    wire [51:0] leftShiftStage0Idx3Rng12_uid496_i_shl10_i_zfp_1d_decompress0_shift_x_in;
    wire [51:0] leftShiftStage0Idx3Rng12_uid496_i_shl10_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid497_i_shl10_i_zfp_1d_decompress0_shift_x_q;
    wire [3:0] leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x_in;
    wire [1:0] leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x_b;
    wire [1:0] leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid504_i_shl13_i_zfp_1d_decompress0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid504_i_shl13_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid505_i_shl13_i_zfp_1d_decompress0_shift_x_q;
    wire [61:0] leftShiftStage0Idx2Rng2_uid507_i_shl13_i_zfp_1d_decompress0_shift_x_in;
    wire [61:0] leftShiftStage0Idx2Rng2_uid507_i_shl13_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid508_i_shl13_i_zfp_1d_decompress0_shift_x_q;
    wire [60:0] leftShiftStage0Idx3Rng3_uid510_i_shl13_i_zfp_1d_decompress0_shift_x_in;
    wire [60:0] leftShiftStage0Idx3Rng3_uid510_i_shl13_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid511_i_shl13_i_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x_in;
    wire [1:0] leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x_b;
    wire [1:0] leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid518_i_shl19_i_zfp_1d_decompress0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid518_i_shl19_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid519_i_shl19_i_zfp_1d_decompress0_shift_x_q;
    wire [29:0] leftShiftStage0Idx2Rng2_uid521_i_shl19_i_zfp_1d_decompress0_shift_x_in;
    wire [29:0] leftShiftStage0Idx2Rng2_uid521_i_shl19_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage0Idx2_uid522_i_shl19_i_zfp_1d_decompress0_shift_x_q;
    wire [28:0] leftShiftStage0Idx3Rng3_uid524_i_shl19_i_zfp_1d_decompress0_shift_x_in;
    wire [28:0] leftShiftStage0Idx3Rng3_uid524_i_shl19_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage0Idx3_uid525_i_shl19_i_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid529_i_shl19_i_zfp_1d_decompress0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid529_i_shl19_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid530_i_shl19_i_zfp_1d_decompress0_shift_x_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid532_i_shl19_i_zfp_1d_decompress0_shift_x_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid532_i_shl19_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage1Idx2_uid533_i_shl19_i_zfp_1d_decompress0_shift_x_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid535_i_shl19_i_zfp_1d_decompress0_shift_x_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid535_i_shl19_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage1Idx3_uid536_i_shl19_i_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Rng16_uid540_i_shl19_i_zfp_1d_decompress0_shift_x_in;
    wire [15:0] leftShiftStage2Idx1Rng16_uid540_i_shl19_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid541_i_shl19_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] leftShiftStage2_uid543_i_shl19_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] leftShiftStage2_uid543_i_shl19_i_zfp_1d_decompress0_shift_x_q;
    wire [47:0] leftShiftStage0Idx1Rng16_uid548_i_shl_i2_zfp_1d_decompress0_shift_x_in;
    wire [47:0] leftShiftStage0Idx1Rng16_uid548_i_shl_i2_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid549_i_shl_i2_zfp_1d_decompress0_shift_x_q;
    wire [31:0] leftShiftStage0Idx2Rng32_uid551_i_shl_i2_zfp_1d_decompress0_shift_x_in;
    wire [31:0] leftShiftStage0Idx2Rng32_uid551_i_shl_i2_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid552_i_shl_i2_zfp_1d_decompress0_shift_x_q;
    wire [47:0] leftShiftStage0Idx3Pad48_uid553_i_shl_i2_zfp_1d_decompress0_shift_x_q;
    wire [15:0] leftShiftStage0Idx3Rng48_uid554_i_shl_i2_zfp_1d_decompress0_shift_x_in;
    wire [15:0] leftShiftStage0Idx3Rng48_uid554_i_shl_i2_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid555_i_shl_i2_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStageSel4Dto4_uid556_i_shl_i2_zfp_1d_decompress0_shift_x_b;
    wire [1:0] leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid561_i_shr12_i_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid563_i_shr12_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid565_i_shr12_i_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] rightShiftStage0_uid565_i_shr12_i_i_zfp_1d_decompress0_shift_x_q;
    wire [29:0] rightShiftStage0Idx1Rng2_uid569_i_shr14_i_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid571_i_shr14_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid573_i_shr14_i_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] rightShiftStage0_uid573_i_shr14_i_i_zfp_1d_decompress0_shift_x_q;
    wire [27:0] rightShiftStage0Idx1Rng4_uid577_i_shr16_i_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid579_i_shr16_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid581_i_shr16_i_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] rightShiftStage0_uid581_i_shr16_i_i_zfp_1d_decompress0_shift_x_q;
    wire [23:0] rightShiftStage0Idx1Rng8_uid585_i_shr18_i_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid587_i_shr18_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid589_i_shr18_i_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] rightShiftStage0_uid589_i_shr18_i_i_zfp_1d_decompress0_shift_x_q;
    wire [15:0] rightShiftStage0Idx1Rng16_uid593_i_shr20_i_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid595_i_shr20_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid597_i_shr20_i_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] rightShiftStage0_uid597_i_shr20_i_i_zfp_1d_decompress0_shift_x_q;
    wire [62:0] rightShiftStage0Idx1Rng1_uid601_i_shr2_i44_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid603_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid606_i_shr2_i44_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid608_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage1_uid610_i_shr2_i44_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage1_uid610_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q;
    wire [62:0] rightShiftStage0Idx1Rng1_uid614_i_shr32_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid616_i_shr32_i_zfp_1d_decompress0_shift_x_q;
    wire [61:0] rightShiftStage0Idx2Rng2_uid617_i_shr32_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx2_uid619_i_shr32_i_zfp_1d_decompress0_shift_x_q;
    wire [60:0] rightShiftStage0Idx3Rng3_uid620_i_shr32_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx3_uid622_i_shr32_i_zfp_1d_decompress0_shift_x_q;
    wire [1:0] rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x_in;
    wire [1:0] rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x_b;
    wire [1:0] rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_q;
    wire [29:0] rightShiftStage0Idx1Rng2_uid628_i_shr3_i_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid630_i_shr3_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid632_i_shr3_i_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] rightShiftStage0_uid632_i_shr3_i_i_zfp_1d_decompress0_shift_x_q;
    wire [27:0] rightShiftStage0Idx1Rng4_uid636_i_shr5_i_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid638_i_shr5_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid640_i_shr5_i_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] rightShiftStage0_uid640_i_shr5_i_i_zfp_1d_decompress0_shift_x_q;
    wire [23:0] rightShiftStage0Idx1Rng8_uid644_i_shr7_i_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid646_i_shr7_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid648_i_shr7_i_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] rightShiftStage0_uid648_i_shr7_i_i_zfp_1d_decompress0_shift_x_q;
    wire [15:0] rightShiftStage0Idx1Rng16_uid652_i_shr9_i_i_zfp_1d_decompress0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid654_i_shr9_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid656_i_shr9_i_i_zfp_1d_decompress0_shift_x_s;
    reg [31:0] rightShiftStage0_uid656_i_shr9_i_i_zfp_1d_decompress0_shift_x_q;
    wire [59:0] rightShiftStage0Idx1Rng4_uid660_i_shr_i3_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid662_i_shr_i3_zfp_1d_decompress0_shift_x_q;
    wire [55:0] rightShiftStage0Idx2Rng8_uid663_i_shr_i3_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx2_uid665_i_shr_i3_zfp_1d_decompress0_shift_x_q;
    wire [51:0] rightShiftStage0Idx3Rng12_uid666_i_shr_i3_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx3_uid668_i_shr_i3_zfp_1d_decompress0_shift_x_q;
    wire [3:0] rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x_in;
    wire [1:0] rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x_b;
    wire [1:0] rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q;
    wire [31:0] rightShiftStage0Idx1Rng32_uid674_i_shr_i_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid676_i_shr_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid678_i_shr_i_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage0_uid678_i_shr_i_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b;
    wire [62:0] rightShiftStage0Idx1Rng1_uid682_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid683_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [1:0] seMsb_to2_uid686_in;
    wire [1:0] seMsb_to2_uid686_b;
    wire [61:0] rightShiftStage1Idx1Rng2_uid687_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid688_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [3:0] seMsb_to4_uid691_in;
    wire [3:0] seMsb_to4_uid691_b;
    wire [59:0] rightShiftStage2Idx1Rng4_uid692_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid693_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [7:0] seMsb_to8_uid696_in;
    wire [7:0] seMsb_to8_uid696_b;
    wire [55:0] rightShiftStage3Idx1Rng8_uid697_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage3Idx1_uid698_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [15:0] seMsb_to16_uid701_in;
    wire [15:0] seMsb_to16_uid701_b;
    wire [47:0] rightShiftStage4Idx1Rng16_uid702_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage4Idx1_uid703_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [31:0] seMsb_to32_uid706_in;
    wire [31:0] seMsb_to32_uid706_b;
    wire [31:0] rightShiftStage5Idx1Rng32_uid707_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage5Idx1_uid708_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage5_uid710_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage5_uid710_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
    wire [62:0] rightShiftStage0Idx1Rng1_uid714_i_x_lobit_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid716_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [61:0] rightShiftStage1Idx1Rng2_uid719_i_x_lobit_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid721_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [59:0] rightShiftStage2Idx1Rng4_uid724_i_x_lobit_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid726_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [55:0] rightShiftStage3Idx1Rng8_uid729_i_x_lobit_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage3Idx1_uid731_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [47:0] rightShiftStage4Idx1Rng16_uid734_i_x_lobit_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage4Idx1_uid736_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [31:0] rightShiftStage5Idx1Rng32_uid739_i_x_lobit_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage5Idx1_uid741_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage5_uid743_i_x_lobit_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage5_uid743_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
    wire [5:0] i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_in;
    wire [1:0] i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_b;
    wire [1:0] i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_c;
    wire [1:0] i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_d;
    wire [1:0] leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    wire [0:0] leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    wire [1:0] leftShiftStageSel0Dto0_uid526_i_shl19_i_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid526_i_shl19_i_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    wire [0:0] leftShiftStageSel0Dto0_uid526_i_shl19_i_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    reg [1:0] redist0_leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_c_1_q;
    reg [0:0] redist1_leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_d_1_q;
    reg [1:0] redist2_rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x_b_1_q;
    reg [1:0] redist3_rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x_b_1_q;
    reg [1:0] redist4_leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x_b_1_q;
    reg [1:0] redist5_leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x_b_1_q;
    reg [0:0] redist6_i_exitcond19_zfp_1d_decompress98_cmp_nsign_q_11_q;
    reg [0:0] redist7_sync_together171_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist7_sync_together171_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist8_sync_together171_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist9_sync_together171_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist10_sync_together171_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist11_sync_together171_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist12_sync_together171_aunroll_x_in_i_valid_15_q;
    reg [4:0] redist13_i_shl19_i_zfp_1d_decompress0_shift_narrow_x_b_1_q;
    reg [0:0] redist14_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q;
    reg [0:0] redist14_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist15_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_3_q;
    reg [0:0] redist16_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q;
    reg [0:0] redist17_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q_9_q;
    reg [63:0] redist18_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q_3_q;
    reg [63:0] redist18_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q_3_delay_0;
    reg [63:0] redist18_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q_3_delay_1;
    reg [31:0] redist19_bgTrunc_i_inc_zfp_1d_decompress96_sel_x_b_1_q;
    reg [63:0] redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1_q;
    reg [63:0] redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_q;
    reg [63:0] redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_delay_0;
    reg [63:0] redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_delay_1;
    reg [63:0] redist22_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_5_q;
    reg [10:0] redist23_i_unnamed_zfp_1d_decompress89_vt_select_10_b_1_q;
    reg [6:0] redist24_i_unnamed_zfp_1d_decompress46_vt_select_6_b_1_q;
    reg [63:0] redist25_i_replace_phi_zfp_1d_decompress11_q_1_q;
    reg [0:0] redist27_i_not_cmp4_i_zfp_1d_decompress83_q_2_q;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_data_out_2_q;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_data_out_2_delay_0;
    reg [0:0] redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_q;
    reg [0:0] redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_delay_0;
    reg [0:0] redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_delay_1;
    reg [0:0] redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_delay_2;
    reg [0:0] redist30_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_6_q;
    reg [0:0] redist30_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_6_delay_0;
    reg [0:0] redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_q;
    reg [0:0] redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_0;
    reg [0:0] redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_1;
    reg [0:0] redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_2;
    reg [5:0] redist32_i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_select_5_b_1_q;
    reg [10:0] redist33_i_conv33_i_zfp_1d_decompress73_vt_select_10_b_1_q;
    reg [0:0] redist34_i_and36_i_zfp_1d_decompress76_vt_select_0_b_1_q;
    reg [0:0] redist35_i_acl_1_i_zfp_1d_decompress85_vt_select_0_b_1_q;
    reg [63:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_outputreg0_q;
    wire redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_reset0;
    wire [63:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_ia;
    wire [1:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_aa;
    wire [1:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_ab;
    wire [63:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_iq;
    wire [63:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_q;
    wire [1:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_wraddr_i = 2'b11;
    wire [1:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_offset_q;
    wire [2:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_a;
    wire [2:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_b;
    logic [2:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_o;
    wire [2:0] redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together171_aunroll_x_in_i_valid_2(DELAY,754)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist7_sync_together171_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist7_sync_together171_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together171_aunroll_x_in_i_valid_2_q <= redist7_sync_together171_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist8_sync_together171_aunroll_x_in_i_valid_3(DELAY,755)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_together171_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist8_sync_together171_aunroll_x_in_i_valid_3_q <= $unsigned(redist7_sync_together171_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,389)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist8_sync_together171_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg11(REG,398)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist8_sync_together171_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i3_2158(CONSTANT,46)
    assign c_i3_2158_q = $unsigned(3'b010);

    // i_and2647_i_zfp_1d_decompress66_vt_const_15(CONSTANT,65)
    assign i_and2647_i_zfp_1d_decompress66_vt_const_15_q = $unsigned(5'b00000);

    // c_i3_1160(CONSTANT,45)
    assign c_i3_1160_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next18_zfp_1d_decompress103(ADD,105)@4
    assign i_fpga_indvars_iv_next18_zfp_1d_decompress103_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x_q};
    assign i_fpga_indvars_iv_next18_zfp_1d_decompress103_b = {1'b0, c_i3_1160_q};
    assign i_fpga_indvars_iv_next18_zfp_1d_decompress103_o = $unsigned(i_fpga_indvars_iv_next18_zfp_1d_decompress103_a) + $unsigned(i_fpga_indvars_iv_next18_zfp_1d_decompress103_b);
    assign i_fpga_indvars_iv_next18_zfp_1d_decompress103_q = i_fpga_indvars_iv_next18_zfp_1d_decompress103_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next18_zfp_1d_decompress103_sel_x(BITSELECT,250)@4
    assign bgTrunc_i_fpga_indvars_iv_next18_zfp_1d_decompress103_sel_x_b = i_fpga_indvars_iv_next18_zfp_1d_decompress103_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_element_extension2_x(BITJOIN,288)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_element_extension2_x_q = {i_and2647_i_zfp_1d_decompress66_vt_const_15_q, bgTrunc_i_fpga_indvars_iv_next18_zfp_1d_decompress103_sel_x_b};

    // i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x(LOGICAL,281)@1
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg13(REG,400)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // redist14_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2(DELAY,761)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q);
            redist14_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q <= redist14_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg12(REG,399)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist7_sync_together171_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x(FIFODELAY,289)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q);
    assign i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_valid = valid_fanout_reg12_q & redist14_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_data = i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_element_extension2_x_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x(BITSELECT,291)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress1_x_o_data[2:0];

    // i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x(MUX,275)@4
    assign i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x_s = redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x_s or i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b or c_i3_2158_q)
    begin
        unique case (i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x_q = i_llvm_fpga_push_i3_fpga_indvars_iv17_push24_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x_q = c_i3_2158_q;
            default : i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x_q = 3'b0;
        endcase
    end

    // i_exitcond19_zfp_1d_decompress98_cmp_nsign(LOGICAL,455)@4
    assign i_exitcond19_zfp_1d_decompress98_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress0_i_llvm_fpga_pop_i3_fpga_indvars_iv17_pop24_zfp_1d_decompress97_mux_x_q[2:2]));

    // i_llvm_fpga_push_i1_notexitcond_zfp_1d_decompress102(BLACKBOX,123)@4
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_zfp_1d_decompress102 (
        .in_data_in(i_exitcond19_zfp_1d_decompress98_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_zfp_1d_decompress102_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_zfp_1d_decompress102_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2(BLACKBOX,116)@0
    // in in_stall_in@20000000
    zfp_1d_decompress_i_llvm_fpga_dummy_thre0003y_zfp_1d_decompress0 thei_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4(DELAY,778)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out);
            redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_1 <= redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_0;
            redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_2 <= redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_1;
            redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_q <= redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3(BLACKBOX,121)@0
    // in in_stall_in@20000000
    zfp_1d_decompress_i_llvm_fpga_forked_b8_0000d_zfp_1d_decompress0 thei_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4(DELAY,776)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out);
            redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_delay_1 <= redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_delay_0;
            redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_delay_2 <= redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_delay_1;
            redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_q <= redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6(BLACKBOX,122)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6 (
        .in_data_in(redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_q),
        .in_dummy_in(redist31_i_llvm_fpga_dummy_thread_zfp_1d_decompress_b8_dummy_zfp_1d_decompress2_out_dummy_out_4_q),
        .in_forked_in(redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_zfp_1d_decompress102_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_zfp_1d_decompress102_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,244)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,262)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,263)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,264)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_pipeline_valid_out;

    // i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_c_i7_03_x(CONSTANT,278)
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_c_i7_03_x_q = $unsigned(7'b0000000);

    // redist28_i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_data_out_2(DELAY,775)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_data_out);
            redist28_i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_data_out_2_q <= redist28_i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_data_out_2_delay_0;
        end
    end

    // i_zfp_1d_decompress_b8_next_iter_isreal_zfp_1d_decompress7(LOGICAL,232)@6
    assign i_zfp_1d_decompress_b8_next_iter_isreal_zfp_1d_decompress7_q = i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q & redist28_i_llvm_fpga_pipeline_keep_going_zfp_1d_decompress6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_element_extension2_x(BITJOIN,279)@6
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_element_extension2_x_q = {i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_c_i7_03_x_q, i_zfp_1d_decompress_b8_next_iter_isreal_zfp_1d_decompress7_q};

    // valid_fanout_reg4(REG,391)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist7_sync_together171_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist15_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_3(DELAY,762)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_3_q <= $unsigned(redist14_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q);
        end
    end

    // redist16_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4(DELAY,763)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q <= $unsigned(redist15_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_3_q);
        end
    end

    // redist9_sync_together171_aunroll_x_in_i_valid_4(DELAY,756)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together171_aunroll_x_in_i_valid_4_q <= $unsigned(redist8_sync_together171_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg3(REG,390)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist9_sync_together171_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x(FIFODELAY,280)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg4_q & redist14_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid = valid_fanout_reg3_q & redist16_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_data = i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x(BITSELECT,282)@6
    assign i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress1_x_o_data[0:0];

    // redist30_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_6(DELAY,777)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_6_delay_0 <= $unsigned(redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_q);
            redist30_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_6_q <= redist30_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x(MUX,273)@6
    assign i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_s = redist30_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_s or i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q = i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q = 1'b0;
        endcase
    end

    // redist17_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q_9(DELAY,764)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist17_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q_9 ( .xin(i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q), .xout(redist17_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_zfp_1d_decompress_b8_current_iter_isspec_zfp_1d_decompress5(LOGICAL,231)@15
    assign i_zfp_1d_decompress_b8_current_iter_isspec_zfp_1d_decompress5_q = redist17_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_decompress_b8_current_iter_isreal_zfp_1d_decompress4_mux_x_q_9_q ^ VCC_q;

    // redist10_sync_together171_aunroll_x_in_i_valid_5(DELAY,757)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist10_sync_together171_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist10_sync_together171_aunroll_x_in_i_valid_5_q <= $unsigned(redist9_sync_together171_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist11_sync_together171_aunroll_x_in_i_valid_14(DELAY,758)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("SYNC"), .phase(5), .modulus(2), .reset_high(1'b0) )
    redist11_sync_together171_aunroll_x_in_i_valid_14 ( .xin(redist10_sync_together171_aunroll_x_in_i_valid_5_q), .xout(redist11_sync_together171_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together171_aunroll_x_in_i_valid_15(DELAY,759)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together171_aunroll_x_in_i_valid_15_q <= $unsigned(redist11_sync_together171_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg0(REG,387)@14 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist11_sync_together171_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_notcmp_zfp_1d_decompress101(LOGICAL,128)@15
    assign i_notcmp_zfp_1d_decompress101_q = redist6_i_exitcond19_zfp_1d_decompress98_cmp_nsign_q_11_q ^ VCC_q;

    // redist6_i_exitcond19_zfp_1d_decompress98_cmp_nsign_q_11(DELAY,753)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist6_i_exitcond19_zfp_1d_decompress98_cmp_nsign_q_11 ( .xin(i_exitcond19_zfp_1d_decompress98_cmp_nsign_q), .xout(redist6_i_exitcond19_zfp_1d_decompress98_cmp_nsign_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1_i_zfp_1d_decompress85_vt_const_63(CONSTANT,54)
    assign i_acl_1_i_zfp_1d_decompress85_vt_const_63_q = $unsigned(63'b000000000000000000000000000000000000000000000000000000000000000);

    // i_add_i42_i_zfp_1d_decompress45_vt_const_31(CONSTANT,58)
    assign i_add_i42_i_zfp_1d_decompress45_vt_const_31_q = $unsigned(25'b0000000000000000000000000);

    // c_i32_32144(CONSTANT,40)
    assign c_i32_32144_q = $unsigned(32'b00000000000000000000000000100000);

    // i_and7_i_zfp_1d_decompress49_vt_const_31(CONSTANT,80)
    assign i_and7_i_zfp_1d_decompress49_vt_const_31_q = $unsigned(26'b00000000000000000000000000);

    // c_i32_1141(CONSTANT,35)
    assign c_i32_1141_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_0143(CONSTANT,31)
    assign c_i32_0143_q = $unsigned(32'b00000000000000000000000000000000);

    // rightShiftStage5Idx1Rng32_uid739_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITSELECT,738)@7
    assign rightShiftStage5Idx1Rng32_uid739_i_x_lobit_i_zfp_1d_decompress0_shift_x_b = rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_q[63:32];

    // rightShiftStage5Idx1_uid741_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITJOIN,740)@7
    assign rightShiftStage5Idx1_uid741_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = {c_i32_0143_q, rightShiftStage5Idx1Rng32_uid739_i_x_lobit_i_zfp_1d_decompress0_shift_x_b};

    // i_shr20_i_i_zfp_1d_decompress39_vt_const_31(CONSTANT,181)
    assign i_shr20_i_i_zfp_1d_decompress39_vt_const_31_q = $unsigned(16'b0000000000000000);

    // rightShiftStage4Idx1Rng16_uid734_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITSELECT,733)@7
    assign rightShiftStage4Idx1Rng16_uid734_i_x_lobit_i_zfp_1d_decompress0_shift_x_b = rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_q[63:16];

    // rightShiftStage4Idx1_uid736_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITJOIN,735)@7
    assign rightShiftStage4Idx1_uid736_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = {i_shr20_i_i_zfp_1d_decompress39_vt_const_31_q, rightShiftStage4Idx1Rng16_uid734_i_x_lobit_i_zfp_1d_decompress0_shift_x_b};

    // i_shr18_i_i_zfp_1d_decompress37_vt_const_31(CONSTANT,178)
    assign i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q = $unsigned(8'b00000000);

    // rightShiftStage3Idx1Rng8_uid729_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITSELECT,728)@7
    assign rightShiftStage3Idx1Rng8_uid729_i_x_lobit_i_zfp_1d_decompress0_shift_x_b = rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_q[63:8];

    // rightShiftStage3Idx1_uid731_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITJOIN,730)@7
    assign rightShiftStage3Idx1_uid731_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = {i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q, rightShiftStage3Idx1Rng8_uid729_i_x_lobit_i_zfp_1d_decompress0_shift_x_b};

    // i_and7_i_zfp_1d_decompress49_vt_const_3(CONSTANT,79)
    assign i_and7_i_zfp_1d_decompress49_vt_const_3_q = $unsigned(4'b0000);

    // rightShiftStage2Idx1Rng4_uid724_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITSELECT,723)@7
    assign rightShiftStage2Idx1Rng4_uid724_i_x_lobit_i_zfp_1d_decompress0_shift_x_b = rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_q[63:4];

    // rightShiftStage2Idx1_uid726_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITJOIN,725)@7
    assign rightShiftStage2Idx1_uid726_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = {i_and7_i_zfp_1d_decompress49_vt_const_3_q, rightShiftStage2Idx1Rng4_uid724_i_x_lobit_i_zfp_1d_decompress0_shift_x_b};

    // i_and28_i_zfp_1d_decompress67_vt_const_1(CONSTANT,69)
    assign i_and28_i_zfp_1d_decompress67_vt_const_1_q = $unsigned(2'b00);

    // rightShiftStage1Idx1Rng2_uid719_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITSELECT,718)@7
    assign rightShiftStage1Idx1Rng2_uid719_i_x_lobit_i_zfp_1d_decompress0_shift_x_b = rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_q[63:2];

    // rightShiftStage1Idx1_uid721_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITJOIN,720)@7
    assign rightShiftStage1Idx1_uid721_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = {i_and28_i_zfp_1d_decompress67_vt_const_1_q, rightShiftStage1Idx1Rng2_uid719_i_x_lobit_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid714_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITSELECT,713)@7
    assign rightShiftStage0Idx1Rng1_uid714_i_x_lobit_i_zfp_1d_decompress0_shift_x_b = redist25_i_replace_phi_zfp_1d_decompress11_q_1_q[63:1];

    // rightShiftStage0Idx1_uid716_i_x_lobit_i_zfp_1d_decompress0_shift_x(BITJOIN,715)@7
    assign rightShiftStage0Idx1_uid716_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid714_i_x_lobit_i_zfp_1d_decompress0_shift_x_b};

    // valid_fanout_reg5(REG,392)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist10_sync_together171_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_sub13_i31_zfp_1d_decompress9(BLACKBOX,119)@6
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_i64_sub13_i31_0 thei_llvm_fpga_ffwd_dest_i64_sub13_i31_zfp_1d_decompress9 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i64_sub13_i31_zfp_1d_decompress9_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_undef133(CONSTANT,51)
    assign c_i64_undef133_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg16(REG,403)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist10_sync_together171_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_add10_i28_zfp_1d_decompress112(BLACKBOX,117)@6
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_i64_add10_i28_0 thei_llvm_fpga_ffwd_dest_i64_add10_i28_zfp_1d_decompress112 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i64_add10_i28_zfp_1d_decompress112_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,402)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist10_sync_together171_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_sub15_i32_zfp_1d_decompress110(BLACKBOX,120)@6
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_i64_sub15_i32_0 thei_llvm_fpga_ffwd_dest_i64_sub15_i32_zfp_1d_decompress110 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i64_sub15_i32_zfp_1d_decompress110_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,401)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist10_sync_together171_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_add11_i29_zfp_1d_decompress109(BLACKBOX,118)@6
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_i64_add11_i29_0 thei_llvm_fpga_ffwd_dest_i64_add11_i29_zfp_1d_decompress109 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i64_add11_i29_zfp_1d_decompress109_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_2137_recast_x(CONSTANT,257)
    assign c_i32_2137_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // c_i32_1142(CONSTANT,36)
    assign c_i32_1142_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg10(REG,397)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,396)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist8_sync_together171_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x(FIFODELAY,283)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg10_q & i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_valid = valid_fanout_reg9_q & redist15_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_data = redist19_bgTrunc_i_inc_zfp_1d_decompress96_sel_x_b_1_q;
    assign i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
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
    ) thei_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(redist19_bgTrunc_i_inc_zfp_1d_decompress96_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress95_mux_x(MUX,274)@4
    assign i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress95_mux_x_s = redist29_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress95_mux_x_s or i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_o_data or c_i32_0143_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress95_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress95_mux_x_q = i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress0_i_llvm_fpga_push_i32_i_013_push26_zfp_1d_decompress1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress95_mux_x_q = c_i32_0143_q;
            default : i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress95_mux_x_q = 32'b0;
        endcase
    end

    // i_inc_zfp_1d_decompress96(ADD,107)@4
    assign i_inc_zfp_1d_decompress96_a = {1'b0, i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress0_i_llvm_fpga_pop_i32_i_013_pop26_zfp_1d_decompress95_mux_x_q};
    assign i_inc_zfp_1d_decompress96_b = {1'b0, c_i32_1142_q};
    assign i_inc_zfp_1d_decompress96_o = $unsigned(i_inc_zfp_1d_decompress96_a) + $unsigned(i_inc_zfp_1d_decompress96_b);
    assign i_inc_zfp_1d_decompress96_q = i_inc_zfp_1d_decompress96_o[32:0];

    // bgTrunc_i_inc_zfp_1d_decompress96_sel_x(BITSELECT,251)@4
    assign bgTrunc_i_inc_zfp_1d_decompress96_sel_x_b = i_inc_zfp_1d_decompress96_q[31:0];

    // redist19_bgTrunc_i_inc_zfp_1d_decompress96_sel_x_b_1(DELAY,766)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_bgTrunc_i_inc_zfp_1d_decompress96_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc_zfp_1d_decompress96_sel_x_b);
        end
    end

    // i_unnamed_zfp_1d_decompress107(LOGICAL,213)@5 + 1
    assign i_unnamed_zfp_1d_decompress107_qi = $unsigned(redist19_bgTrunc_i_inc_zfp_1d_decompress96_sel_x_b_1_q == c_i32_2137_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress107_delay ( .xin(i_unnamed_zfp_1d_decompress107_qi), .xout(i_unnamed_zfp_1d_decompress107_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_zfp_1d_decompress111(MUX,214)@6
    assign i_unnamed_zfp_1d_decompress111_s = i_unnamed_zfp_1d_decompress107_q;
    always @(i_unnamed_zfp_1d_decompress111_s or i_llvm_fpga_ffwd_dest_i64_add11_i29_zfp_1d_decompress109_out_dest_data_out_9_0 or i_llvm_fpga_ffwd_dest_i64_sub15_i32_zfp_1d_decompress110_out_dest_data_out_11_0)
    begin
        unique case (i_unnamed_zfp_1d_decompress111_s)
            1'b0 : i_unnamed_zfp_1d_decompress111_q = i_llvm_fpga_ffwd_dest_i64_add11_i29_zfp_1d_decompress109_out_dest_data_out_9_0;
            1'b1 : i_unnamed_zfp_1d_decompress111_q = i_llvm_fpga_ffwd_dest_i64_sub15_i32_zfp_1d_decompress110_out_dest_data_out_11_0;
            default : i_unnamed_zfp_1d_decompress111_q = 64'b0;
        endcase
    end

    // c_i32_3161_recast_x(CONSTANT,258)
    assign c_i32_3161_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_zfp_1d_decompress105(LOGICAL,212)@5 + 1
    assign i_unnamed_zfp_1d_decompress105_qi = $unsigned(redist19_bgTrunc_i_inc_zfp_1d_decompress96_sel_x_b_1_q == c_i32_3161_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress105_delay ( .xin(i_unnamed_zfp_1d_decompress105_qi), .xout(i_unnamed_zfp_1d_decompress105_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_zfp_1d_decompress113(MUX,215)@6
    assign i_unnamed_zfp_1d_decompress113_s = i_unnamed_zfp_1d_decompress105_q;
    always @(i_unnamed_zfp_1d_decompress113_s or i_unnamed_zfp_1d_decompress111_q or i_llvm_fpga_ffwd_dest_i64_add10_i28_zfp_1d_decompress112_out_dest_data_out_8_0)
    begin
        unique case (i_unnamed_zfp_1d_decompress113_s)
            1'b0 : i_unnamed_zfp_1d_decompress113_q = i_unnamed_zfp_1d_decompress111_q;
            1'b1 : i_unnamed_zfp_1d_decompress113_q = i_llvm_fpga_ffwd_dest_i64_add10_i28_zfp_1d_decompress112_out_dest_data_out_8_0;
            default : i_unnamed_zfp_1d_decompress113_q = 64'b0;
        endcase
    end

    // valid_fanout_reg18(REG,405)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist7_sync_together171_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg17(REG,404)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist9_sync_together171_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x(FIFODELAY,292)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_stall = ~ (valid_fanout_reg18_q & redist14_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_valid = valid_fanout_reg17_q & redist16_i_llvm_fpga_push_i1_zfp_1d_decompress_b8_next_iter_isreal_push_zfp_1d_decompress0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_data = i_unnamed_zfp_1d_decompress113_q;
    assign i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x (
        .i_valid(i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_i_stall_bitsignaltemp),
        .i_data(i_unnamed_zfp_1d_decompress113_q),
        .o_data(i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x(MUX,276)@6
    assign i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x_s = redist30_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x_s or i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_o_data or c_i64_undef133_q)
    begin
        unique case (i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x_q = i_llvm_fpga_push_i64_push25_zfp_1d_decompress0_i_llvm_fpga_push_i64_push25_zfp_1d_decompress1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x_q = c_i64_undef133_q;
            default : i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x_q = 64'b0;
        endcase
    end

    // i_replace_phi_zfp_1d_decompress11(MUX,145)@6
    assign i_replace_phi_zfp_1d_decompress11_s = redist30_i_llvm_fpga_forked_zfp_1d_decompress_b8_forked_zfp_1d_decompress3_out_buffer_out_6_q;
    always @(i_replace_phi_zfp_1d_decompress11_s or i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x_q or i_llvm_fpga_ffwd_dest_i64_sub13_i31_zfp_1d_decompress9_out_dest_data_out_10_0)
    begin
        unique case (i_replace_phi_zfp_1d_decompress11_s)
            1'b0 : i_replace_phi_zfp_1d_decompress11_q = i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress0_i_llvm_fpga_pop_i64_pop25_zfp_1d_decompress10_mux_x_q;
            1'b1 : i_replace_phi_zfp_1d_decompress11_q = i_llvm_fpga_ffwd_dest_i64_sub13_i31_zfp_1d_decompress9_out_dest_data_out_10_0;
            default : i_replace_phi_zfp_1d_decompress11_q = 64'b0;
        endcase
    end

    // redist25_i_replace_phi_zfp_1d_decompress11_q_1(DELAY,772)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_replace_phi_zfp_1d_decompress11_q_1_q <= $unsigned(i_replace_phi_zfp_1d_decompress11_q);
        end
    end

    // rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x(MUX,717)@7
    assign rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_s or redist25_i_replace_phi_zfp_1d_decompress11_q_1_q or rightShiftStage0Idx1_uid716_i_x_lobit_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = redist25_i_replace_phi_zfp_1d_decompress11_q_1_q;
            1'b1 : rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid716_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x(MUX,722)@7
    assign rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_s or rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_q or rightShiftStage1Idx1_uid721_i_x_lobit_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0_uid718_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage1Idx1_uid721_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x(MUX,727)@7
    assign rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_s or rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_q or rightShiftStage2Idx1_uid726_i_x_lobit_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage1_uid723_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage2Idx1_uid726_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x(MUX,732)@7
    assign rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_s or rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_q or rightShiftStage3Idx1_uid731_i_x_lobit_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage2_uid728_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage3Idx1_uid731_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x(MUX,737)@7
    assign rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_s or rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_q or rightShiftStage4Idx1_uid736_i_x_lobit_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage3_uid733_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage4Idx1_uid736_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage5_uid743_i_x_lobit_i_zfp_1d_decompress0_shift_x(MUX,742)@7
    assign rightShiftStage5_uid743_i_x_lobit_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage5_uid743_i_x_lobit_i_zfp_1d_decompress0_shift_x_s or rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_q or rightShiftStage5Idx1_uid741_i_x_lobit_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage5_uid743_i_x_lobit_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage5_uid743_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage4_uid738_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage5_uid743_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = rightShiftStage5Idx1_uid741_i_x_lobit_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage5_uid743_i_x_lobit_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_x_lobit_i_zfp_1d_decompress12_vt_select_0(BITSELECT,229)@7
    assign i_x_lobit_i_zfp_1d_decompress12_vt_select_0_b = rightShiftStage5_uid743_i_x_lobit_i_zfp_1d_decompress0_shift_x_q[0:0];

    // i_x_lobit_i_zfp_1d_decompress12_vt_join(BITJOIN,228)@7
    assign i_x_lobit_i_zfp_1d_decompress12_vt_join_q = {i_acl_1_i_zfp_1d_decompress85_vt_const_63_q, i_x_lobit_i_zfp_1d_decompress12_vt_select_0_b};

    // xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITSELECT,679)@6
    assign xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b = $unsigned(i_replace_phi_zfp_1d_decompress11_q[63:63]);

    // seMsb_to32_uid706(BITSELECT,705)@6
    assign seMsb_to32_uid706_in = $unsigned({{31{xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b[0]}}, xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b});
    assign seMsb_to32_uid706_b = $unsigned(seMsb_to32_uid706_in[31:0]);

    // rightShiftStage5Idx1Rng32_uid707_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITSELECT,706)@6
    assign rightShiftStage5Idx1Rng32_uid707_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b = $unsigned(rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q[63:32]);

    // rightShiftStage5Idx1_uid708_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITJOIN,707)@6
    assign rightShiftStage5Idx1_uid708_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = {seMsb_to32_uid706_b, rightShiftStage5Idx1Rng32_uid707_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b};

    // seMsb_to16_uid701(BITSELECT,700)@6
    assign seMsb_to16_uid701_in = $unsigned({{15{xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b[0]}}, xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b});
    assign seMsb_to16_uid701_b = $unsigned(seMsb_to16_uid701_in[15:0]);

    // rightShiftStage4Idx1Rng16_uid702_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITSELECT,701)@6
    assign rightShiftStage4Idx1Rng16_uid702_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b = $unsigned(rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q[63:16]);

    // rightShiftStage4Idx1_uid703_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITJOIN,702)@6
    assign rightShiftStage4Idx1_uid703_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = {seMsb_to16_uid701_b, rightShiftStage4Idx1Rng16_uid702_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b};

    // seMsb_to8_uid696(BITSELECT,695)@6
    assign seMsb_to8_uid696_in = $unsigned({{7{xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b[0]}}, xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b});
    assign seMsb_to8_uid696_b = $unsigned(seMsb_to8_uid696_in[7:0]);

    // rightShiftStage3Idx1Rng8_uid697_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITSELECT,696)@6
    assign rightShiftStage3Idx1Rng8_uid697_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b = $unsigned(rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q[63:8]);

    // rightShiftStage3Idx1_uid698_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITJOIN,697)@6
    assign rightShiftStage3Idx1_uid698_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = {seMsb_to8_uid696_b, rightShiftStage3Idx1Rng8_uid697_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b};

    // seMsb_to4_uid691(BITSELECT,690)@6
    assign seMsb_to4_uid691_in = $unsigned({{3{xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b[0]}}, xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b});
    assign seMsb_to4_uid691_b = $unsigned(seMsb_to4_uid691_in[3:0]);

    // rightShiftStage2Idx1Rng4_uid692_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITSELECT,691)@6
    assign rightShiftStage2Idx1Rng4_uid692_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b = $unsigned(rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q[63:4]);

    // rightShiftStage2Idx1_uid693_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITJOIN,692)@6
    assign rightShiftStage2Idx1_uid693_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = {seMsb_to4_uid691_b, rightShiftStage2Idx1Rng4_uid692_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b};

    // seMsb_to2_uid686(BITSELECT,685)@6
    assign seMsb_to2_uid686_in = $unsigned({{1{xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b[0]}}, xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b});
    assign seMsb_to2_uid686_b = $unsigned(seMsb_to2_uid686_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid687_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITSELECT,686)@6
    assign rightShiftStage1Idx1Rng2_uid687_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b = $unsigned(rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q[63:2]);

    // rightShiftStage1Idx1_uid688_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITJOIN,687)@6
    assign rightShiftStage1Idx1_uid688_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = {seMsb_to2_uid686_b, rightShiftStage1Idx1Rng2_uid687_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid682_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITSELECT,681)@6
    assign rightShiftStage0Idx1Rng1_uid682_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b = $unsigned(i_replace_phi_zfp_1d_decompress11_q[63:1]);

    // rightShiftStage0Idx1_uid683_i_x_lobit43_i_zfp_1d_decompress0_shift_x(BITJOIN,682)@6
    assign rightShiftStage0Idx1_uid683_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = {xMSB_uid680_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b, rightShiftStage0Idx1Rng1_uid682_i_x_lobit43_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x(MUX,684)@6
    assign rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s or i_replace_phi_zfp_1d_decompress11_q or rightShiftStage0Idx1_uid683_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = i_replace_phi_zfp_1d_decompress11_q;
            1'b1 : rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid683_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x(MUX,689)@6
    assign rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s or rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q or rightShiftStage1Idx1_uid688_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0_uid685_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage1Idx1_uid688_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x(MUX,694)@6
    assign rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s or rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q or rightShiftStage2Idx1_uid693_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage1_uid690_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage2Idx1_uid693_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x(MUX,699)@6
    assign rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s or rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q or rightShiftStage3Idx1_uid698_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage2_uid695_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage3Idx1_uid698_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x(MUX,704)@6
    assign rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s or rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q or rightShiftStage4Idx1_uid703_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage3_uid700_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage4Idx1_uid703_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage5_uid710_i_x_lobit43_i_zfp_1d_decompress0_shift_x(MUX,709)@6
    assign rightShiftStage5_uid710_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage5_uid710_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s or rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q or rightShiftStage5Idx1_uid708_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage5_uid710_i_x_lobit43_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage5_uid710_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage4_uid705_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage5_uid710_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = rightShiftStage5Idx1_uid708_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage5_uid710_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_xor_i_i_zfp_1d_decompress14(LOGICAL,230)@6 + 1
    assign i_xor_i_i_zfp_1d_decompress14_qi = rightShiftStage5_uid710_i_x_lobit43_i_zfp_1d_decompress0_shift_x_q ^ i_replace_phi_zfp_1d_decompress11_q;
    dspba_delay_ver #( .width(64), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_xor_i_i_zfp_1d_decompress14_delay ( .xin(i_xor_i_i_zfp_1d_decompress14_qi), .xout(i_xor_i_i_zfp_1d_decompress14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_add_i_i_zfp_1d_decompress15(ADD,62)@7
    assign i_add_i_i_zfp_1d_decompress15_a = {1'b0, i_xor_i_i_zfp_1d_decompress14_q};
    assign i_add_i_i_zfp_1d_decompress15_b = {1'b0, i_x_lobit_i_zfp_1d_decompress12_vt_join_q};
    assign i_add_i_i_zfp_1d_decompress15_o = $unsigned(i_add_i_i_zfp_1d_decompress15_a) + $unsigned(i_add_i_i_zfp_1d_decompress15_b);
    assign i_add_i_i_zfp_1d_decompress15_q = i_add_i_i_zfp_1d_decompress15_o[64:0];

    // bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x(BITSELECT,249)@7
    assign bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b = i_add_i_i_zfp_1d_decompress15_q[63:0];

    // redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1(DELAY,767)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b);
        end
    end

    // i_conv1_i_i_zfp_1d_decompress17_sel_x(BITSELECT,268)@8
    assign i_conv1_i_i_zfp_1d_decompress17_sel_x_b = redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1_q[31:0];

    // rightShiftStage0Idx1Rng1_uid561_i_shr12_i_i_zfp_1d_decompress0_shift_x(BITSELECT,560)@8
    assign rightShiftStage0Idx1Rng1_uid561_i_shr12_i_i_zfp_1d_decompress0_shift_x_b = i_conv1_i_i_zfp_1d_decompress17_sel_x_b[31:1];

    // rightShiftStage0Idx1_uid563_i_shr12_i_i_zfp_1d_decompress0_shift_x(BITJOIN,562)@8
    assign rightShiftStage0Idx1_uid563_i_shr12_i_i_zfp_1d_decompress0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid561_i_shr12_i_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid565_i_shr12_i_i_zfp_1d_decompress0_shift_x(MUX,564)@8
    assign rightShiftStage0_uid565_i_shr12_i_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid565_i_shr12_i_i_zfp_1d_decompress0_shift_x_s or i_conv1_i_i_zfp_1d_decompress17_sel_x_b or rightShiftStage0Idx1_uid563_i_shr12_i_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid565_i_shr12_i_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid565_i_shr12_i_i_zfp_1d_decompress0_shift_x_q = i_conv1_i_i_zfp_1d_decompress17_sel_x_b;
            1'b1 : rightShiftStage0_uid565_i_shr12_i_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid563_i_shr12_i_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid565_i_shr12_i_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr12_i_i_zfp_1d_decompress31_vt_select_30(BITSELECT,171)@8
    assign i_shr12_i_i_zfp_1d_decompress31_vt_select_30_b = rightShiftStage0_uid565_i_shr12_i_i_zfp_1d_decompress0_shift_x_q[30:0];

    // i_shr12_i_i_zfp_1d_decompress31_vt_join(BITJOIN,170)@8
    assign i_shr12_i_i_zfp_1d_decompress31_vt_join_q = {GND_q, i_shr12_i_i_zfp_1d_decompress31_vt_select_30_b};

    // i_or13_i_i_zfp_1d_decompress32(LOGICAL,130)@8
    assign i_or13_i_i_zfp_1d_decompress32_q = i_shr12_i_i_zfp_1d_decompress31_vt_join_q | i_conv1_i_i_zfp_1d_decompress17_sel_x_b;

    // rightShiftStage0Idx1Rng2_uid569_i_shr14_i_i_zfp_1d_decompress0_shift_x(BITSELECT,568)@8
    assign rightShiftStage0Idx1Rng2_uid569_i_shr14_i_i_zfp_1d_decompress0_shift_x_b = i_or13_i_i_zfp_1d_decompress32_q[31:2];

    // rightShiftStage0Idx1_uid571_i_shr14_i_i_zfp_1d_decompress0_shift_x(BITJOIN,570)@8
    assign rightShiftStage0Idx1_uid571_i_shr14_i_i_zfp_1d_decompress0_shift_x_q = {i_and28_i_zfp_1d_decompress67_vt_const_1_q, rightShiftStage0Idx1Rng2_uid569_i_shr14_i_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid573_i_shr14_i_i_zfp_1d_decompress0_shift_x(MUX,572)@8
    assign rightShiftStage0_uid573_i_shr14_i_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid573_i_shr14_i_i_zfp_1d_decompress0_shift_x_s or i_or13_i_i_zfp_1d_decompress32_q or rightShiftStage0Idx1_uid571_i_shr14_i_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid573_i_shr14_i_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid573_i_shr14_i_i_zfp_1d_decompress0_shift_x_q = i_or13_i_i_zfp_1d_decompress32_q;
            1'b1 : rightShiftStage0_uid573_i_shr14_i_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid571_i_shr14_i_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid573_i_shr14_i_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr14_i_i_zfp_1d_decompress33_vt_select_29(BITSELECT,174)@8
    assign i_shr14_i_i_zfp_1d_decompress33_vt_select_29_b = rightShiftStage0_uid573_i_shr14_i_i_zfp_1d_decompress0_shift_x_q[29:0];

    // i_shr14_i_i_zfp_1d_decompress33_vt_join(BITJOIN,173)@8
    assign i_shr14_i_i_zfp_1d_decompress33_vt_join_q = {i_and28_i_zfp_1d_decompress67_vt_const_1_q, i_shr14_i_i_zfp_1d_decompress33_vt_select_29_b};

    // i_or15_i_i_zfp_1d_decompress34(LOGICAL,131)@8 + 1
    assign i_or15_i_i_zfp_1d_decompress34_qi = i_shr14_i_i_zfp_1d_decompress33_vt_join_q | i_or13_i_i_zfp_1d_decompress32_q;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or15_i_i_zfp_1d_decompress34_delay ( .xin(i_or15_i_i_zfp_1d_decompress34_qi), .xout(i_or15_i_i_zfp_1d_decompress34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rightShiftStage0Idx1Rng4_uid577_i_shr16_i_i_zfp_1d_decompress0_shift_x(BITSELECT,576)@9
    assign rightShiftStage0Idx1Rng4_uid577_i_shr16_i_i_zfp_1d_decompress0_shift_x_b = i_or15_i_i_zfp_1d_decompress34_q[31:4];

    // rightShiftStage0Idx1_uid579_i_shr16_i_i_zfp_1d_decompress0_shift_x(BITJOIN,578)@9
    assign rightShiftStage0Idx1_uid579_i_shr16_i_i_zfp_1d_decompress0_shift_x_q = {i_and7_i_zfp_1d_decompress49_vt_const_3_q, rightShiftStage0Idx1Rng4_uid577_i_shr16_i_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid581_i_shr16_i_i_zfp_1d_decompress0_shift_x(MUX,580)@9
    assign rightShiftStage0_uid581_i_shr16_i_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid581_i_shr16_i_i_zfp_1d_decompress0_shift_x_s or i_or15_i_i_zfp_1d_decompress34_q or rightShiftStage0Idx1_uid579_i_shr16_i_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid581_i_shr16_i_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid581_i_shr16_i_i_zfp_1d_decompress0_shift_x_q = i_or15_i_i_zfp_1d_decompress34_q;
            1'b1 : rightShiftStage0_uid581_i_shr16_i_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid579_i_shr16_i_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid581_i_shr16_i_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr16_i_i_zfp_1d_decompress35_vt_select_27(BITSELECT,177)@9
    assign i_shr16_i_i_zfp_1d_decompress35_vt_select_27_b = rightShiftStage0_uid581_i_shr16_i_i_zfp_1d_decompress0_shift_x_q[27:0];

    // i_shr16_i_i_zfp_1d_decompress35_vt_join(BITJOIN,176)@9
    assign i_shr16_i_i_zfp_1d_decompress35_vt_join_q = {i_and7_i_zfp_1d_decompress49_vt_const_3_q, i_shr16_i_i_zfp_1d_decompress35_vt_select_27_b};

    // i_or17_i_i_zfp_1d_decompress36(LOGICAL,132)@9
    assign i_or17_i_i_zfp_1d_decompress36_q = i_shr16_i_i_zfp_1d_decompress35_vt_join_q | i_or15_i_i_zfp_1d_decompress34_q;

    // rightShiftStage0Idx1Rng8_uid585_i_shr18_i_i_zfp_1d_decompress0_shift_x(BITSELECT,584)@9
    assign rightShiftStage0Idx1Rng8_uid585_i_shr18_i_i_zfp_1d_decompress0_shift_x_b = i_or17_i_i_zfp_1d_decompress36_q[31:8];

    // rightShiftStage0Idx1_uid587_i_shr18_i_i_zfp_1d_decompress0_shift_x(BITJOIN,586)@9
    assign rightShiftStage0Idx1_uid587_i_shr18_i_i_zfp_1d_decompress0_shift_x_q = {i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q, rightShiftStage0Idx1Rng8_uid585_i_shr18_i_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid589_i_shr18_i_i_zfp_1d_decompress0_shift_x(MUX,588)@9
    assign rightShiftStage0_uid589_i_shr18_i_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid589_i_shr18_i_i_zfp_1d_decompress0_shift_x_s or i_or17_i_i_zfp_1d_decompress36_q or rightShiftStage0Idx1_uid587_i_shr18_i_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid589_i_shr18_i_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid589_i_shr18_i_i_zfp_1d_decompress0_shift_x_q = i_or17_i_i_zfp_1d_decompress36_q;
            1'b1 : rightShiftStage0_uid589_i_shr18_i_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid587_i_shr18_i_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid589_i_shr18_i_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr18_i_i_zfp_1d_decompress37_vt_select_23(BITSELECT,180)@9
    assign i_shr18_i_i_zfp_1d_decompress37_vt_select_23_b = rightShiftStage0_uid589_i_shr18_i_i_zfp_1d_decompress0_shift_x_q[23:0];

    // i_shr18_i_i_zfp_1d_decompress37_vt_join(BITJOIN,179)@9
    assign i_shr18_i_i_zfp_1d_decompress37_vt_join_q = {i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q, i_shr18_i_i_zfp_1d_decompress37_vt_select_23_b};

    // i_or19_i_i_zfp_1d_decompress38(LOGICAL,133)@9
    assign i_or19_i_i_zfp_1d_decompress38_q = i_shr18_i_i_zfp_1d_decompress37_vt_join_q | i_or17_i_i_zfp_1d_decompress36_q;

    // rightShiftStage0Idx1Rng16_uid593_i_shr20_i_i_zfp_1d_decompress0_shift_x(BITSELECT,592)@9
    assign rightShiftStage0Idx1Rng16_uid593_i_shr20_i_i_zfp_1d_decompress0_shift_x_b = i_or19_i_i_zfp_1d_decompress38_q[31:16];

    // rightShiftStage0Idx1_uid595_i_shr20_i_i_zfp_1d_decompress0_shift_x(BITJOIN,594)@9
    assign rightShiftStage0Idx1_uid595_i_shr20_i_i_zfp_1d_decompress0_shift_x_q = {i_shr20_i_i_zfp_1d_decompress39_vt_const_31_q, rightShiftStage0Idx1Rng16_uid593_i_shr20_i_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid597_i_shr20_i_i_zfp_1d_decompress0_shift_x(MUX,596)@9
    assign rightShiftStage0_uid597_i_shr20_i_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid597_i_shr20_i_i_zfp_1d_decompress0_shift_x_s or i_or19_i_i_zfp_1d_decompress38_q or rightShiftStage0Idx1_uid595_i_shr20_i_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid597_i_shr20_i_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid597_i_shr20_i_i_zfp_1d_decompress0_shift_x_q = i_or19_i_i_zfp_1d_decompress38_q;
            1'b1 : rightShiftStage0_uid597_i_shr20_i_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid595_i_shr20_i_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid597_i_shr20_i_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr20_i_i_zfp_1d_decompress39_vt_select_15(BITSELECT,183)@9
    assign i_shr20_i_i_zfp_1d_decompress39_vt_select_15_b = rightShiftStage0_uid597_i_shr20_i_i_zfp_1d_decompress0_shift_x_q[15:0];

    // i_shr20_i_i_zfp_1d_decompress39_vt_join(BITJOIN,182)@9
    assign i_shr20_i_i_zfp_1d_decompress39_vt_join_q = {i_shr20_i_i_zfp_1d_decompress39_vt_const_31_q, i_shr20_i_i_zfp_1d_decompress39_vt_select_15_b};

    // i_or21_i_i_zfp_1d_decompress40(LOGICAL,134)@9
    assign i_or21_i_i_zfp_1d_decompress40_q = i_shr20_i_i_zfp_1d_decompress39_vt_join_q | i_or19_i_i_zfp_1d_decompress38_q;

    // i_neg22_i_i_zfp_1d_decompress41(LOGICAL,125)@9
    assign i_neg22_i_i_zfp_1d_decompress41_q = i_or21_i_i_zfp_1d_decompress40_q ^ c_i32_1141_q;

    // i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42(EXTIFACE,112)@9
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_data = i_neg22_i_i_zfp_1d_decompress41_q;
    acl_popcount #(
        .DATA_WIDTH(32),
        .PIPELINE_DEPTH(0)
    ) thei_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42 (
        .data(i_neg22_i_i_zfp_1d_decompress41_q),
        .sum(i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_sum),
        .clock(clock)
    );

    // i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_select_5(BITSELECT,115)@9
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_select_5_b = i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_sum[5:0];

    // redist32_i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_select_5_b_1(DELAY,779)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_select_5_b_1_q <= $unsigned(i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_select_5_b);
        end
    end

    // i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_join(BITJOIN,114)@10
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_join_q = {i_and7_i_zfp_1d_decompress49_vt_const_31_q, redist32_i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_select_5_b_1_q};

    // i_add_i42_i_zfp_1d_decompress45(ADD,57)@10
    assign i_add_i42_i_zfp_1d_decompress45_a = {1'b0, i_llvm_ctpop_i32_unnamed_zfp_1d_decompress21_zfp_1d_decompress42_vt_join_q};
    assign i_add_i42_i_zfp_1d_decompress45_b = {1'b0, c_i32_32144_q};
    assign i_add_i42_i_zfp_1d_decompress45_o = $unsigned(i_add_i42_i_zfp_1d_decompress45_a) + $unsigned(i_add_i42_i_zfp_1d_decompress45_b);
    assign i_add_i42_i_zfp_1d_decompress45_q = i_add_i42_i_zfp_1d_decompress45_o[32:0];

    // bgTrunc_i_add_i42_i_zfp_1d_decompress45_sel_x(BITSELECT,247)@10
    assign bgTrunc_i_add_i42_i_zfp_1d_decompress45_sel_x_b = i_add_i42_i_zfp_1d_decompress45_q[31:0];

    // i_add_i42_i_zfp_1d_decompress45_vt_select_6(BITSELECT,60)@10
    assign i_add_i42_i_zfp_1d_decompress45_vt_select_6_b = bgTrunc_i_add_i42_i_zfp_1d_decompress45_sel_x_b[6:0];

    // i_add_i42_i_zfp_1d_decompress45_vt_join(BITJOIN,59)@10
    assign i_add_i42_i_zfp_1d_decompress45_vt_join_q = {i_add_i42_i_zfp_1d_decompress45_vt_const_31_q, i_add_i42_i_zfp_1d_decompress45_vt_select_6_b};

    // i_shr2_i44_i_zfp_1d_decompress18_vt_const_63(CONSTANT,184)
    assign i_shr2_i44_i_zfp_1d_decompress18_vt_const_63_q = $unsigned(33'b000000000000000000000000000000000);

    // rightShiftStage1Idx1Rng32_uid606_i_shr2_i44_i_zfp_1d_decompress0_shift_x(BITSELECT,605)@8
    assign rightShiftStage1Idx1Rng32_uid606_i_shr2_i44_i_zfp_1d_decompress0_shift_x_b = rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid608_i_shr2_i44_i_zfp_1d_decompress0_shift_x(BITJOIN,607)@8
    assign rightShiftStage1Idx1_uid608_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q = {c_i32_0143_q, rightShiftStage1Idx1Rng32_uid606_i_shr2_i44_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid601_i_shr2_i44_i_zfp_1d_decompress0_shift_x(BITSELECT,600)@8
    assign rightShiftStage0Idx1Rng1_uid601_i_shr2_i44_i_zfp_1d_decompress0_shift_x_b = redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1_q[63:1];

    // rightShiftStage0Idx1_uid603_i_shr2_i44_i_zfp_1d_decompress0_shift_x(BITJOIN,602)@8
    assign rightShiftStage0Idx1_uid603_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid601_i_shr2_i44_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x(MUX,604)@8
    assign rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_s or redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1_q or rightShiftStage0Idx1_uid603_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q = redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1_q;
            1'b1 : rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid603_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid610_i_shr2_i44_i_zfp_1d_decompress0_shift_x(MUX,609)@8
    assign rightShiftStage1_uid610_i_shr2_i44_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid610_i_shr2_i44_i_zfp_1d_decompress0_shift_x_s or rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q or rightShiftStage1Idx1_uid608_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid610_i_shr2_i44_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage1_uid610_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0_uid605_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : rightShiftStage1_uid610_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q = rightShiftStage1Idx1_uid608_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage1_uid610_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_shr2_i44_i_zfp_1d_decompress18_vt_select_30(BITSELECT,186)@8
    assign i_shr2_i44_i_zfp_1d_decompress18_vt_select_30_b = rightShiftStage1_uid610_i_shr2_i44_i_zfp_1d_decompress0_shift_x_q[30:0];

    // i_shr2_i44_i_zfp_1d_decompress18_vt_join(BITJOIN,185)@8
    assign i_shr2_i44_i_zfp_1d_decompress18_vt_join_q = {i_shr2_i44_i_zfp_1d_decompress18_vt_const_63_q, i_shr2_i44_i_zfp_1d_decompress18_vt_select_30_b};

    // rightShiftStage0Idx1Rng32_uid674_i_shr_i_i_zfp_1d_decompress0_shift_x(BITSELECT,673)@8
    assign rightShiftStage0Idx1Rng32_uid674_i_shr_i_i_zfp_1d_decompress0_shift_x_b = redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1_q[63:32];

    // rightShiftStage0Idx1_uid676_i_shr_i_i_zfp_1d_decompress0_shift_x(BITJOIN,675)@8
    assign rightShiftStage0Idx1_uid676_i_shr_i_i_zfp_1d_decompress0_shift_x_q = {c_i32_0143_q, rightShiftStage0Idx1Rng32_uid674_i_shr_i_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid678_i_shr_i_i_zfp_1d_decompress0_shift_x(MUX,677)@8
    assign rightShiftStage0_uid678_i_shr_i_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid678_i_shr_i_i_zfp_1d_decompress0_shift_x_s or redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1_q or rightShiftStage0Idx1_uid676_i_shr_i_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid678_i_shr_i_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid678_i_shr_i_i_zfp_1d_decompress0_shift_x_q = redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1_q;
            1'b1 : rightShiftStage0_uid678_i_shr_i_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid676_i_shr_i_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid678_i_shr_i_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_shr_i_i_zfp_1d_decompress16_vt_select_31(BITSELECT,201)@8
    assign i_shr_i_i_zfp_1d_decompress16_vt_select_31_b = rightShiftStage0_uid678_i_shr_i_i_zfp_1d_decompress0_shift_x_q[31:0];

    // i_shr_i_i_zfp_1d_decompress16_vt_join(BITJOIN,200)@8
    assign i_shr_i_i_zfp_1d_decompress16_vt_join_q = {c_i32_0143_q, i_shr_i_i_zfp_1d_decompress16_vt_select_31_b};

    // i_or_i46_i_zfp_1d_decompress19(LOGICAL,140)@8
    assign i_or_i46_i_zfp_1d_decompress19_q = i_shr_i_i_zfp_1d_decompress16_vt_join_q | i_shr2_i44_i_zfp_1d_decompress18_vt_join_q;

    // i_or_i46_i_zfp_1d_decompress19_vt_select_31(BITSELECT,143)@8
    assign i_or_i46_i_zfp_1d_decompress19_vt_select_31_b = i_or_i46_i_zfp_1d_decompress19_q[31:0];

    // i_or_i46_i_zfp_1d_decompress19_vt_join(BITJOIN,142)@8
    assign i_or_i46_i_zfp_1d_decompress19_vt_join_q = {c_i32_0143_q, i_or_i46_i_zfp_1d_decompress19_vt_select_31_b};

    // i_or_i_i_zfp_1d_decompress20_sel_x(BITSELECT,299)@8
    assign i_or_i_i_zfp_1d_decompress20_sel_x_b = i_or_i46_i_zfp_1d_decompress19_vt_join_q[31:0];

    // rightShiftStage0Idx1Rng2_uid628_i_shr3_i_i_zfp_1d_decompress0_shift_x(BITSELECT,627)@8
    assign rightShiftStage0Idx1Rng2_uid628_i_shr3_i_i_zfp_1d_decompress0_shift_x_b = i_or_i_i_zfp_1d_decompress20_sel_x_b[31:2];

    // rightShiftStage0Idx1_uid630_i_shr3_i_i_zfp_1d_decompress0_shift_x(BITJOIN,629)@8
    assign rightShiftStage0Idx1_uid630_i_shr3_i_i_zfp_1d_decompress0_shift_x_q = {i_and28_i_zfp_1d_decompress67_vt_const_1_q, rightShiftStage0Idx1Rng2_uid628_i_shr3_i_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid632_i_shr3_i_i_zfp_1d_decompress0_shift_x(MUX,631)@8
    assign rightShiftStage0_uid632_i_shr3_i_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid632_i_shr3_i_i_zfp_1d_decompress0_shift_x_s or i_or_i_i_zfp_1d_decompress20_sel_x_b or rightShiftStage0Idx1_uid630_i_shr3_i_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid632_i_shr3_i_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid632_i_shr3_i_i_zfp_1d_decompress0_shift_x_q = i_or_i_i_zfp_1d_decompress20_sel_x_b;
            1'b1 : rightShiftStage0_uid632_i_shr3_i_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid630_i_shr3_i_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid632_i_shr3_i_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr3_i_i_zfp_1d_decompress21_vt_select_29(BITSELECT,189)@8
    assign i_shr3_i_i_zfp_1d_decompress21_vt_select_29_b = rightShiftStage0_uid632_i_shr3_i_i_zfp_1d_decompress0_shift_x_q[29:0];

    // i_shr3_i_i_zfp_1d_decompress21_vt_join(BITJOIN,188)@8
    assign i_shr3_i_i_zfp_1d_decompress21_vt_join_q = {i_and28_i_zfp_1d_decompress67_vt_const_1_q, i_shr3_i_i_zfp_1d_decompress21_vt_select_29_b};

    // i_or4_i_i_zfp_1d_decompress22(LOGICAL,135)@8 + 1
    assign i_or4_i_i_zfp_1d_decompress22_qi = i_shr3_i_i_zfp_1d_decompress21_vt_join_q | i_or_i_i_zfp_1d_decompress20_sel_x_b;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or4_i_i_zfp_1d_decompress22_delay ( .xin(i_or4_i_i_zfp_1d_decompress22_qi), .xout(i_or4_i_i_zfp_1d_decompress22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rightShiftStage0Idx1Rng4_uid636_i_shr5_i_i_zfp_1d_decompress0_shift_x(BITSELECT,635)@9
    assign rightShiftStage0Idx1Rng4_uid636_i_shr5_i_i_zfp_1d_decompress0_shift_x_b = i_or4_i_i_zfp_1d_decompress22_q[31:4];

    // rightShiftStage0Idx1_uid638_i_shr5_i_i_zfp_1d_decompress0_shift_x(BITJOIN,637)@9
    assign rightShiftStage0Idx1_uid638_i_shr5_i_i_zfp_1d_decompress0_shift_x_q = {i_and7_i_zfp_1d_decompress49_vt_const_3_q, rightShiftStage0Idx1Rng4_uid636_i_shr5_i_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid640_i_shr5_i_i_zfp_1d_decompress0_shift_x(MUX,639)@9
    assign rightShiftStage0_uid640_i_shr5_i_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid640_i_shr5_i_i_zfp_1d_decompress0_shift_x_s or i_or4_i_i_zfp_1d_decompress22_q or rightShiftStage0Idx1_uid638_i_shr5_i_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid640_i_shr5_i_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid640_i_shr5_i_i_zfp_1d_decompress0_shift_x_q = i_or4_i_i_zfp_1d_decompress22_q;
            1'b1 : rightShiftStage0_uid640_i_shr5_i_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid638_i_shr5_i_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid640_i_shr5_i_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr5_i_i_zfp_1d_decompress23_vt_select_27(BITSELECT,192)@9
    assign i_shr5_i_i_zfp_1d_decompress23_vt_select_27_b = rightShiftStage0_uid640_i_shr5_i_i_zfp_1d_decompress0_shift_x_q[27:0];

    // i_shr5_i_i_zfp_1d_decompress23_vt_join(BITJOIN,191)@9
    assign i_shr5_i_i_zfp_1d_decompress23_vt_join_q = {i_and7_i_zfp_1d_decompress49_vt_const_3_q, i_shr5_i_i_zfp_1d_decompress23_vt_select_27_b};

    // i_or6_i_i_zfp_1d_decompress24(LOGICAL,136)@9
    assign i_or6_i_i_zfp_1d_decompress24_q = i_shr5_i_i_zfp_1d_decompress23_vt_join_q | i_or4_i_i_zfp_1d_decompress22_q;

    // rightShiftStage0Idx1Rng8_uid644_i_shr7_i_i_zfp_1d_decompress0_shift_x(BITSELECT,643)@9
    assign rightShiftStage0Idx1Rng8_uid644_i_shr7_i_i_zfp_1d_decompress0_shift_x_b = i_or6_i_i_zfp_1d_decompress24_q[31:8];

    // rightShiftStage0Idx1_uid646_i_shr7_i_i_zfp_1d_decompress0_shift_x(BITJOIN,645)@9
    assign rightShiftStage0Idx1_uid646_i_shr7_i_i_zfp_1d_decompress0_shift_x_q = {i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q, rightShiftStage0Idx1Rng8_uid644_i_shr7_i_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid648_i_shr7_i_i_zfp_1d_decompress0_shift_x(MUX,647)@9
    assign rightShiftStage0_uid648_i_shr7_i_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid648_i_shr7_i_i_zfp_1d_decompress0_shift_x_s or i_or6_i_i_zfp_1d_decompress24_q or rightShiftStage0Idx1_uid646_i_shr7_i_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid648_i_shr7_i_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid648_i_shr7_i_i_zfp_1d_decompress0_shift_x_q = i_or6_i_i_zfp_1d_decompress24_q;
            1'b1 : rightShiftStage0_uid648_i_shr7_i_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid646_i_shr7_i_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid648_i_shr7_i_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr7_i_i_zfp_1d_decompress25_vt_select_23(BITSELECT,195)@9
    assign i_shr7_i_i_zfp_1d_decompress25_vt_select_23_b = rightShiftStage0_uid648_i_shr7_i_i_zfp_1d_decompress0_shift_x_q[23:0];

    // i_shr7_i_i_zfp_1d_decompress25_vt_join(BITJOIN,194)@9
    assign i_shr7_i_i_zfp_1d_decompress25_vt_join_q = {i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q, i_shr7_i_i_zfp_1d_decompress25_vt_select_23_b};

    // i_or8_i_i_zfp_1d_decompress26(LOGICAL,137)@9
    assign i_or8_i_i_zfp_1d_decompress26_q = i_shr7_i_i_zfp_1d_decompress25_vt_join_q | i_or6_i_i_zfp_1d_decompress24_q;

    // rightShiftStage0Idx1Rng16_uid652_i_shr9_i_i_zfp_1d_decompress0_shift_x(BITSELECT,651)@9
    assign rightShiftStage0Idx1Rng16_uid652_i_shr9_i_i_zfp_1d_decompress0_shift_x_b = i_or8_i_i_zfp_1d_decompress26_q[31:16];

    // rightShiftStage0Idx1_uid654_i_shr9_i_i_zfp_1d_decompress0_shift_x(BITJOIN,653)@9
    assign rightShiftStage0Idx1_uid654_i_shr9_i_i_zfp_1d_decompress0_shift_x_q = {i_shr20_i_i_zfp_1d_decompress39_vt_const_31_q, rightShiftStage0Idx1Rng16_uid652_i_shr9_i_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid656_i_shr9_i_i_zfp_1d_decompress0_shift_x(MUX,655)@9
    assign rightShiftStage0_uid656_i_shr9_i_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid656_i_shr9_i_i_zfp_1d_decompress0_shift_x_s or i_or8_i_i_zfp_1d_decompress26_q or rightShiftStage0Idx1_uid654_i_shr9_i_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid656_i_shr9_i_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid656_i_shr9_i_i_zfp_1d_decompress0_shift_x_q = i_or8_i_i_zfp_1d_decompress26_q;
            1'b1 : rightShiftStage0_uid656_i_shr9_i_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid654_i_shr9_i_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid656_i_shr9_i_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr9_i_i_zfp_1d_decompress27_vt_select_15(BITSELECT,198)@9
    assign i_shr9_i_i_zfp_1d_decompress27_vt_select_15_b = rightShiftStage0_uid656_i_shr9_i_i_zfp_1d_decompress0_shift_x_q[15:0];

    // i_shr9_i_i_zfp_1d_decompress27_vt_join(BITJOIN,197)@9
    assign i_shr9_i_i_zfp_1d_decompress27_vt_join_q = {i_shr20_i_i_zfp_1d_decompress39_vt_const_31_q, i_shr9_i_i_zfp_1d_decompress27_vt_select_15_b};

    // i_or10_i_i_zfp_1d_decompress28(LOGICAL,129)@9 + 1
    assign i_or10_i_i_zfp_1d_decompress28_qi = i_shr9_i_i_zfp_1d_decompress27_vt_join_q | i_or8_i_i_zfp_1d_decompress26_q;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or10_i_i_zfp_1d_decompress28_delay ( .xin(i_or10_i_i_zfp_1d_decompress28_qi), .xout(i_or10_i_i_zfp_1d_decompress28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_neg_i_i_zfp_1d_decompress29(LOGICAL,126)@10
    assign i_neg_i_i_zfp_1d_decompress29_q = i_or10_i_i_zfp_1d_decompress28_q ^ c_i32_1141_q;

    // i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30(EXTIFACE,108)@10
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_data = i_neg_i_i_zfp_1d_decompress29_q;
    acl_popcount #(
        .DATA_WIDTH(32),
        .PIPELINE_DEPTH(0)
    ) thei_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30 (
        .data(i_neg_i_i_zfp_1d_decompress29_q),
        .sum(i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_sum),
        .clock(clock)
    );

    // i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_vt_select_5(BITSELECT,111)@10
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_vt_select_5_b = i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_sum[5:0];

    // i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_vt_join(BITJOIN,110)@10
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_vt_join_q = {i_and7_i_zfp_1d_decompress49_vt_const_31_q, i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_vt_select_5_b};

    // i_cmp_i_i1_zfp_1d_decompress43(LOGICAL,92)@10
    assign i_cmp_i_i1_zfp_1d_decompress43_q = $unsigned(i_or10_i_i_zfp_1d_decompress28_q == c_i32_0143_q ? 1'b1 : 1'b0);

    // i_unnamed_zfp_1d_decompress46(MUX,216)@10
    assign i_unnamed_zfp_1d_decompress46_s = i_cmp_i_i1_zfp_1d_decompress43_q;
    always @(i_unnamed_zfp_1d_decompress46_s or i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_vt_join_q or i_add_i42_i_zfp_1d_decompress45_vt_join_q)
    begin
        unique case (i_unnamed_zfp_1d_decompress46_s)
            1'b0 : i_unnamed_zfp_1d_decompress46_q = i_llvm_ctpop_i32_unnamed_zfp_1d_decompress20_zfp_1d_decompress30_vt_join_q;
            1'b1 : i_unnamed_zfp_1d_decompress46_q = i_add_i42_i_zfp_1d_decompress45_vt_join_q;
            default : i_unnamed_zfp_1d_decompress46_q = 32'b0;
        endcase
    end

    // i_unnamed_zfp_1d_decompress46_vt_select_6(BITSELECT,219)@10
    assign i_unnamed_zfp_1d_decompress46_vt_select_6_b = i_unnamed_zfp_1d_decompress46_q[6:0];

    // redist24_i_unnamed_zfp_1d_decompress46_vt_select_6_b_1(DELAY,771)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_unnamed_zfp_1d_decompress46_vt_select_6_b_1_q <= $unsigned(i_unnamed_zfp_1d_decompress46_vt_select_6_b);
        end
    end

    // i_unnamed_zfp_1d_decompress46_vt_join(BITJOIN,218)@11
    assign i_unnamed_zfp_1d_decompress46_vt_join_q = {i_add_i42_i_zfp_1d_decompress45_vt_const_31_q, redist24_i_unnamed_zfp_1d_decompress46_vt_select_6_b_1_q};

    // c_i32_10145(CONSTANT,32)
    assign c_i32_10145_q = $unsigned(32'b00000000000000000000000000001010);

    // i_cmp4_i_zfp_1d_decompress47(COMPARE,91)@11 + 1
    assign i_cmp4_i_zfp_1d_decompress47_a = {2'b00, c_i32_10145_q};
    assign i_cmp4_i_zfp_1d_decompress47_b = {2'b00, i_unnamed_zfp_1d_decompress46_vt_join_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp4_i_zfp_1d_decompress47_o <= $unsigned(i_cmp4_i_zfp_1d_decompress47_a) - $unsigned(i_cmp4_i_zfp_1d_decompress47_b);
        end
    end
    assign i_cmp4_i_zfp_1d_decompress47_c[0] = i_cmp4_i_zfp_1d_decompress47_o[33];

    // i_not_cmp4_i_zfp_1d_decompress83(LOGICAL,127)@12 + 1
    assign i_not_cmp4_i_zfp_1d_decompress83_qi = i_cmp4_i_zfp_1d_decompress47_c ^ VCC_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_not_cmp4_i_zfp_1d_decompress83_delay ( .xin(i_not_cmp4_i_zfp_1d_decompress83_qi), .xout(i_not_cmp4_i_zfp_1d_decompress83_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_i_not_cmp4_i_zfp_1d_decompress83_q_2(DELAY,774)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_not_cmp4_i_zfp_1d_decompress83_q_2_q <= $unsigned(i_not_cmp4_i_zfp_1d_decompress83_q);
        end
    end

    // c_i64_1152(CONSTANT,47)
    assign c_i64_1152_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // leftShiftStage0Idx3Pad3_uid465_i_notmask_i_zfp_1d_decompress0_shift_x(CONSTANT,464)
    assign leftShiftStage0Idx3Pad3_uid465_i_notmask_i_zfp_1d_decompress0_shift_x_q = $unsigned(3'b000);

    // rightShiftStage0Idx3Rng3_uid620_i_shr32_i_zfp_1d_decompress0_shift_x(BITSELECT,619)@12
    assign rightShiftStage0Idx3Rng3_uid620_i_shr32_i_zfp_1d_decompress0_shift_x_b = rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q[63:3];

    // rightShiftStage0Idx3_uid622_i_shr32_i_zfp_1d_decompress0_shift_x(BITJOIN,621)@12
    assign rightShiftStage0Idx3_uid622_i_shr32_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx3Pad3_uid465_i_notmask_i_zfp_1d_decompress0_shift_x_q, rightShiftStage0Idx3Rng3_uid620_i_shr32_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0Idx2Rng2_uid617_i_shr32_i_zfp_1d_decompress0_shift_x(BITSELECT,616)@12
    assign rightShiftStage0Idx2Rng2_uid617_i_shr32_i_zfp_1d_decompress0_shift_x_b = rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q[63:2];

    // rightShiftStage0Idx2_uid619_i_shr32_i_zfp_1d_decompress0_shift_x(BITJOIN,618)@12
    assign rightShiftStage0Idx2_uid619_i_shr32_i_zfp_1d_decompress0_shift_x_q = {i_and28_i_zfp_1d_decompress67_vt_const_1_q, rightShiftStage0Idx2Rng2_uid617_i_shr32_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid614_i_shr32_i_zfp_1d_decompress0_shift_x(BITSELECT,613)@12
    assign rightShiftStage0Idx1Rng1_uid614_i_shr32_i_zfp_1d_decompress0_shift_x_b = rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q[63:1];

    // rightShiftStage0Idx1_uid616_i_shr32_i_zfp_1d_decompress0_shift_x(BITJOIN,615)@12
    assign rightShiftStage0Idx1_uid616_i_shr32_i_zfp_1d_decompress0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid614_i_shr32_i_zfp_1d_decompress0_shift_x_b};

    // leftShiftStage1Idx3Pad12_uid476_i_notmask_i_zfp_1d_decompress0_shift_x(CONSTANT,475)
    assign leftShiftStage1Idx3Pad12_uid476_i_notmask_i_zfp_1d_decompress0_shift_x_q = $unsigned(12'b000000000000);

    // rightShiftStage0Idx3Rng12_uid666_i_shr_i3_zfp_1d_decompress0_shift_x(BITSELECT,665)@12
    assign rightShiftStage0Idx3Rng12_uid666_i_shr_i3_zfp_1d_decompress0_shift_x_b = redist22_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_5_q[63:12];

    // rightShiftStage0Idx3_uid668_i_shr_i3_zfp_1d_decompress0_shift_x(BITJOIN,667)@12
    assign rightShiftStage0Idx3_uid668_i_shr_i3_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx3Pad12_uid476_i_notmask_i_zfp_1d_decompress0_shift_x_q, rightShiftStage0Idx3Rng12_uid666_i_shr_i3_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0Idx2Rng8_uid663_i_shr_i3_zfp_1d_decompress0_shift_x(BITSELECT,662)@12
    assign rightShiftStage0Idx2Rng8_uid663_i_shr_i3_zfp_1d_decompress0_shift_x_b = redist22_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_5_q[63:8];

    // rightShiftStage0Idx2_uid665_i_shr_i3_zfp_1d_decompress0_shift_x(BITJOIN,664)@12
    assign rightShiftStage0Idx2_uid665_i_shr_i3_zfp_1d_decompress0_shift_x_q = {i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q, rightShiftStage0Idx2Rng8_uid663_i_shr_i3_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0Idx1Rng4_uid660_i_shr_i3_zfp_1d_decompress0_shift_x(BITSELECT,659)@12
    assign rightShiftStage0Idx1Rng4_uid660_i_shr_i3_zfp_1d_decompress0_shift_x_b = redist22_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_5_q[63:4];

    // rightShiftStage0Idx1_uid662_i_shr_i3_zfp_1d_decompress0_shift_x(BITJOIN,661)@12
    assign rightShiftStage0Idx1_uid662_i_shr_i3_zfp_1d_decompress0_shift_x_q = {i_and7_i_zfp_1d_decompress49_vt_const_3_q, rightShiftStage0Idx1Rng4_uid660_i_shr_i3_zfp_1d_decompress0_shift_x_b};

    // redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4(DELAY,768)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_delay_0 <= $unsigned(redist20_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_1_q);
            redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_delay_1 <= redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_delay_0;
            redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_q <= redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_delay_1;
        end
    end

    // redist22_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_5(DELAY,769)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_5_q <= $unsigned(redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_q);
        end
    end

    // i_sh_prom29_i_zfp_1d_decompress68_vt_const_63(CONSTANT,152)
    assign i_sh_prom29_i_zfp_1d_decompress68_vt_const_63_q = $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);

    // i_and28_i_zfp_1d_decompress67_vt_const_31(CONSTANT,70)
    assign i_and28_i_zfp_1d_decompress67_vt_const_31_q = $unsigned(28'b0000000000000000000000000000);

    // c_i32_12148(CONSTANT,37)
    assign c_i32_12148_q = $unsigned(32'b00000000000000000000000000001100);

    // c_i32_11149(CONSTANT,34)
    assign c_i32_11149_q = $unsigned(32'b00000000000000000000000000001011);

    // i_sub14_i_zfp_1d_decompress58(SUB,202)@11
    assign i_sub14_i_zfp_1d_decompress58_a = {1'b0, c_i32_11149_q};
    assign i_sub14_i_zfp_1d_decompress58_b = {1'b0, i_unnamed_zfp_1d_decompress46_vt_join_q};
    assign i_sub14_i_zfp_1d_decompress58_o = $unsigned(i_sub14_i_zfp_1d_decompress58_a) - $unsigned(i_sub14_i_zfp_1d_decompress58_b);
    assign i_sub14_i_zfp_1d_decompress58_q = i_sub14_i_zfp_1d_decompress58_o[32:0];

    // bgTrunc_i_sub14_i_zfp_1d_decompress58_sel_x(BITSELECT,252)@11
    assign bgTrunc_i_sub14_i_zfp_1d_decompress58_sel_x_b = $unsigned(i_sub14_i_zfp_1d_decompress58_q[31:0]);

    // i_and28_i_zfp_1d_decompress67(LOGICAL,68)@11
    assign i_and28_i_zfp_1d_decompress67_q = bgTrunc_i_sub14_i_zfp_1d_decompress58_sel_x_b & c_i32_12148_q;

    // i_and28_i_zfp_1d_decompress67_vt_select_3(BITSELECT,72)@11
    assign i_and28_i_zfp_1d_decompress67_vt_select_3_b = i_and28_i_zfp_1d_decompress67_q[3:2];

    // i_and28_i_zfp_1d_decompress67_vt_join(BITJOIN,71)@11
    assign i_and28_i_zfp_1d_decompress67_vt_join_q = {i_and28_i_zfp_1d_decompress67_vt_const_31_q, i_and28_i_zfp_1d_decompress67_vt_select_3_b, i_and28_i_zfp_1d_decompress67_vt_const_1_q};

    // i_sh_prom29_i_zfp_1d_decompress68_sel_x(BITSELECT,301)@11
    assign i_sh_prom29_i_zfp_1d_decompress68_sel_x_b = {32'b00000000000000000000000000000000, i_and28_i_zfp_1d_decompress67_vt_join_q[31:0]};

    // i_sh_prom29_i_zfp_1d_decompress68_vt_select_3(BITSELECT,154)@11
    assign i_sh_prom29_i_zfp_1d_decompress68_vt_select_3_b = i_sh_prom29_i_zfp_1d_decompress68_sel_x_b[3:2];

    // i_sh_prom29_i_zfp_1d_decompress68_vt_join(BITJOIN,153)@11
    assign i_sh_prom29_i_zfp_1d_decompress68_vt_join_q = {i_sh_prom29_i_zfp_1d_decompress68_vt_const_63_q, i_sh_prom29_i_zfp_1d_decompress68_vt_select_3_b, i_and28_i_zfp_1d_decompress67_vt_const_1_q};

    // i_shr_i3_zfp_1d_decompress0_shift_narrow_x(BITSELECT,367)@11
    assign i_shr_i3_zfp_1d_decompress0_shift_narrow_x_b = i_sh_prom29_i_zfp_1d_decompress68_vt_join_q[5:0];

    // rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x(BITSELECT,668)@11
    assign rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x_in = i_shr_i3_zfp_1d_decompress0_shift_narrow_x_b[3:0];
    assign rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x_b = rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x_in[3:2];

    // redist2_rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x_b_1(DELAY,749)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x_b_1_q <= $unsigned(rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x_b);
        end
    end

    // rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x(MUX,669)@12
    assign rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_s = redist2_rightShiftStageSel2Dto2_uid669_i_shr_i3_zfp_1d_decompress0_shift_x_b_1_q;
    always @(rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_s or redist22_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_5_q or rightShiftStage0Idx1_uid662_i_shr_i3_zfp_1d_decompress0_shift_x_q or rightShiftStage0Idx2_uid665_i_shr_i3_zfp_1d_decompress0_shift_x_q or rightShiftStage0Idx3_uid668_i_shr_i3_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_s)
            2'b00 : rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q = redist22_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_5_q;
            2'b01 : rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid662_i_shr_i3_zfp_1d_decompress0_shift_x_q;
            2'b10 : rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx2_uid665_i_shr_i3_zfp_1d_decompress0_shift_x_q;
            2'b11 : rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx3_uid668_i_shr_i3_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom122_i_zfp_1d_decompress56_vt_const_63(CONSTANT,147)
    assign i_sh_prom122_i_zfp_1d_decompress56_vt_const_63_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // i_and30_trunc_i_zfp_1d_decompress70_sel_x(BITSELECT,267)@11
    assign i_and30_trunc_i_zfp_1d_decompress70_sel_x_b = bgTrunc_i_sub14_i_zfp_1d_decompress58_sel_x_b[1:0];

    // i_sh_prom313_i_zfp_1d_decompress71_sel_x(BITSELECT,302)@11
    assign i_sh_prom313_i_zfp_1d_decompress71_sel_x_b = {62'b00000000000000000000000000000000000000000000000000000000000000, i_and30_trunc_i_zfp_1d_decompress70_sel_x_b[1:0]};

    // i_sh_prom313_i_zfp_1d_decompress71_vt_select_1(BITSELECT,158)@11
    assign i_sh_prom313_i_zfp_1d_decompress71_vt_select_1_b = i_sh_prom313_i_zfp_1d_decompress71_sel_x_b[1:0];

    // i_sh_prom313_i_zfp_1d_decompress71_vt_join(BITJOIN,157)@11
    assign i_sh_prom313_i_zfp_1d_decompress71_vt_join_q = {i_sh_prom122_i_zfp_1d_decompress56_vt_const_63_q, i_sh_prom313_i_zfp_1d_decompress71_vt_select_1_b};

    // i_shr32_i_zfp_1d_decompress0_shift_narrow_x(BITSELECT,347)@11
    assign i_shr32_i_zfp_1d_decompress0_shift_narrow_x_b = i_sh_prom313_i_zfp_1d_decompress71_vt_join_q[5:0];

    // rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x(BITSELECT,622)@11
    assign rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x_in = i_shr32_i_zfp_1d_decompress0_shift_narrow_x_b[1:0];
    assign rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x_b = rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x_in[1:0];

    // redist3_rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x_b_1(DELAY,750)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x_b_1_q <= $unsigned(rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x_b);
        end
    end

    // rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x(MUX,623)@12
    assign rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_s = redist3_rightShiftStageSel0Dto0_uid623_i_shr32_i_zfp_1d_decompress0_shift_x_b_1_q;
    always @(rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_s or rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q or rightShiftStage0Idx1_uid616_i_shr32_i_zfp_1d_decompress0_shift_x_q or rightShiftStage0Idx2_uid619_i_shr32_i_zfp_1d_decompress0_shift_x_q or rightShiftStage0Idx3_uid622_i_shr32_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_s)
            2'b00 : rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0_uid670_i_shr_i3_zfp_1d_decompress0_shift_x_q;
            2'b01 : rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid616_i_shr32_i_zfp_1d_decompress0_shift_x_q;
            2'b10 : rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx2_uid619_i_shr32_i_zfp_1d_decompress0_shift_x_q;
            2'b11 : rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx3_uid622_i_shr32_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_and36_i_zfp_1d_decompress76(LOGICAL,74)@12
    assign i_and36_i_zfp_1d_decompress76_q = rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_q & c_i64_1152_q;

    // i_and36_i_zfp_1d_decompress76_vt_select_0(BITSELECT,77)@12
    assign i_and36_i_zfp_1d_decompress76_vt_select_0_b = i_and36_i_zfp_1d_decompress76_q[0:0];

    // redist34_i_and36_i_zfp_1d_decompress76_vt_select_0_b_1(DELAY,781)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_and36_i_zfp_1d_decompress76_vt_select_0_b_1_q <= $unsigned(i_and36_i_zfp_1d_decompress76_vt_select_0_b);
        end
    end

    // i_and36_i_zfp_1d_decompress76_vt_join(BITJOIN,76)@13
    assign i_and36_i_zfp_1d_decompress76_vt_join_q = {i_acl_1_i_zfp_1d_decompress85_vt_const_63_q, redist34_i_and36_i_zfp_1d_decompress76_vt_select_0_b_1_q};

    // i_cmp37_i_zfp_1d_decompress77(LOGICAL,89)@13 + 1
    assign i_cmp37_i_zfp_1d_decompress77_qi = $unsigned(i_and36_i_zfp_1d_decompress76_vt_join_q != c_i64_undef133_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp37_i_zfp_1d_decompress77_delay ( .xin(i_cmp37_i_zfp_1d_decompress77_qi), .xout(i_cmp37_i_zfp_1d_decompress77_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_conv33_i_zfp_1d_decompress73_vt_const_31(CONSTANT,101)
    assign i_conv33_i_zfp_1d_decompress73_vt_const_31_q = $unsigned(21'b000000000000000000000);

    // c_i16_1151(CONSTANT,11)
    assign c_i16_1151_q = $unsigned(16'b1111111111111111);

    // leftShiftStage2Idx1Rng16_uid482_i_notmask_i_zfp_1d_decompress0_shift_x(BITSELECT,481)@12
    assign leftShiftStage2Idx1Rng16_uid482_i_notmask_i_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_q[15:0];
    assign leftShiftStage2Idx1Rng16_uid482_i_notmask_i_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx1Rng16_uid482_i_notmask_i_zfp_1d_decompress0_shift_x_in[15:0];

    // leftShiftStage2Idx1_uid483_i_notmask_i_zfp_1d_decompress0_shift_x(BITJOIN,482)@12
    assign leftShiftStage2Idx1_uid483_i_notmask_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx1Rng16_uid482_i_notmask_i_zfp_1d_decompress0_shift_x_b, i_shr20_i_i_zfp_1d_decompress39_vt_const_31_q};

    // leftShiftStage1Idx3Rng12_uid477_i_notmask_i_zfp_1d_decompress0_shift_x(BITSELECT,476)@12
    assign leftShiftStage1Idx3Rng12_uid477_i_notmask_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid477_i_notmask_i_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx3Rng12_uid477_i_notmask_i_zfp_1d_decompress0_shift_x_in[19:0];

    // leftShiftStage1Idx3_uid478_i_notmask_i_zfp_1d_decompress0_shift_x(BITJOIN,477)@12
    assign leftShiftStage1Idx3_uid478_i_notmask_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx3Rng12_uid477_i_notmask_i_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx3Pad12_uid476_i_notmask_i_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid474_i_notmask_i_zfp_1d_decompress0_shift_x(BITSELECT,473)@12
    assign leftShiftStage1Idx2Rng8_uid474_i_notmask_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid474_i_notmask_i_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx2Rng8_uid474_i_notmask_i_zfp_1d_decompress0_shift_x_in[23:0];

    // leftShiftStage1Idx2_uid475_i_notmask_i_zfp_1d_decompress0_shift_x(BITJOIN,474)@12
    assign leftShiftStage1Idx2_uid475_i_notmask_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx2Rng8_uid474_i_notmask_i_zfp_1d_decompress0_shift_x_b, i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q};

    // leftShiftStage1Idx1Rng4_uid471_i_notmask_i_zfp_1d_decompress0_shift_x(BITSELECT,470)@12
    assign leftShiftStage1Idx1Rng4_uid471_i_notmask_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid471_i_notmask_i_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx1Rng4_uid471_i_notmask_i_zfp_1d_decompress0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid472_i_notmask_i_zfp_1d_decompress0_shift_x(BITJOIN,471)@12
    assign leftShiftStage1Idx1_uid472_i_notmask_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx1Rng4_uid471_i_notmask_i_zfp_1d_decompress0_shift_x_b, i_and7_i_zfp_1d_decompress49_vt_const_3_q};

    // leftShiftStage0Idx3Rng3_uid466_i_notmask_i_zfp_1d_decompress0_shift_x(BITSELECT,465)
    assign leftShiftStage0Idx3Rng3_uid466_i_notmask_i_zfp_1d_decompress0_shift_x_in = c_i32_1141_q[28:0];
    assign leftShiftStage0Idx3Rng3_uid466_i_notmask_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx3Rng3_uid466_i_notmask_i_zfp_1d_decompress0_shift_x_in[28:0];

    // leftShiftStage0Idx3_uid467_i_notmask_i_zfp_1d_decompress0_shift_x(BITJOIN,466)
    assign leftShiftStage0Idx3_uid467_i_notmask_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx3Rng3_uid466_i_notmask_i_zfp_1d_decompress0_shift_x_b, leftShiftStage0Idx3Pad3_uid465_i_notmask_i_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid463_i_notmask_i_zfp_1d_decompress0_shift_x(BITSELECT,462)
    assign leftShiftStage0Idx2Rng2_uid463_i_notmask_i_zfp_1d_decompress0_shift_x_in = c_i32_1141_q[29:0];
    assign leftShiftStage0Idx2Rng2_uid463_i_notmask_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx2Rng2_uid463_i_notmask_i_zfp_1d_decompress0_shift_x_in[29:0];

    // leftShiftStage0Idx2_uid464_i_notmask_i_zfp_1d_decompress0_shift_x(BITJOIN,463)
    assign leftShiftStage0Idx2_uid464_i_notmask_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx2Rng2_uid463_i_notmask_i_zfp_1d_decompress0_shift_x_b, i_and28_i_zfp_1d_decompress67_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid460_i_notmask_i_zfp_1d_decompress0_shift_x(BITSELECT,459)
    assign leftShiftStage0Idx1Rng1_uid460_i_notmask_i_zfp_1d_decompress0_shift_x_in = c_i32_1141_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid460_i_notmask_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng1_uid460_i_notmask_i_zfp_1d_decompress0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid461_i_notmask_i_zfp_1d_decompress0_shift_x(BITJOIN,460)
    assign leftShiftStage0Idx1_uid461_i_notmask_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng1_uid460_i_notmask_i_zfp_1d_decompress0_shift_x_b, GND_q};

    // i_notmask_i_zfp_1d_decompress0_shift_narrow_x(BITSELECT,297)@11
    assign i_notmask_i_zfp_1d_decompress0_shift_narrow_x_b = bgTrunc_i_sub14_i_zfp_1d_decompress58_sel_x_b[4:0];

    // leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select(BITSELECT,745)@11
    assign leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_b = i_notmask_i_zfp_1d_decompress0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_c = i_notmask_i_zfp_1d_decompress0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_d = i_notmask_i_zfp_1d_decompress0_shift_narrow_x_b[4:4];

    // leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x(MUX,468)@11 + 1
    assign leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_s)
                2'b00 : leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q <= c_i32_1141_q;
                2'b01 : leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q <= leftShiftStage0Idx1_uid461_i_notmask_i_zfp_1d_decompress0_shift_x_q;
                2'b10 : leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q <= leftShiftStage0Idx2_uid464_i_notmask_i_zfp_1d_decompress0_shift_x_q;
                2'b11 : leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q <= leftShiftStage0Idx3_uid467_i_notmask_i_zfp_1d_decompress0_shift_x_q;
                default : leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist0_leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_c_1(DELAY,747)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x(MUX,479)@12
    assign leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_s = redist0_leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_s or leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx1_uid472_i_notmask_i_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx2_uid475_i_notmask_i_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx3_uid478_i_notmask_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0_uid469_i_notmask_i_zfp_1d_decompress0_shift_x_q;
            2'b01 : leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx1_uid472_i_notmask_i_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx2_uid475_i_notmask_i_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx3_uid478_i_notmask_i_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // redist1_leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_d_1(DELAY,748)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid485_i_notmask_i_zfp_1d_decompress0_shift_x(MUX,484)@12
    assign leftShiftStage2_uid485_i_notmask_i_zfp_1d_decompress0_shift_x_s = redist1_leftShiftStageSel0Dto0_uid468_i_notmask_i_zfp_1d_decompress0_shift_x_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid485_i_notmask_i_zfp_1d_decompress0_shift_x_s or leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_q or leftShiftStage2Idx1_uid483_i_notmask_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage2_uid485_i_notmask_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : leftShiftStage2_uid485_i_notmask_i_zfp_1d_decompress0_shift_x_q = leftShiftStage1_uid480_i_notmask_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : leftShiftStage2_uid485_i_notmask_i_zfp_1d_decompress0_shift_x_q = leftShiftStage2Idx1_uid483_i_notmask_i_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage2_uid485_i_notmask_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_zfp_1d_decompress64_sel_x(BITSELECT,374)@12
    assign i_unnamed_zfp_1d_decompress64_sel_x_b = leftShiftStage2_uid485_i_notmask_i_zfp_1d_decompress0_shift_x_q[15:0];

    // i_conv23_i_zfp_1d_decompress65(LOGICAL,99)@12
    assign i_conv23_i_zfp_1d_decompress65_q = i_unnamed_zfp_1d_decompress64_sel_x_b ^ c_i16_1151_q;

    // c_i16_2047150(CONSTANT,12)
    assign c_i16_2047150_q = $unsigned(16'b0000011111111111);

    // i_unnamed_zfp_1d_decompress59_sel_x(BITSELECT,373)@12
    assign i_unnamed_zfp_1d_decompress59_sel_x_b = redist22_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_5_q[15:0];

    // i_conv17_i_zfp_1d_decompress60(LOGICAL,94)@12
    assign i_conv17_i_zfp_1d_decompress60_q = i_unnamed_zfp_1d_decompress59_sel_x_b & c_i16_2047150_q;

    // i_conv17_i_zfp_1d_decompress60_vt_select_10(BITSELECT,97)@12
    assign i_conv17_i_zfp_1d_decompress60_vt_select_10_b = i_conv17_i_zfp_1d_decompress60_q[10:0];

    // i_conv17_i_zfp_1d_decompress60_vt_join(BITJOIN,96)@12
    assign i_conv17_i_zfp_1d_decompress60_vt_join_q = {i_and2647_i_zfp_1d_decompress66_vt_const_15_q, i_conv17_i_zfp_1d_decompress60_vt_select_10_b};

    // i_and2647_i_zfp_1d_decompress66(LOGICAL,64)@12
    assign i_and2647_i_zfp_1d_decompress66_q = i_conv17_i_zfp_1d_decompress60_vt_join_q & i_conv23_i_zfp_1d_decompress65_q;

    // i_and2647_i_zfp_1d_decompress66_vt_select_10(BITSELECT,67)@12
    assign i_and2647_i_zfp_1d_decompress66_vt_select_10_b = i_and2647_i_zfp_1d_decompress66_q[10:0];

    // i_and2647_i_zfp_1d_decompress66_vt_join(BITJOIN,66)@12
    assign i_and2647_i_zfp_1d_decompress66_vt_join_q = {i_and2647_i_zfp_1d_decompress66_vt_const_15_q, i_and2647_i_zfp_1d_decompress66_vt_select_10_b};

    // i_conv33_i_zfp_1d_decompress73_sel_x(BITSELECT,269)@12
    assign i_conv33_i_zfp_1d_decompress73_sel_x_b = {16'b0000000000000000, i_and2647_i_zfp_1d_decompress66_vt_join_q[15:0]};

    // i_conv33_i_zfp_1d_decompress73_vt_select_10(BITSELECT,103)@12
    assign i_conv33_i_zfp_1d_decompress73_vt_select_10_b = i_conv33_i_zfp_1d_decompress73_sel_x_b[10:0];

    // redist33_i_conv33_i_zfp_1d_decompress73_vt_select_10_b_1(DELAY,780)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_conv33_i_zfp_1d_decompress73_vt_select_10_b_1_q <= $unsigned(i_conv33_i_zfp_1d_decompress73_vt_select_10_b);
        end
    end

    // i_conv33_i_zfp_1d_decompress73_vt_join(BITJOIN,102)@13
    assign i_conv33_i_zfp_1d_decompress73_vt_join_q = {i_conv33_i_zfp_1d_decompress73_vt_const_31_q, redist33_i_conv33_i_zfp_1d_decompress73_vt_select_10_b_1_q};

    // leftShiftStage2Idx1Rng16_uid540_i_shl19_i_zfp_1d_decompress0_shift_x(BITSELECT,539)@12
    assign leftShiftStage2Idx1Rng16_uid540_i_shl19_i_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_q[15:0];
    assign leftShiftStage2Idx1Rng16_uid540_i_shl19_i_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx1Rng16_uid540_i_shl19_i_zfp_1d_decompress0_shift_x_in[15:0];

    // leftShiftStage2Idx1_uid541_i_shl19_i_zfp_1d_decompress0_shift_x(BITJOIN,540)@12
    assign leftShiftStage2Idx1_uid541_i_shl19_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx1Rng16_uid540_i_shl19_i_zfp_1d_decompress0_shift_x_b, i_shr20_i_i_zfp_1d_decompress39_vt_const_31_q};

    // leftShiftStage1Idx3Rng12_uid535_i_shl19_i_zfp_1d_decompress0_shift_x(BITSELECT,534)@12
    assign leftShiftStage1Idx3Rng12_uid535_i_shl19_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid535_i_shl19_i_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx3Rng12_uid535_i_shl19_i_zfp_1d_decompress0_shift_x_in[19:0];

    // leftShiftStage1Idx3_uid536_i_shl19_i_zfp_1d_decompress0_shift_x(BITJOIN,535)@12
    assign leftShiftStage1Idx3_uid536_i_shl19_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx3Rng12_uid535_i_shl19_i_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx3Pad12_uid476_i_notmask_i_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid532_i_shl19_i_zfp_1d_decompress0_shift_x(BITSELECT,531)@12
    assign leftShiftStage1Idx2Rng8_uid532_i_shl19_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid532_i_shl19_i_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx2Rng8_uid532_i_shl19_i_zfp_1d_decompress0_shift_x_in[23:0];

    // leftShiftStage1Idx2_uid533_i_shl19_i_zfp_1d_decompress0_shift_x(BITJOIN,532)@12
    assign leftShiftStage1Idx2_uid533_i_shl19_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx2Rng8_uid532_i_shl19_i_zfp_1d_decompress0_shift_x_b, i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q};

    // leftShiftStage1Idx1Rng4_uid529_i_shl19_i_zfp_1d_decompress0_shift_x(BITSELECT,528)@12
    assign leftShiftStage1Idx1Rng4_uid529_i_shl19_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid529_i_shl19_i_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx1Rng4_uid529_i_shl19_i_zfp_1d_decompress0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid530_i_shl19_i_zfp_1d_decompress0_shift_x(BITJOIN,529)@12
    assign leftShiftStage1Idx1_uid530_i_shl19_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx1Rng4_uid529_i_shl19_i_zfp_1d_decompress0_shift_x_b, i_and7_i_zfp_1d_decompress49_vt_const_3_q};

    // leftShiftStage0Idx3Rng3_uid524_i_shl19_i_zfp_1d_decompress0_shift_x(BITSELECT,523)
    assign leftShiftStage0Idx3Rng3_uid524_i_shl19_i_zfp_1d_decompress0_shift_x_in = c_i32_1142_q[28:0];
    assign leftShiftStage0Idx3Rng3_uid524_i_shl19_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx3Rng3_uid524_i_shl19_i_zfp_1d_decompress0_shift_x_in[28:0];

    // leftShiftStage0Idx3_uid525_i_shl19_i_zfp_1d_decompress0_shift_x(BITJOIN,524)
    assign leftShiftStage0Idx3_uid525_i_shl19_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx3Rng3_uid524_i_shl19_i_zfp_1d_decompress0_shift_x_b, leftShiftStage0Idx3Pad3_uid465_i_notmask_i_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid521_i_shl19_i_zfp_1d_decompress0_shift_x(BITSELECT,520)
    assign leftShiftStage0Idx2Rng2_uid521_i_shl19_i_zfp_1d_decompress0_shift_x_in = c_i32_1142_q[29:0];
    assign leftShiftStage0Idx2Rng2_uid521_i_shl19_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx2Rng2_uid521_i_shl19_i_zfp_1d_decompress0_shift_x_in[29:0];

    // leftShiftStage0Idx2_uid522_i_shl19_i_zfp_1d_decompress0_shift_x(BITJOIN,521)
    assign leftShiftStage0Idx2_uid522_i_shl19_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx2Rng2_uid521_i_shl19_i_zfp_1d_decompress0_shift_x_b, i_and28_i_zfp_1d_decompress67_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid518_i_shl19_i_zfp_1d_decompress0_shift_x(BITSELECT,517)
    assign leftShiftStage0Idx1Rng1_uid518_i_shl19_i_zfp_1d_decompress0_shift_x_in = c_i32_1142_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid518_i_shl19_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng1_uid518_i_shl19_i_zfp_1d_decompress0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid519_i_shl19_i_zfp_1d_decompress0_shift_x(BITJOIN,518)
    assign leftShiftStage0Idx1_uid519_i_shl19_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng1_uid518_i_shl19_i_zfp_1d_decompress0_shift_x_b, GND_q};

    // leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x(MUX,526)@12
    assign leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid526_i_shl19_i_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_s or c_i32_1142_q or leftShiftStage0Idx1_uid519_i_shl19_i_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx2_uid522_i_shl19_i_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx3_uid525_i_shl19_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q = c_i32_1142_q;
            2'b01 : leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid519_i_shl19_i_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx2_uid522_i_shl19_i_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx3_uid525_i_shl19_i_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x(MUX,537)@12
    assign leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid526_i_shl19_i_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    always @(leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_s or leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx1_uid530_i_shl19_i_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx2_uid533_i_shl19_i_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx3_uid536_i_shl19_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0_uid527_i_shl19_i_zfp_1d_decompress0_shift_x_q;
            2'b01 : leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx1_uid530_i_shl19_i_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx2_uid533_i_shl19_i_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx3_uid536_i_shl19_i_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_q = 32'b0;
        endcase
    end

    // i_sub18_i_zfp_1d_decompress61(SUB,203)@11
    assign i_sub18_i_zfp_1d_decompress61_a = {1'b0, c_i32_10145_q};
    assign i_sub18_i_zfp_1d_decompress61_b = {1'b0, i_unnamed_zfp_1d_decompress46_vt_join_q};
    assign i_sub18_i_zfp_1d_decompress61_o = $unsigned(i_sub18_i_zfp_1d_decompress61_a) - $unsigned(i_sub18_i_zfp_1d_decompress61_b);
    assign i_sub18_i_zfp_1d_decompress61_q = i_sub18_i_zfp_1d_decompress61_o[32:0];

    // bgTrunc_i_sub18_i_zfp_1d_decompress61_sel_x(BITSELECT,253)@11
    assign bgTrunc_i_sub18_i_zfp_1d_decompress61_sel_x_b = $unsigned(i_sub18_i_zfp_1d_decompress61_q[31:0]);

    // i_shl19_i_zfp_1d_decompress0_shift_narrow_x(BITSELECT,315)@11
    assign i_shl19_i_zfp_1d_decompress0_shift_narrow_x_b = bgTrunc_i_sub18_i_zfp_1d_decompress61_sel_x_b[4:0];

    // redist13_i_shl19_i_zfp_1d_decompress0_shift_narrow_x_b_1(DELAY,760)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_shl19_i_zfp_1d_decompress0_shift_narrow_x_b_1_q <= $unsigned(i_shl19_i_zfp_1d_decompress0_shift_narrow_x_b);
        end
    end

    // leftShiftStageSel0Dto0_uid526_i_shl19_i_zfp_1d_decompress0_shift_x_merged_bit_select(BITSELECT,746)@12
    assign leftShiftStageSel0Dto0_uid526_i_shl19_i_zfp_1d_decompress0_shift_x_merged_bit_select_b = redist13_i_shl19_i_zfp_1d_decompress0_shift_narrow_x_b_1_q[1:0];
    assign leftShiftStageSel0Dto0_uid526_i_shl19_i_zfp_1d_decompress0_shift_x_merged_bit_select_c = redist13_i_shl19_i_zfp_1d_decompress0_shift_narrow_x_b_1_q[3:2];
    assign leftShiftStageSel0Dto0_uid526_i_shl19_i_zfp_1d_decompress0_shift_x_merged_bit_select_d = redist13_i_shl19_i_zfp_1d_decompress0_shift_narrow_x_b_1_q[4:4];

    // leftShiftStage2_uid543_i_shl19_i_zfp_1d_decompress0_shift_x(MUX,542)@12 + 1
    assign leftShiftStage2_uid543_i_shl19_i_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid526_i_shl19_i_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage2_uid543_i_shl19_i_zfp_1d_decompress0_shift_x_s)
                1'b0 : leftShiftStage2_uid543_i_shl19_i_zfp_1d_decompress0_shift_x_q <= leftShiftStage1_uid538_i_shl19_i_zfp_1d_decompress0_shift_x_q;
                1'b1 : leftShiftStage2_uid543_i_shl19_i_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx1_uid541_i_shl19_i_zfp_1d_decompress0_shift_x_q;
                default : leftShiftStage2_uid543_i_shl19_i_zfp_1d_decompress0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // i_cmp35_i_zfp_1d_decompress74(LOGICAL,88)@13 + 1
    assign i_cmp35_i_zfp_1d_decompress74_qi = $unsigned(leftShiftStage2_uid543_i_shl19_i_zfp_1d_decompress0_shift_x_q == i_conv33_i_zfp_1d_decompress73_vt_join_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp35_i_zfp_1d_decompress74_delay ( .xin(i_cmp35_i_zfp_1d_decompress74_qi), .xout(i_cmp35_i_zfp_1d_decompress74_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_or_cond_not_i_zfp_1d_decompress79(LOGICAL,139)@14
    assign i_or_cond_not_i_zfp_1d_decompress79_q = i_cmp35_i_zfp_1d_decompress74_q & i_cmp37_i_zfp_1d_decompress77_q;

    // i_cmp40_i_zfp_1d_decompress80(COMPARE,90)@13 + 1
    assign i_cmp40_i_zfp_1d_decompress80_a = {2'b00, leftShiftStage2_uid543_i_shl19_i_zfp_1d_decompress0_shift_x_q};
    assign i_cmp40_i_zfp_1d_decompress80_b = {2'b00, i_conv33_i_zfp_1d_decompress73_vt_join_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp40_i_zfp_1d_decompress80_o <= $unsigned(i_cmp40_i_zfp_1d_decompress80_a) - $unsigned(i_cmp40_i_zfp_1d_decompress80_b);
        end
    end
    assign i_cmp40_i_zfp_1d_decompress80_c[0] = i_cmp40_i_zfp_1d_decompress80_o[33];

    // i_or_cond48_i_zfp_1d_decompress81(LOGICAL,138)@14
    assign i_or_cond48_i_zfp_1d_decompress81_q = i_cmp40_i_zfp_1d_decompress80_c | i_or_cond_not_i_zfp_1d_decompress79_q;

    // i_narrow_i_zfp_1d_decompress84(LOGICAL,124)@14
    assign i_narrow_i_zfp_1d_decompress84_q = i_or_cond48_i_zfp_1d_decompress81_q & redist27_i_not_cmp4_i_zfp_1d_decompress83_q_2_q;

    // i_acl_1_i_zfp_1d_decompress85_sel_x(BITSELECT,265)@14
    assign i_acl_1_i_zfp_1d_decompress85_sel_x_b = {63'b000000000000000000000000000000000000000000000000000000000000000, i_narrow_i_zfp_1d_decompress84_q[0:0]};

    // i_acl_1_i_zfp_1d_decompress85_vt_select_0(BITSELECT,56)@14
    assign i_acl_1_i_zfp_1d_decompress85_vt_select_0_b = i_acl_1_i_zfp_1d_decompress85_sel_x_b[0:0];

    // redist35_i_acl_1_i_zfp_1d_decompress85_vt_select_0_b_1(DELAY,782)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_acl_1_i_zfp_1d_decompress85_vt_select_0_b_1_q <= $unsigned(i_acl_1_i_zfp_1d_decompress85_vt_select_0_b);
        end
    end

    // i_acl_1_i_zfp_1d_decompress85_vt_join(BITJOIN,55)@15
    assign i_acl_1_i_zfp_1d_decompress85_vt_join_q = {i_acl_1_i_zfp_1d_decompress85_vt_const_63_q, redist35_i_acl_1_i_zfp_1d_decompress85_vt_select_0_b_1_q};

    // c_i8_291(CONSTANT,52)
    assign c_i8_291_q = $unsigned(8'b00000010);

    // redist26_i_replace_phi_zfp_1d_decompress11_q_6_offset(CONSTANT,786)
    assign redist26_i_replace_phi_zfp_1d_decompress11_q_6_offset_q = $unsigned(2'b11);

    // redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt(ADD,787)
    assign redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_a = {1'b0, redist26_i_replace_phi_zfp_1d_decompress11_q_6_wraddr_q};
    assign redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_b = {1'b0, redist26_i_replace_phi_zfp_1d_decompress11_q_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_o <= $unsigned(redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_a) + $unsigned(redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_b);
        end
    end
    assign redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_q = redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_o[2:0];

    // redist26_i_replace_phi_zfp_1d_decompress11_q_6_wraddr(COUNTER,785)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_replace_phi_zfp_1d_decompress11_q_6_wraddr_i <= $unsigned(redist26_i_replace_phi_zfp_1d_decompress11_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist26_i_replace_phi_zfp_1d_decompress11_q_6_wraddr_q = redist26_i_replace_phi_zfp_1d_decompress11_q_6_wraddr_i[1:0];

    // redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem(DUALMEM,784)
    assign redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_ia = $unsigned(redist25_i_replace_phi_zfp_1d_decompress11_q_1_q);
    assign redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_aa = redist26_i_replace_phi_zfp_1d_decompress11_q_6_wraddr_q;
    assign redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_ab = redist26_i_replace_phi_zfp_1d_decompress11_q_6_rdcnt_q[1:0];
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
    ) redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_aa),
        .data_a(redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_ab),
        .q_b(redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_iq),
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
    assign redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_q = redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_iq[63:0];

    // redist26_i_replace_phi_zfp_1d_decompress11_q_6_outputreg0(DELAY,783)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_replace_phi_zfp_1d_decompress11_q_6_outputreg0_q <= $unsigned(redist26_i_replace_phi_zfp_1d_decompress11_q_6_mem_q);
        end
    end

    // c_i32_1086155(CONSTANT,33)
    assign c_i32_1086155_q = $unsigned(32'b00000000000000000000010000111110);

    // i_sub_i4_zfp_1d_decompress88(SUB,208)@11
    assign i_sub_i4_zfp_1d_decompress88_a = {1'b0, c_i32_1086155_q};
    assign i_sub_i4_zfp_1d_decompress88_b = {1'b0, i_unnamed_zfp_1d_decompress46_vt_join_q};
    assign i_sub_i4_zfp_1d_decompress88_o = $unsigned(i_sub_i4_zfp_1d_decompress88_a) - $unsigned(i_sub_i4_zfp_1d_decompress88_b);
    assign i_sub_i4_zfp_1d_decompress88_q = i_sub_i4_zfp_1d_decompress88_o[32:0];

    // bgTrunc_i_sub_i4_zfp_1d_decompress88_sel_x(BITSELECT,255)@11
    assign bgTrunc_i_sub_i4_zfp_1d_decompress88_sel_x_b = $unsigned(i_sub_i4_zfp_1d_decompress88_q[31:0]);

    // i_sub_i4_zfp_1d_decompress88_vt_select_10(BITSELECT,211)@11
    assign i_sub_i4_zfp_1d_decompress88_vt_select_10_b = bgTrunc_i_sub_i4_zfp_1d_decompress88_sel_x_b[10:0];

    // i_sub_i4_zfp_1d_decompress88_vt_join(BITJOIN,210)@11
    assign i_sub_i4_zfp_1d_decompress88_vt_join_q = {i_conv33_i_zfp_1d_decompress73_vt_const_31_q, i_sub_i4_zfp_1d_decompress88_vt_select_10_b};

    // c_i32_64154_recast_x(CONSTANT,259)
    assign c_i32_64154_recast_x_q = $unsigned(32'b00000000000000000000000001000000);

    // i_cmp_i_zfp_1d_decompress86(LOGICAL,93)@11
    assign i_cmp_i_zfp_1d_decompress86_q = $unsigned(i_unnamed_zfp_1d_decompress46_vt_join_q == c_i32_64154_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_zfp_1d_decompress89(MUX,222)@11
    assign i_unnamed_zfp_1d_decompress89_s = i_cmp_i_zfp_1d_decompress86_q;
    always @(i_unnamed_zfp_1d_decompress89_s or i_sub_i4_zfp_1d_decompress88_vt_join_q or c_i32_0143_q)
    begin
        unique case (i_unnamed_zfp_1d_decompress89_s)
            1'b0 : i_unnamed_zfp_1d_decompress89_q = i_sub_i4_zfp_1d_decompress88_vt_join_q;
            1'b1 : i_unnamed_zfp_1d_decompress89_q = c_i32_0143_q;
            default : i_unnamed_zfp_1d_decompress89_q = 32'b0;
        endcase
    end

    // i_unnamed_zfp_1d_decompress89_vt_select_10(BITSELECT,225)@11
    assign i_unnamed_zfp_1d_decompress89_vt_select_10_b = i_unnamed_zfp_1d_decompress89_q[10:0];

    // redist23_i_unnamed_zfp_1d_decompress89_vt_select_10_b_1(DELAY,770)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_unnamed_zfp_1d_decompress89_vt_select_10_b_1_q <= $unsigned(i_unnamed_zfp_1d_decompress89_vt_select_10_b);
        end
    end

    // i_unnamed_zfp_1d_decompress89_vt_join(BITJOIN,224)@12
    assign i_unnamed_zfp_1d_decompress89_vt_join_q = {i_conv33_i_zfp_1d_decompress73_vt_const_31_q, redist23_i_unnamed_zfp_1d_decompress89_vt_select_10_b_1_q};

    // leftShiftStage0Idx3Rng3_uid510_i_shl13_i_zfp_1d_decompress0_shift_x(BITSELECT,509)@12
    assign leftShiftStage0Idx3Rng3_uid510_i_shl13_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q[60:0];
    assign leftShiftStage0Idx3Rng3_uid510_i_shl13_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx3Rng3_uid510_i_shl13_i_zfp_1d_decompress0_shift_x_in[60:0];

    // leftShiftStage0Idx3_uid511_i_shl13_i_zfp_1d_decompress0_shift_x(BITJOIN,510)@12
    assign leftShiftStage0Idx3_uid511_i_shl13_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx3Rng3_uid510_i_shl13_i_zfp_1d_decompress0_shift_x_b, leftShiftStage0Idx3Pad3_uid465_i_notmask_i_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid507_i_shl13_i_zfp_1d_decompress0_shift_x(BITSELECT,506)@12
    assign leftShiftStage0Idx2Rng2_uid507_i_shl13_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q[61:0];
    assign leftShiftStage0Idx2Rng2_uid507_i_shl13_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx2Rng2_uid507_i_shl13_i_zfp_1d_decompress0_shift_x_in[61:0];

    // leftShiftStage0Idx2_uid508_i_shl13_i_zfp_1d_decompress0_shift_x(BITJOIN,507)@12
    assign leftShiftStage0Idx2_uid508_i_shl13_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx2Rng2_uid507_i_shl13_i_zfp_1d_decompress0_shift_x_b, i_and28_i_zfp_1d_decompress67_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid504_i_shl13_i_zfp_1d_decompress0_shift_x(BITSELECT,503)@12
    assign leftShiftStage0Idx1Rng1_uid504_i_shl13_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid504_i_shl13_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng1_uid504_i_shl13_i_zfp_1d_decompress0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid505_i_shl13_i_zfp_1d_decompress0_shift_x(BITJOIN,504)@12
    assign leftShiftStage0Idx1_uid505_i_shl13_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng1_uid504_i_shl13_i_zfp_1d_decompress0_shift_x_b, GND_q};

    // leftShiftStage0Idx3Rng12_uid496_i_shl10_i_zfp_1d_decompress0_shift_x(BITSELECT,495)@12
    assign leftShiftStage0Idx3Rng12_uid496_i_shl10_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q[51:0];
    assign leftShiftStage0Idx3Rng12_uid496_i_shl10_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx3Rng12_uid496_i_shl10_i_zfp_1d_decompress0_shift_x_in[51:0];

    // leftShiftStage0Idx3_uid497_i_shl10_i_zfp_1d_decompress0_shift_x(BITJOIN,496)@12
    assign leftShiftStage0Idx3_uid497_i_shl10_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx3Rng12_uid496_i_shl10_i_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx3Pad12_uid476_i_notmask_i_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx2Rng8_uid493_i_shl10_i_zfp_1d_decompress0_shift_x(BITSELECT,492)@12
    assign leftShiftStage0Idx2Rng8_uid493_i_shl10_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q[55:0];
    assign leftShiftStage0Idx2Rng8_uid493_i_shl10_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx2Rng8_uid493_i_shl10_i_zfp_1d_decompress0_shift_x_in[55:0];

    // leftShiftStage0Idx2_uid494_i_shl10_i_zfp_1d_decompress0_shift_x(BITJOIN,493)@12
    assign leftShiftStage0Idx2_uid494_i_shl10_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx2Rng8_uid493_i_shl10_i_zfp_1d_decompress0_shift_x_b, i_shr18_i_i_zfp_1d_decompress37_vt_const_31_q};

    // leftShiftStage0Idx1Rng4_uid490_i_shl10_i_zfp_1d_decompress0_shift_x(BITSELECT,489)@12
    assign leftShiftStage0Idx1Rng4_uid490_i_shl10_i_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q[59:0];
    assign leftShiftStage0Idx1Rng4_uid490_i_shl10_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng4_uid490_i_shl10_i_zfp_1d_decompress0_shift_x_in[59:0];

    // leftShiftStage0Idx1_uid491_i_shl10_i_zfp_1d_decompress0_shift_x(BITJOIN,490)@12
    assign leftShiftStage0Idx1_uid491_i_shl10_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng4_uid490_i_shl10_i_zfp_1d_decompress0_shift_x_b, i_and7_i_zfp_1d_decompress49_vt_const_3_q};

    // leftShiftStage0Idx3Rng48_uid554_i_shl_i2_zfp_1d_decompress0_shift_x(BITSELECT,553)@11
    assign leftShiftStage0Idx3Rng48_uid554_i_shl_i2_zfp_1d_decompress0_shift_x_in = redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_q[15:0];
    assign leftShiftStage0Idx3Rng48_uid554_i_shl_i2_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx3Rng48_uid554_i_shl_i2_zfp_1d_decompress0_shift_x_in[15:0];

    // leftShiftStage0Idx3Pad48_uid553_i_shl_i2_zfp_1d_decompress0_shift_x(CONSTANT,552)
    assign leftShiftStage0Idx3Pad48_uid553_i_shl_i2_zfp_1d_decompress0_shift_x_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage0Idx3_uid555_i_shl_i2_zfp_1d_decompress0_shift_x(BITJOIN,554)@11
    assign leftShiftStage0Idx3_uid555_i_shl_i2_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx3Rng48_uid554_i_shl_i2_zfp_1d_decompress0_shift_x_b, leftShiftStage0Idx3Pad48_uid553_i_shl_i2_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx2Rng32_uid551_i_shl_i2_zfp_1d_decompress0_shift_x(BITSELECT,550)@11
    assign leftShiftStage0Idx2Rng32_uid551_i_shl_i2_zfp_1d_decompress0_shift_x_in = redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_q[31:0];
    assign leftShiftStage0Idx2Rng32_uid551_i_shl_i2_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx2Rng32_uid551_i_shl_i2_zfp_1d_decompress0_shift_x_in[31:0];

    // leftShiftStage0Idx2_uid552_i_shl_i2_zfp_1d_decompress0_shift_x(BITJOIN,551)@11
    assign leftShiftStage0Idx2_uid552_i_shl_i2_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx2Rng32_uid551_i_shl_i2_zfp_1d_decompress0_shift_x_b, c_i32_0143_q};

    // leftShiftStage0Idx1Rng16_uid548_i_shl_i2_zfp_1d_decompress0_shift_x(BITSELECT,547)@11
    assign leftShiftStage0Idx1Rng16_uid548_i_shl_i2_zfp_1d_decompress0_shift_x_in = redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_q[47:0];
    assign leftShiftStage0Idx1Rng16_uid548_i_shl_i2_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng16_uid548_i_shl_i2_zfp_1d_decompress0_shift_x_in[47:0];

    // leftShiftStage0Idx1_uid549_i_shl_i2_zfp_1d_decompress0_shift_x(BITJOIN,548)@11
    assign leftShiftStage0Idx1_uid549_i_shl_i2_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng16_uid548_i_shl_i2_zfp_1d_decompress0_shift_x_b, i_shr20_i_i_zfp_1d_decompress39_vt_const_31_q};

    // i_sh_prom_i_zfp_1d_decompress50_vt_const_63(CONSTANT,166)
    assign i_sh_prom_i_zfp_1d_decompress50_vt_const_63_q = $unsigned(58'b0000000000000000000000000000000000000000000000000000000000);

    // i_sub5_i_zfp_1d_decompress48_vt_const_31(CONSTANT,205)
    assign i_sub5_i_zfp_1d_decompress48_vt_const_31_q = $unsigned(24'b000000000000000000000000);

    // c_i32_53146(CONSTANT,43)
    assign c_i32_53146_q = $unsigned(32'b00000000000000000000000000110101);

    // i_sub5_i_zfp_1d_decompress48(ADD,204)@11
    assign i_sub5_i_zfp_1d_decompress48_a = {1'b0, i_unnamed_zfp_1d_decompress46_vt_join_q};
    assign i_sub5_i_zfp_1d_decompress48_b = {1'b0, c_i32_53146_q};
    assign i_sub5_i_zfp_1d_decompress48_o = $unsigned(i_sub5_i_zfp_1d_decompress48_a) + $unsigned(i_sub5_i_zfp_1d_decompress48_b);
    assign i_sub5_i_zfp_1d_decompress48_q = i_sub5_i_zfp_1d_decompress48_o[32:0];

    // bgTrunc_i_sub5_i_zfp_1d_decompress48_sel_x(BITSELECT,254)@11
    assign bgTrunc_i_sub5_i_zfp_1d_decompress48_sel_x_b = i_sub5_i_zfp_1d_decompress48_q[31:0];

    // i_sub5_i_zfp_1d_decompress48_vt_select_7(BITSELECT,207)@11
    assign i_sub5_i_zfp_1d_decompress48_vt_select_7_b = bgTrunc_i_sub5_i_zfp_1d_decompress48_sel_x_b[7:0];

    // i_sub5_i_zfp_1d_decompress48_vt_join(BITJOIN,206)@11
    assign i_sub5_i_zfp_1d_decompress48_vt_join_q = {i_sub5_i_zfp_1d_decompress48_vt_const_31_q, i_sub5_i_zfp_1d_decompress48_vt_select_7_b};

    // i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select(BITSELECT,744)@11
    assign i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_in = i_sub5_i_zfp_1d_decompress48_vt_join_q[5:0];
    assign i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_b = i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_in[1:0];
    assign i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_c = i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_in[5:4];
    assign i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_d = i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_in[3:2];

    // i_and7_i_zfp_1d_decompress49_join(BITJOIN,451)@11
    assign i_and7_i_zfp_1d_decompress49_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_c, GND_q, GND_q, GND_q, GND_q};

    // i_and7_i_zfp_1d_decompress49_vt_select_5(BITSELECT,82)@11
    assign i_and7_i_zfp_1d_decompress49_vt_select_5_b = i_and7_i_zfp_1d_decompress49_join_q[5:4];

    // i_and7_i_zfp_1d_decompress49_vt_join(BITJOIN,81)@11
    assign i_and7_i_zfp_1d_decompress49_vt_join_q = {i_and7_i_zfp_1d_decompress49_vt_const_31_q, i_and7_i_zfp_1d_decompress49_vt_select_5_b, i_and7_i_zfp_1d_decompress49_vt_const_3_q};

    // i_sh_prom_i_zfp_1d_decompress50_sel_x(BITSELECT,304)@11
    assign i_sh_prom_i_zfp_1d_decompress50_sel_x_b = {32'b00000000000000000000000000000000, i_and7_i_zfp_1d_decompress49_vt_join_q[31:0]};

    // i_sh_prom_i_zfp_1d_decompress50_vt_select_5(BITSELECT,168)@11
    assign i_sh_prom_i_zfp_1d_decompress50_vt_select_5_b = i_sh_prom_i_zfp_1d_decompress50_sel_x_b[5:4];

    // i_sh_prom_i_zfp_1d_decompress50_vt_join(BITJOIN,167)@11
    assign i_sh_prom_i_zfp_1d_decompress50_vt_join_q = {i_sh_prom_i_zfp_1d_decompress50_vt_const_63_q, i_sh_prom_i_zfp_1d_decompress50_vt_select_5_b, i_and7_i_zfp_1d_decompress49_vt_const_3_q};

    // i_shl_i2_zfp_1d_decompress0_shift_narrow_x(BITSELECT,319)@11
    assign i_shl_i2_zfp_1d_decompress0_shift_narrow_x_b = i_sh_prom_i_zfp_1d_decompress50_vt_join_q[5:0];

    // leftShiftStageSel4Dto4_uid556_i_shl_i2_zfp_1d_decompress0_shift_x(BITSELECT,555)@11
    assign leftShiftStageSel4Dto4_uid556_i_shl_i2_zfp_1d_decompress0_shift_x_b = i_shl_i2_zfp_1d_decompress0_shift_narrow_x_b[5:4];

    // leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x(MUX,556)@11 + 1
    assign leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_s = leftShiftStageSel4Dto4_uid556_i_shl_i2_zfp_1d_decompress0_shift_x_b;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_s)
                2'b00 : leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q <= redist21_bgTrunc_i_add_i_i_zfp_1d_decompress15_sel_x_b_4_q;
                2'b01 : leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q <= leftShiftStage0Idx1_uid549_i_shl_i2_zfp_1d_decompress0_shift_x_q;
                2'b10 : leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q <= leftShiftStage0Idx2_uid552_i_shl_i2_zfp_1d_decompress0_shift_x_q;
                2'b11 : leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q <= leftShiftStage0Idx3_uid555_i_shl_i2_zfp_1d_decompress0_shift_x_q;
                default : leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q <= 64'b0;
            endcase
        end
    end

    // i_and8_i_zfp_1d_decompress52_join(BITJOIN,453)@11
    assign i_and8_i_zfp_1d_decompress52_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_d, GND_q, GND_q};

    // i_and8_i_zfp_1d_decompress52_vt_select_3(BITSELECT,87)@11
    assign i_and8_i_zfp_1d_decompress52_vt_select_3_b = i_and8_i_zfp_1d_decompress52_join_q[3:2];

    // i_and8_i_zfp_1d_decompress52_vt_join(BITJOIN,86)@11
    assign i_and8_i_zfp_1d_decompress52_vt_join_q = {i_and28_i_zfp_1d_decompress67_vt_const_31_q, i_and8_i_zfp_1d_decompress52_vt_select_3_b, i_and28_i_zfp_1d_decompress67_vt_const_1_q};

    // i_sh_prom9_i_zfp_1d_decompress53_sel_x(BITSELECT,303)@11
    assign i_sh_prom9_i_zfp_1d_decompress53_sel_x_b = {32'b00000000000000000000000000000000, i_and8_i_zfp_1d_decompress52_vt_join_q[31:0]};

    // i_sh_prom9_i_zfp_1d_decompress53_vt_select_3(BITSELECT,163)@11
    assign i_sh_prom9_i_zfp_1d_decompress53_vt_select_3_b = i_sh_prom9_i_zfp_1d_decompress53_sel_x_b[3:2];

    // i_sh_prom9_i_zfp_1d_decompress53_vt_join(BITJOIN,162)@11
    assign i_sh_prom9_i_zfp_1d_decompress53_vt_join_q = {i_sh_prom29_i_zfp_1d_decompress68_vt_const_63_q, i_sh_prom9_i_zfp_1d_decompress53_vt_select_3_b, i_and28_i_zfp_1d_decompress67_vt_const_1_q};

    // i_shl10_i_zfp_1d_decompress0_shift_narrow_x(BITSELECT,307)@11
    assign i_shl10_i_zfp_1d_decompress0_shift_narrow_x_b = i_sh_prom9_i_zfp_1d_decompress53_vt_join_q[5:0];

    // leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x(BITSELECT,497)@11
    assign leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x_in = i_shl10_i_zfp_1d_decompress0_shift_narrow_x_b[3:0];
    assign leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x_b = leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x_in[3:2];

    // redist5_leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x_b_1(DELAY,752)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x_b_1_q <= $unsigned(leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x_b);
        end
    end

    // leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x(MUX,498)@12
    assign leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_s = redist5_leftShiftStageSel2Dto2_uid498_i_shl10_i_zfp_1d_decompress0_shift_x_b_1_q;
    always @(leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_s or leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx1_uid491_i_shl10_i_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx2_uid494_i_shl10_i_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx3_uid497_i_shl10_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0_uid557_i_shl_i2_zfp_1d_decompress0_shift_x_q;
            2'b01 : leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid491_i_shl10_i_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx2_uid494_i_shl10_i_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx3_uid497_i_shl10_i_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom122_i_zfp_1d_decompress56_sel_x(BITSELECT,300)@11
    assign i_sh_prom122_i_zfp_1d_decompress56_sel_x_b = {62'b00000000000000000000000000000000000000000000000000000000000000, i_and11_trunc_i_zfp_1d_decompress55_sel_x_merged_bit_select_b[1:0]};

    // i_sh_prom122_i_zfp_1d_decompress56_vt_select_1(BITSELECT,149)@11
    assign i_sh_prom122_i_zfp_1d_decompress56_vt_select_1_b = i_sh_prom122_i_zfp_1d_decompress56_sel_x_b[1:0];

    // i_sh_prom122_i_zfp_1d_decompress56_vt_join(BITJOIN,148)@11
    assign i_sh_prom122_i_zfp_1d_decompress56_vt_join_q = {i_sh_prom122_i_zfp_1d_decompress56_vt_const_63_q, i_sh_prom122_i_zfp_1d_decompress56_vt_select_1_b};

    // i_shl13_i_zfp_1d_decompress0_shift_narrow_x(BITSELECT,311)@11
    assign i_shl13_i_zfp_1d_decompress0_shift_narrow_x_b = i_sh_prom122_i_zfp_1d_decompress56_vt_join_q[5:0];

    // leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x(BITSELECT,511)@11
    assign leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x_in = i_shl13_i_zfp_1d_decompress0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x_b = leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x_in[1:0];

    // redist4_leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x_b_1(DELAY,751)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x_b_1_q <= $unsigned(leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x_b);
        end
    end

    // leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x(MUX,512)@12
    assign leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_s = redist4_leftShiftStageSel0Dto0_uid512_i_shl13_i_zfp_1d_decompress0_shift_x_b_1_q;
    always @(leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_s or leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx1_uid505_i_shl13_i_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx2_uid508_i_shl13_i_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx3_uid511_i_shl13_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0_uid499_i_shl10_i_zfp_1d_decompress0_shift_x_q;
            2'b01 : leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid505_i_shl13_i_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx2_uid508_i_shl13_i_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx3_uid511_i_shl13_i_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_i_zfp_1d_decompress82(MUX,106)@12
    assign i_i_zfp_1d_decompress82_s = i_cmp4_i_zfp_1d_decompress47_c;
    always @(i_i_zfp_1d_decompress82_s or rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_q or leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (i_i_zfp_1d_decompress82_s)
            1'b0 : i_i_zfp_1d_decompress82_q = rightShiftStage0_uid624_i_shr32_i_zfp_1d_decompress0_shift_x_q;
            1'b1 : i_i_zfp_1d_decompress82_q = leftShiftStage0_uid513_i_shl13_i_zfp_1d_decompress0_shift_x_q;
            default : i_i_zfp_1d_decompress82_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,271)@12
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_291_q, redist26_i_replace_phi_zfp_1d_decompress11_q_6_outputreg0_q, i_unnamed_zfp_1d_decompress89_vt_join_q, i_i_zfp_1d_decompress82_q};

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x(CHOOSEBITS,270)@12
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[159:159], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[74:74], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[73:73], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[72:72], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[71:71], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[70:70], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[69:69], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[68:68], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[67:67], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[66:66], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[65:65], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[64:64], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[31:31], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[15:15], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[7:7], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[6:6], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[5:5], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[4:4], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[3:3], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[2:2], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[1:1], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_a[0:0]};

    // redist18_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q_3(DELAY,765)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q_3_delay_0 <= $unsigned(i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q);
            redist18_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q_3_delay_1 <= redist18_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q_3_delay_0;
            redist18_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q_3_q <= redist18_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q_3_delay_1;
        end
    end

    // i_add_i5_zfp_1d_decompress93(ADD,61)@15
    assign i_add_i5_zfp_1d_decompress93_a = {1'b0, redist18_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_decompress0_NO_NAME_x_q_3_q};
    assign i_add_i5_zfp_1d_decompress93_b = {1'b0, i_acl_1_i_zfp_1d_decompress85_vt_join_q};
    assign i_add_i5_zfp_1d_decompress93_o = $unsigned(i_add_i5_zfp_1d_decompress93_a) + $unsigned(i_add_i5_zfp_1d_decompress93_b);
    assign i_add_i5_zfp_1d_decompress93_q = i_add_i5_zfp_1d_decompress93_o[64:0];

    // bgTrunc_i_add_i5_zfp_1d_decompress93_sel_x(BITSELECT,248)@15
    assign bgTrunc_i_add_i5_zfp_1d_decompress93_sel_x_b = i_add_i5_zfp_1d_decompress93_q[63:0];

    // sync_out_aunroll_x(GPOUT,385)@15
    assign out_c0_exi3144_0_tpl = GND_q;
    assign out_c0_exi3144_1_tpl = bgTrunc_i_add_i5_zfp_1d_decompress93_sel_x_b;
    assign out_c0_exi3144_2_tpl = redist6_i_exitcond19_zfp_1d_decompress98_cmp_nsign_q_11_q;
    assign out_c0_exi3144_3_tpl = i_notcmp_zfp_1d_decompress101_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist12_sync_together171_aunroll_x_in_i_valid_15_q;
    assign out_zfp_1d_decompress_B8_current_iter_isspec = i_zfp_1d_decompress_b8_current_iter_isspec_zfp_1d_decompress5_q;

endmodule
