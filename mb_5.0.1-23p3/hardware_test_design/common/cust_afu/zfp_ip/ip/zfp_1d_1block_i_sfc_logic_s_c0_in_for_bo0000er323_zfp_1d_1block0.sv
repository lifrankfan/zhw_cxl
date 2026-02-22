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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body5_zfp_1d_1blocks_c0_enter323_zfp_1d_1block0
// Created for function/kernel zfp_1d_1block
// SystemVerilog created on Tue Feb  3 21:17:23 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_1block_i_sfc_logic_s_c0_in_for_bo0000er323_zfp_1d_1block0 (
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi336_0_tpl,
    output wire [63:0] out_c0_exi336_1_tpl,
    output wire [0:0] out_c0_exi336_2_tpl,
    output wire [0:0] out_c0_exi336_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_zfp_1d_1block_B4_current_iter_isspec,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni131_0_tpl,
    input wire [0:0] in_c0_eni131_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_1160_q;
    wire [15:0] c_i16_2047159_q;
    wire [31:0] c_i32_0152_q;
    wire [31:0] c_i32_10154_q;
    wire [31:0] c_i32_1086164_q;
    wire [31:0] c_i32_11158_q;
    wire [31:0] c_i32_1150_q;
    wire [31:0] c_i32_1151_q;
    wire [31:0] c_i32_12157_q;
    wire [31:0] c_i32_32153_q;
    wire [31:0] c_i32_53155_q;
    wire [2:0] c_i3_1169_q;
    wire [2:0] c_i3_2167_q;
    wire [63:0] c_i64_1161_q;
    wire [63:0] c_i64_undef142_q;
    wire [7:0] c_i8_291_q;
    wire [62:0] i_acl_1_i_zfp_1d_1block85_vt_const_63_q;
    wire [63:0] i_acl_1_i_zfp_1d_1block85_vt_join_q;
    wire [0:0] i_acl_1_i_zfp_1d_1block85_vt_select_0_b;
    wire [32:0] i_add_i42_i_zfp_1d_1block45_a;
    wire [32:0] i_add_i42_i_zfp_1d_1block45_b;
    logic [32:0] i_add_i42_i_zfp_1d_1block45_o;
    wire [32:0] i_add_i42_i_zfp_1d_1block45_q;
    wire [24:0] i_add_i42_i_zfp_1d_1block45_vt_const_31_q;
    wire [31:0] i_add_i42_i_zfp_1d_1block45_vt_join_q;
    wire [6:0] i_add_i42_i_zfp_1d_1block45_vt_select_6_b;
    wire [64:0] i_add_i4_zfp_1d_1block93_a;
    wire [64:0] i_add_i4_zfp_1d_1block93_b;
    logic [64:0] i_add_i4_zfp_1d_1block93_o;
    wire [64:0] i_add_i4_zfp_1d_1block93_q;
    wire [64:0] i_add_i_i_zfp_1d_1block15_a;
    wire [64:0] i_add_i_i_zfp_1d_1block15_b;
    logic [64:0] i_add_i_i_zfp_1d_1block15_o;
    wire [64:0] i_add_i_i_zfp_1d_1block15_q;
    wire [15:0] i_and2647_i_zfp_1d_1block66_q;
    wire [4:0] i_and2647_i_zfp_1d_1block66_vt_const_15_q;
    wire [15:0] i_and2647_i_zfp_1d_1block66_vt_join_q;
    wire [10:0] i_and2647_i_zfp_1d_1block66_vt_select_10_b;
    wire [31:0] i_and28_i_zfp_1d_1block67_q;
    wire [1:0] i_and28_i_zfp_1d_1block67_vt_const_1_q;
    wire [27:0] i_and28_i_zfp_1d_1block67_vt_const_31_q;
    wire [31:0] i_and28_i_zfp_1d_1block67_vt_join_q;
    wire [1:0] i_and28_i_zfp_1d_1block67_vt_select_3_b;
    wire [63:0] i_and36_i_zfp_1d_1block76_q;
    wire [63:0] i_and36_i_zfp_1d_1block76_vt_join_q;
    wire [0:0] i_and36_i_zfp_1d_1block76_vt_select_0_b;
    wire [3:0] i_and7_i_zfp_1d_1block49_vt_const_3_q;
    wire [25:0] i_and7_i_zfp_1d_1block49_vt_const_31_q;
    wire [31:0] i_and7_i_zfp_1d_1block49_vt_join_q;
    wire [1:0] i_and7_i_zfp_1d_1block49_vt_select_5_b;
    wire [31:0] i_and8_i_zfp_1d_1block52_vt_join_q;
    wire [1:0] i_and8_i_zfp_1d_1block52_vt_select_3_b;
    wire [0:0] i_cmp35_i_zfp_1d_1block74_qi;
    reg [0:0] i_cmp35_i_zfp_1d_1block74_q;
    wire [0:0] i_cmp37_i_zfp_1d_1block77_qi;
    reg [0:0] i_cmp37_i_zfp_1d_1block77_q;
    wire [33:0] i_cmp40_i_zfp_1d_1block80_a;
    wire [33:0] i_cmp40_i_zfp_1d_1block80_b;
    logic [33:0] i_cmp40_i_zfp_1d_1block80_o;
    wire [0:0] i_cmp40_i_zfp_1d_1block80_c;
    wire [33:0] i_cmp4_i_zfp_1d_1block47_a;
    wire [33:0] i_cmp4_i_zfp_1d_1block47_b;
    logic [33:0] i_cmp4_i_zfp_1d_1block47_o;
    wire [0:0] i_cmp4_i_zfp_1d_1block47_c;
    wire [0:0] i_cmp_i_i_zfp_1d_1block43_q;
    wire [0:0] i_cmp_i_zfp_1d_1block86_q;
    wire [15:0] i_conv17_i_zfp_1d_1block60_q;
    wire [15:0] i_conv17_i_zfp_1d_1block60_vt_join_q;
    wire [10:0] i_conv17_i_zfp_1d_1block60_vt_select_10_b;
    wire [15:0] i_conv23_i_zfp_1d_1block65_q;
    wire [20:0] i_conv33_i_zfp_1d_1block73_vt_const_31_q;
    wire [31:0] i_conv33_i_zfp_1d_1block73_vt_join_q;
    wire [10:0] i_conv33_i_zfp_1d_1block73_vt_select_10_b;
    wire [3:0] i_fpga_indvars_iv_next4_zfp_1d_1block103_a;
    wire [3:0] i_fpga_indvars_iv_next4_zfp_1d_1block103_b;
    logic [3:0] i_fpga_indvars_iv_next4_zfp_1d_1block103_o;
    wire [3:0] i_fpga_indvars_iv_next4_zfp_1d_1block103_q;
    wire [0:0] i_i_zfp_1d_1block82_s;
    reg [63:0] i_i_zfp_1d_1block82_q;
    wire [32:0] i_inc9_zfp_1d_1block96_a;
    wire [32:0] i_inc9_zfp_1d_1block96_b;
    logic [32:0] i_inc9_zfp_1d_1block96_o;
    wire [32:0] i_inc9_zfp_1d_1block96_q;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_data;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_sum;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_vt_join_q;
    wire [5:0] i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_vt_select_5_b;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_data;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_sum;
    wire [31:0] i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_join_q;
    wire [5:0] i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_select_5_b;
    wire [0:0] i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_add10_i6_zfp_1d_1block112_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_add11_i7_zfp_1d_1block109_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_sub13_i8_zfp_1d_1block9_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_sub15_i9_zfp_1d_1block110_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_zfp_1d_1block102_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_zfp_1d_1block102_out_feedback_valid_out_3;
    wire [0:0] i_narrow_i_zfp_1d_1block84_q;
    wire [31:0] i_neg22_i_i_zfp_1d_1block41_q;
    wire [31:0] i_neg_i_i_zfp_1d_1block29_q;
    wire [0:0] i_not_cmp4_i_zfp_1d_1block83_qi;
    reg [0:0] i_not_cmp4_i_zfp_1d_1block83_q;
    wire [0:0] i_notcmp_zfp_1d_1block101_q;
    wire [31:0] i_or10_i_i_zfp_1d_1block28_qi;
    reg [31:0] i_or10_i_i_zfp_1d_1block28_q;
    wire [31:0] i_or13_i_i_zfp_1d_1block32_q;
    wire [31:0] i_or15_i_i_zfp_1d_1block34_qi;
    reg [31:0] i_or15_i_i_zfp_1d_1block34_q;
    wire [31:0] i_or17_i_i_zfp_1d_1block36_q;
    wire [31:0] i_or19_i_i_zfp_1d_1block38_q;
    wire [31:0] i_or21_i_i_zfp_1d_1block40_q;
    wire [31:0] i_or4_i_i_zfp_1d_1block22_qi;
    reg [31:0] i_or4_i_i_zfp_1d_1block22_q;
    wire [31:0] i_or6_i_i_zfp_1d_1block24_q;
    wire [31:0] i_or8_i_i_zfp_1d_1block26_q;
    wire [0:0] i_or_cond48_i_zfp_1d_1block81_q;
    wire [0:0] i_or_cond_not_i_zfp_1d_1block79_q;
    wire [63:0] i_or_i46_i_zfp_1d_1block19_q;
    wire [63:0] i_or_i46_i_zfp_1d_1block19_vt_join_q;
    wire [31:0] i_or_i46_i_zfp_1d_1block19_vt_select_31_b;
    wire [0:0] i_replace_phi_zfp_1d_1block11_s;
    reg [63:0] i_replace_phi_zfp_1d_1block11_q;
    wire [61:0] i_sh_prom122_i_zfp_1d_1block56_vt_const_63_q;
    wire [63:0] i_sh_prom122_i_zfp_1d_1block56_vt_join_q;
    wire [1:0] i_sh_prom122_i_zfp_1d_1block56_vt_select_1_b;
    wire [59:0] i_sh_prom29_i_zfp_1d_1block68_vt_const_63_q;
    wire [63:0] i_sh_prom29_i_zfp_1d_1block68_vt_join_q;
    wire [1:0] i_sh_prom29_i_zfp_1d_1block68_vt_select_3_b;
    wire [63:0] i_sh_prom313_i_zfp_1d_1block71_vt_join_q;
    wire [1:0] i_sh_prom313_i_zfp_1d_1block71_vt_select_1_b;
    wire [63:0] i_sh_prom9_i_zfp_1d_1block53_vt_join_q;
    wire [1:0] i_sh_prom9_i_zfp_1d_1block53_vt_select_3_b;
    wire [57:0] i_sh_prom_i_zfp_1d_1block50_vt_const_63_q;
    wire [63:0] i_sh_prom_i_zfp_1d_1block50_vt_join_q;
    wire [1:0] i_sh_prom_i_zfp_1d_1block50_vt_select_5_b;
    wire [31:0] i_shr12_i_i_zfp_1d_1block31_vt_join_q;
    wire [30:0] i_shr12_i_i_zfp_1d_1block31_vt_select_30_b;
    wire [31:0] i_shr14_i_i_zfp_1d_1block33_vt_join_q;
    wire [29:0] i_shr14_i_i_zfp_1d_1block33_vt_select_29_b;
    wire [31:0] i_shr16_i_i_zfp_1d_1block35_vt_join_q;
    wire [27:0] i_shr16_i_i_zfp_1d_1block35_vt_select_27_b;
    wire [7:0] i_shr18_i_i_zfp_1d_1block37_vt_const_31_q;
    wire [31:0] i_shr18_i_i_zfp_1d_1block37_vt_join_q;
    wire [23:0] i_shr18_i_i_zfp_1d_1block37_vt_select_23_b;
    wire [15:0] i_shr20_i_i_zfp_1d_1block39_vt_const_31_q;
    wire [31:0] i_shr20_i_i_zfp_1d_1block39_vt_join_q;
    wire [15:0] i_shr20_i_i_zfp_1d_1block39_vt_select_15_b;
    wire [32:0] i_shr2_i44_i_zfp_1d_1block18_vt_const_63_q;
    wire [63:0] i_shr2_i44_i_zfp_1d_1block18_vt_join_q;
    wire [30:0] i_shr2_i44_i_zfp_1d_1block18_vt_select_30_b;
    wire [31:0] i_shr3_i_i_zfp_1d_1block21_vt_join_q;
    wire [29:0] i_shr3_i_i_zfp_1d_1block21_vt_select_29_b;
    wire [31:0] i_shr5_i_i_zfp_1d_1block23_vt_join_q;
    wire [27:0] i_shr5_i_i_zfp_1d_1block23_vt_select_27_b;
    wire [31:0] i_shr7_i_i_zfp_1d_1block25_vt_join_q;
    wire [23:0] i_shr7_i_i_zfp_1d_1block25_vt_select_23_b;
    wire [31:0] i_shr9_i_i_zfp_1d_1block27_vt_join_q;
    wire [15:0] i_shr9_i_i_zfp_1d_1block27_vt_select_15_b;
    wire [63:0] i_shr_i_i_zfp_1d_1block16_vt_join_q;
    wire [31:0] i_shr_i_i_zfp_1d_1block16_vt_select_31_b;
    wire [32:0] i_sub14_i_zfp_1d_1block58_a;
    wire [32:0] i_sub14_i_zfp_1d_1block58_b;
    logic [32:0] i_sub14_i_zfp_1d_1block58_o;
    wire [32:0] i_sub14_i_zfp_1d_1block58_q;
    wire [32:0] i_sub18_i_zfp_1d_1block61_a;
    wire [32:0] i_sub18_i_zfp_1d_1block61_b;
    logic [32:0] i_sub18_i_zfp_1d_1block61_o;
    wire [32:0] i_sub18_i_zfp_1d_1block61_q;
    wire [32:0] i_sub5_i_zfp_1d_1block48_a;
    wire [32:0] i_sub5_i_zfp_1d_1block48_b;
    logic [32:0] i_sub5_i_zfp_1d_1block48_o;
    wire [32:0] i_sub5_i_zfp_1d_1block48_q;
    wire [23:0] i_sub5_i_zfp_1d_1block48_vt_const_31_q;
    wire [31:0] i_sub5_i_zfp_1d_1block48_vt_join_q;
    wire [7:0] i_sub5_i_zfp_1d_1block48_vt_select_7_b;
    wire [32:0] i_sub_i3_zfp_1d_1block88_a;
    wire [32:0] i_sub_i3_zfp_1d_1block88_b;
    logic [32:0] i_sub_i3_zfp_1d_1block88_o;
    wire [32:0] i_sub_i3_zfp_1d_1block88_q;
    wire [31:0] i_sub_i3_zfp_1d_1block88_vt_join_q;
    wire [10:0] i_sub_i3_zfp_1d_1block88_vt_select_10_b;
    wire [0:0] i_unnamed_zfp_1d_1block105_qi;
    reg [0:0] i_unnamed_zfp_1d_1block105_q;
    wire [0:0] i_unnamed_zfp_1d_1block107_qi;
    reg [0:0] i_unnamed_zfp_1d_1block107_q;
    wire [0:0] i_unnamed_zfp_1d_1block111_s;
    reg [63:0] i_unnamed_zfp_1d_1block111_q;
    wire [0:0] i_unnamed_zfp_1d_1block113_s;
    reg [63:0] i_unnamed_zfp_1d_1block113_q;
    wire [0:0] i_unnamed_zfp_1d_1block46_s;
    reg [31:0] i_unnamed_zfp_1d_1block46_q;
    wire [31:0] i_unnamed_zfp_1d_1block46_vt_join_q;
    wire [6:0] i_unnamed_zfp_1d_1block46_vt_select_6_b;
    wire [0:0] i_unnamed_zfp_1d_1block89_s;
    reg [31:0] i_unnamed_zfp_1d_1block89_q;
    wire [31:0] i_unnamed_zfp_1d_1block89_vt_join_q;
    wire [10:0] i_unnamed_zfp_1d_1block89_vt_select_10_b;
    wire [63:0] i_x_lobit_i_zfp_1d_1block12_vt_join_q;
    wire [0:0] i_x_lobit_i_zfp_1d_1block12_vt_select_0_b;
    wire [63:0] i_xor_i_i_zfp_1d_1block14_qi;
    reg [63:0] i_xor_i_i_zfp_1d_1block14_q;
    wire [0:0] i_zfp_1d_1block_b4_current_iter_isspec_zfp_1d_1block5_q;
    wire [0:0] i_zfp_1d_1block_b4_next_iter_isreal_zfp_1d_1block7_q;
    wire [31:0] bgTrunc_i_add_i42_i_zfp_1d_1block45_sel_x_b;
    wire [63:0] bgTrunc_i_add_i4_zfp_1d_1block93_sel_x_b;
    wire [63:0] bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next4_zfp_1d_1block103_sel_x_b;
    wire [31:0] bgTrunc_i_inc9_zfp_1d_1block96_sel_x_b;
    wire [31:0] bgTrunc_i_sub14_i_zfp_1d_1block58_sel_x_b;
    wire [31:0] bgTrunc_i_sub18_i_zfp_1d_1block61_sel_x_b;
    wire [31:0] bgTrunc_i_sub5_i_zfp_1d_1block48_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i3_zfp_1d_1block88_sel_x_b;
    wire [31:0] c_i32_2146_recast_x_q;
    wire [31:0] c_i32_3170_recast_x_q;
    wire [31:0] c_i32_64163_recast_x_q;
    wire [63:0] i_acl_1_i_zfp_1d_1block85_sel_x_b;
    wire [1:0] i_and30_trunc_i_zfp_1d_1block70_sel_x_b;
    wire [31:0] i_conv1_i_i_zfp_1d_1block17_sel_x_b;
    wire [31:0] i_conv33_i_zfp_1d_1block73_sel_x_b;
    wire [167:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a;
    wire [63:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q;
    wire [167:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block0_i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block95_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block0_i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block95_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x_s;
    reg [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_valid;
    wire i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_stall;
    wire i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_valid;
    wire i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_stall;
    wire i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_valid;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_stall;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_o_data;
    wire [2:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_valid;
    wire i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_stall;
    wire i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_o_data;
    wire [4:0] i_notmask_i_zfp_1d_1block0_shift_narrow_x_b;
    wire [31:0] i_or_i_i_zfp_1d_1block20_sel_x_b;
    wire [63:0] i_sh_prom122_i_zfp_1d_1block56_sel_x_b;
    wire [63:0] i_sh_prom29_i_zfp_1d_1block68_sel_x_b;
    wire [63:0] i_sh_prom313_i_zfp_1d_1block71_sel_x_b;
    wire [63:0] i_sh_prom9_i_zfp_1d_1block53_sel_x_b;
    wire [63:0] i_sh_prom_i_zfp_1d_1block50_sel_x_b;
    wire [5:0] i_shl10_i_zfp_1d_1block0_shift_narrow_x_b;
    wire [5:0] i_shl13_i_zfp_1d_1block0_shift_narrow_x_b;
    wire [4:0] i_shl19_i_zfp_1d_1block0_shift_narrow_x_b;
    wire [5:0] i_shl_i1_zfp_1d_1block0_shift_narrow_x_b;
    wire [5:0] i_shr32_i_zfp_1d_1block0_shift_narrow_x_b;
    wire [5:0] i_shr_i2_zfp_1d_1block0_shift_narrow_x_b;
    wire [15:0] i_unnamed_zfp_1d_1block59_sel_x_b;
    wire [15:0] i_unnamed_zfp_1d_1block64_sel_x_b;
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
    wire [31:0] i_and7_i_zfp_1d_1block49_join_q;
    wire [31:0] i_and8_i_zfp_1d_1block52_join_q;
    wire [0:0] i_exitcond5_zfp_1d_1block98_cmp_nsign_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid469_i_notmask_i_zfp_1d_1block0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid469_i_notmask_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid470_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [29:0] leftShiftStage0Idx2Rng2_uid472_i_notmask_i_zfp_1d_1block0_shift_x_in;
    wire [29:0] leftShiftStage0Idx2Rng2_uid472_i_notmask_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage0Idx2_uid473_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [2:0] leftShiftStage0Idx3Pad3_uid474_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [28:0] leftShiftStage0Idx3Rng3_uid475_i_notmask_i_zfp_1d_1block0_shift_x_in;
    wire [28:0] leftShiftStage0Idx3Rng3_uid475_i_notmask_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage0Idx3_uid476_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [1:0] leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid480_i_notmask_i_zfp_1d_1block0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid480_i_notmask_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid481_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid483_i_notmask_i_zfp_1d_1block0_shift_x_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid483_i_notmask_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage1Idx2_uid484_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid485_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid486_i_notmask_i_zfp_1d_1block0_shift_x_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid486_i_notmask_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage1Idx3_uid487_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [1:0] leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Rng16_uid491_i_notmask_i_zfp_1d_1block0_shift_x_in;
    wire [15:0] leftShiftStage2Idx1Rng16_uid491_i_notmask_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid492_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] leftShiftStage2_uid494_i_notmask_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] leftShiftStage2_uid494_i_notmask_i_zfp_1d_1block0_shift_x_q;
    wire [59:0] leftShiftStage0Idx1Rng4_uid499_i_shl10_i_zfp_1d_1block0_shift_x_in;
    wire [59:0] leftShiftStage0Idx1Rng4_uid499_i_shl10_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid500_i_shl10_i_zfp_1d_1block0_shift_x_q;
    wire [55:0] leftShiftStage0Idx2Rng8_uid502_i_shl10_i_zfp_1d_1block0_shift_x_in;
    wire [55:0] leftShiftStage0Idx2Rng8_uid502_i_shl10_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid503_i_shl10_i_zfp_1d_1block0_shift_x_q;
    wire [51:0] leftShiftStage0Idx3Rng12_uid505_i_shl10_i_zfp_1d_1block0_shift_x_in;
    wire [51:0] leftShiftStage0Idx3Rng12_uid505_i_shl10_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid506_i_shl10_i_zfp_1d_1block0_shift_x_q;
    wire [3:0] leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x_in;
    wire [1:0] leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x_b;
    wire [1:0] leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid513_i_shl13_i_zfp_1d_1block0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid513_i_shl13_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid514_i_shl13_i_zfp_1d_1block0_shift_x_q;
    wire [61:0] leftShiftStage0Idx2Rng2_uid516_i_shl13_i_zfp_1d_1block0_shift_x_in;
    wire [61:0] leftShiftStage0Idx2Rng2_uid516_i_shl13_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid517_i_shl13_i_zfp_1d_1block0_shift_x_q;
    wire [60:0] leftShiftStage0Idx3Rng3_uid519_i_shl13_i_zfp_1d_1block0_shift_x_in;
    wire [60:0] leftShiftStage0Idx3Rng3_uid519_i_shl13_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid520_i_shl13_i_zfp_1d_1block0_shift_x_q;
    wire [1:0] leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x_in;
    wire [1:0] leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x_b;
    wire [1:0] leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid527_i_shl19_i_zfp_1d_1block0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid527_i_shl19_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid528_i_shl19_i_zfp_1d_1block0_shift_x_q;
    wire [29:0] leftShiftStage0Idx2Rng2_uid530_i_shl19_i_zfp_1d_1block0_shift_x_in;
    wire [29:0] leftShiftStage0Idx2Rng2_uid530_i_shl19_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage0Idx2_uid531_i_shl19_i_zfp_1d_1block0_shift_x_q;
    wire [28:0] leftShiftStage0Idx3Rng3_uid533_i_shl19_i_zfp_1d_1block0_shift_x_in;
    wire [28:0] leftShiftStage0Idx3Rng3_uid533_i_shl19_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage0Idx3_uid534_i_shl19_i_zfp_1d_1block0_shift_x_q;
    wire [1:0] leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid538_i_shl19_i_zfp_1d_1block0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid538_i_shl19_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid539_i_shl19_i_zfp_1d_1block0_shift_x_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid541_i_shl19_i_zfp_1d_1block0_shift_x_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid541_i_shl19_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage1Idx2_uid542_i_shl19_i_zfp_1d_1block0_shift_x_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid544_i_shl19_i_zfp_1d_1block0_shift_x_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid544_i_shl19_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage1Idx3_uid545_i_shl19_i_zfp_1d_1block0_shift_x_q;
    wire [1:0] leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Rng16_uid549_i_shl19_i_zfp_1d_1block0_shift_x_in;
    wire [15:0] leftShiftStage2Idx1Rng16_uid549_i_shl19_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid550_i_shl19_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] leftShiftStage2_uid552_i_shl19_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] leftShiftStage2_uid552_i_shl19_i_zfp_1d_1block0_shift_x_q;
    wire [47:0] leftShiftStage0Idx1Rng16_uid557_i_shl_i1_zfp_1d_1block0_shift_x_in;
    wire [47:0] leftShiftStage0Idx1Rng16_uid557_i_shl_i1_zfp_1d_1block0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid558_i_shl_i1_zfp_1d_1block0_shift_x_q;
    wire [31:0] leftShiftStage0Idx2Rng32_uid560_i_shl_i1_zfp_1d_1block0_shift_x_in;
    wire [31:0] leftShiftStage0Idx2Rng32_uid560_i_shl_i1_zfp_1d_1block0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid561_i_shl_i1_zfp_1d_1block0_shift_x_q;
    wire [47:0] leftShiftStage0Idx3Pad48_uid562_i_shl_i1_zfp_1d_1block0_shift_x_q;
    wire [15:0] leftShiftStage0Idx3Rng48_uid563_i_shl_i1_zfp_1d_1block0_shift_x_in;
    wire [15:0] leftShiftStage0Idx3Rng48_uid563_i_shl_i1_zfp_1d_1block0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid564_i_shl_i1_zfp_1d_1block0_shift_x_q;
    wire [1:0] leftShiftStageSel4Dto4_uid565_i_shl_i1_zfp_1d_1block0_shift_x_b;
    wire [1:0] leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_s;
    reg [63:0] leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid570_i_shr12_i_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid572_i_shr12_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid574_i_shr12_i_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] rightShiftStage0_uid574_i_shr12_i_i_zfp_1d_1block0_shift_x_q;
    wire [29:0] rightShiftStage0Idx1Rng2_uid578_i_shr14_i_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid580_i_shr14_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid582_i_shr14_i_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] rightShiftStage0_uid582_i_shr14_i_i_zfp_1d_1block0_shift_x_q;
    wire [27:0] rightShiftStage0Idx1Rng4_uid586_i_shr16_i_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid588_i_shr16_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid590_i_shr16_i_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] rightShiftStage0_uid590_i_shr16_i_i_zfp_1d_1block0_shift_x_q;
    wire [23:0] rightShiftStage0Idx1Rng8_uid594_i_shr18_i_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid596_i_shr18_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid598_i_shr18_i_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] rightShiftStage0_uid598_i_shr18_i_i_zfp_1d_1block0_shift_x_q;
    wire [15:0] rightShiftStage0Idx1Rng16_uid602_i_shr20_i_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid604_i_shr20_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid606_i_shr20_i_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] rightShiftStage0_uid606_i_shr20_i_i_zfp_1d_1block0_shift_x_q;
    wire [62:0] rightShiftStage0Idx1Rng1_uid610_i_shr2_i44_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid612_i_shr2_i44_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid615_i_shr2_i44_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid617_i_shr2_i44_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage1_uid619_i_shr2_i44_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage1_uid619_i_shr2_i44_i_zfp_1d_1block0_shift_x_q;
    wire [62:0] rightShiftStage0Idx1Rng1_uid623_i_shr32_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid625_i_shr32_i_zfp_1d_1block0_shift_x_q;
    wire [61:0] rightShiftStage0Idx2Rng2_uid626_i_shr32_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage0Idx2_uid628_i_shr32_i_zfp_1d_1block0_shift_x_q;
    wire [60:0] rightShiftStage0Idx3Rng3_uid629_i_shr32_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage0Idx3_uid631_i_shr32_i_zfp_1d_1block0_shift_x_q;
    wire [1:0] rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x_in;
    wire [1:0] rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x_b;
    wire [1:0] rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_q;
    wire [29:0] rightShiftStage0Idx1Rng2_uid637_i_shr3_i_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid639_i_shr3_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid641_i_shr3_i_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] rightShiftStage0_uid641_i_shr3_i_i_zfp_1d_1block0_shift_x_q;
    wire [27:0] rightShiftStage0Idx1Rng4_uid645_i_shr5_i_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid647_i_shr5_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid649_i_shr5_i_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] rightShiftStage0_uid649_i_shr5_i_i_zfp_1d_1block0_shift_x_q;
    wire [23:0] rightShiftStage0Idx1Rng8_uid653_i_shr7_i_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid655_i_shr7_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid657_i_shr7_i_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] rightShiftStage0_uid657_i_shr7_i_i_zfp_1d_1block0_shift_x_q;
    wire [15:0] rightShiftStage0Idx1Rng16_uid661_i_shr9_i_i_zfp_1d_1block0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid663_i_shr9_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid665_i_shr9_i_i_zfp_1d_1block0_shift_x_s;
    reg [31:0] rightShiftStage0_uid665_i_shr9_i_i_zfp_1d_1block0_shift_x_q;
    wire [59:0] rightShiftStage0Idx1Rng4_uid669_i_shr_i2_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid671_i_shr_i2_zfp_1d_1block0_shift_x_q;
    wire [55:0] rightShiftStage0Idx2Rng8_uid672_i_shr_i2_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage0Idx2_uid674_i_shr_i2_zfp_1d_1block0_shift_x_q;
    wire [51:0] rightShiftStage0Idx3Rng12_uid675_i_shr_i2_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage0Idx3_uid677_i_shr_i2_zfp_1d_1block0_shift_x_q;
    wire [3:0] rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x_in;
    wire [1:0] rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x_b;
    wire [1:0] rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q;
    wire [31:0] rightShiftStage0Idx1Rng32_uid683_i_shr_i_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid685_i_shr_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid687_i_shr_i_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage0_uid687_i_shr_i_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b;
    wire [62:0] rightShiftStage0Idx1Rng1_uid691_i_x_lobit43_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid692_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [1:0] seMsb_to2_uid695_in;
    wire [1:0] seMsb_to2_uid695_b;
    wire [61:0] rightShiftStage1Idx1Rng2_uid696_i_x_lobit43_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid697_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [3:0] seMsb_to4_uid700_in;
    wire [3:0] seMsb_to4_uid700_b;
    wire [59:0] rightShiftStage2Idx1Rng4_uid701_i_x_lobit43_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid702_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [7:0] seMsb_to8_uid705_in;
    wire [7:0] seMsb_to8_uid705_b;
    wire [55:0] rightShiftStage3Idx1Rng8_uid706_i_x_lobit43_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage3Idx1_uid707_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [15:0] seMsb_to16_uid710_in;
    wire [15:0] seMsb_to16_uid710_b;
    wire [47:0] rightShiftStage4Idx1Rng16_uid711_i_x_lobit43_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage4Idx1_uid712_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [31:0] seMsb_to32_uid715_in;
    wire [31:0] seMsb_to32_uid715_b;
    wire [31:0] rightShiftStage5Idx1Rng32_uid716_i_x_lobit43_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage5Idx1_uid717_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage5_uid719_i_x_lobit43_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage5_uid719_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
    wire [62:0] rightShiftStage0Idx1Rng1_uid723_i_x_lobit_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid725_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [61:0] rightShiftStage1Idx1Rng2_uid728_i_x_lobit_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid730_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [59:0] rightShiftStage2Idx1Rng4_uid733_i_x_lobit_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid735_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [55:0] rightShiftStage3Idx1Rng8_uid738_i_x_lobit_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage3Idx1_uid740_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [47:0] rightShiftStage4Idx1Rng16_uid743_i_x_lobit_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage4Idx1_uid745_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [31:0] rightShiftStage5Idx1Rng32_uid748_i_x_lobit_i_zfp_1d_1block0_shift_x_b;
    wire [63:0] rightShiftStage5Idx1_uid750_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [0:0] rightShiftStage5_uid752_i_x_lobit_i_zfp_1d_1block0_shift_x_s;
    reg [63:0] rightShiftStage5_uid752_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
    wire [5:0] i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_in;
    wire [1:0] i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_b;
    wire [1:0] i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_c;
    wire [1:0] i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_d;
    wire [1:0] leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_c;
    wire [0:0] leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_d;
    wire [1:0] leftShiftStageSel0Dto0_uid535_i_shl19_i_zfp_1d_1block0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid535_i_shl19_i_zfp_1d_1block0_shift_x_merged_bit_select_c;
    wire [0:0] leftShiftStageSel0Dto0_uid535_i_shl19_i_zfp_1d_1block0_shift_x_merged_bit_select_d;
    reg [1:0] redist0_leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_c_1_q;
    reg [0:0] redist1_leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_d_1_q;
    reg [1:0] redist2_rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x_b_1_q;
    reg [1:0] redist3_rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x_b_1_q;
    reg [1:0] redist4_leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x_b_1_q;
    reg [1:0] redist5_leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x_b_1_q;
    reg [0:0] redist6_i_exitcond5_zfp_1d_1block98_cmp_nsign_q_11_q;
    reg [0:0] redist7_valid_fanout_reg0_q_9_q;
    reg [0:0] redist8_sync_together180_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist8_sync_together180_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist9_sync_together180_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist10_sync_together180_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist11_sync_together180_aunroll_x_in_i_valid_5_q;
    reg [4:0] redist12_i_shl19_i_zfp_1d_1block0_shift_narrow_x_b_1_q;
    reg [0:0] redist13_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_2_q;
    reg [0:0] redist13_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist14_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_3_q;
    reg [0:0] redist15_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_4_q;
    reg [0:0] redist16_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q_9_q;
    reg [63:0] redist17_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q_3_q;
    reg [63:0] redist17_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q_3_delay_0;
    reg [63:0] redist17_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q_3_delay_1;
    reg [31:0] redist18_bgTrunc_i_inc9_zfp_1d_1block96_sel_x_b_1_q;
    reg [63:0] redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1_q;
    reg [63:0] redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_q;
    reg [63:0] redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_delay_0;
    reg [63:0] redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_delay_1;
    reg [63:0] redist21_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_5_q;
    reg [10:0] redist22_i_unnamed_zfp_1d_1block89_vt_select_10_b_1_q;
    reg [6:0] redist23_i_unnamed_zfp_1d_1block46_vt_select_6_b_1_q;
    reg [63:0] redist24_i_replace_phi_zfp_1d_1block11_q_1_q;
    reg [0:0] redist26_i_not_cmp4_i_zfp_1d_1block83_q_2_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_data_out_2_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_data_out_2_delay_0;
    reg [0:0] redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_q;
    reg [0:0] redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_delay_0;
    reg [0:0] redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_delay_1;
    reg [0:0] redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_delay_2;
    reg [0:0] redist29_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_6_q;
    reg [0:0] redist29_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_6_delay_0;
    reg [0:0] redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_q;
    reg [0:0] redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_delay_0;
    reg [0:0] redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_delay_1;
    reg [0:0] redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_delay_2;
    reg [5:0] redist31_i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_select_5_b_1_q;
    reg [10:0] redist32_i_conv33_i_zfp_1d_1block73_vt_select_10_b_1_q;
    reg [0:0] redist33_i_and36_i_zfp_1d_1block76_vt_select_0_b_1_q;
    reg [0:0] redist34_i_acl_1_i_zfp_1d_1block85_vt_select_0_b_1_q;
    reg [63:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_outputreg0_q;
    wire redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_reset0;
    wire [63:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_ia;
    wire [1:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_aa;
    wire [1:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_ab;
    wire [63:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_iq;
    wire [63:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_q;
    wire [1:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_wraddr_i = 2'b11;
    wire [1:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_offset_q;
    wire [2:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_a;
    wire [2:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_b;
    logic [2:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_o;
    wire [2:0] redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist8_sync_together180_aunroll_x_in_i_valid_2(DELAY,764)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_together180_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist8_sync_together180_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together180_aunroll_x_in_i_valid_2_q <= redist8_sync_together180_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist9_sync_together180_aunroll_x_in_i_valid_3(DELAY,765)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist9_sync_together180_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist9_sync_together180_aunroll_x_in_i_valid_3_q <= $unsigned(redist8_sync_together180_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,398)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist9_sync_together180_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg11(REG,407)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist9_sync_together180_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i3_2167(CONSTANT,55)
    assign c_i3_2167_q = $unsigned(3'b010);

    // i_and2647_i_zfp_1d_1block66_vt_const_15(CONSTANT,74)
    assign i_and2647_i_zfp_1d_1block66_vt_const_15_q = $unsigned(5'b00000);

    // c_i3_1169(CONSTANT,54)
    assign c_i3_1169_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next4_zfp_1d_1block103(ADD,114)@4
    assign i_fpga_indvars_iv_next4_zfp_1d_1block103_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x_q};
    assign i_fpga_indvars_iv_next4_zfp_1d_1block103_b = {1'b0, c_i3_1169_q};
    assign i_fpga_indvars_iv_next4_zfp_1d_1block103_o = $unsigned(i_fpga_indvars_iv_next4_zfp_1d_1block103_a) + $unsigned(i_fpga_indvars_iv_next4_zfp_1d_1block103_b);
    assign i_fpga_indvars_iv_next4_zfp_1d_1block103_q = i_fpga_indvars_iv_next4_zfp_1d_1block103_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next4_zfp_1d_1block103_sel_x(BITSELECT,259)@4
    assign bgTrunc_i_fpga_indvars_iv_next4_zfp_1d_1block103_sel_x_b = i_fpga_indvars_iv_next4_zfp_1d_1block103_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_element_extension2_x(BITJOIN,297)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_element_extension2_x_q = {i_and2647_i_zfp_1d_1block66_vt_const_15_q, bgTrunc_i_fpga_indvars_iv_next4_zfp_1d_1block103_sel_x_b};

    // i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x(LOGICAL,290)@1
    assign i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg13(REG,409)@0 + 1
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

    // redist13_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_2(DELAY,769)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q);
            redist13_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_2_q <= redist13_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg12(REG,408)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist8_sync_together180_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x(FIFODELAY,298)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q);
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_valid = valid_fanout_reg12_q & redist13_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_data = i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_element_extension2_x_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_valid[0];
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x (
        .i_valid(i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_adapt_scalar_trunc4_sel_x(BITSELECT,300)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block1_x_o_data[2:0];

    // i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x(MUX,284)@4
    assign i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x_s = redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x_s or i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_adapt_scalar_trunc4_sel_x_b or c_i3_2167_q)
    begin
        unique case (i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x_q = i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_1d_1block0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x_q = c_i3_2167_q;
            default : i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x_q = 3'b0;
        endcase
    end

    // i_exitcond5_zfp_1d_1block98_cmp_nsign(LOGICAL,464)@4
    assign i_exitcond5_zfp_1d_1block98_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_1d_1block97_mux_x_q[2:2]));

    // i_llvm_fpga_push_i1_notexitcond_zfp_1d_1block102(BLACKBOX,132)@4
    // in in_empty_in@20000000
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    zfp_1d_1block_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_zfp_1d_1block102 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond5_zfp_1d_1block98_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_zfp_1d_1block102_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_zfp_1d_1block102_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2(BLACKBOX,125)@0
    // in in_stall_in@20000000
    zfp_1d_1block_i_llvm_fpga_dummy_thread_b4_dummy_zfp_1d_1block0 thei_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4(DELAY,786)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out);
            redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_delay_1 <= redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_delay_0;
            redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_delay_2 <= redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_delay_1;
            redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_q <= redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3(BLACKBOX,130)@0
    // in in_stall_in@20000000
    zfp_1d_1block_i_llvm_fpga_forked_b4_forked_zfp_1d_1block0 thei_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4(DELAY,784)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out);
            redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_delay_1 <= redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_delay_0;
            redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_delay_2 <= redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_delay_1;
            redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_q <= redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6(BLACKBOX,131)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_1d_1block_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_zfp_1d_1block6 (
        .in_data_in(redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_q),
        .in_dummy_in(redist30_i_llvm_fpga_dummy_thread_zfp_1d_1block_b4_dummy_zfp_1d_1block2_out_dummy_out_4_q),
        .in_forked_in(redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_zfp_1d_1block102_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_zfp_1d_1block102_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,253)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,271)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,272)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,273)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_pipeline_valid_out;

    // i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_c_i7_03_x(CONSTANT,287)
    assign i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_c_i7_03_x_q = $unsigned(7'b0000000);

    // redist27_i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_data_out_2(DELAY,783)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_data_out);
            redist27_i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_data_out_2_q <= redist27_i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_data_out_2_delay_0;
        end
    end

    // i_zfp_1d_1block_b4_next_iter_isreal_zfp_1d_1block7(LOGICAL,241)@6
    assign i_zfp_1d_1block_b4_next_iter_isreal_zfp_1d_1block7_q = i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q & redist27_i_llvm_fpga_pipeline_keep_going_zfp_1d_1block6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_element_extension2_x(BITJOIN,288)@6
    assign i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_element_extension2_x_q = {i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_c_i7_03_x_q, i_zfp_1d_1block_b4_next_iter_isreal_zfp_1d_1block7_q};

    // valid_fanout_reg4(REG,400)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist8_sync_together180_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist14_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_3(DELAY,770)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_3_q <= $unsigned(redist13_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_2_q);
        end
    end

    // redist15_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_4(DELAY,771)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_4_q <= $unsigned(redist14_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_3_q);
        end
    end

    // redist10_sync_together180_aunroll_x_in_i_valid_4(DELAY,766)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together180_aunroll_x_in_i_valid_4_q <= $unsigned(redist9_sync_together180_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg3(REG,399)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist10_sync_together180_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x(FIFODELAY,289)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_stall = ~ (valid_fanout_reg4_q & redist13_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_valid = valid_fanout_reg3_q & redist15_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_data = i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x (
        .i_valid(i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_adapt_scalar_trunc4_sel_x(BITSELECT,291)@6
    assign i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block1_x_o_data[0:0];

    // redist29_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_6(DELAY,785)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_6_delay_0 <= $unsigned(redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_q);
            redist29_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_6_q <= redist29_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x(MUX,282)@6
    assign i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_s = redist29_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_s or i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q = i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q = 1'b0;
        endcase
    end

    // redist16_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q_9(DELAY,772)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist16_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q_9 ( .xin(i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q), .xout(redist16_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_zfp_1d_1block_b4_current_iter_isspec_zfp_1d_1block5(LOGICAL,240)@15
    assign i_zfp_1d_1block_b4_current_iter_isspec_zfp_1d_1block5_q = redist16_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block0_i_llvm_fpga_pop_coalesce_i1_zfp_1d_1block_b4_current_iter_isreal_zfp_1d_1block4_mux_x_q_9_q ^ VCC_q;

    // redist11_sync_together180_aunroll_x_in_i_valid_5(DELAY,767)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist11_sync_together180_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist11_sync_together180_aunroll_x_in_i_valid_5_q <= $unsigned(redist10_sync_together180_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg0(REG,396)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist11_sync_together180_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist7_valid_fanout_reg0_q_9(DELAY,763)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("SYNC"), .phase(6), .modulus(2), .reset_high(1'b0) )
    redist7_valid_fanout_reg0_q_9 ( .xin(valid_fanout_reg0_q), .xout(redist7_valid_fanout_reg0_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_notcmp_zfp_1d_1block101(LOGICAL,137)@15
    assign i_notcmp_zfp_1d_1block101_q = redist6_i_exitcond5_zfp_1d_1block98_cmp_nsign_q_11_q ^ VCC_q;

    // redist6_i_exitcond5_zfp_1d_1block98_cmp_nsign_q_11(DELAY,762)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist6_i_exitcond5_zfp_1d_1block98_cmp_nsign_q_11 ( .xin(i_exitcond5_zfp_1d_1block98_cmp_nsign_q), .xout(redist6_i_exitcond5_zfp_1d_1block98_cmp_nsign_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_1_i_zfp_1d_1block85_vt_const_63(CONSTANT,63)
    assign i_acl_1_i_zfp_1d_1block85_vt_const_63_q = $unsigned(63'b000000000000000000000000000000000000000000000000000000000000000);

    // i_add_i42_i_zfp_1d_1block45_vt_const_31(CONSTANT,67)
    assign i_add_i42_i_zfp_1d_1block45_vt_const_31_q = $unsigned(25'b0000000000000000000000000);

    // c_i32_32153(CONSTANT,49)
    assign c_i32_32153_q = $unsigned(32'b00000000000000000000000000100000);

    // i_and7_i_zfp_1d_1block49_vt_const_31(CONSTANT,89)
    assign i_and7_i_zfp_1d_1block49_vt_const_31_q = $unsigned(26'b00000000000000000000000000);

    // c_i32_1150(CONSTANT,44)
    assign c_i32_1150_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_0152(CONSTANT,40)
    assign c_i32_0152_q = $unsigned(32'b00000000000000000000000000000000);

    // rightShiftStage5Idx1Rng32_uid748_i_x_lobit_i_zfp_1d_1block0_shift_x(BITSELECT,747)@7
    assign rightShiftStage5Idx1Rng32_uid748_i_x_lobit_i_zfp_1d_1block0_shift_x_b = rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_q[63:32];

    // rightShiftStage5Idx1_uid750_i_x_lobit_i_zfp_1d_1block0_shift_x(BITJOIN,749)@7
    assign rightShiftStage5Idx1_uid750_i_x_lobit_i_zfp_1d_1block0_shift_x_q = {c_i32_0152_q, rightShiftStage5Idx1Rng32_uid748_i_x_lobit_i_zfp_1d_1block0_shift_x_b};

    // i_shr20_i_i_zfp_1d_1block39_vt_const_31(CONSTANT,190)
    assign i_shr20_i_i_zfp_1d_1block39_vt_const_31_q = $unsigned(16'b0000000000000000);

    // rightShiftStage4Idx1Rng16_uid743_i_x_lobit_i_zfp_1d_1block0_shift_x(BITSELECT,742)@7
    assign rightShiftStage4Idx1Rng16_uid743_i_x_lobit_i_zfp_1d_1block0_shift_x_b = rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_q[63:16];

    // rightShiftStage4Idx1_uid745_i_x_lobit_i_zfp_1d_1block0_shift_x(BITJOIN,744)@7
    assign rightShiftStage4Idx1_uid745_i_x_lobit_i_zfp_1d_1block0_shift_x_q = {i_shr20_i_i_zfp_1d_1block39_vt_const_31_q, rightShiftStage4Idx1Rng16_uid743_i_x_lobit_i_zfp_1d_1block0_shift_x_b};

    // i_shr18_i_i_zfp_1d_1block37_vt_const_31(CONSTANT,187)
    assign i_shr18_i_i_zfp_1d_1block37_vt_const_31_q = $unsigned(8'b00000000);

    // rightShiftStage3Idx1Rng8_uid738_i_x_lobit_i_zfp_1d_1block0_shift_x(BITSELECT,737)@7
    assign rightShiftStage3Idx1Rng8_uid738_i_x_lobit_i_zfp_1d_1block0_shift_x_b = rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_q[63:8];

    // rightShiftStage3Idx1_uid740_i_x_lobit_i_zfp_1d_1block0_shift_x(BITJOIN,739)@7
    assign rightShiftStage3Idx1_uid740_i_x_lobit_i_zfp_1d_1block0_shift_x_q = {i_shr18_i_i_zfp_1d_1block37_vt_const_31_q, rightShiftStage3Idx1Rng8_uid738_i_x_lobit_i_zfp_1d_1block0_shift_x_b};

    // i_and7_i_zfp_1d_1block49_vt_const_3(CONSTANT,88)
    assign i_and7_i_zfp_1d_1block49_vt_const_3_q = $unsigned(4'b0000);

    // rightShiftStage2Idx1Rng4_uid733_i_x_lobit_i_zfp_1d_1block0_shift_x(BITSELECT,732)@7
    assign rightShiftStage2Idx1Rng4_uid733_i_x_lobit_i_zfp_1d_1block0_shift_x_b = rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_q[63:4];

    // rightShiftStage2Idx1_uid735_i_x_lobit_i_zfp_1d_1block0_shift_x(BITJOIN,734)@7
    assign rightShiftStage2Idx1_uid735_i_x_lobit_i_zfp_1d_1block0_shift_x_q = {i_and7_i_zfp_1d_1block49_vt_const_3_q, rightShiftStage2Idx1Rng4_uid733_i_x_lobit_i_zfp_1d_1block0_shift_x_b};

    // i_and28_i_zfp_1d_1block67_vt_const_1(CONSTANT,78)
    assign i_and28_i_zfp_1d_1block67_vt_const_1_q = $unsigned(2'b00);

    // rightShiftStage1Idx1Rng2_uid728_i_x_lobit_i_zfp_1d_1block0_shift_x(BITSELECT,727)@7
    assign rightShiftStage1Idx1Rng2_uid728_i_x_lobit_i_zfp_1d_1block0_shift_x_b = rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_q[63:2];

    // rightShiftStage1Idx1_uid730_i_x_lobit_i_zfp_1d_1block0_shift_x(BITJOIN,729)@7
    assign rightShiftStage1Idx1_uid730_i_x_lobit_i_zfp_1d_1block0_shift_x_q = {i_and28_i_zfp_1d_1block67_vt_const_1_q, rightShiftStage1Idx1Rng2_uid728_i_x_lobit_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid723_i_x_lobit_i_zfp_1d_1block0_shift_x(BITSELECT,722)@7
    assign rightShiftStage0Idx1Rng1_uid723_i_x_lobit_i_zfp_1d_1block0_shift_x_b = redist24_i_replace_phi_zfp_1d_1block11_q_1_q[63:1];

    // rightShiftStage0Idx1_uid725_i_x_lobit_i_zfp_1d_1block0_shift_x(BITJOIN,724)@7
    assign rightShiftStage0Idx1_uid725_i_x_lobit_i_zfp_1d_1block0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid723_i_x_lobit_i_zfp_1d_1block0_shift_x_b};

    // valid_fanout_reg5(REG,401)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist11_sync_together180_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_sub13_i8_zfp_1d_1block9(BLACKBOX,128)@6
    zfp_1d_1block_i_llvm_fpga_ffwd_dest_i64_sub13_i8_0 thei_llvm_fpga_ffwd_dest_i64_sub13_i8_zfp_1d_1block9 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i64_sub13_i8_zfp_1d_1block9_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_undef142(CONSTANT,60)
    assign c_i64_undef142_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg16(REG,412)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist11_sync_together180_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_add10_i6_zfp_1d_1block112(BLACKBOX,126)@6
    zfp_1d_1block_i_llvm_fpga_ffwd_dest_i64_add10_i6_0 thei_llvm_fpga_ffwd_dest_i64_add10_i6_zfp_1d_1block112 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i64_add10_i6_zfp_1d_1block112_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,411)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist11_sync_together180_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_sub15_i9_zfp_1d_1block110(BLACKBOX,129)@6
    zfp_1d_1block_i_llvm_fpga_ffwd_dest_i64_sub15_i9_0 thei_llvm_fpga_ffwd_dest_i64_sub15_i9_zfp_1d_1block110 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i64_sub15_i9_zfp_1d_1block110_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,410)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist11_sync_together180_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_add11_i7_zfp_1d_1block109(BLACKBOX,127)@6
    zfp_1d_1block_i_llvm_fpga_ffwd_dest_i64_add11_i7_0 thei_llvm_fpga_ffwd_dest_i64_add11_i7_zfp_1d_1block109 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i64_add11_i7_zfp_1d_1block109_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_2146_recast_x(CONSTANT,266)
    assign c_i32_2146_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // c_i32_1151(CONSTANT,45)
    assign c_i32_1151_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg10(REG,406)@0 + 1
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

    // valid_fanout_reg9(REG,405)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist9_sync_together180_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x(FIFODELAY,292)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_stall = ~ (valid_fanout_reg10_q & i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_valid = valid_fanout_reg9_q & redist14_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_data = redist18_bgTrunc_i_inc9_zfp_1d_1block96_sel_x_b_1_q;
    assign i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x (
        .i_valid(i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_i_stall_bitsignaltemp),
        .i_data(redist18_bgTrunc_i_inc9_zfp_1d_1block96_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block0_i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block95_mux_x(MUX,283)@4
    assign i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block0_i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block95_mux_x_s = redist28_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block0_i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block95_mux_x_s or i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_o_data or c_i32_0152_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block0_i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block95_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block0_i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block95_mux_x_q = i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block0_i_llvm_fpga_push_i32_i1_09_push16_zfp_1d_1block1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block0_i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block95_mux_x_q = c_i32_0152_q;
            default : i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block0_i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block95_mux_x_q = 32'b0;
        endcase
    end

    // i_inc9_zfp_1d_1block96(ADD,116)@4
    assign i_inc9_zfp_1d_1block96_a = {1'b0, i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block0_i_llvm_fpga_pop_i32_i1_09_pop16_zfp_1d_1block95_mux_x_q};
    assign i_inc9_zfp_1d_1block96_b = {1'b0, c_i32_1151_q};
    assign i_inc9_zfp_1d_1block96_o = $unsigned(i_inc9_zfp_1d_1block96_a) + $unsigned(i_inc9_zfp_1d_1block96_b);
    assign i_inc9_zfp_1d_1block96_q = i_inc9_zfp_1d_1block96_o[32:0];

    // bgTrunc_i_inc9_zfp_1d_1block96_sel_x(BITSELECT,260)@4
    assign bgTrunc_i_inc9_zfp_1d_1block96_sel_x_b = i_inc9_zfp_1d_1block96_q[31:0];

    // redist18_bgTrunc_i_inc9_zfp_1d_1block96_sel_x_b_1(DELAY,774)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_bgTrunc_i_inc9_zfp_1d_1block96_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc9_zfp_1d_1block96_sel_x_b);
        end
    end

    // i_unnamed_zfp_1d_1block107(LOGICAL,222)@5 + 1
    assign i_unnamed_zfp_1d_1block107_qi = $unsigned(redist18_bgTrunc_i_inc9_zfp_1d_1block96_sel_x_b_1_q == c_i32_2146_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_1block107_delay ( .xin(i_unnamed_zfp_1d_1block107_qi), .xout(i_unnamed_zfp_1d_1block107_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_zfp_1d_1block111(MUX,223)@6
    assign i_unnamed_zfp_1d_1block111_s = i_unnamed_zfp_1d_1block107_q;
    always @(i_unnamed_zfp_1d_1block111_s or i_llvm_fpga_ffwd_dest_i64_add11_i7_zfp_1d_1block109_out_dest_data_out_1_0 or i_llvm_fpga_ffwd_dest_i64_sub15_i9_zfp_1d_1block110_out_dest_data_out_3_0)
    begin
        unique case (i_unnamed_zfp_1d_1block111_s)
            1'b0 : i_unnamed_zfp_1d_1block111_q = i_llvm_fpga_ffwd_dest_i64_add11_i7_zfp_1d_1block109_out_dest_data_out_1_0;
            1'b1 : i_unnamed_zfp_1d_1block111_q = i_llvm_fpga_ffwd_dest_i64_sub15_i9_zfp_1d_1block110_out_dest_data_out_3_0;
            default : i_unnamed_zfp_1d_1block111_q = 64'b0;
        endcase
    end

    // c_i32_3170_recast_x(CONSTANT,267)
    assign c_i32_3170_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_zfp_1d_1block105(LOGICAL,221)@5 + 1
    assign i_unnamed_zfp_1d_1block105_qi = $unsigned(redist18_bgTrunc_i_inc9_zfp_1d_1block96_sel_x_b_1_q == c_i32_3170_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_1block105_delay ( .xin(i_unnamed_zfp_1d_1block105_qi), .xout(i_unnamed_zfp_1d_1block105_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_zfp_1d_1block113(MUX,224)@6
    assign i_unnamed_zfp_1d_1block113_s = i_unnamed_zfp_1d_1block105_q;
    always @(i_unnamed_zfp_1d_1block113_s or i_unnamed_zfp_1d_1block111_q or i_llvm_fpga_ffwd_dest_i64_add10_i6_zfp_1d_1block112_out_dest_data_out_0_0)
    begin
        unique case (i_unnamed_zfp_1d_1block113_s)
            1'b0 : i_unnamed_zfp_1d_1block113_q = i_unnamed_zfp_1d_1block111_q;
            1'b1 : i_unnamed_zfp_1d_1block113_q = i_llvm_fpga_ffwd_dest_i64_add10_i6_zfp_1d_1block112_out_dest_data_out_0_0;
            default : i_unnamed_zfp_1d_1block113_q = 64'b0;
        endcase
    end

    // valid_fanout_reg18(REG,414)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist8_sync_together180_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg17(REG,413)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist10_sync_together180_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x(FIFODELAY,301)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_stall = ~ (valid_fanout_reg18_q & redist13_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_valid = valid_fanout_reg17_q & redist15_i_llvm_fpga_push_i1_zfp_1d_1block_b4_next_iter_isreal_push_zfp_1d_1block0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_data = i_unnamed_zfp_1d_1block113_q;
    assign i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x (
        .i_valid(i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_i_stall_bitsignaltemp),
        .i_data(i_unnamed_zfp_1d_1block113_q),
        .o_data(i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x(MUX,285)@6
    assign i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x_s = redist29_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x_s or i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_o_data or c_i64_undef142_q)
    begin
        unique case (i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x_q = i_llvm_fpga_push_i64_push15_zfp_1d_1block0_i_llvm_fpga_push_i64_push15_zfp_1d_1block1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x_q = c_i64_undef142_q;
            default : i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x_q = 64'b0;
        endcase
    end

    // i_replace_phi_zfp_1d_1block11(MUX,154)@6
    assign i_replace_phi_zfp_1d_1block11_s = redist29_i_llvm_fpga_forked_zfp_1d_1block_b4_forked_zfp_1d_1block3_out_buffer_out_6_q;
    always @(i_replace_phi_zfp_1d_1block11_s or i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x_q or i_llvm_fpga_ffwd_dest_i64_sub13_i8_zfp_1d_1block9_out_dest_data_out_2_0)
    begin
        unique case (i_replace_phi_zfp_1d_1block11_s)
            1'b0 : i_replace_phi_zfp_1d_1block11_q = i_llvm_fpga_pop_i64_pop15_zfp_1d_1block0_i_llvm_fpga_pop_i64_pop15_zfp_1d_1block10_mux_x_q;
            1'b1 : i_replace_phi_zfp_1d_1block11_q = i_llvm_fpga_ffwd_dest_i64_sub13_i8_zfp_1d_1block9_out_dest_data_out_2_0;
            default : i_replace_phi_zfp_1d_1block11_q = 64'b0;
        endcase
    end

    // redist24_i_replace_phi_zfp_1d_1block11_q_1(DELAY,780)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_replace_phi_zfp_1d_1block11_q_1_q <= $unsigned(i_replace_phi_zfp_1d_1block11_q);
        end
    end

    // rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x(MUX,726)@7
    assign rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_s or redist24_i_replace_phi_zfp_1d_1block11_q_1_q or rightShiftStage0Idx1_uid725_i_x_lobit_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_q = redist24_i_replace_phi_zfp_1d_1block11_q_1_q;
            1'b1 : rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid725_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x(MUX,731)@7
    assign rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_s or rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_q or rightShiftStage1Idx1_uid730_i_x_lobit_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage0_uid727_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage1Idx1_uid730_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x(MUX,736)@7
    assign rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_s or rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_q or rightShiftStage2Idx1_uid735_i_x_lobit_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage1_uid732_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage2Idx1_uid735_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x(MUX,741)@7
    assign rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_s or rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_q or rightShiftStage3Idx1_uid740_i_x_lobit_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage2_uid737_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage3Idx1_uid740_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x(MUX,746)@7
    assign rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_s or rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_q or rightShiftStage4Idx1_uid745_i_x_lobit_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage3_uid742_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage4Idx1_uid745_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage5_uid752_i_x_lobit_i_zfp_1d_1block0_shift_x(MUX,751)@7
    assign rightShiftStage5_uid752_i_x_lobit_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage5_uid752_i_x_lobit_i_zfp_1d_1block0_shift_x_s or rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_q or rightShiftStage5Idx1_uid750_i_x_lobit_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage5_uid752_i_x_lobit_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage5_uid752_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage4_uid747_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage5_uid752_i_x_lobit_i_zfp_1d_1block0_shift_x_q = rightShiftStage5Idx1_uid750_i_x_lobit_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage5_uid752_i_x_lobit_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // i_x_lobit_i_zfp_1d_1block12_vt_select_0(BITSELECT,238)@7
    assign i_x_lobit_i_zfp_1d_1block12_vt_select_0_b = rightShiftStage5_uid752_i_x_lobit_i_zfp_1d_1block0_shift_x_q[0:0];

    // i_x_lobit_i_zfp_1d_1block12_vt_join(BITJOIN,237)@7
    assign i_x_lobit_i_zfp_1d_1block12_vt_join_q = {i_acl_1_i_zfp_1d_1block85_vt_const_63_q, i_x_lobit_i_zfp_1d_1block12_vt_select_0_b};

    // xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITSELECT,688)@6
    assign xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b = $unsigned(i_replace_phi_zfp_1d_1block11_q[63:63]);

    // seMsb_to32_uid715(BITSELECT,714)@6
    assign seMsb_to32_uid715_in = $unsigned({{31{xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b[0]}}, xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b});
    assign seMsb_to32_uid715_b = $unsigned(seMsb_to32_uid715_in[31:0]);

    // rightShiftStage5Idx1Rng32_uid716_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITSELECT,715)@6
    assign rightShiftStage5Idx1Rng32_uid716_i_x_lobit43_i_zfp_1d_1block0_shift_x_b = $unsigned(rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_q[63:32]);

    // rightShiftStage5Idx1_uid717_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITJOIN,716)@6
    assign rightShiftStage5Idx1_uid717_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = {seMsb_to32_uid715_b, rightShiftStage5Idx1Rng32_uid716_i_x_lobit43_i_zfp_1d_1block0_shift_x_b};

    // seMsb_to16_uid710(BITSELECT,709)@6
    assign seMsb_to16_uid710_in = $unsigned({{15{xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b[0]}}, xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b});
    assign seMsb_to16_uid710_b = $unsigned(seMsb_to16_uid710_in[15:0]);

    // rightShiftStage4Idx1Rng16_uid711_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITSELECT,710)@6
    assign rightShiftStage4Idx1Rng16_uid711_i_x_lobit43_i_zfp_1d_1block0_shift_x_b = $unsigned(rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_q[63:16]);

    // rightShiftStage4Idx1_uid712_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITJOIN,711)@6
    assign rightShiftStage4Idx1_uid712_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = {seMsb_to16_uid710_b, rightShiftStage4Idx1Rng16_uid711_i_x_lobit43_i_zfp_1d_1block0_shift_x_b};

    // seMsb_to8_uid705(BITSELECT,704)@6
    assign seMsb_to8_uid705_in = $unsigned({{7{xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b[0]}}, xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b});
    assign seMsb_to8_uid705_b = $unsigned(seMsb_to8_uid705_in[7:0]);

    // rightShiftStage3Idx1Rng8_uid706_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITSELECT,705)@6
    assign rightShiftStage3Idx1Rng8_uid706_i_x_lobit43_i_zfp_1d_1block0_shift_x_b = $unsigned(rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_q[63:8]);

    // rightShiftStage3Idx1_uid707_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITJOIN,706)@6
    assign rightShiftStage3Idx1_uid707_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = {seMsb_to8_uid705_b, rightShiftStage3Idx1Rng8_uid706_i_x_lobit43_i_zfp_1d_1block0_shift_x_b};

    // seMsb_to4_uid700(BITSELECT,699)@6
    assign seMsb_to4_uid700_in = $unsigned({{3{xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b[0]}}, xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b});
    assign seMsb_to4_uid700_b = $unsigned(seMsb_to4_uid700_in[3:0]);

    // rightShiftStage2Idx1Rng4_uid701_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITSELECT,700)@6
    assign rightShiftStage2Idx1Rng4_uid701_i_x_lobit43_i_zfp_1d_1block0_shift_x_b = $unsigned(rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_q[63:4]);

    // rightShiftStage2Idx1_uid702_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITJOIN,701)@6
    assign rightShiftStage2Idx1_uid702_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = {seMsb_to4_uid700_b, rightShiftStage2Idx1Rng4_uid701_i_x_lobit43_i_zfp_1d_1block0_shift_x_b};

    // seMsb_to2_uid695(BITSELECT,694)@6
    assign seMsb_to2_uid695_in = $unsigned({{1{xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b[0]}}, xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b});
    assign seMsb_to2_uid695_b = $unsigned(seMsb_to2_uid695_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid696_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITSELECT,695)@6
    assign rightShiftStage1Idx1Rng2_uid696_i_x_lobit43_i_zfp_1d_1block0_shift_x_b = $unsigned(rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_q[63:2]);

    // rightShiftStage1Idx1_uid697_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITJOIN,696)@6
    assign rightShiftStage1Idx1_uid697_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = {seMsb_to2_uid695_b, rightShiftStage1Idx1Rng2_uid696_i_x_lobit43_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid691_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITSELECT,690)@6
    assign rightShiftStage0Idx1Rng1_uid691_i_x_lobit43_i_zfp_1d_1block0_shift_x_b = $unsigned(i_replace_phi_zfp_1d_1block11_q[63:1]);

    // rightShiftStage0Idx1_uid692_i_x_lobit43_i_zfp_1d_1block0_shift_x(BITJOIN,691)@6
    assign rightShiftStage0Idx1_uid692_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = {xMSB_uid689_i_x_lobit43_i_zfp_1d_1block0_shift_x_b, rightShiftStage0Idx1Rng1_uid691_i_x_lobit43_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x(MUX,693)@6
    assign rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_s or i_replace_phi_zfp_1d_1block11_q or rightShiftStage0Idx1_uid692_i_x_lobit43_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = i_replace_phi_zfp_1d_1block11_q;
            1'b1 : rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid692_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x(MUX,698)@6
    assign rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_s or rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_q or rightShiftStage1Idx1_uid697_i_x_lobit43_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage0_uid694_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage1Idx1_uid697_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x(MUX,703)@6
    assign rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_s or rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_q or rightShiftStage2Idx1_uid702_i_x_lobit43_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage1_uid699_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage2Idx1_uid702_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x(MUX,708)@6
    assign rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_s or rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_q or rightShiftStage3Idx1_uid707_i_x_lobit43_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage2_uid704_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage3Idx1_uid707_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x(MUX,713)@6
    assign rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_s or rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_q or rightShiftStage4Idx1_uid712_i_x_lobit43_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage3_uid709_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage4Idx1_uid712_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage5_uid719_i_x_lobit43_i_zfp_1d_1block0_shift_x(MUX,718)@6
    assign rightShiftStage5_uid719_i_x_lobit43_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage5_uid719_i_x_lobit43_i_zfp_1d_1block0_shift_x_s or rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_q or rightShiftStage5Idx1_uid717_i_x_lobit43_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage5_uid719_i_x_lobit43_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage5_uid719_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage4_uid714_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage5_uid719_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = rightShiftStage5Idx1_uid717_i_x_lobit43_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage5_uid719_i_x_lobit43_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // i_xor_i_i_zfp_1d_1block14(LOGICAL,239)@6 + 1
    assign i_xor_i_i_zfp_1d_1block14_qi = rightShiftStage5_uid719_i_x_lobit43_i_zfp_1d_1block0_shift_x_q ^ i_replace_phi_zfp_1d_1block11_q;
    dspba_delay_ver #( .width(64), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_xor_i_i_zfp_1d_1block14_delay ( .xin(i_xor_i_i_zfp_1d_1block14_qi), .xout(i_xor_i_i_zfp_1d_1block14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_add_i_i_zfp_1d_1block15(ADD,71)@7
    assign i_add_i_i_zfp_1d_1block15_a = {1'b0, i_xor_i_i_zfp_1d_1block14_q};
    assign i_add_i_i_zfp_1d_1block15_b = {1'b0, i_x_lobit_i_zfp_1d_1block12_vt_join_q};
    assign i_add_i_i_zfp_1d_1block15_o = $unsigned(i_add_i_i_zfp_1d_1block15_a) + $unsigned(i_add_i_i_zfp_1d_1block15_b);
    assign i_add_i_i_zfp_1d_1block15_q = i_add_i_i_zfp_1d_1block15_o[64:0];

    // bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x(BITSELECT,258)@7
    assign bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b = i_add_i_i_zfp_1d_1block15_q[63:0];

    // redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1(DELAY,775)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b);
        end
    end

    // i_conv1_i_i_zfp_1d_1block17_sel_x(BITSELECT,277)@8
    assign i_conv1_i_i_zfp_1d_1block17_sel_x_b = redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1_q[31:0];

    // rightShiftStage0Idx1Rng1_uid570_i_shr12_i_i_zfp_1d_1block0_shift_x(BITSELECT,569)@8
    assign rightShiftStage0Idx1Rng1_uid570_i_shr12_i_i_zfp_1d_1block0_shift_x_b = i_conv1_i_i_zfp_1d_1block17_sel_x_b[31:1];

    // rightShiftStage0Idx1_uid572_i_shr12_i_i_zfp_1d_1block0_shift_x(BITJOIN,571)@8
    assign rightShiftStage0Idx1_uid572_i_shr12_i_i_zfp_1d_1block0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid570_i_shr12_i_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid574_i_shr12_i_i_zfp_1d_1block0_shift_x(MUX,573)@8
    assign rightShiftStage0_uid574_i_shr12_i_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid574_i_shr12_i_i_zfp_1d_1block0_shift_x_s or i_conv1_i_i_zfp_1d_1block17_sel_x_b or rightShiftStage0Idx1_uid572_i_shr12_i_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid574_i_shr12_i_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid574_i_shr12_i_i_zfp_1d_1block0_shift_x_q = i_conv1_i_i_zfp_1d_1block17_sel_x_b;
            1'b1 : rightShiftStage0_uid574_i_shr12_i_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid572_i_shr12_i_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid574_i_shr12_i_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr12_i_i_zfp_1d_1block31_vt_select_30(BITSELECT,180)@8
    assign i_shr12_i_i_zfp_1d_1block31_vt_select_30_b = rightShiftStage0_uid574_i_shr12_i_i_zfp_1d_1block0_shift_x_q[30:0];

    // i_shr12_i_i_zfp_1d_1block31_vt_join(BITJOIN,179)@8
    assign i_shr12_i_i_zfp_1d_1block31_vt_join_q = {GND_q, i_shr12_i_i_zfp_1d_1block31_vt_select_30_b};

    // i_or13_i_i_zfp_1d_1block32(LOGICAL,139)@8
    assign i_or13_i_i_zfp_1d_1block32_q = i_shr12_i_i_zfp_1d_1block31_vt_join_q | i_conv1_i_i_zfp_1d_1block17_sel_x_b;

    // rightShiftStage0Idx1Rng2_uid578_i_shr14_i_i_zfp_1d_1block0_shift_x(BITSELECT,577)@8
    assign rightShiftStage0Idx1Rng2_uid578_i_shr14_i_i_zfp_1d_1block0_shift_x_b = i_or13_i_i_zfp_1d_1block32_q[31:2];

    // rightShiftStage0Idx1_uid580_i_shr14_i_i_zfp_1d_1block0_shift_x(BITJOIN,579)@8
    assign rightShiftStage0Idx1_uid580_i_shr14_i_i_zfp_1d_1block0_shift_x_q = {i_and28_i_zfp_1d_1block67_vt_const_1_q, rightShiftStage0Idx1Rng2_uid578_i_shr14_i_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid582_i_shr14_i_i_zfp_1d_1block0_shift_x(MUX,581)@8
    assign rightShiftStage0_uid582_i_shr14_i_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid582_i_shr14_i_i_zfp_1d_1block0_shift_x_s or i_or13_i_i_zfp_1d_1block32_q or rightShiftStage0Idx1_uid580_i_shr14_i_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid582_i_shr14_i_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid582_i_shr14_i_i_zfp_1d_1block0_shift_x_q = i_or13_i_i_zfp_1d_1block32_q;
            1'b1 : rightShiftStage0_uid582_i_shr14_i_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid580_i_shr14_i_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid582_i_shr14_i_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr14_i_i_zfp_1d_1block33_vt_select_29(BITSELECT,183)@8
    assign i_shr14_i_i_zfp_1d_1block33_vt_select_29_b = rightShiftStage0_uid582_i_shr14_i_i_zfp_1d_1block0_shift_x_q[29:0];

    // i_shr14_i_i_zfp_1d_1block33_vt_join(BITJOIN,182)@8
    assign i_shr14_i_i_zfp_1d_1block33_vt_join_q = {i_and28_i_zfp_1d_1block67_vt_const_1_q, i_shr14_i_i_zfp_1d_1block33_vt_select_29_b};

    // i_or15_i_i_zfp_1d_1block34(LOGICAL,140)@8 + 1
    assign i_or15_i_i_zfp_1d_1block34_qi = i_shr14_i_i_zfp_1d_1block33_vt_join_q | i_or13_i_i_zfp_1d_1block32_q;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or15_i_i_zfp_1d_1block34_delay ( .xin(i_or15_i_i_zfp_1d_1block34_qi), .xout(i_or15_i_i_zfp_1d_1block34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rightShiftStage0Idx1Rng4_uid586_i_shr16_i_i_zfp_1d_1block0_shift_x(BITSELECT,585)@9
    assign rightShiftStage0Idx1Rng4_uid586_i_shr16_i_i_zfp_1d_1block0_shift_x_b = i_or15_i_i_zfp_1d_1block34_q[31:4];

    // rightShiftStage0Idx1_uid588_i_shr16_i_i_zfp_1d_1block0_shift_x(BITJOIN,587)@9
    assign rightShiftStage0Idx1_uid588_i_shr16_i_i_zfp_1d_1block0_shift_x_q = {i_and7_i_zfp_1d_1block49_vt_const_3_q, rightShiftStage0Idx1Rng4_uid586_i_shr16_i_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid590_i_shr16_i_i_zfp_1d_1block0_shift_x(MUX,589)@9
    assign rightShiftStage0_uid590_i_shr16_i_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid590_i_shr16_i_i_zfp_1d_1block0_shift_x_s or i_or15_i_i_zfp_1d_1block34_q or rightShiftStage0Idx1_uid588_i_shr16_i_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid590_i_shr16_i_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid590_i_shr16_i_i_zfp_1d_1block0_shift_x_q = i_or15_i_i_zfp_1d_1block34_q;
            1'b1 : rightShiftStage0_uid590_i_shr16_i_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid588_i_shr16_i_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid590_i_shr16_i_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr16_i_i_zfp_1d_1block35_vt_select_27(BITSELECT,186)@9
    assign i_shr16_i_i_zfp_1d_1block35_vt_select_27_b = rightShiftStage0_uid590_i_shr16_i_i_zfp_1d_1block0_shift_x_q[27:0];

    // i_shr16_i_i_zfp_1d_1block35_vt_join(BITJOIN,185)@9
    assign i_shr16_i_i_zfp_1d_1block35_vt_join_q = {i_and7_i_zfp_1d_1block49_vt_const_3_q, i_shr16_i_i_zfp_1d_1block35_vt_select_27_b};

    // i_or17_i_i_zfp_1d_1block36(LOGICAL,141)@9
    assign i_or17_i_i_zfp_1d_1block36_q = i_shr16_i_i_zfp_1d_1block35_vt_join_q | i_or15_i_i_zfp_1d_1block34_q;

    // rightShiftStage0Idx1Rng8_uid594_i_shr18_i_i_zfp_1d_1block0_shift_x(BITSELECT,593)@9
    assign rightShiftStage0Idx1Rng8_uid594_i_shr18_i_i_zfp_1d_1block0_shift_x_b = i_or17_i_i_zfp_1d_1block36_q[31:8];

    // rightShiftStage0Idx1_uid596_i_shr18_i_i_zfp_1d_1block0_shift_x(BITJOIN,595)@9
    assign rightShiftStage0Idx1_uid596_i_shr18_i_i_zfp_1d_1block0_shift_x_q = {i_shr18_i_i_zfp_1d_1block37_vt_const_31_q, rightShiftStage0Idx1Rng8_uid594_i_shr18_i_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid598_i_shr18_i_i_zfp_1d_1block0_shift_x(MUX,597)@9
    assign rightShiftStage0_uid598_i_shr18_i_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid598_i_shr18_i_i_zfp_1d_1block0_shift_x_s or i_or17_i_i_zfp_1d_1block36_q or rightShiftStage0Idx1_uid596_i_shr18_i_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid598_i_shr18_i_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid598_i_shr18_i_i_zfp_1d_1block0_shift_x_q = i_or17_i_i_zfp_1d_1block36_q;
            1'b1 : rightShiftStage0_uid598_i_shr18_i_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid596_i_shr18_i_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid598_i_shr18_i_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr18_i_i_zfp_1d_1block37_vt_select_23(BITSELECT,189)@9
    assign i_shr18_i_i_zfp_1d_1block37_vt_select_23_b = rightShiftStage0_uid598_i_shr18_i_i_zfp_1d_1block0_shift_x_q[23:0];

    // i_shr18_i_i_zfp_1d_1block37_vt_join(BITJOIN,188)@9
    assign i_shr18_i_i_zfp_1d_1block37_vt_join_q = {i_shr18_i_i_zfp_1d_1block37_vt_const_31_q, i_shr18_i_i_zfp_1d_1block37_vt_select_23_b};

    // i_or19_i_i_zfp_1d_1block38(LOGICAL,142)@9
    assign i_or19_i_i_zfp_1d_1block38_q = i_shr18_i_i_zfp_1d_1block37_vt_join_q | i_or17_i_i_zfp_1d_1block36_q;

    // rightShiftStage0Idx1Rng16_uid602_i_shr20_i_i_zfp_1d_1block0_shift_x(BITSELECT,601)@9
    assign rightShiftStage0Idx1Rng16_uid602_i_shr20_i_i_zfp_1d_1block0_shift_x_b = i_or19_i_i_zfp_1d_1block38_q[31:16];

    // rightShiftStage0Idx1_uid604_i_shr20_i_i_zfp_1d_1block0_shift_x(BITJOIN,603)@9
    assign rightShiftStage0Idx1_uid604_i_shr20_i_i_zfp_1d_1block0_shift_x_q = {i_shr20_i_i_zfp_1d_1block39_vt_const_31_q, rightShiftStage0Idx1Rng16_uid602_i_shr20_i_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid606_i_shr20_i_i_zfp_1d_1block0_shift_x(MUX,605)@9
    assign rightShiftStage0_uid606_i_shr20_i_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid606_i_shr20_i_i_zfp_1d_1block0_shift_x_s or i_or19_i_i_zfp_1d_1block38_q or rightShiftStage0Idx1_uid604_i_shr20_i_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid606_i_shr20_i_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid606_i_shr20_i_i_zfp_1d_1block0_shift_x_q = i_or19_i_i_zfp_1d_1block38_q;
            1'b1 : rightShiftStage0_uid606_i_shr20_i_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid604_i_shr20_i_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid606_i_shr20_i_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr20_i_i_zfp_1d_1block39_vt_select_15(BITSELECT,192)@9
    assign i_shr20_i_i_zfp_1d_1block39_vt_select_15_b = rightShiftStage0_uid606_i_shr20_i_i_zfp_1d_1block0_shift_x_q[15:0];

    // i_shr20_i_i_zfp_1d_1block39_vt_join(BITJOIN,191)@9
    assign i_shr20_i_i_zfp_1d_1block39_vt_join_q = {i_shr20_i_i_zfp_1d_1block39_vt_const_31_q, i_shr20_i_i_zfp_1d_1block39_vt_select_15_b};

    // i_or21_i_i_zfp_1d_1block40(LOGICAL,143)@9
    assign i_or21_i_i_zfp_1d_1block40_q = i_shr20_i_i_zfp_1d_1block39_vt_join_q | i_or19_i_i_zfp_1d_1block38_q;

    // i_neg22_i_i_zfp_1d_1block41(LOGICAL,134)@9
    assign i_neg22_i_i_zfp_1d_1block41_q = i_or21_i_i_zfp_1d_1block40_q ^ c_i32_1150_q;

    // i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42(EXTIFACE,121)@9
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_data = i_neg22_i_i_zfp_1d_1block41_q;
    acl_popcount #(
        .DATA_WIDTH(32),
        .PIPELINE_DEPTH(0)
    ) thei_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42 (
        .data(i_neg22_i_i_zfp_1d_1block41_q),
        .sum(i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_sum),
        .clock(clock)
    );

    // i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_select_5(BITSELECT,124)@9
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_select_5_b = i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_sum[5:0];

    // redist31_i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_select_5_b_1(DELAY,787)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_select_5_b_1_q <= $unsigned(i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_select_5_b);
        end
    end

    // i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_join(BITJOIN,123)@10
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_join_q = {i_and7_i_zfp_1d_1block49_vt_const_31_q, redist31_i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_select_5_b_1_q};

    // i_add_i42_i_zfp_1d_1block45(ADD,66)@10
    assign i_add_i42_i_zfp_1d_1block45_a = {1'b0, i_llvm_ctpop_i32_unnamed_zfp_1d_1block17_zfp_1d_1block42_vt_join_q};
    assign i_add_i42_i_zfp_1d_1block45_b = {1'b0, c_i32_32153_q};
    assign i_add_i42_i_zfp_1d_1block45_o = $unsigned(i_add_i42_i_zfp_1d_1block45_a) + $unsigned(i_add_i42_i_zfp_1d_1block45_b);
    assign i_add_i42_i_zfp_1d_1block45_q = i_add_i42_i_zfp_1d_1block45_o[32:0];

    // bgTrunc_i_add_i42_i_zfp_1d_1block45_sel_x(BITSELECT,256)@10
    assign bgTrunc_i_add_i42_i_zfp_1d_1block45_sel_x_b = i_add_i42_i_zfp_1d_1block45_q[31:0];

    // i_add_i42_i_zfp_1d_1block45_vt_select_6(BITSELECT,69)@10
    assign i_add_i42_i_zfp_1d_1block45_vt_select_6_b = bgTrunc_i_add_i42_i_zfp_1d_1block45_sel_x_b[6:0];

    // i_add_i42_i_zfp_1d_1block45_vt_join(BITJOIN,68)@10
    assign i_add_i42_i_zfp_1d_1block45_vt_join_q = {i_add_i42_i_zfp_1d_1block45_vt_const_31_q, i_add_i42_i_zfp_1d_1block45_vt_select_6_b};

    // i_shr2_i44_i_zfp_1d_1block18_vt_const_63(CONSTANT,193)
    assign i_shr2_i44_i_zfp_1d_1block18_vt_const_63_q = $unsigned(33'b000000000000000000000000000000000);

    // rightShiftStage1Idx1Rng32_uid615_i_shr2_i44_i_zfp_1d_1block0_shift_x(BITSELECT,614)@8
    assign rightShiftStage1Idx1Rng32_uid615_i_shr2_i44_i_zfp_1d_1block0_shift_x_b = rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid617_i_shr2_i44_i_zfp_1d_1block0_shift_x(BITJOIN,616)@8
    assign rightShiftStage1Idx1_uid617_i_shr2_i44_i_zfp_1d_1block0_shift_x_q = {c_i32_0152_q, rightShiftStage1Idx1Rng32_uid615_i_shr2_i44_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid610_i_shr2_i44_i_zfp_1d_1block0_shift_x(BITSELECT,609)@8
    assign rightShiftStage0Idx1Rng1_uid610_i_shr2_i44_i_zfp_1d_1block0_shift_x_b = redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1_q[63:1];

    // rightShiftStage0Idx1_uid612_i_shr2_i44_i_zfp_1d_1block0_shift_x(BITJOIN,611)@8
    assign rightShiftStage0Idx1_uid612_i_shr2_i44_i_zfp_1d_1block0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid610_i_shr2_i44_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x(MUX,613)@8
    assign rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_s or redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1_q or rightShiftStage0Idx1_uid612_i_shr2_i44_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_q = redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1_q;
            1'b1 : rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid612_i_shr2_i44_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid619_i_shr2_i44_i_zfp_1d_1block0_shift_x(MUX,618)@8
    assign rightShiftStage1_uid619_i_shr2_i44_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid619_i_shr2_i44_i_zfp_1d_1block0_shift_x_s or rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_q or rightShiftStage1Idx1_uid617_i_shr2_i44_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid619_i_shr2_i44_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage1_uid619_i_shr2_i44_i_zfp_1d_1block0_shift_x_q = rightShiftStage0_uid614_i_shr2_i44_i_zfp_1d_1block0_shift_x_q;
            1'b1 : rightShiftStage1_uid619_i_shr2_i44_i_zfp_1d_1block0_shift_x_q = rightShiftStage1Idx1_uid617_i_shr2_i44_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage1_uid619_i_shr2_i44_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // i_shr2_i44_i_zfp_1d_1block18_vt_select_30(BITSELECT,195)@8
    assign i_shr2_i44_i_zfp_1d_1block18_vt_select_30_b = rightShiftStage1_uid619_i_shr2_i44_i_zfp_1d_1block0_shift_x_q[30:0];

    // i_shr2_i44_i_zfp_1d_1block18_vt_join(BITJOIN,194)@8
    assign i_shr2_i44_i_zfp_1d_1block18_vt_join_q = {i_shr2_i44_i_zfp_1d_1block18_vt_const_63_q, i_shr2_i44_i_zfp_1d_1block18_vt_select_30_b};

    // rightShiftStage0Idx1Rng32_uid683_i_shr_i_i_zfp_1d_1block0_shift_x(BITSELECT,682)@8
    assign rightShiftStage0Idx1Rng32_uid683_i_shr_i_i_zfp_1d_1block0_shift_x_b = redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1_q[63:32];

    // rightShiftStage0Idx1_uid685_i_shr_i_i_zfp_1d_1block0_shift_x(BITJOIN,684)@8
    assign rightShiftStage0Idx1_uid685_i_shr_i_i_zfp_1d_1block0_shift_x_q = {c_i32_0152_q, rightShiftStage0Idx1Rng32_uid683_i_shr_i_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid687_i_shr_i_i_zfp_1d_1block0_shift_x(MUX,686)@8
    assign rightShiftStage0_uid687_i_shr_i_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid687_i_shr_i_i_zfp_1d_1block0_shift_x_s or redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1_q or rightShiftStage0Idx1_uid685_i_shr_i_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid687_i_shr_i_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid687_i_shr_i_i_zfp_1d_1block0_shift_x_q = redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1_q;
            1'b1 : rightShiftStage0_uid687_i_shr_i_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid685_i_shr_i_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid687_i_shr_i_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // i_shr_i_i_zfp_1d_1block16_vt_select_31(BITSELECT,210)@8
    assign i_shr_i_i_zfp_1d_1block16_vt_select_31_b = rightShiftStage0_uid687_i_shr_i_i_zfp_1d_1block0_shift_x_q[31:0];

    // i_shr_i_i_zfp_1d_1block16_vt_join(BITJOIN,209)@8
    assign i_shr_i_i_zfp_1d_1block16_vt_join_q = {c_i32_0152_q, i_shr_i_i_zfp_1d_1block16_vt_select_31_b};

    // i_or_i46_i_zfp_1d_1block19(LOGICAL,149)@8
    assign i_or_i46_i_zfp_1d_1block19_q = i_shr_i_i_zfp_1d_1block16_vt_join_q | i_shr2_i44_i_zfp_1d_1block18_vt_join_q;

    // i_or_i46_i_zfp_1d_1block19_vt_select_31(BITSELECT,152)@8
    assign i_or_i46_i_zfp_1d_1block19_vt_select_31_b = i_or_i46_i_zfp_1d_1block19_q[31:0];

    // i_or_i46_i_zfp_1d_1block19_vt_join(BITJOIN,151)@8
    assign i_or_i46_i_zfp_1d_1block19_vt_join_q = {c_i32_0152_q, i_or_i46_i_zfp_1d_1block19_vt_select_31_b};

    // i_or_i_i_zfp_1d_1block20_sel_x(BITSELECT,308)@8
    assign i_or_i_i_zfp_1d_1block20_sel_x_b = i_or_i46_i_zfp_1d_1block19_vt_join_q[31:0];

    // rightShiftStage0Idx1Rng2_uid637_i_shr3_i_i_zfp_1d_1block0_shift_x(BITSELECT,636)@8
    assign rightShiftStage0Idx1Rng2_uid637_i_shr3_i_i_zfp_1d_1block0_shift_x_b = i_or_i_i_zfp_1d_1block20_sel_x_b[31:2];

    // rightShiftStage0Idx1_uid639_i_shr3_i_i_zfp_1d_1block0_shift_x(BITJOIN,638)@8
    assign rightShiftStage0Idx1_uid639_i_shr3_i_i_zfp_1d_1block0_shift_x_q = {i_and28_i_zfp_1d_1block67_vt_const_1_q, rightShiftStage0Idx1Rng2_uid637_i_shr3_i_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid641_i_shr3_i_i_zfp_1d_1block0_shift_x(MUX,640)@8
    assign rightShiftStage0_uid641_i_shr3_i_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid641_i_shr3_i_i_zfp_1d_1block0_shift_x_s or i_or_i_i_zfp_1d_1block20_sel_x_b or rightShiftStage0Idx1_uid639_i_shr3_i_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid641_i_shr3_i_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid641_i_shr3_i_i_zfp_1d_1block0_shift_x_q = i_or_i_i_zfp_1d_1block20_sel_x_b;
            1'b1 : rightShiftStage0_uid641_i_shr3_i_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid639_i_shr3_i_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid641_i_shr3_i_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr3_i_i_zfp_1d_1block21_vt_select_29(BITSELECT,198)@8
    assign i_shr3_i_i_zfp_1d_1block21_vt_select_29_b = rightShiftStage0_uid641_i_shr3_i_i_zfp_1d_1block0_shift_x_q[29:0];

    // i_shr3_i_i_zfp_1d_1block21_vt_join(BITJOIN,197)@8
    assign i_shr3_i_i_zfp_1d_1block21_vt_join_q = {i_and28_i_zfp_1d_1block67_vt_const_1_q, i_shr3_i_i_zfp_1d_1block21_vt_select_29_b};

    // i_or4_i_i_zfp_1d_1block22(LOGICAL,144)@8 + 1
    assign i_or4_i_i_zfp_1d_1block22_qi = i_shr3_i_i_zfp_1d_1block21_vt_join_q | i_or_i_i_zfp_1d_1block20_sel_x_b;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or4_i_i_zfp_1d_1block22_delay ( .xin(i_or4_i_i_zfp_1d_1block22_qi), .xout(i_or4_i_i_zfp_1d_1block22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rightShiftStage0Idx1Rng4_uid645_i_shr5_i_i_zfp_1d_1block0_shift_x(BITSELECT,644)@9
    assign rightShiftStage0Idx1Rng4_uid645_i_shr5_i_i_zfp_1d_1block0_shift_x_b = i_or4_i_i_zfp_1d_1block22_q[31:4];

    // rightShiftStage0Idx1_uid647_i_shr5_i_i_zfp_1d_1block0_shift_x(BITJOIN,646)@9
    assign rightShiftStage0Idx1_uid647_i_shr5_i_i_zfp_1d_1block0_shift_x_q = {i_and7_i_zfp_1d_1block49_vt_const_3_q, rightShiftStage0Idx1Rng4_uid645_i_shr5_i_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid649_i_shr5_i_i_zfp_1d_1block0_shift_x(MUX,648)@9
    assign rightShiftStage0_uid649_i_shr5_i_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid649_i_shr5_i_i_zfp_1d_1block0_shift_x_s or i_or4_i_i_zfp_1d_1block22_q or rightShiftStage0Idx1_uid647_i_shr5_i_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid649_i_shr5_i_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid649_i_shr5_i_i_zfp_1d_1block0_shift_x_q = i_or4_i_i_zfp_1d_1block22_q;
            1'b1 : rightShiftStage0_uid649_i_shr5_i_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid647_i_shr5_i_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid649_i_shr5_i_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr5_i_i_zfp_1d_1block23_vt_select_27(BITSELECT,201)@9
    assign i_shr5_i_i_zfp_1d_1block23_vt_select_27_b = rightShiftStage0_uid649_i_shr5_i_i_zfp_1d_1block0_shift_x_q[27:0];

    // i_shr5_i_i_zfp_1d_1block23_vt_join(BITJOIN,200)@9
    assign i_shr5_i_i_zfp_1d_1block23_vt_join_q = {i_and7_i_zfp_1d_1block49_vt_const_3_q, i_shr5_i_i_zfp_1d_1block23_vt_select_27_b};

    // i_or6_i_i_zfp_1d_1block24(LOGICAL,145)@9
    assign i_or6_i_i_zfp_1d_1block24_q = i_shr5_i_i_zfp_1d_1block23_vt_join_q | i_or4_i_i_zfp_1d_1block22_q;

    // rightShiftStage0Idx1Rng8_uid653_i_shr7_i_i_zfp_1d_1block0_shift_x(BITSELECT,652)@9
    assign rightShiftStage0Idx1Rng8_uid653_i_shr7_i_i_zfp_1d_1block0_shift_x_b = i_or6_i_i_zfp_1d_1block24_q[31:8];

    // rightShiftStage0Idx1_uid655_i_shr7_i_i_zfp_1d_1block0_shift_x(BITJOIN,654)@9
    assign rightShiftStage0Idx1_uid655_i_shr7_i_i_zfp_1d_1block0_shift_x_q = {i_shr18_i_i_zfp_1d_1block37_vt_const_31_q, rightShiftStage0Idx1Rng8_uid653_i_shr7_i_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid657_i_shr7_i_i_zfp_1d_1block0_shift_x(MUX,656)@9
    assign rightShiftStage0_uid657_i_shr7_i_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid657_i_shr7_i_i_zfp_1d_1block0_shift_x_s or i_or6_i_i_zfp_1d_1block24_q or rightShiftStage0Idx1_uid655_i_shr7_i_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid657_i_shr7_i_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid657_i_shr7_i_i_zfp_1d_1block0_shift_x_q = i_or6_i_i_zfp_1d_1block24_q;
            1'b1 : rightShiftStage0_uid657_i_shr7_i_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid655_i_shr7_i_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid657_i_shr7_i_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr7_i_i_zfp_1d_1block25_vt_select_23(BITSELECT,204)@9
    assign i_shr7_i_i_zfp_1d_1block25_vt_select_23_b = rightShiftStage0_uid657_i_shr7_i_i_zfp_1d_1block0_shift_x_q[23:0];

    // i_shr7_i_i_zfp_1d_1block25_vt_join(BITJOIN,203)@9
    assign i_shr7_i_i_zfp_1d_1block25_vt_join_q = {i_shr18_i_i_zfp_1d_1block37_vt_const_31_q, i_shr7_i_i_zfp_1d_1block25_vt_select_23_b};

    // i_or8_i_i_zfp_1d_1block26(LOGICAL,146)@9
    assign i_or8_i_i_zfp_1d_1block26_q = i_shr7_i_i_zfp_1d_1block25_vt_join_q | i_or6_i_i_zfp_1d_1block24_q;

    // rightShiftStage0Idx1Rng16_uid661_i_shr9_i_i_zfp_1d_1block0_shift_x(BITSELECT,660)@9
    assign rightShiftStage0Idx1Rng16_uid661_i_shr9_i_i_zfp_1d_1block0_shift_x_b = i_or8_i_i_zfp_1d_1block26_q[31:16];

    // rightShiftStage0Idx1_uid663_i_shr9_i_i_zfp_1d_1block0_shift_x(BITJOIN,662)@9
    assign rightShiftStage0Idx1_uid663_i_shr9_i_i_zfp_1d_1block0_shift_x_q = {i_shr20_i_i_zfp_1d_1block39_vt_const_31_q, rightShiftStage0Idx1Rng16_uid661_i_shr9_i_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0_uid665_i_shr9_i_i_zfp_1d_1block0_shift_x(MUX,664)@9
    assign rightShiftStage0_uid665_i_shr9_i_i_zfp_1d_1block0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid665_i_shr9_i_i_zfp_1d_1block0_shift_x_s or i_or8_i_i_zfp_1d_1block26_q or rightShiftStage0Idx1_uid663_i_shr9_i_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid665_i_shr9_i_i_zfp_1d_1block0_shift_x_s)
            1'b0 : rightShiftStage0_uid665_i_shr9_i_i_zfp_1d_1block0_shift_x_q = i_or8_i_i_zfp_1d_1block26_q;
            1'b1 : rightShiftStage0_uid665_i_shr9_i_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid663_i_shr9_i_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid665_i_shr9_i_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr9_i_i_zfp_1d_1block27_vt_select_15(BITSELECT,207)@9
    assign i_shr9_i_i_zfp_1d_1block27_vt_select_15_b = rightShiftStage0_uid665_i_shr9_i_i_zfp_1d_1block0_shift_x_q[15:0];

    // i_shr9_i_i_zfp_1d_1block27_vt_join(BITJOIN,206)@9
    assign i_shr9_i_i_zfp_1d_1block27_vt_join_q = {i_shr20_i_i_zfp_1d_1block39_vt_const_31_q, i_shr9_i_i_zfp_1d_1block27_vt_select_15_b};

    // i_or10_i_i_zfp_1d_1block28(LOGICAL,138)@9 + 1
    assign i_or10_i_i_zfp_1d_1block28_qi = i_shr9_i_i_zfp_1d_1block27_vt_join_q | i_or8_i_i_zfp_1d_1block26_q;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or10_i_i_zfp_1d_1block28_delay ( .xin(i_or10_i_i_zfp_1d_1block28_qi), .xout(i_or10_i_i_zfp_1d_1block28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_neg_i_i_zfp_1d_1block29(LOGICAL,135)@10
    assign i_neg_i_i_zfp_1d_1block29_q = i_or10_i_i_zfp_1d_1block28_q ^ c_i32_1150_q;

    // i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30(EXTIFACE,117)@10
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_data = i_neg_i_i_zfp_1d_1block29_q;
    acl_popcount #(
        .DATA_WIDTH(32),
        .PIPELINE_DEPTH(0)
    ) thei_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30 (
        .data(i_neg_i_i_zfp_1d_1block29_q),
        .sum(i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_sum),
        .clock(clock)
    );

    // i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_vt_select_5(BITSELECT,120)@10
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_vt_select_5_b = i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_sum[5:0];

    // i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_vt_join(BITJOIN,119)@10
    assign i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_vt_join_q = {i_and7_i_zfp_1d_1block49_vt_const_31_q, i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_vt_select_5_b};

    // i_cmp_i_i_zfp_1d_1block43(LOGICAL,101)@10
    assign i_cmp_i_i_zfp_1d_1block43_q = $unsigned(i_or10_i_i_zfp_1d_1block28_q == c_i32_0152_q ? 1'b1 : 1'b0);

    // i_unnamed_zfp_1d_1block46(MUX,225)@10
    assign i_unnamed_zfp_1d_1block46_s = i_cmp_i_i_zfp_1d_1block43_q;
    always @(i_unnamed_zfp_1d_1block46_s or i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_vt_join_q or i_add_i42_i_zfp_1d_1block45_vt_join_q)
    begin
        unique case (i_unnamed_zfp_1d_1block46_s)
            1'b0 : i_unnamed_zfp_1d_1block46_q = i_llvm_ctpop_i32_unnamed_zfp_1d_1block16_zfp_1d_1block30_vt_join_q;
            1'b1 : i_unnamed_zfp_1d_1block46_q = i_add_i42_i_zfp_1d_1block45_vt_join_q;
            default : i_unnamed_zfp_1d_1block46_q = 32'b0;
        endcase
    end

    // i_unnamed_zfp_1d_1block46_vt_select_6(BITSELECT,228)@10
    assign i_unnamed_zfp_1d_1block46_vt_select_6_b = i_unnamed_zfp_1d_1block46_q[6:0];

    // redist23_i_unnamed_zfp_1d_1block46_vt_select_6_b_1(DELAY,779)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_unnamed_zfp_1d_1block46_vt_select_6_b_1_q <= $unsigned(i_unnamed_zfp_1d_1block46_vt_select_6_b);
        end
    end

    // i_unnamed_zfp_1d_1block46_vt_join(BITJOIN,227)@11
    assign i_unnamed_zfp_1d_1block46_vt_join_q = {i_add_i42_i_zfp_1d_1block45_vt_const_31_q, redist23_i_unnamed_zfp_1d_1block46_vt_select_6_b_1_q};

    // c_i32_10154(CONSTANT,41)
    assign c_i32_10154_q = $unsigned(32'b00000000000000000000000000001010);

    // i_cmp4_i_zfp_1d_1block47(COMPARE,100)@11 + 1
    assign i_cmp4_i_zfp_1d_1block47_a = {2'b00, c_i32_10154_q};
    assign i_cmp4_i_zfp_1d_1block47_b = {2'b00, i_unnamed_zfp_1d_1block46_vt_join_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp4_i_zfp_1d_1block47_o <= $unsigned(i_cmp4_i_zfp_1d_1block47_a) - $unsigned(i_cmp4_i_zfp_1d_1block47_b);
        end
    end
    assign i_cmp4_i_zfp_1d_1block47_c[0] = i_cmp4_i_zfp_1d_1block47_o[33];

    // i_not_cmp4_i_zfp_1d_1block83(LOGICAL,136)@12 + 1
    assign i_not_cmp4_i_zfp_1d_1block83_qi = i_cmp4_i_zfp_1d_1block47_c ^ VCC_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_not_cmp4_i_zfp_1d_1block83_delay ( .xin(i_not_cmp4_i_zfp_1d_1block83_qi), .xout(i_not_cmp4_i_zfp_1d_1block83_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_i_not_cmp4_i_zfp_1d_1block83_q_2(DELAY,782)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_not_cmp4_i_zfp_1d_1block83_q_2_q <= $unsigned(i_not_cmp4_i_zfp_1d_1block83_q);
        end
    end

    // c_i64_1161(CONSTANT,56)
    assign c_i64_1161_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // leftShiftStage0Idx3Pad3_uid474_i_notmask_i_zfp_1d_1block0_shift_x(CONSTANT,473)
    assign leftShiftStage0Idx3Pad3_uid474_i_notmask_i_zfp_1d_1block0_shift_x_q = $unsigned(3'b000);

    // rightShiftStage0Idx3Rng3_uid629_i_shr32_i_zfp_1d_1block0_shift_x(BITSELECT,628)@12
    assign rightShiftStage0Idx3Rng3_uid629_i_shr32_i_zfp_1d_1block0_shift_x_b = rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q[63:3];

    // rightShiftStage0Idx3_uid631_i_shr32_i_zfp_1d_1block0_shift_x(BITJOIN,630)@12
    assign rightShiftStage0Idx3_uid631_i_shr32_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx3Pad3_uid474_i_notmask_i_zfp_1d_1block0_shift_x_q, rightShiftStage0Idx3Rng3_uid629_i_shr32_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0Idx2Rng2_uid626_i_shr32_i_zfp_1d_1block0_shift_x(BITSELECT,625)@12
    assign rightShiftStage0Idx2Rng2_uid626_i_shr32_i_zfp_1d_1block0_shift_x_b = rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q[63:2];

    // rightShiftStage0Idx2_uid628_i_shr32_i_zfp_1d_1block0_shift_x(BITJOIN,627)@12
    assign rightShiftStage0Idx2_uid628_i_shr32_i_zfp_1d_1block0_shift_x_q = {i_and28_i_zfp_1d_1block67_vt_const_1_q, rightShiftStage0Idx2Rng2_uid626_i_shr32_i_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid623_i_shr32_i_zfp_1d_1block0_shift_x(BITSELECT,622)@12
    assign rightShiftStage0Idx1Rng1_uid623_i_shr32_i_zfp_1d_1block0_shift_x_b = rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q[63:1];

    // rightShiftStage0Idx1_uid625_i_shr32_i_zfp_1d_1block0_shift_x(BITJOIN,624)@12
    assign rightShiftStage0Idx1_uid625_i_shr32_i_zfp_1d_1block0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid623_i_shr32_i_zfp_1d_1block0_shift_x_b};

    // leftShiftStage1Idx3Pad12_uid485_i_notmask_i_zfp_1d_1block0_shift_x(CONSTANT,484)
    assign leftShiftStage1Idx3Pad12_uid485_i_notmask_i_zfp_1d_1block0_shift_x_q = $unsigned(12'b000000000000);

    // rightShiftStage0Idx3Rng12_uid675_i_shr_i2_zfp_1d_1block0_shift_x(BITSELECT,674)@12
    assign rightShiftStage0Idx3Rng12_uid675_i_shr_i2_zfp_1d_1block0_shift_x_b = redist21_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_5_q[63:12];

    // rightShiftStage0Idx3_uid677_i_shr_i2_zfp_1d_1block0_shift_x(BITJOIN,676)@12
    assign rightShiftStage0Idx3_uid677_i_shr_i2_zfp_1d_1block0_shift_x_q = {leftShiftStage1Idx3Pad12_uid485_i_notmask_i_zfp_1d_1block0_shift_x_q, rightShiftStage0Idx3Rng12_uid675_i_shr_i2_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0Idx2Rng8_uid672_i_shr_i2_zfp_1d_1block0_shift_x(BITSELECT,671)@12
    assign rightShiftStage0Idx2Rng8_uid672_i_shr_i2_zfp_1d_1block0_shift_x_b = redist21_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_5_q[63:8];

    // rightShiftStage0Idx2_uid674_i_shr_i2_zfp_1d_1block0_shift_x(BITJOIN,673)@12
    assign rightShiftStage0Idx2_uid674_i_shr_i2_zfp_1d_1block0_shift_x_q = {i_shr18_i_i_zfp_1d_1block37_vt_const_31_q, rightShiftStage0Idx2Rng8_uid672_i_shr_i2_zfp_1d_1block0_shift_x_b};

    // rightShiftStage0Idx1Rng4_uid669_i_shr_i2_zfp_1d_1block0_shift_x(BITSELECT,668)@12
    assign rightShiftStage0Idx1Rng4_uid669_i_shr_i2_zfp_1d_1block0_shift_x_b = redist21_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_5_q[63:4];

    // rightShiftStage0Idx1_uid671_i_shr_i2_zfp_1d_1block0_shift_x(BITJOIN,670)@12
    assign rightShiftStage0Idx1_uid671_i_shr_i2_zfp_1d_1block0_shift_x_q = {i_and7_i_zfp_1d_1block49_vt_const_3_q, rightShiftStage0Idx1Rng4_uid669_i_shr_i2_zfp_1d_1block0_shift_x_b};

    // redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4(DELAY,776)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_delay_0 <= $unsigned(redist19_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_1_q);
            redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_delay_1 <= redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_delay_0;
            redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_q <= redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_delay_1;
        end
    end

    // redist21_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_5(DELAY,777)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_5_q <= $unsigned(redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_q);
        end
    end

    // i_sh_prom29_i_zfp_1d_1block68_vt_const_63(CONSTANT,161)
    assign i_sh_prom29_i_zfp_1d_1block68_vt_const_63_q = $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);

    // i_and28_i_zfp_1d_1block67_vt_const_31(CONSTANT,79)
    assign i_and28_i_zfp_1d_1block67_vt_const_31_q = $unsigned(28'b0000000000000000000000000000);

    // c_i32_12157(CONSTANT,46)
    assign c_i32_12157_q = $unsigned(32'b00000000000000000000000000001100);

    // c_i32_11158(CONSTANT,43)
    assign c_i32_11158_q = $unsigned(32'b00000000000000000000000000001011);

    // i_sub14_i_zfp_1d_1block58(SUB,211)@11
    assign i_sub14_i_zfp_1d_1block58_a = {1'b0, c_i32_11158_q};
    assign i_sub14_i_zfp_1d_1block58_b = {1'b0, i_unnamed_zfp_1d_1block46_vt_join_q};
    assign i_sub14_i_zfp_1d_1block58_o = $unsigned(i_sub14_i_zfp_1d_1block58_a) - $unsigned(i_sub14_i_zfp_1d_1block58_b);
    assign i_sub14_i_zfp_1d_1block58_q = i_sub14_i_zfp_1d_1block58_o[32:0];

    // bgTrunc_i_sub14_i_zfp_1d_1block58_sel_x(BITSELECT,261)@11
    assign bgTrunc_i_sub14_i_zfp_1d_1block58_sel_x_b = $unsigned(i_sub14_i_zfp_1d_1block58_q[31:0]);

    // i_and28_i_zfp_1d_1block67(LOGICAL,77)@11
    assign i_and28_i_zfp_1d_1block67_q = bgTrunc_i_sub14_i_zfp_1d_1block58_sel_x_b & c_i32_12157_q;

    // i_and28_i_zfp_1d_1block67_vt_select_3(BITSELECT,81)@11
    assign i_and28_i_zfp_1d_1block67_vt_select_3_b = i_and28_i_zfp_1d_1block67_q[3:2];

    // i_and28_i_zfp_1d_1block67_vt_join(BITJOIN,80)@11
    assign i_and28_i_zfp_1d_1block67_vt_join_q = {i_and28_i_zfp_1d_1block67_vt_const_31_q, i_and28_i_zfp_1d_1block67_vt_select_3_b, i_and28_i_zfp_1d_1block67_vt_const_1_q};

    // i_sh_prom29_i_zfp_1d_1block68_sel_x(BITSELECT,310)@11
    assign i_sh_prom29_i_zfp_1d_1block68_sel_x_b = {32'b00000000000000000000000000000000, i_and28_i_zfp_1d_1block67_vt_join_q[31:0]};

    // i_sh_prom29_i_zfp_1d_1block68_vt_select_3(BITSELECT,163)@11
    assign i_sh_prom29_i_zfp_1d_1block68_vt_select_3_b = i_sh_prom29_i_zfp_1d_1block68_sel_x_b[3:2];

    // i_sh_prom29_i_zfp_1d_1block68_vt_join(BITJOIN,162)@11
    assign i_sh_prom29_i_zfp_1d_1block68_vt_join_q = {i_sh_prom29_i_zfp_1d_1block68_vt_const_63_q, i_sh_prom29_i_zfp_1d_1block68_vt_select_3_b, i_and28_i_zfp_1d_1block67_vt_const_1_q};

    // i_shr_i2_zfp_1d_1block0_shift_narrow_x(BITSELECT,376)@11
    assign i_shr_i2_zfp_1d_1block0_shift_narrow_x_b = i_sh_prom29_i_zfp_1d_1block68_vt_join_q[5:0];

    // rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x(BITSELECT,677)@11
    assign rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x_in = i_shr_i2_zfp_1d_1block0_shift_narrow_x_b[3:0];
    assign rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x_b = rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x_in[3:2];

    // redist2_rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x_b_1(DELAY,758)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x_b_1_q <= $unsigned(rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x_b);
        end
    end

    // rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x(MUX,678)@12
    assign rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_s = redist2_rightShiftStageSel2Dto2_uid678_i_shr_i2_zfp_1d_1block0_shift_x_b_1_q;
    always @(rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_s or redist21_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_5_q or rightShiftStage0Idx1_uid671_i_shr_i2_zfp_1d_1block0_shift_x_q or rightShiftStage0Idx2_uid674_i_shr_i2_zfp_1d_1block0_shift_x_q or rightShiftStage0Idx3_uid677_i_shr_i2_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_s)
            2'b00 : rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q = redist21_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_5_q;
            2'b01 : rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid671_i_shr_i2_zfp_1d_1block0_shift_x_q;
            2'b10 : rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx2_uid674_i_shr_i2_zfp_1d_1block0_shift_x_q;
            2'b11 : rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx3_uid677_i_shr_i2_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom122_i_zfp_1d_1block56_vt_const_63(CONSTANT,156)
    assign i_sh_prom122_i_zfp_1d_1block56_vt_const_63_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // i_and30_trunc_i_zfp_1d_1block70_sel_x(BITSELECT,276)@11
    assign i_and30_trunc_i_zfp_1d_1block70_sel_x_b = bgTrunc_i_sub14_i_zfp_1d_1block58_sel_x_b[1:0];

    // i_sh_prom313_i_zfp_1d_1block71_sel_x(BITSELECT,311)@11
    assign i_sh_prom313_i_zfp_1d_1block71_sel_x_b = {62'b00000000000000000000000000000000000000000000000000000000000000, i_and30_trunc_i_zfp_1d_1block70_sel_x_b[1:0]};

    // i_sh_prom313_i_zfp_1d_1block71_vt_select_1(BITSELECT,167)@11
    assign i_sh_prom313_i_zfp_1d_1block71_vt_select_1_b = i_sh_prom313_i_zfp_1d_1block71_sel_x_b[1:0];

    // i_sh_prom313_i_zfp_1d_1block71_vt_join(BITJOIN,166)@11
    assign i_sh_prom313_i_zfp_1d_1block71_vt_join_q = {i_sh_prom122_i_zfp_1d_1block56_vt_const_63_q, i_sh_prom313_i_zfp_1d_1block71_vt_select_1_b};

    // i_shr32_i_zfp_1d_1block0_shift_narrow_x(BITSELECT,356)@11
    assign i_shr32_i_zfp_1d_1block0_shift_narrow_x_b = i_sh_prom313_i_zfp_1d_1block71_vt_join_q[5:0];

    // rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x(BITSELECT,631)@11
    assign rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x_in = i_shr32_i_zfp_1d_1block0_shift_narrow_x_b[1:0];
    assign rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x_b = rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x_in[1:0];

    // redist3_rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x_b_1(DELAY,759)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x_b_1_q <= $unsigned(rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x_b);
        end
    end

    // rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x(MUX,632)@12
    assign rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_s = redist3_rightShiftStageSel0Dto0_uid632_i_shr32_i_zfp_1d_1block0_shift_x_b_1_q;
    always @(rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_s or rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q or rightShiftStage0Idx1_uid625_i_shr32_i_zfp_1d_1block0_shift_x_q or rightShiftStage0Idx2_uid628_i_shr32_i_zfp_1d_1block0_shift_x_q or rightShiftStage0Idx3_uid631_i_shr32_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_s)
            2'b00 : rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_q = rightShiftStage0_uid679_i_shr_i2_zfp_1d_1block0_shift_x_q;
            2'b01 : rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx1_uid625_i_shr32_i_zfp_1d_1block0_shift_x_q;
            2'b10 : rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx2_uid628_i_shr32_i_zfp_1d_1block0_shift_x_q;
            2'b11 : rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_q = rightShiftStage0Idx3_uid631_i_shr32_i_zfp_1d_1block0_shift_x_q;
            default : rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // i_and36_i_zfp_1d_1block76(LOGICAL,83)@12
    assign i_and36_i_zfp_1d_1block76_q = rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_q & c_i64_1161_q;

    // i_and36_i_zfp_1d_1block76_vt_select_0(BITSELECT,86)@12
    assign i_and36_i_zfp_1d_1block76_vt_select_0_b = i_and36_i_zfp_1d_1block76_q[0:0];

    // redist33_i_and36_i_zfp_1d_1block76_vt_select_0_b_1(DELAY,789)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_and36_i_zfp_1d_1block76_vt_select_0_b_1_q <= $unsigned(i_and36_i_zfp_1d_1block76_vt_select_0_b);
        end
    end

    // i_and36_i_zfp_1d_1block76_vt_join(BITJOIN,85)@13
    assign i_and36_i_zfp_1d_1block76_vt_join_q = {i_acl_1_i_zfp_1d_1block85_vt_const_63_q, redist33_i_and36_i_zfp_1d_1block76_vt_select_0_b_1_q};

    // i_cmp37_i_zfp_1d_1block77(LOGICAL,98)@13 + 1
    assign i_cmp37_i_zfp_1d_1block77_qi = $unsigned(i_and36_i_zfp_1d_1block76_vt_join_q != c_i64_undef142_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp37_i_zfp_1d_1block77_delay ( .xin(i_cmp37_i_zfp_1d_1block77_qi), .xout(i_cmp37_i_zfp_1d_1block77_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_conv33_i_zfp_1d_1block73_vt_const_31(CONSTANT,110)
    assign i_conv33_i_zfp_1d_1block73_vt_const_31_q = $unsigned(21'b000000000000000000000);

    // c_i16_1160(CONSTANT,11)
    assign c_i16_1160_q = $unsigned(16'b1111111111111111);

    // leftShiftStage2Idx1Rng16_uid491_i_notmask_i_zfp_1d_1block0_shift_x(BITSELECT,490)@12
    assign leftShiftStage2Idx1Rng16_uid491_i_notmask_i_zfp_1d_1block0_shift_x_in = leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_q[15:0];
    assign leftShiftStage2Idx1Rng16_uid491_i_notmask_i_zfp_1d_1block0_shift_x_b = leftShiftStage2Idx1Rng16_uid491_i_notmask_i_zfp_1d_1block0_shift_x_in[15:0];

    // leftShiftStage2Idx1_uid492_i_notmask_i_zfp_1d_1block0_shift_x(BITJOIN,491)@12
    assign leftShiftStage2Idx1_uid492_i_notmask_i_zfp_1d_1block0_shift_x_q = {leftShiftStage2Idx1Rng16_uid491_i_notmask_i_zfp_1d_1block0_shift_x_b, i_shr20_i_i_zfp_1d_1block39_vt_const_31_q};

    // leftShiftStage1Idx3Rng12_uid486_i_notmask_i_zfp_1d_1block0_shift_x(BITSELECT,485)@12
    assign leftShiftStage1Idx3Rng12_uid486_i_notmask_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid486_i_notmask_i_zfp_1d_1block0_shift_x_b = leftShiftStage1Idx3Rng12_uid486_i_notmask_i_zfp_1d_1block0_shift_x_in[19:0];

    // leftShiftStage1Idx3_uid487_i_notmask_i_zfp_1d_1block0_shift_x(BITJOIN,486)@12
    assign leftShiftStage1Idx3_uid487_i_notmask_i_zfp_1d_1block0_shift_x_q = {leftShiftStage1Idx3Rng12_uid486_i_notmask_i_zfp_1d_1block0_shift_x_b, leftShiftStage1Idx3Pad12_uid485_i_notmask_i_zfp_1d_1block0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid483_i_notmask_i_zfp_1d_1block0_shift_x(BITSELECT,482)@12
    assign leftShiftStage1Idx2Rng8_uid483_i_notmask_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid483_i_notmask_i_zfp_1d_1block0_shift_x_b = leftShiftStage1Idx2Rng8_uid483_i_notmask_i_zfp_1d_1block0_shift_x_in[23:0];

    // leftShiftStage1Idx2_uid484_i_notmask_i_zfp_1d_1block0_shift_x(BITJOIN,483)@12
    assign leftShiftStage1Idx2_uid484_i_notmask_i_zfp_1d_1block0_shift_x_q = {leftShiftStage1Idx2Rng8_uid483_i_notmask_i_zfp_1d_1block0_shift_x_b, i_shr18_i_i_zfp_1d_1block37_vt_const_31_q};

    // leftShiftStage1Idx1Rng4_uid480_i_notmask_i_zfp_1d_1block0_shift_x(BITSELECT,479)@12
    assign leftShiftStage1Idx1Rng4_uid480_i_notmask_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid480_i_notmask_i_zfp_1d_1block0_shift_x_b = leftShiftStage1Idx1Rng4_uid480_i_notmask_i_zfp_1d_1block0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid481_i_notmask_i_zfp_1d_1block0_shift_x(BITJOIN,480)@12
    assign leftShiftStage1Idx1_uid481_i_notmask_i_zfp_1d_1block0_shift_x_q = {leftShiftStage1Idx1Rng4_uid480_i_notmask_i_zfp_1d_1block0_shift_x_b, i_and7_i_zfp_1d_1block49_vt_const_3_q};

    // leftShiftStage0Idx3Rng3_uid475_i_notmask_i_zfp_1d_1block0_shift_x(BITSELECT,474)
    assign leftShiftStage0Idx3Rng3_uid475_i_notmask_i_zfp_1d_1block0_shift_x_in = c_i32_1150_q[28:0];
    assign leftShiftStage0Idx3Rng3_uid475_i_notmask_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx3Rng3_uid475_i_notmask_i_zfp_1d_1block0_shift_x_in[28:0];

    // leftShiftStage0Idx3_uid476_i_notmask_i_zfp_1d_1block0_shift_x(BITJOIN,475)
    assign leftShiftStage0Idx3_uid476_i_notmask_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx3Rng3_uid475_i_notmask_i_zfp_1d_1block0_shift_x_b, leftShiftStage0Idx3Pad3_uid474_i_notmask_i_zfp_1d_1block0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid472_i_notmask_i_zfp_1d_1block0_shift_x(BITSELECT,471)
    assign leftShiftStage0Idx2Rng2_uid472_i_notmask_i_zfp_1d_1block0_shift_x_in = c_i32_1150_q[29:0];
    assign leftShiftStage0Idx2Rng2_uid472_i_notmask_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx2Rng2_uid472_i_notmask_i_zfp_1d_1block0_shift_x_in[29:0];

    // leftShiftStage0Idx2_uid473_i_notmask_i_zfp_1d_1block0_shift_x(BITJOIN,472)
    assign leftShiftStage0Idx2_uid473_i_notmask_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx2Rng2_uid472_i_notmask_i_zfp_1d_1block0_shift_x_b, i_and28_i_zfp_1d_1block67_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid469_i_notmask_i_zfp_1d_1block0_shift_x(BITSELECT,468)
    assign leftShiftStage0Idx1Rng1_uid469_i_notmask_i_zfp_1d_1block0_shift_x_in = c_i32_1150_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid469_i_notmask_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx1Rng1_uid469_i_notmask_i_zfp_1d_1block0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid470_i_notmask_i_zfp_1d_1block0_shift_x(BITJOIN,469)
    assign leftShiftStage0Idx1_uid470_i_notmask_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx1Rng1_uid469_i_notmask_i_zfp_1d_1block0_shift_x_b, GND_q};

    // i_notmask_i_zfp_1d_1block0_shift_narrow_x(BITSELECT,306)@11
    assign i_notmask_i_zfp_1d_1block0_shift_narrow_x_b = bgTrunc_i_sub14_i_zfp_1d_1block58_sel_x_b[4:0];

    // leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select(BITSELECT,754)@11
    assign leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_b = i_notmask_i_zfp_1d_1block0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_c = i_notmask_i_zfp_1d_1block0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_d = i_notmask_i_zfp_1d_1block0_shift_narrow_x_b[4:4];

    // leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x(MUX,477)@11 + 1
    assign leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_s = leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_b;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_s)
                2'b00 : leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q <= c_i32_1150_q;
                2'b01 : leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q <= leftShiftStage0Idx1_uid470_i_notmask_i_zfp_1d_1block0_shift_x_q;
                2'b10 : leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q <= leftShiftStage0Idx2_uid473_i_notmask_i_zfp_1d_1block0_shift_x_q;
                2'b11 : leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q <= leftShiftStage0Idx3_uid476_i_notmask_i_zfp_1d_1block0_shift_x_q;
                default : leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist0_leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_c_1(DELAY,756)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x(MUX,488)@12
    assign leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_s = redist0_leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_s or leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q or leftShiftStage1Idx1_uid481_i_notmask_i_zfp_1d_1block0_shift_x_q or leftShiftStage1Idx2_uid484_i_notmask_i_zfp_1d_1block0_shift_x_q or leftShiftStage1Idx3_uid487_i_notmask_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_s)
            2'b00 : leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_q = leftShiftStage0_uid478_i_notmask_i_zfp_1d_1block0_shift_x_q;
            2'b01 : leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_q = leftShiftStage1Idx1_uid481_i_notmask_i_zfp_1d_1block0_shift_x_q;
            2'b10 : leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_q = leftShiftStage1Idx2_uid484_i_notmask_i_zfp_1d_1block0_shift_x_q;
            2'b11 : leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_q = leftShiftStage1Idx3_uid487_i_notmask_i_zfp_1d_1block0_shift_x_q;
            default : leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // redist1_leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_d_1(DELAY,757)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid494_i_notmask_i_zfp_1d_1block0_shift_x(MUX,493)@12
    assign leftShiftStage2_uid494_i_notmask_i_zfp_1d_1block0_shift_x_s = redist1_leftShiftStageSel0Dto0_uid477_i_notmask_i_zfp_1d_1block0_shift_x_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid494_i_notmask_i_zfp_1d_1block0_shift_x_s or leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_q or leftShiftStage2Idx1_uid492_i_notmask_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (leftShiftStage2_uid494_i_notmask_i_zfp_1d_1block0_shift_x_s)
            1'b0 : leftShiftStage2_uid494_i_notmask_i_zfp_1d_1block0_shift_x_q = leftShiftStage1_uid489_i_notmask_i_zfp_1d_1block0_shift_x_q;
            1'b1 : leftShiftStage2_uid494_i_notmask_i_zfp_1d_1block0_shift_x_q = leftShiftStage2Idx1_uid492_i_notmask_i_zfp_1d_1block0_shift_x_q;
            default : leftShiftStage2_uid494_i_notmask_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_zfp_1d_1block64_sel_x(BITSELECT,383)@12
    assign i_unnamed_zfp_1d_1block64_sel_x_b = leftShiftStage2_uid494_i_notmask_i_zfp_1d_1block0_shift_x_q[15:0];

    // i_conv23_i_zfp_1d_1block65(LOGICAL,108)@12
    assign i_conv23_i_zfp_1d_1block65_q = i_unnamed_zfp_1d_1block64_sel_x_b ^ c_i16_1160_q;

    // c_i16_2047159(CONSTANT,12)
    assign c_i16_2047159_q = $unsigned(16'b0000011111111111);

    // i_unnamed_zfp_1d_1block59_sel_x(BITSELECT,382)@12
    assign i_unnamed_zfp_1d_1block59_sel_x_b = redist21_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_5_q[15:0];

    // i_conv17_i_zfp_1d_1block60(LOGICAL,103)@12
    assign i_conv17_i_zfp_1d_1block60_q = i_unnamed_zfp_1d_1block59_sel_x_b & c_i16_2047159_q;

    // i_conv17_i_zfp_1d_1block60_vt_select_10(BITSELECT,106)@12
    assign i_conv17_i_zfp_1d_1block60_vt_select_10_b = i_conv17_i_zfp_1d_1block60_q[10:0];

    // i_conv17_i_zfp_1d_1block60_vt_join(BITJOIN,105)@12
    assign i_conv17_i_zfp_1d_1block60_vt_join_q = {i_and2647_i_zfp_1d_1block66_vt_const_15_q, i_conv17_i_zfp_1d_1block60_vt_select_10_b};

    // i_and2647_i_zfp_1d_1block66(LOGICAL,73)@12
    assign i_and2647_i_zfp_1d_1block66_q = i_conv17_i_zfp_1d_1block60_vt_join_q & i_conv23_i_zfp_1d_1block65_q;

    // i_and2647_i_zfp_1d_1block66_vt_select_10(BITSELECT,76)@12
    assign i_and2647_i_zfp_1d_1block66_vt_select_10_b = i_and2647_i_zfp_1d_1block66_q[10:0];

    // i_and2647_i_zfp_1d_1block66_vt_join(BITJOIN,75)@12
    assign i_and2647_i_zfp_1d_1block66_vt_join_q = {i_and2647_i_zfp_1d_1block66_vt_const_15_q, i_and2647_i_zfp_1d_1block66_vt_select_10_b};

    // i_conv33_i_zfp_1d_1block73_sel_x(BITSELECT,278)@12
    assign i_conv33_i_zfp_1d_1block73_sel_x_b = {16'b0000000000000000, i_and2647_i_zfp_1d_1block66_vt_join_q[15:0]};

    // i_conv33_i_zfp_1d_1block73_vt_select_10(BITSELECT,112)@12
    assign i_conv33_i_zfp_1d_1block73_vt_select_10_b = i_conv33_i_zfp_1d_1block73_sel_x_b[10:0];

    // redist32_i_conv33_i_zfp_1d_1block73_vt_select_10_b_1(DELAY,788)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_conv33_i_zfp_1d_1block73_vt_select_10_b_1_q <= $unsigned(i_conv33_i_zfp_1d_1block73_vt_select_10_b);
        end
    end

    // i_conv33_i_zfp_1d_1block73_vt_join(BITJOIN,111)@13
    assign i_conv33_i_zfp_1d_1block73_vt_join_q = {i_conv33_i_zfp_1d_1block73_vt_const_31_q, redist32_i_conv33_i_zfp_1d_1block73_vt_select_10_b_1_q};

    // leftShiftStage2Idx1Rng16_uid549_i_shl19_i_zfp_1d_1block0_shift_x(BITSELECT,548)@12
    assign leftShiftStage2Idx1Rng16_uid549_i_shl19_i_zfp_1d_1block0_shift_x_in = leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_q[15:0];
    assign leftShiftStage2Idx1Rng16_uid549_i_shl19_i_zfp_1d_1block0_shift_x_b = leftShiftStage2Idx1Rng16_uid549_i_shl19_i_zfp_1d_1block0_shift_x_in[15:0];

    // leftShiftStage2Idx1_uid550_i_shl19_i_zfp_1d_1block0_shift_x(BITJOIN,549)@12
    assign leftShiftStage2Idx1_uid550_i_shl19_i_zfp_1d_1block0_shift_x_q = {leftShiftStage2Idx1Rng16_uid549_i_shl19_i_zfp_1d_1block0_shift_x_b, i_shr20_i_i_zfp_1d_1block39_vt_const_31_q};

    // leftShiftStage1Idx3Rng12_uid544_i_shl19_i_zfp_1d_1block0_shift_x(BITSELECT,543)@12
    assign leftShiftStage1Idx3Rng12_uid544_i_shl19_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid544_i_shl19_i_zfp_1d_1block0_shift_x_b = leftShiftStage1Idx3Rng12_uid544_i_shl19_i_zfp_1d_1block0_shift_x_in[19:0];

    // leftShiftStage1Idx3_uid545_i_shl19_i_zfp_1d_1block0_shift_x(BITJOIN,544)@12
    assign leftShiftStage1Idx3_uid545_i_shl19_i_zfp_1d_1block0_shift_x_q = {leftShiftStage1Idx3Rng12_uid544_i_shl19_i_zfp_1d_1block0_shift_x_b, leftShiftStage1Idx3Pad12_uid485_i_notmask_i_zfp_1d_1block0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid541_i_shl19_i_zfp_1d_1block0_shift_x(BITSELECT,540)@12
    assign leftShiftStage1Idx2Rng8_uid541_i_shl19_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid541_i_shl19_i_zfp_1d_1block0_shift_x_b = leftShiftStage1Idx2Rng8_uid541_i_shl19_i_zfp_1d_1block0_shift_x_in[23:0];

    // leftShiftStage1Idx2_uid542_i_shl19_i_zfp_1d_1block0_shift_x(BITJOIN,541)@12
    assign leftShiftStage1Idx2_uid542_i_shl19_i_zfp_1d_1block0_shift_x_q = {leftShiftStage1Idx2Rng8_uid541_i_shl19_i_zfp_1d_1block0_shift_x_b, i_shr18_i_i_zfp_1d_1block37_vt_const_31_q};

    // leftShiftStage1Idx1Rng4_uid538_i_shl19_i_zfp_1d_1block0_shift_x(BITSELECT,537)@12
    assign leftShiftStage1Idx1Rng4_uid538_i_shl19_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid538_i_shl19_i_zfp_1d_1block0_shift_x_b = leftShiftStage1Idx1Rng4_uid538_i_shl19_i_zfp_1d_1block0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid539_i_shl19_i_zfp_1d_1block0_shift_x(BITJOIN,538)@12
    assign leftShiftStage1Idx1_uid539_i_shl19_i_zfp_1d_1block0_shift_x_q = {leftShiftStage1Idx1Rng4_uid538_i_shl19_i_zfp_1d_1block0_shift_x_b, i_and7_i_zfp_1d_1block49_vt_const_3_q};

    // leftShiftStage0Idx3Rng3_uid533_i_shl19_i_zfp_1d_1block0_shift_x(BITSELECT,532)
    assign leftShiftStage0Idx3Rng3_uid533_i_shl19_i_zfp_1d_1block0_shift_x_in = c_i32_1151_q[28:0];
    assign leftShiftStage0Idx3Rng3_uid533_i_shl19_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx3Rng3_uid533_i_shl19_i_zfp_1d_1block0_shift_x_in[28:0];

    // leftShiftStage0Idx3_uid534_i_shl19_i_zfp_1d_1block0_shift_x(BITJOIN,533)
    assign leftShiftStage0Idx3_uid534_i_shl19_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx3Rng3_uid533_i_shl19_i_zfp_1d_1block0_shift_x_b, leftShiftStage0Idx3Pad3_uid474_i_notmask_i_zfp_1d_1block0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid530_i_shl19_i_zfp_1d_1block0_shift_x(BITSELECT,529)
    assign leftShiftStage0Idx2Rng2_uid530_i_shl19_i_zfp_1d_1block0_shift_x_in = c_i32_1151_q[29:0];
    assign leftShiftStage0Idx2Rng2_uid530_i_shl19_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx2Rng2_uid530_i_shl19_i_zfp_1d_1block0_shift_x_in[29:0];

    // leftShiftStage0Idx2_uid531_i_shl19_i_zfp_1d_1block0_shift_x(BITJOIN,530)
    assign leftShiftStage0Idx2_uid531_i_shl19_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx2Rng2_uid530_i_shl19_i_zfp_1d_1block0_shift_x_b, i_and28_i_zfp_1d_1block67_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid527_i_shl19_i_zfp_1d_1block0_shift_x(BITSELECT,526)
    assign leftShiftStage0Idx1Rng1_uid527_i_shl19_i_zfp_1d_1block0_shift_x_in = c_i32_1151_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid527_i_shl19_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx1Rng1_uid527_i_shl19_i_zfp_1d_1block0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid528_i_shl19_i_zfp_1d_1block0_shift_x(BITJOIN,527)
    assign leftShiftStage0Idx1_uid528_i_shl19_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx1Rng1_uid527_i_shl19_i_zfp_1d_1block0_shift_x_b, GND_q};

    // leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x(MUX,535)@12
    assign leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_s = leftShiftStageSel0Dto0_uid535_i_shl19_i_zfp_1d_1block0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_s or c_i32_1151_q or leftShiftStage0Idx1_uid528_i_shl19_i_zfp_1d_1block0_shift_x_q or leftShiftStage0Idx2_uid531_i_shl19_i_zfp_1d_1block0_shift_x_q or leftShiftStage0Idx3_uid534_i_shl19_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_s)
            2'b00 : leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q = c_i32_1151_q;
            2'b01 : leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q = leftShiftStage0Idx1_uid528_i_shl19_i_zfp_1d_1block0_shift_x_q;
            2'b10 : leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q = leftShiftStage0Idx2_uid531_i_shl19_i_zfp_1d_1block0_shift_x_q;
            2'b11 : leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q = leftShiftStage0Idx3_uid534_i_shl19_i_zfp_1d_1block0_shift_x_q;
            default : leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x(MUX,546)@12
    assign leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_s = leftShiftStageSel0Dto0_uid535_i_shl19_i_zfp_1d_1block0_shift_x_merged_bit_select_c;
    always @(leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_s or leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q or leftShiftStage1Idx1_uid539_i_shl19_i_zfp_1d_1block0_shift_x_q or leftShiftStage1Idx2_uid542_i_shl19_i_zfp_1d_1block0_shift_x_q or leftShiftStage1Idx3_uid545_i_shl19_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_s)
            2'b00 : leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_q = leftShiftStage0_uid536_i_shl19_i_zfp_1d_1block0_shift_x_q;
            2'b01 : leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_q = leftShiftStage1Idx1_uid539_i_shl19_i_zfp_1d_1block0_shift_x_q;
            2'b10 : leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_q = leftShiftStage1Idx2_uid542_i_shl19_i_zfp_1d_1block0_shift_x_q;
            2'b11 : leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_q = leftShiftStage1Idx3_uid545_i_shl19_i_zfp_1d_1block0_shift_x_q;
            default : leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_q = 32'b0;
        endcase
    end

    // i_sub18_i_zfp_1d_1block61(SUB,212)@11
    assign i_sub18_i_zfp_1d_1block61_a = {1'b0, c_i32_10154_q};
    assign i_sub18_i_zfp_1d_1block61_b = {1'b0, i_unnamed_zfp_1d_1block46_vt_join_q};
    assign i_sub18_i_zfp_1d_1block61_o = $unsigned(i_sub18_i_zfp_1d_1block61_a) - $unsigned(i_sub18_i_zfp_1d_1block61_b);
    assign i_sub18_i_zfp_1d_1block61_q = i_sub18_i_zfp_1d_1block61_o[32:0];

    // bgTrunc_i_sub18_i_zfp_1d_1block61_sel_x(BITSELECT,262)@11
    assign bgTrunc_i_sub18_i_zfp_1d_1block61_sel_x_b = $unsigned(i_sub18_i_zfp_1d_1block61_q[31:0]);

    // i_shl19_i_zfp_1d_1block0_shift_narrow_x(BITSELECT,324)@11
    assign i_shl19_i_zfp_1d_1block0_shift_narrow_x_b = bgTrunc_i_sub18_i_zfp_1d_1block61_sel_x_b[4:0];

    // redist12_i_shl19_i_zfp_1d_1block0_shift_narrow_x_b_1(DELAY,768)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_shl19_i_zfp_1d_1block0_shift_narrow_x_b_1_q <= $unsigned(i_shl19_i_zfp_1d_1block0_shift_narrow_x_b);
        end
    end

    // leftShiftStageSel0Dto0_uid535_i_shl19_i_zfp_1d_1block0_shift_x_merged_bit_select(BITSELECT,755)@12
    assign leftShiftStageSel0Dto0_uid535_i_shl19_i_zfp_1d_1block0_shift_x_merged_bit_select_b = redist12_i_shl19_i_zfp_1d_1block0_shift_narrow_x_b_1_q[1:0];
    assign leftShiftStageSel0Dto0_uid535_i_shl19_i_zfp_1d_1block0_shift_x_merged_bit_select_c = redist12_i_shl19_i_zfp_1d_1block0_shift_narrow_x_b_1_q[3:2];
    assign leftShiftStageSel0Dto0_uid535_i_shl19_i_zfp_1d_1block0_shift_x_merged_bit_select_d = redist12_i_shl19_i_zfp_1d_1block0_shift_narrow_x_b_1_q[4:4];

    // leftShiftStage2_uid552_i_shl19_i_zfp_1d_1block0_shift_x(MUX,551)@12 + 1
    assign leftShiftStage2_uid552_i_shl19_i_zfp_1d_1block0_shift_x_s = leftShiftStageSel0Dto0_uid535_i_shl19_i_zfp_1d_1block0_shift_x_merged_bit_select_d;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage2_uid552_i_shl19_i_zfp_1d_1block0_shift_x_s)
                1'b0 : leftShiftStage2_uid552_i_shl19_i_zfp_1d_1block0_shift_x_q <= leftShiftStage1_uid547_i_shl19_i_zfp_1d_1block0_shift_x_q;
                1'b1 : leftShiftStage2_uid552_i_shl19_i_zfp_1d_1block0_shift_x_q <= leftShiftStage2Idx1_uid550_i_shl19_i_zfp_1d_1block0_shift_x_q;
                default : leftShiftStage2_uid552_i_shl19_i_zfp_1d_1block0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // i_cmp35_i_zfp_1d_1block74(LOGICAL,97)@13 + 1
    assign i_cmp35_i_zfp_1d_1block74_qi = $unsigned(leftShiftStage2_uid552_i_shl19_i_zfp_1d_1block0_shift_x_q == i_conv33_i_zfp_1d_1block73_vt_join_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp35_i_zfp_1d_1block74_delay ( .xin(i_cmp35_i_zfp_1d_1block74_qi), .xout(i_cmp35_i_zfp_1d_1block74_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_or_cond_not_i_zfp_1d_1block79(LOGICAL,148)@14
    assign i_or_cond_not_i_zfp_1d_1block79_q = i_cmp35_i_zfp_1d_1block74_q & i_cmp37_i_zfp_1d_1block77_q;

    // i_cmp40_i_zfp_1d_1block80(COMPARE,99)@13 + 1
    assign i_cmp40_i_zfp_1d_1block80_a = {2'b00, leftShiftStage2_uid552_i_shl19_i_zfp_1d_1block0_shift_x_q};
    assign i_cmp40_i_zfp_1d_1block80_b = {2'b00, i_conv33_i_zfp_1d_1block73_vt_join_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp40_i_zfp_1d_1block80_o <= $unsigned(i_cmp40_i_zfp_1d_1block80_a) - $unsigned(i_cmp40_i_zfp_1d_1block80_b);
        end
    end
    assign i_cmp40_i_zfp_1d_1block80_c[0] = i_cmp40_i_zfp_1d_1block80_o[33];

    // i_or_cond48_i_zfp_1d_1block81(LOGICAL,147)@14
    assign i_or_cond48_i_zfp_1d_1block81_q = i_cmp40_i_zfp_1d_1block80_c | i_or_cond_not_i_zfp_1d_1block79_q;

    // i_narrow_i_zfp_1d_1block84(LOGICAL,133)@14
    assign i_narrow_i_zfp_1d_1block84_q = i_or_cond48_i_zfp_1d_1block81_q & redist26_i_not_cmp4_i_zfp_1d_1block83_q_2_q;

    // i_acl_1_i_zfp_1d_1block85_sel_x(BITSELECT,274)@14
    assign i_acl_1_i_zfp_1d_1block85_sel_x_b = {63'b000000000000000000000000000000000000000000000000000000000000000, i_narrow_i_zfp_1d_1block84_q[0:0]};

    // i_acl_1_i_zfp_1d_1block85_vt_select_0(BITSELECT,65)@14
    assign i_acl_1_i_zfp_1d_1block85_vt_select_0_b = i_acl_1_i_zfp_1d_1block85_sel_x_b[0:0];

    // redist34_i_acl_1_i_zfp_1d_1block85_vt_select_0_b_1(DELAY,790)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_acl_1_i_zfp_1d_1block85_vt_select_0_b_1_q <= $unsigned(i_acl_1_i_zfp_1d_1block85_vt_select_0_b);
        end
    end

    // i_acl_1_i_zfp_1d_1block85_vt_join(BITJOIN,64)@15
    assign i_acl_1_i_zfp_1d_1block85_vt_join_q = {i_acl_1_i_zfp_1d_1block85_vt_const_63_q, redist34_i_acl_1_i_zfp_1d_1block85_vt_select_0_b_1_q};

    // c_i8_291(CONSTANT,61)
    assign c_i8_291_q = $unsigned(8'b00000010);

    // redist25_i_replace_phi_zfp_1d_1block11_q_6_offset(CONSTANT,794)
    assign redist25_i_replace_phi_zfp_1d_1block11_q_6_offset_q = $unsigned(2'b11);

    // redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt(ADD,795)
    assign redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_a = {1'b0, redist25_i_replace_phi_zfp_1d_1block11_q_6_wraddr_q};
    assign redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_b = {1'b0, redist25_i_replace_phi_zfp_1d_1block11_q_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_o <= $unsigned(redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_a) + $unsigned(redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_b);
        end
    end
    assign redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_q = redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_o[2:0];

    // redist25_i_replace_phi_zfp_1d_1block11_q_6_wraddr(COUNTER,793)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_replace_phi_zfp_1d_1block11_q_6_wraddr_i <= $unsigned(redist25_i_replace_phi_zfp_1d_1block11_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist25_i_replace_phi_zfp_1d_1block11_q_6_wraddr_q = redist25_i_replace_phi_zfp_1d_1block11_q_6_wraddr_i[1:0];

    // redist25_i_replace_phi_zfp_1d_1block11_q_6_mem(DUALMEM,792)
    assign redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_ia = $unsigned(redist24_i_replace_phi_zfp_1d_1block11_q_1_q);
    assign redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_aa = redist25_i_replace_phi_zfp_1d_1block11_q_6_wraddr_q;
    assign redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_ab = redist25_i_replace_phi_zfp_1d_1block11_q_6_rdcnt_q[1:0];
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
    ) redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_aa),
        .data_a(redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_ab),
        .q_b(redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_iq),
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
    assign redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_q = redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_iq[63:0];

    // redist25_i_replace_phi_zfp_1d_1block11_q_6_outputreg0(DELAY,791)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_replace_phi_zfp_1d_1block11_q_6_outputreg0_q <= $unsigned(redist25_i_replace_phi_zfp_1d_1block11_q_6_mem_q);
        end
    end

    // c_i32_1086164(CONSTANT,42)
    assign c_i32_1086164_q = $unsigned(32'b00000000000000000000010000111110);

    // i_sub_i3_zfp_1d_1block88(SUB,217)@11
    assign i_sub_i3_zfp_1d_1block88_a = {1'b0, c_i32_1086164_q};
    assign i_sub_i3_zfp_1d_1block88_b = {1'b0, i_unnamed_zfp_1d_1block46_vt_join_q};
    assign i_sub_i3_zfp_1d_1block88_o = $unsigned(i_sub_i3_zfp_1d_1block88_a) - $unsigned(i_sub_i3_zfp_1d_1block88_b);
    assign i_sub_i3_zfp_1d_1block88_q = i_sub_i3_zfp_1d_1block88_o[32:0];

    // bgTrunc_i_sub_i3_zfp_1d_1block88_sel_x(BITSELECT,264)@11
    assign bgTrunc_i_sub_i3_zfp_1d_1block88_sel_x_b = $unsigned(i_sub_i3_zfp_1d_1block88_q[31:0]);

    // i_sub_i3_zfp_1d_1block88_vt_select_10(BITSELECT,220)@11
    assign i_sub_i3_zfp_1d_1block88_vt_select_10_b = bgTrunc_i_sub_i3_zfp_1d_1block88_sel_x_b[10:0];

    // i_sub_i3_zfp_1d_1block88_vt_join(BITJOIN,219)@11
    assign i_sub_i3_zfp_1d_1block88_vt_join_q = {i_conv33_i_zfp_1d_1block73_vt_const_31_q, i_sub_i3_zfp_1d_1block88_vt_select_10_b};

    // c_i32_64163_recast_x(CONSTANT,268)
    assign c_i32_64163_recast_x_q = $unsigned(32'b00000000000000000000000001000000);

    // i_cmp_i_zfp_1d_1block86(LOGICAL,102)@11
    assign i_cmp_i_zfp_1d_1block86_q = $unsigned(i_unnamed_zfp_1d_1block46_vt_join_q == c_i32_64163_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_zfp_1d_1block89(MUX,231)@11
    assign i_unnamed_zfp_1d_1block89_s = i_cmp_i_zfp_1d_1block86_q;
    always @(i_unnamed_zfp_1d_1block89_s or i_sub_i3_zfp_1d_1block88_vt_join_q or c_i32_0152_q)
    begin
        unique case (i_unnamed_zfp_1d_1block89_s)
            1'b0 : i_unnamed_zfp_1d_1block89_q = i_sub_i3_zfp_1d_1block88_vt_join_q;
            1'b1 : i_unnamed_zfp_1d_1block89_q = c_i32_0152_q;
            default : i_unnamed_zfp_1d_1block89_q = 32'b0;
        endcase
    end

    // i_unnamed_zfp_1d_1block89_vt_select_10(BITSELECT,234)@11
    assign i_unnamed_zfp_1d_1block89_vt_select_10_b = i_unnamed_zfp_1d_1block89_q[10:0];

    // redist22_i_unnamed_zfp_1d_1block89_vt_select_10_b_1(DELAY,778)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_unnamed_zfp_1d_1block89_vt_select_10_b_1_q <= $unsigned(i_unnamed_zfp_1d_1block89_vt_select_10_b);
        end
    end

    // i_unnamed_zfp_1d_1block89_vt_join(BITJOIN,233)@12
    assign i_unnamed_zfp_1d_1block89_vt_join_q = {i_conv33_i_zfp_1d_1block73_vt_const_31_q, redist22_i_unnamed_zfp_1d_1block89_vt_select_10_b_1_q};

    // leftShiftStage0Idx3Rng3_uid519_i_shl13_i_zfp_1d_1block0_shift_x(BITSELECT,518)@12
    assign leftShiftStage0Idx3Rng3_uid519_i_shl13_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q[60:0];
    assign leftShiftStage0Idx3Rng3_uid519_i_shl13_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx3Rng3_uid519_i_shl13_i_zfp_1d_1block0_shift_x_in[60:0];

    // leftShiftStage0Idx3_uid520_i_shl13_i_zfp_1d_1block0_shift_x(BITJOIN,519)@12
    assign leftShiftStage0Idx3_uid520_i_shl13_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx3Rng3_uid519_i_shl13_i_zfp_1d_1block0_shift_x_b, leftShiftStage0Idx3Pad3_uid474_i_notmask_i_zfp_1d_1block0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid516_i_shl13_i_zfp_1d_1block0_shift_x(BITSELECT,515)@12
    assign leftShiftStage0Idx2Rng2_uid516_i_shl13_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q[61:0];
    assign leftShiftStage0Idx2Rng2_uid516_i_shl13_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx2Rng2_uid516_i_shl13_i_zfp_1d_1block0_shift_x_in[61:0];

    // leftShiftStage0Idx2_uid517_i_shl13_i_zfp_1d_1block0_shift_x(BITJOIN,516)@12
    assign leftShiftStage0Idx2_uid517_i_shl13_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx2Rng2_uid516_i_shl13_i_zfp_1d_1block0_shift_x_b, i_and28_i_zfp_1d_1block67_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid513_i_shl13_i_zfp_1d_1block0_shift_x(BITSELECT,512)@12
    assign leftShiftStage0Idx1Rng1_uid513_i_shl13_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid513_i_shl13_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx1Rng1_uid513_i_shl13_i_zfp_1d_1block0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid514_i_shl13_i_zfp_1d_1block0_shift_x(BITJOIN,513)@12
    assign leftShiftStage0Idx1_uid514_i_shl13_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx1Rng1_uid513_i_shl13_i_zfp_1d_1block0_shift_x_b, GND_q};

    // leftShiftStage0Idx3Rng12_uid505_i_shl10_i_zfp_1d_1block0_shift_x(BITSELECT,504)@12
    assign leftShiftStage0Idx3Rng12_uid505_i_shl10_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q[51:0];
    assign leftShiftStage0Idx3Rng12_uid505_i_shl10_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx3Rng12_uid505_i_shl10_i_zfp_1d_1block0_shift_x_in[51:0];

    // leftShiftStage0Idx3_uid506_i_shl10_i_zfp_1d_1block0_shift_x(BITJOIN,505)@12
    assign leftShiftStage0Idx3_uid506_i_shl10_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx3Rng12_uid505_i_shl10_i_zfp_1d_1block0_shift_x_b, leftShiftStage1Idx3Pad12_uid485_i_notmask_i_zfp_1d_1block0_shift_x_q};

    // leftShiftStage0Idx2Rng8_uid502_i_shl10_i_zfp_1d_1block0_shift_x(BITSELECT,501)@12
    assign leftShiftStage0Idx2Rng8_uid502_i_shl10_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q[55:0];
    assign leftShiftStage0Idx2Rng8_uid502_i_shl10_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx2Rng8_uid502_i_shl10_i_zfp_1d_1block0_shift_x_in[55:0];

    // leftShiftStage0Idx2_uid503_i_shl10_i_zfp_1d_1block0_shift_x(BITJOIN,502)@12
    assign leftShiftStage0Idx2_uid503_i_shl10_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx2Rng8_uid502_i_shl10_i_zfp_1d_1block0_shift_x_b, i_shr18_i_i_zfp_1d_1block37_vt_const_31_q};

    // leftShiftStage0Idx1Rng4_uid499_i_shl10_i_zfp_1d_1block0_shift_x(BITSELECT,498)@12
    assign leftShiftStage0Idx1Rng4_uid499_i_shl10_i_zfp_1d_1block0_shift_x_in = leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q[59:0];
    assign leftShiftStage0Idx1Rng4_uid499_i_shl10_i_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx1Rng4_uid499_i_shl10_i_zfp_1d_1block0_shift_x_in[59:0];

    // leftShiftStage0Idx1_uid500_i_shl10_i_zfp_1d_1block0_shift_x(BITJOIN,499)@12
    assign leftShiftStage0Idx1_uid500_i_shl10_i_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx1Rng4_uid499_i_shl10_i_zfp_1d_1block0_shift_x_b, i_and7_i_zfp_1d_1block49_vt_const_3_q};

    // leftShiftStage0Idx3Rng48_uid563_i_shl_i1_zfp_1d_1block0_shift_x(BITSELECT,562)@11
    assign leftShiftStage0Idx3Rng48_uid563_i_shl_i1_zfp_1d_1block0_shift_x_in = redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_q[15:0];
    assign leftShiftStage0Idx3Rng48_uid563_i_shl_i1_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx3Rng48_uid563_i_shl_i1_zfp_1d_1block0_shift_x_in[15:0];

    // leftShiftStage0Idx3Pad48_uid562_i_shl_i1_zfp_1d_1block0_shift_x(CONSTANT,561)
    assign leftShiftStage0Idx3Pad48_uid562_i_shl_i1_zfp_1d_1block0_shift_x_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage0Idx3_uid564_i_shl_i1_zfp_1d_1block0_shift_x(BITJOIN,563)@11
    assign leftShiftStage0Idx3_uid564_i_shl_i1_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx3Rng48_uid563_i_shl_i1_zfp_1d_1block0_shift_x_b, leftShiftStage0Idx3Pad48_uid562_i_shl_i1_zfp_1d_1block0_shift_x_q};

    // leftShiftStage0Idx2Rng32_uid560_i_shl_i1_zfp_1d_1block0_shift_x(BITSELECT,559)@11
    assign leftShiftStage0Idx2Rng32_uid560_i_shl_i1_zfp_1d_1block0_shift_x_in = redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_q[31:0];
    assign leftShiftStage0Idx2Rng32_uid560_i_shl_i1_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx2Rng32_uid560_i_shl_i1_zfp_1d_1block0_shift_x_in[31:0];

    // leftShiftStage0Idx2_uid561_i_shl_i1_zfp_1d_1block0_shift_x(BITJOIN,560)@11
    assign leftShiftStage0Idx2_uid561_i_shl_i1_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx2Rng32_uid560_i_shl_i1_zfp_1d_1block0_shift_x_b, c_i32_0152_q};

    // leftShiftStage0Idx1Rng16_uid557_i_shl_i1_zfp_1d_1block0_shift_x(BITSELECT,556)@11
    assign leftShiftStage0Idx1Rng16_uid557_i_shl_i1_zfp_1d_1block0_shift_x_in = redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_q[47:0];
    assign leftShiftStage0Idx1Rng16_uid557_i_shl_i1_zfp_1d_1block0_shift_x_b = leftShiftStage0Idx1Rng16_uid557_i_shl_i1_zfp_1d_1block0_shift_x_in[47:0];

    // leftShiftStage0Idx1_uid558_i_shl_i1_zfp_1d_1block0_shift_x(BITJOIN,557)@11
    assign leftShiftStage0Idx1_uid558_i_shl_i1_zfp_1d_1block0_shift_x_q = {leftShiftStage0Idx1Rng16_uid557_i_shl_i1_zfp_1d_1block0_shift_x_b, i_shr20_i_i_zfp_1d_1block39_vt_const_31_q};

    // i_sh_prom_i_zfp_1d_1block50_vt_const_63(CONSTANT,175)
    assign i_sh_prom_i_zfp_1d_1block50_vt_const_63_q = $unsigned(58'b0000000000000000000000000000000000000000000000000000000000);

    // i_sub5_i_zfp_1d_1block48_vt_const_31(CONSTANT,214)
    assign i_sub5_i_zfp_1d_1block48_vt_const_31_q = $unsigned(24'b000000000000000000000000);

    // c_i32_53155(CONSTANT,52)
    assign c_i32_53155_q = $unsigned(32'b00000000000000000000000000110101);

    // i_sub5_i_zfp_1d_1block48(ADD,213)@11
    assign i_sub5_i_zfp_1d_1block48_a = {1'b0, i_unnamed_zfp_1d_1block46_vt_join_q};
    assign i_sub5_i_zfp_1d_1block48_b = {1'b0, c_i32_53155_q};
    assign i_sub5_i_zfp_1d_1block48_o = $unsigned(i_sub5_i_zfp_1d_1block48_a) + $unsigned(i_sub5_i_zfp_1d_1block48_b);
    assign i_sub5_i_zfp_1d_1block48_q = i_sub5_i_zfp_1d_1block48_o[32:0];

    // bgTrunc_i_sub5_i_zfp_1d_1block48_sel_x(BITSELECT,263)@11
    assign bgTrunc_i_sub5_i_zfp_1d_1block48_sel_x_b = i_sub5_i_zfp_1d_1block48_q[31:0];

    // i_sub5_i_zfp_1d_1block48_vt_select_7(BITSELECT,216)@11
    assign i_sub5_i_zfp_1d_1block48_vt_select_7_b = bgTrunc_i_sub5_i_zfp_1d_1block48_sel_x_b[7:0];

    // i_sub5_i_zfp_1d_1block48_vt_join(BITJOIN,215)@11
    assign i_sub5_i_zfp_1d_1block48_vt_join_q = {i_sub5_i_zfp_1d_1block48_vt_const_31_q, i_sub5_i_zfp_1d_1block48_vt_select_7_b};

    // i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select(BITSELECT,753)@11
    assign i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_in = i_sub5_i_zfp_1d_1block48_vt_join_q[5:0];
    assign i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_b = i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_in[1:0];
    assign i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_c = i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_in[5:4];
    assign i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_d = i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_in[3:2];

    // i_and7_i_zfp_1d_1block49_join(BITJOIN,460)@11
    assign i_and7_i_zfp_1d_1block49_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_c, GND_q, GND_q, GND_q, GND_q};

    // i_and7_i_zfp_1d_1block49_vt_select_5(BITSELECT,91)@11
    assign i_and7_i_zfp_1d_1block49_vt_select_5_b = i_and7_i_zfp_1d_1block49_join_q[5:4];

    // i_and7_i_zfp_1d_1block49_vt_join(BITJOIN,90)@11
    assign i_and7_i_zfp_1d_1block49_vt_join_q = {i_and7_i_zfp_1d_1block49_vt_const_31_q, i_and7_i_zfp_1d_1block49_vt_select_5_b, i_and7_i_zfp_1d_1block49_vt_const_3_q};

    // i_sh_prom_i_zfp_1d_1block50_sel_x(BITSELECT,313)@11
    assign i_sh_prom_i_zfp_1d_1block50_sel_x_b = {32'b00000000000000000000000000000000, i_and7_i_zfp_1d_1block49_vt_join_q[31:0]};

    // i_sh_prom_i_zfp_1d_1block50_vt_select_5(BITSELECT,177)@11
    assign i_sh_prom_i_zfp_1d_1block50_vt_select_5_b = i_sh_prom_i_zfp_1d_1block50_sel_x_b[5:4];

    // i_sh_prom_i_zfp_1d_1block50_vt_join(BITJOIN,176)@11
    assign i_sh_prom_i_zfp_1d_1block50_vt_join_q = {i_sh_prom_i_zfp_1d_1block50_vt_const_63_q, i_sh_prom_i_zfp_1d_1block50_vt_select_5_b, i_and7_i_zfp_1d_1block49_vt_const_3_q};

    // i_shl_i1_zfp_1d_1block0_shift_narrow_x(BITSELECT,328)@11
    assign i_shl_i1_zfp_1d_1block0_shift_narrow_x_b = i_sh_prom_i_zfp_1d_1block50_vt_join_q[5:0];

    // leftShiftStageSel4Dto4_uid565_i_shl_i1_zfp_1d_1block0_shift_x(BITSELECT,564)@11
    assign leftShiftStageSel4Dto4_uid565_i_shl_i1_zfp_1d_1block0_shift_x_b = i_shl_i1_zfp_1d_1block0_shift_narrow_x_b[5:4];

    // leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x(MUX,565)@11 + 1
    assign leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_s = leftShiftStageSel4Dto4_uid565_i_shl_i1_zfp_1d_1block0_shift_x_b;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_s)
                2'b00 : leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q <= redist20_bgTrunc_i_add_i_i_zfp_1d_1block15_sel_x_b_4_q;
                2'b01 : leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q <= leftShiftStage0Idx1_uid558_i_shl_i1_zfp_1d_1block0_shift_x_q;
                2'b10 : leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q <= leftShiftStage0Idx2_uid561_i_shl_i1_zfp_1d_1block0_shift_x_q;
                2'b11 : leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q <= leftShiftStage0Idx3_uid564_i_shl_i1_zfp_1d_1block0_shift_x_q;
                default : leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q <= 64'b0;
            endcase
        end
    end

    // i_and8_i_zfp_1d_1block52_join(BITJOIN,462)@11
    assign i_and8_i_zfp_1d_1block52_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_d, GND_q, GND_q};

    // i_and8_i_zfp_1d_1block52_vt_select_3(BITSELECT,96)@11
    assign i_and8_i_zfp_1d_1block52_vt_select_3_b = i_and8_i_zfp_1d_1block52_join_q[3:2];

    // i_and8_i_zfp_1d_1block52_vt_join(BITJOIN,95)@11
    assign i_and8_i_zfp_1d_1block52_vt_join_q = {i_and28_i_zfp_1d_1block67_vt_const_31_q, i_and8_i_zfp_1d_1block52_vt_select_3_b, i_and28_i_zfp_1d_1block67_vt_const_1_q};

    // i_sh_prom9_i_zfp_1d_1block53_sel_x(BITSELECT,312)@11
    assign i_sh_prom9_i_zfp_1d_1block53_sel_x_b = {32'b00000000000000000000000000000000, i_and8_i_zfp_1d_1block52_vt_join_q[31:0]};

    // i_sh_prom9_i_zfp_1d_1block53_vt_select_3(BITSELECT,172)@11
    assign i_sh_prom9_i_zfp_1d_1block53_vt_select_3_b = i_sh_prom9_i_zfp_1d_1block53_sel_x_b[3:2];

    // i_sh_prom9_i_zfp_1d_1block53_vt_join(BITJOIN,171)@11
    assign i_sh_prom9_i_zfp_1d_1block53_vt_join_q = {i_sh_prom29_i_zfp_1d_1block68_vt_const_63_q, i_sh_prom9_i_zfp_1d_1block53_vt_select_3_b, i_and28_i_zfp_1d_1block67_vt_const_1_q};

    // i_shl10_i_zfp_1d_1block0_shift_narrow_x(BITSELECT,316)@11
    assign i_shl10_i_zfp_1d_1block0_shift_narrow_x_b = i_sh_prom9_i_zfp_1d_1block53_vt_join_q[5:0];

    // leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x(BITSELECT,506)@11
    assign leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x_in = i_shl10_i_zfp_1d_1block0_shift_narrow_x_b[3:0];
    assign leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x_b = leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x_in[3:2];

    // redist5_leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x_b_1(DELAY,761)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x_b_1_q <= $unsigned(leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x_b);
        end
    end

    // leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x(MUX,507)@12
    assign leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_s = redist5_leftShiftStageSel2Dto2_uid507_i_shl10_i_zfp_1d_1block0_shift_x_b_1_q;
    always @(leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_s or leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q or leftShiftStage0Idx1_uid500_i_shl10_i_zfp_1d_1block0_shift_x_q or leftShiftStage0Idx2_uid503_i_shl10_i_zfp_1d_1block0_shift_x_q or leftShiftStage0Idx3_uid506_i_shl10_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_s)
            2'b00 : leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q = leftShiftStage0_uid566_i_shl_i1_zfp_1d_1block0_shift_x_q;
            2'b01 : leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q = leftShiftStage0Idx1_uid500_i_shl10_i_zfp_1d_1block0_shift_x_q;
            2'b10 : leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q = leftShiftStage0Idx2_uid503_i_shl10_i_zfp_1d_1block0_shift_x_q;
            2'b11 : leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q = leftShiftStage0Idx3_uid506_i_shl10_i_zfp_1d_1block0_shift_x_q;
            default : leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom122_i_zfp_1d_1block56_sel_x(BITSELECT,309)@11
    assign i_sh_prom122_i_zfp_1d_1block56_sel_x_b = {62'b00000000000000000000000000000000000000000000000000000000000000, i_and11_trunc_i_zfp_1d_1block55_sel_x_merged_bit_select_b[1:0]};

    // i_sh_prom122_i_zfp_1d_1block56_vt_select_1(BITSELECT,158)@11
    assign i_sh_prom122_i_zfp_1d_1block56_vt_select_1_b = i_sh_prom122_i_zfp_1d_1block56_sel_x_b[1:0];

    // i_sh_prom122_i_zfp_1d_1block56_vt_join(BITJOIN,157)@11
    assign i_sh_prom122_i_zfp_1d_1block56_vt_join_q = {i_sh_prom122_i_zfp_1d_1block56_vt_const_63_q, i_sh_prom122_i_zfp_1d_1block56_vt_select_1_b};

    // i_shl13_i_zfp_1d_1block0_shift_narrow_x(BITSELECT,320)@11
    assign i_shl13_i_zfp_1d_1block0_shift_narrow_x_b = i_sh_prom122_i_zfp_1d_1block56_vt_join_q[5:0];

    // leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x(BITSELECT,520)@11
    assign leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x_in = i_shl13_i_zfp_1d_1block0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x_b = leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x_in[1:0];

    // redist4_leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x_b_1(DELAY,760)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x_b_1_q <= $unsigned(leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x_b);
        end
    end

    // leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x(MUX,521)@12
    assign leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_s = redist4_leftShiftStageSel0Dto0_uid521_i_shl13_i_zfp_1d_1block0_shift_x_b_1_q;
    always @(leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_s or leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q or leftShiftStage0Idx1_uid514_i_shl13_i_zfp_1d_1block0_shift_x_q or leftShiftStage0Idx2_uid517_i_shl13_i_zfp_1d_1block0_shift_x_q or leftShiftStage0Idx3_uid520_i_shl13_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_s)
            2'b00 : leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_q = leftShiftStage0_uid508_i_shl10_i_zfp_1d_1block0_shift_x_q;
            2'b01 : leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_q = leftShiftStage0Idx1_uid514_i_shl13_i_zfp_1d_1block0_shift_x_q;
            2'b10 : leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_q = leftShiftStage0Idx2_uid517_i_shl13_i_zfp_1d_1block0_shift_x_q;
            2'b11 : leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_q = leftShiftStage0Idx3_uid520_i_shl13_i_zfp_1d_1block0_shift_x_q;
            default : leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_q = 64'b0;
        endcase
    end

    // i_i_zfp_1d_1block82(MUX,115)@12
    assign i_i_zfp_1d_1block82_s = i_cmp4_i_zfp_1d_1block47_c;
    always @(i_i_zfp_1d_1block82_s or rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_q or leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_q)
    begin
        unique case (i_i_zfp_1d_1block82_s)
            1'b0 : i_i_zfp_1d_1block82_q = rightShiftStage0_uid633_i_shr32_i_zfp_1d_1block0_shift_x_q;
            1'b1 : i_i_zfp_1d_1block82_q = leftShiftStage0_uid522_i_shl13_i_zfp_1d_1block0_shift_x_q;
            default : i_i_zfp_1d_1block82_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,280)@12
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_291_q, redist25_i_replace_phi_zfp_1d_1block11_q_6_outputreg0_q, i_unnamed_zfp_1d_1block89_vt_join_q, i_i_zfp_1d_1block82_q};

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x(CHOOSEBITS,279)@12
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[159:159], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[74:74], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[73:73], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[72:72], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[71:71], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[70:70], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[69:69], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[68:68], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[67:67], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[66:66], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[65:65], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[64:64], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[31:31], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[15:15], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[7:7], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[6:6], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[5:5], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[4:4], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[3:3], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[2:2], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[1:1], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_a[0:0]};

    // redist17_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q_3(DELAY,773)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q_3_delay_0 <= $unsigned(i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q);
            redist17_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q_3_delay_1 <= redist17_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q_3_delay_0;
            redist17_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q_3_q <= redist17_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q_3_delay_1;
        end
    end

    // i_add_i4_zfp_1d_1block93(ADD,70)@15
    assign i_add_i4_zfp_1d_1block93_a = {1'b0, redist17_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_zfp_1d_1block0_NO_NAME_x_q_3_q};
    assign i_add_i4_zfp_1d_1block93_b = {1'b0, i_acl_1_i_zfp_1d_1block85_vt_join_q};
    assign i_add_i4_zfp_1d_1block93_o = $unsigned(i_add_i4_zfp_1d_1block93_a) + $unsigned(i_add_i4_zfp_1d_1block93_b);
    assign i_add_i4_zfp_1d_1block93_q = i_add_i4_zfp_1d_1block93_o[64:0];

    // bgTrunc_i_add_i4_zfp_1d_1block93_sel_x(BITSELECT,257)@15
    assign bgTrunc_i_add_i4_zfp_1d_1block93_sel_x_b = i_add_i4_zfp_1d_1block93_q[63:0];

    // sync_out_aunroll_x(GPOUT,394)@15
    assign out_c0_exi336_0_tpl = GND_q;
    assign out_c0_exi336_1_tpl = bgTrunc_i_add_i4_zfp_1d_1block93_sel_x_b;
    assign out_c0_exi336_2_tpl = redist6_i_exitcond5_zfp_1d_1block98_cmp_nsign_q_11_q;
    assign out_c0_exi336_3_tpl = i_notcmp_zfp_1d_1block101_q;
    assign out_o_valid = redist7_valid_fanout_reg0_q_9_q;
    assign out_zfp_1d_1block_B4_current_iter_isspec = i_zfp_1d_1block_b4_current_iter_isspec_zfp_1d_1block5_q;

endmodule
