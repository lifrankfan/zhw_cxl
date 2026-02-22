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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body6_i_zfp_1d_decompresss_c1_enter143_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c1_in_fo00003_zfp_1d_decompress0 (
    output wire [0:0] out_c1_exi10_0_tpl,
    output wire [63:0] out_c1_exi10_1_tpl,
    output wire [63:0] out_c1_exi10_2_tpl,
    output wire [63:0] out_c1_exi10_3_tpl,
    output wire [63:0] out_c1_exi10_4_tpl,
    output wire [63:0] out_c1_exi10_5_tpl,
    output wire [63:0] out_c1_exi10_6_tpl,
    output wire [63:0] out_c1_exi10_7_tpl,
    output wire [63:0] out_c1_exi10_8_tpl,
    output wire [63:0] out_c1_exi10_9_tpl,
    output wire [63:0] out_c1_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress1,
    input wire [0:0] in_c1_eni11_0_tpl,
    input wire [31:0] in_c1_eni11_1_tpl,
    input wire [0:0] in_c1_eni11_2_tpl,
    input wire [63:0] in_c1_eni11_3_tpl,
    input wire [0:0] in_c1_eni11_4_tpl,
    input wire [63:0] in_c1_eni11_5_tpl,
    input wire [31:0] in_c1_eni11_6_tpl,
    input wire [63:0] in_c1_eni11_7_tpl,
    input wire [63:0] in_c1_eni11_8_tpl,
    input wire [63:0] in_c1_eni11_9_tpl,
    input wire [63:0] in_c1_eni11_10_tpl,
    input wire [0:0] in_c1_eni11_11_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_082_q;
    wire [31:0] c_i32_185_q;
    wire [31:0] c_i32_284_q;
    wire [31:0] c_i32_383_q;
    wire [63:0] c_i64_180_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [0:0] i_acl_3_zfp_1d_decompress6_s;
    reg [63:0] i_acl_3_zfp_1d_decompress6_q;
    wire [32:0] i_inc_i_zfp_1d_decompress37_a;
    wire [32:0] i_inc_i_zfp_1d_decompress37_b;
    logic [32:0] i_inc_i_zfp_1d_decompress37_o;
    wire [32:0] i_inc_i_zfp_1d_decompress37_q;
    reg [63:0] i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt_zfp_1d_decompress24_q;
    wire [31:0] i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_k1_0_i25_pop1787_pop44_zfp_1d_decompress2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k1_0_i25_pop1787_pop44_zfp_1d_decompress2_out_feedback_stall_out_44;
    wire [63:0] i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_feedback_stall_out_38;
    wire [63:0] i_llvm_fpga_pop_i64_bs_sroa_0_320_pop36_zfp_1d_decompress5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_bs_sroa_0_320_pop36_zfp_1d_decompress5_out_feedback_stall_out_36;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_feedback_stall_out_48;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_feedback_stall_out_34;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_feedback_stall_out_45;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_feedback_stall_out_31;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_feedback_stall_out_47;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_feedback_stall_out_33;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_feedback_stall_out_46;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_push_i32_i_0_i21_push35_zfp_1d_decompress40_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_i_0_i21_push35_zfp_1d_decompress40_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_k1_0_i25_pop1787_push44_zfp_1d_decompress38_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i32_k1_0_i25_pop1787_push44_zfp_1d_decompress38_out_feedback_valid_out_44;
    wire [63:0] i_llvm_fpga_push_i64_acl_182_push38_zfp_1d_decompress46_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i64_acl_182_push38_zfp_1d_decompress46_out_feedback_valid_out_38;
    wire [63:0] i_llvm_fpga_push_i64_bs_sroa_0_320_push36_zfp_1d_decompress39_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i64_bs_sroa_0_320_push36_zfp_1d_decompress39_out_feedback_valid_out_36;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_0_0_pop1691_push48_zfp_1d_decompress54_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_0_0_pop1691_push48_zfp_1d_decompress54_out_feedback_valid_out_48;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_0_1_push34_zfp_1d_decompress41_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_0_1_push34_zfp_1d_decompress41_out_feedback_valid_out_34;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_12_0_pop1388_push45_zfp_1d_decompress48_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_12_0_pop1388_push45_zfp_1d_decompress48_out_feedback_valid_out_45;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_12_1_push31_zfp_1d_decompress44_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_12_1_push31_zfp_1d_decompress44_out_feedback_valid_out_31;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_6_0_pop1590_push47_zfp_1d_decompress52_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_6_0_pop1590_push47_zfp_1d_decompress52_out_feedback_valid_out_47;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_6_1_push33_zfp_1d_decompress42_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_6_1_push33_zfp_1d_decompress42_out_feedback_valid_out_33;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_9_0_pop1489_push46_zfp_1d_decompress50_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_9_0_pop1489_push46_zfp_1d_decompress50_out_feedback_valid_out_46;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_9_1_push32_zfp_1d_decompress43_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_9_1_push32_zfp_1d_decompress43_out_feedback_valid_out_32;
    wire [63:0] i_or_i_zfp_1d_decompress25_q;
    wire [0:0] i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30_s;
    reg [63:0] i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30_q;
    wire [0:0] i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32_s;
    reg [63:0] i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32_q;
    wire [0:0] i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34_s;
    reg [63:0] i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34_q;
    wire [0:0] i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36_s;
    reg [63:0] i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36_q;
    wire [0:0] i_selcond_zfp_1d_decompress_0_zfp_1d_decompress28_q;
    wire [0:0] i_selcond_zfp_1d_decompress_1_zfp_1d_decompress29_q;
    wire [0:0] i_selcond_zfp_1d_decompress_3_zfp_1d_decompress31_q;
    wire [0:0] i_selcond_zfp_1d_decompress_5_zfp_1d_decompress33_q;
    wire [0:0] i_selcond_zfp_1d_decompress_7_zfp_1d_decompress35_q;
    wire [63:0] i_sh_prom_i30_i_zfp_1d_decompress7_vt_join_q;
    wire [31:0] i_sh_prom_i30_i_zfp_1d_decompress7_vt_select_31_b;
    wire [63:0] i_sh_prom_i_zfp_1d_decompress3_vt_join_q;
    wire [31:0] i_sh_prom_i_zfp_1d_decompress3_vt_select_31_b;
    wire [0:0] i_tobool_i33_i_zfp_1d_decompress10_qi;
    reg [0:0] i_tobool_i33_i_zfp_1d_decompress10_q;
    wire [0:0] i_unnamed_zfp_1d_decompress13_qi;
    reg [0:0] i_unnamed_zfp_1d_decompress13_q;
    wire [0:0] i_unnamed_zfp_1d_decompress15_qi;
    reg [0:0] i_unnamed_zfp_1d_decompress15_q;
    wire [0:0] i_unnamed_zfp_1d_decompress26_qi;
    reg [0:0] i_unnamed_zfp_1d_decompress26_q;
    wire [63:0] i_unnamed_zfp_1d_decompress9_qi;
    reg [63:0] i_unnamed_zfp_1d_decompress9_q;
    wire [31:0] bgTrunc_i_inc_i_zfp_1d_decompress37_sel_x_b;
    wire [63:0] c_i64_081_recast_x_q;
    wire [63:0] i_sh_prom_i30_i_zfp_1d_decompress7_sel_x_b;
    wire [63:0] i_sh_prom_i_zfp_1d_decompress3_sel_x_b;
    wire [5:0] i_shl_i4_zfp_1d_decompress0_shift_narrow_x_b;
    wire [5:0] dupName_0_i_unnamed_zfp_1d_decompress0_shift_narrow_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid145_i_shl_i4_zfp_1d_decompress0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid145_i_shl_i4_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid146_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage0Idx2Pad2_uid147_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [61:0] leftShiftStage0Idx2Rng2_uid148_i_shl_i4_zfp_1d_decompress0_shift_x_in;
    wire [61:0] leftShiftStage0Idx2Rng2_uid148_i_shl_i4_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid149_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [2:0] leftShiftStage0Idx3Pad3_uid150_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [60:0] leftShiftStage0Idx3Rng3_uid151_i_shl_i4_zfp_1d_decompress0_shift_x_in;
    wire [60:0] leftShiftStage0Idx3Rng3_uid151_i_shl_i4_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid152_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid155_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [59:0] leftShiftStage1Idx1Rng4_uid156_i_shl_i4_zfp_1d_decompress0_shift_x_in;
    wire [59:0] leftShiftStage1Idx1Rng4_uid156_i_shl_i4_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid157_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [7:0] leftShiftStage1Idx2Pad8_uid158_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [55:0] leftShiftStage1Idx2Rng8_uid159_i_shl_i4_zfp_1d_decompress0_shift_x_in;
    wire [55:0] leftShiftStage1Idx2Rng8_uid159_i_shl_i4_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx2_uid160_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid161_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [51:0] leftShiftStage1Idx3Rng12_uid162_i_shl_i4_zfp_1d_decompress0_shift_x_in;
    wire [51:0] leftShiftStage1Idx3Rng12_uid162_i_shl_i4_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx3_uid163_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Pad16_uid166_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [47:0] leftShiftStage2Idx1Rng16_uid167_i_shl_i4_zfp_1d_decompress0_shift_x_in;
    wire [47:0] leftShiftStage2Idx1Rng16_uid167_i_shl_i4_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx1_uid168_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [31:0] leftShiftStage2Idx2Rng32_uid170_i_shl_i4_zfp_1d_decompress0_shift_x_in;
    wire [31:0] leftShiftStage2Idx2Rng32_uid170_i_shl_i4_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx2_uid171_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [47:0] leftShiftStage2Idx3Pad48_uid172_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [15:0] leftShiftStage2Idx3Rng48_uid173_i_shl_i4_zfp_1d_decompress0_shift_x_in;
    wire [15:0] leftShiftStage2Idx3Rng48_uid173_i_shl_i4_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx3_uid174_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [59:0] leftShiftStage1Idx1Rng4_uid192_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [59:0] leftShiftStage1Idx1Rng4_uid192_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid193_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [55:0] leftShiftStage1Idx2Rng8_uid195_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [55:0] leftShiftStage1Idx2Rng8_uid195_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx2_uid196_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [51:0] leftShiftStage1Idx3Rng12_uid198_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [51:0] leftShiftStage1Idx3Rng12_uid198_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx3_uid199_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [47:0] leftShiftStage2Idx1Rng16_uid203_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [47:0] leftShiftStage2Idx1Rng16_uid203_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx1_uid204_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [31:0] leftShiftStage2Idx2Rng32_uid206_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [31:0] leftShiftStage2Idx2Rng32_uid206_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx2_uid207_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [15:0] leftShiftStage2Idx3Rng48_uid209_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [15:0] leftShiftStage2Idx3Rng48_uid209_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx3_uid210_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStageSel0Dto0_uid153_i_shl_i4_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid153_i_shl_i4_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto0_uid153_i_shl_i4_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    wire [1:0] leftShiftStageSel0Dto0_uid189_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid189_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto0_uid189_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    reg [31:0] redist0_sync_together113_aunroll_x_in_c1_eni11_1_tpl_1_q;
    reg [0:0] redist1_sync_together113_aunroll_x_in_c1_eni11_2_tpl_1_q;
    reg [0:0] redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2_q;
    reg [63:0] redist3_sync_together113_aunroll_x_in_c1_eni11_3_tpl_1_q;
    reg [0:0] redist4_sync_together113_aunroll_x_in_c1_eni11_4_tpl_1_q;
    reg [63:0] redist5_sync_together113_aunroll_x_in_c1_eni11_5_tpl_1_q;
    reg [63:0] redist6_sync_together113_aunroll_x_in_c1_eni11_7_tpl_2_q;
    reg [63:0] redist6_sync_together113_aunroll_x_in_c1_eni11_7_tpl_2_delay_0;
    reg [63:0] redist7_sync_together113_aunroll_x_in_c1_eni11_8_tpl_2_q;
    reg [63:0] redist7_sync_together113_aunroll_x_in_c1_eni11_8_tpl_2_delay_0;
    reg [63:0] redist8_sync_together113_aunroll_x_in_c1_eni11_9_tpl_2_q;
    reg [63:0] redist8_sync_together113_aunroll_x_in_c1_eni11_9_tpl_2_delay_0;
    reg [63:0] redist9_sync_together113_aunroll_x_in_c1_eni11_10_tpl_2_q;
    reg [63:0] redist9_sync_together113_aunroll_x_in_c1_eni11_10_tpl_2_delay_0;
    reg [0:0] redist10_sync_together113_aunroll_x_in_c1_eni11_11_tpl_1_q;
    reg [0:0] redist11_sync_together113_aunroll_x_in_c1_eni11_11_tpl_2_q;
    reg [0:0] redist12_sync_together113_aunroll_x_in_c1_eni11_11_tpl_3_q;
    reg [0:0] redist13_sync_together113_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist14_sync_together113_aunroll_x_in_i_valid_2_q;
    reg [5:0] redist15_i_shl_i4_zfp_1d_decompress0_shift_narrow_x_b_1_q;
    reg [0:0] redist16_i_unnamed_zfp_1d_decompress26_q_2_q;
    reg [0:0] redist17_i_unnamed_zfp_1d_decompress17_q_2_q;
    reg [0:0] redist18_i_unnamed_zfp_1d_decompress15_q_2_q;
    reg [0:0] redist19_i_unnamed_zfp_1d_decompress13_q_2_q;
    reg [63:0] redist20_i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_data_out_1_q;
    reg [63:0] redist21_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_data_out_1_q;
    reg [63:0] redist22_i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_data_out_1_q;
    reg [63:0] redist23_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_data_out_1_q;
    reg [63:0] redist24_i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_data_out_1_q;
    reg [63:0] redist25_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_data_out_1_q;
    reg [63:0] redist26_i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_data_out_1_q;
    reg [63:0] redist27_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_data_out_1_q;
    reg [63:0] redist28_i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out_2_q;
    reg [63:0] redist28_i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out_2_delay_0;
    reg [63:0] redist29_i_acl_3_zfp_1d_decompress6_q_2_q;
    reg [63:0] redist29_i_acl_3_zfp_1d_decompress6_q_2_delay_0;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist13_sync_together113_aunroll_x_in_i_valid_1(DELAY,228)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist13_sync_together113_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist13_sync_together113_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist14_sync_together113_aunroll_x_in_i_valid_2(DELAY,229)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together113_aunroll_x_in_i_valid_2_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,111)@9 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist14_sync_together113_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg23(REG,134)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg24(REG,135)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist14_sync_together113_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist10_sync_together113_aunroll_x_in_c1_eni11_11_tpl_1(DELAY,225)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together113_aunroll_x_in_c1_eni11_11_tpl_1_q <= $unsigned(in_c1_eni11_11_tpl);
        end
    end

    // redist11_sync_together113_aunroll_x_in_c1_eni11_11_tpl_2(DELAY,226)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together113_aunroll_x_in_c1_eni11_11_tpl_2_q <= $unsigned(redist10_sync_together113_aunroll_x_in_c1_eni11_11_tpl_1_q);
        end
    end

    // redist12_sync_together113_aunroll_x_in_c1_eni11_11_tpl_3(DELAY,227)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together113_aunroll_x_in_c1_eni11_11_tpl_3_q <= $unsigned(redist11_sync_together113_aunroll_x_in_c1_eni11_11_tpl_2_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_i_sroa_0_0_pop1691_push48_zfp_1d_decompress54(BLACKBOX,53)@10
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_u00000_0_pop1691_push48_0 thei_llvm_fpga_push_i64_ublock_i_sroa_0_0_pop1691_push48_zfp_1d_decompress54 (
        .in_c1_ene11(redist12_sync_together113_aunroll_x_in_c1_eni11_11_tpl_3_q),
        .in_data_in(redist27_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_data_out_1_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_feedback_stall_out_48),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i64_ublock_i_sroa_0_0_pop1691_push48_zfp_1d_decompress54_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i64_ublock_i_sroa_0_0_pop1691_push48_zfp_1d_decompress54_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together113_aunroll_x_in_c1_eni11_2_tpl_1(DELAY,216)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together113_aunroll_x_in_c1_eni11_2_tpl_1_q <= $unsigned(in_c1_eni11_2_tpl);
        end
    end

    // redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2(DELAY,217)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2_q <= $unsigned(redist1_sync_together113_aunroll_x_in_c1_eni11_2_tpl_1_q);
        end
    end

    // redist9_sync_together113_aunroll_x_in_c1_eni11_10_tpl_2(DELAY,224)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together113_aunroll_x_in_c1_eni11_10_tpl_2_delay_0 <= $unsigned(in_c1_eni11_10_tpl);
            redist9_sync_together113_aunroll_x_in_c1_eni11_10_tpl_2_q <= redist9_sync_together113_aunroll_x_in_c1_eni11_10_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53(BLACKBOX,41)@9
    // out out_feedback_stall_out_48@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ub0000_0_0_pop1691_pop48_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53 (
        .in_data_in(redist9_sync_together113_aunroll_x_in_c1_eni11_10_tpl_2_q),
        .in_dir(redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2_q),
        .in_feedback_in_48(i_llvm_fpga_push_i64_ublock_i_sroa_0_0_pop1691_push48_zfp_1d_decompress54_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i64_ublock_i_sroa_0_0_pop1691_push48_zfp_1d_decompress54_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_data_out_1(DELAY,242)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_data_out);
        end
    end

    // valid_fanout_reg21(REG,132)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg22(REG,133)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_i_sroa_6_0_pop1590_push47_zfp_1d_decompress52(BLACKBOX,57)@9
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_u00006_0_pop1590_push47_0 thei_llvm_fpga_push_i64_ublock_i_sroa_6_0_pop1590_push47_zfp_1d_decompress52 (
        .in_c1_ene11(redist11_sync_together113_aunroll_x_in_c1_eni11_11_tpl_2_q),
        .in_data_in(i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_data_out),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_feedback_stall_out_47),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i64_ublock_i_sroa_6_0_pop1590_push47_zfp_1d_decompress52_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i64_ublock_i_sroa_6_0_pop1590_push47_zfp_1d_decompress52_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together113_aunroll_x_in_c1_eni11_7_tpl_2(DELAY,221)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together113_aunroll_x_in_c1_eni11_7_tpl_2_delay_0 <= $unsigned(in_c1_eni11_7_tpl);
            redist6_sync_together113_aunroll_x_in_c1_eni11_7_tpl_2_q <= redist6_sync_together113_aunroll_x_in_c1_eni11_7_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51(BLACKBOX,45)@9
    // out out_feedback_stall_out_47@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ub0000_6_0_pop1590_pop47_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51 (
        .in_data_in(redist6_sync_together113_aunroll_x_in_c1_eni11_7_tpl_2_q),
        .in_dir(redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2_q),
        .in_feedback_in_47(i_llvm_fpga_push_i64_ublock_i_sroa_6_0_pop1590_push47_zfp_1d_decompress52_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i64_ublock_i_sroa_6_0_pop1590_push47_zfp_1d_decompress52_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_data_out_1(DELAY,238)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_data_out);
        end
    end

    // valid_fanout_reg19(REG,130)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg20(REG,131)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_i_sroa_9_0_pop1489_push46_zfp_1d_decompress50(BLACKBOX,59)@9
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_u00009_0_pop1489_push46_0 thei_llvm_fpga_push_i64_ublock_i_sroa_9_0_pop1489_push46_zfp_1d_decompress50 (
        .in_c1_ene11(redist11_sync_together113_aunroll_x_in_c1_eni11_11_tpl_2_q),
        .in_data_in(i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_data_out),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_feedback_stall_out_46),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i64_ublock_i_sroa_9_0_pop1489_push46_zfp_1d_decompress50_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i64_ublock_i_sroa_9_0_pop1489_push46_zfp_1d_decompress50_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together113_aunroll_x_in_c1_eni11_8_tpl_2(DELAY,222)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together113_aunroll_x_in_c1_eni11_8_tpl_2_delay_0 <= $unsigned(in_c1_eni11_8_tpl);
            redist7_sync_together113_aunroll_x_in_c1_eni11_8_tpl_2_q <= redist7_sync_together113_aunroll_x_in_c1_eni11_8_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49(BLACKBOX,47)@9
    // out out_feedback_stall_out_46@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ub0000_9_0_pop1489_pop46_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49 (
        .in_data_in(redist7_sync_together113_aunroll_x_in_c1_eni11_8_tpl_2_q),
        .in_dir(redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2_q),
        .in_feedback_in_46(i_llvm_fpga_push_i64_ublock_i_sroa_9_0_pop1489_push46_zfp_1d_decompress50_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i64_ublock_i_sroa_9_0_pop1489_push46_zfp_1d_decompress50_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_data_out_1(DELAY,236)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_data_out);
        end
    end

    // valid_fanout_reg17(REG,128)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg18(REG,129)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist14_sync_together113_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_i_sroa_12_0_pop1388_push45_zfp_1d_decompress48(BLACKBOX,55)@10
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_u00002_0_pop1388_push45_0 thei_llvm_fpga_push_i64_ublock_i_sroa_12_0_pop1388_push45_zfp_1d_decompress48 (
        .in_c1_ene11(redist12_sync_together113_aunroll_x_in_c1_eni11_11_tpl_3_q),
        .in_data_in(redist25_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_data_out_1_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_feedback_stall_out_45),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i64_ublock_i_sroa_12_0_pop1388_push45_zfp_1d_decompress48_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i64_ublock_i_sroa_12_0_pop1388_push45_zfp_1d_decompress48_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together113_aunroll_x_in_c1_eni11_9_tpl_2(DELAY,223)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together113_aunroll_x_in_c1_eni11_9_tpl_2_delay_0 <= $unsigned(in_c1_eni11_9_tpl);
            redist8_sync_together113_aunroll_x_in_c1_eni11_9_tpl_2_q <= redist8_sync_together113_aunroll_x_in_c1_eni11_9_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47(BLACKBOX,43)@9
    // out out_feedback_stall_out_45@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ub000012_0_pop1388_pop45_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47 (
        .in_data_in(redist8_sync_together113_aunroll_x_in_c1_eni11_9_tpl_2_q),
        .in_dir(redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2_q),
        .in_feedback_in_45(i_llvm_fpga_push_i64_ublock_i_sroa_12_0_pop1388_push45_zfp_1d_decompress48_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i64_ublock_i_sroa_12_0_pop1388_push45_zfp_1d_decompress48_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_data_out_1(DELAY,240)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_data_out);
        end
    end

    // valid_fanout_reg15(REG,126)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,127)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist14_sync_together113_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_acl_182_push38_zfp_1d_decompress46(BLACKBOX,51)@10
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_acl_182_push38_0 thei_llvm_fpga_push_i64_acl_182_push38_zfp_1d_decompress46 (
        .in_c1_ene11(redist12_sync_together113_aunroll_x_in_c1_eni11_11_tpl_3_q),
        .in_data_in(redist28_i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out_2_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i64_acl_182_push38_zfp_1d_decompress46_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i64_acl_182_push38_zfp_1d_decompress46_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together113_aunroll_x_in_c1_eni11_3_tpl_1(DELAY,218)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together113_aunroll_x_in_c1_eni11_3_tpl_1_q <= $unsigned(in_c1_eni11_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45(BLACKBOX,39)@8
    // out out_feedback_stall_out_38@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_acl_182_pop38_0 thei_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45 (
        .in_data_in(redist3_sync_together113_aunroll_x_in_c1_eni11_3_tpl_1_q),
        .in_dir(redist1_sync_together113_aunroll_x_in_c1_eni11_2_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i64_acl_182_push38_zfp_1d_decompress46_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i64_acl_182_push38_zfp_1d_decompress46_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out_2(DELAY,243)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out);
            redist28_i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out_2_q <= redist28_i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out_2_delay_0;
        end
    end

    // leftShiftStage2Idx3Rng48_uid173_i_shl_i4_zfp_1d_decompress0_shift_x(BITSELECT,172)@9
    assign leftShiftStage2Idx3Rng48_uid173_i_shl_i4_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_q[15:0];
    assign leftShiftStage2Idx3Rng48_uid173_i_shl_i4_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx3Rng48_uid173_i_shl_i4_zfp_1d_decompress0_shift_x_in[15:0];

    // leftShiftStage2Idx3Pad48_uid172_i_shl_i4_zfp_1d_decompress0_shift_x(CONSTANT,171)
    assign leftShiftStage2Idx3Pad48_uid172_i_shl_i4_zfp_1d_decompress0_shift_x_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage2Idx3_uid174_i_shl_i4_zfp_1d_decompress0_shift_x(BITJOIN,173)@9
    assign leftShiftStage2Idx3_uid174_i_shl_i4_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx3Rng48_uid173_i_shl_i4_zfp_1d_decompress0_shift_x_b, leftShiftStage2Idx3Pad48_uid172_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage2Idx2Rng32_uid170_i_shl_i4_zfp_1d_decompress0_shift_x(BITSELECT,169)@9
    assign leftShiftStage2Idx2Rng32_uid170_i_shl_i4_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_q[31:0];
    assign leftShiftStage2Idx2Rng32_uid170_i_shl_i4_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx2Rng32_uid170_i_shl_i4_zfp_1d_decompress0_shift_x_in[31:0];

    // c_i32_082(CONSTANT,28)
    assign c_i32_082_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage2Idx2_uid171_i_shl_i4_zfp_1d_decompress0_shift_x(BITJOIN,170)@9
    assign leftShiftStage2Idx2_uid171_i_shl_i4_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx2Rng32_uid170_i_shl_i4_zfp_1d_decompress0_shift_x_b, c_i32_082_q};

    // leftShiftStage2Idx1Rng16_uid167_i_shl_i4_zfp_1d_decompress0_shift_x(BITSELECT,166)@9
    assign leftShiftStage2Idx1Rng16_uid167_i_shl_i4_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_q[47:0];
    assign leftShiftStage2Idx1Rng16_uid167_i_shl_i4_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx1Rng16_uid167_i_shl_i4_zfp_1d_decompress0_shift_x_in[47:0];

    // leftShiftStage2Idx1Pad16_uid166_i_shl_i4_zfp_1d_decompress0_shift_x(CONSTANT,165)
    assign leftShiftStage2Idx1Pad16_uid166_i_shl_i4_zfp_1d_decompress0_shift_x_q = $unsigned(16'b0000000000000000);

    // leftShiftStage2Idx1_uid168_i_shl_i4_zfp_1d_decompress0_shift_x(BITJOIN,167)@9
    assign leftShiftStage2Idx1_uid168_i_shl_i4_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx1Rng16_uid167_i_shl_i4_zfp_1d_decompress0_shift_x_b, leftShiftStage2Idx1Pad16_uid166_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid162_i_shl_i4_zfp_1d_decompress0_shift_x(BITSELECT,161)@9
    assign leftShiftStage1Idx3Rng12_uid162_i_shl_i4_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q[51:0];
    assign leftShiftStage1Idx3Rng12_uid162_i_shl_i4_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx3Rng12_uid162_i_shl_i4_zfp_1d_decompress0_shift_x_in[51:0];

    // leftShiftStage1Idx3Pad12_uid161_i_shl_i4_zfp_1d_decompress0_shift_x(CONSTANT,160)
    assign leftShiftStage1Idx3Pad12_uid161_i_shl_i4_zfp_1d_decompress0_shift_x_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid163_i_shl_i4_zfp_1d_decompress0_shift_x(BITJOIN,162)@9
    assign leftShiftStage1Idx3_uid163_i_shl_i4_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx3Rng12_uid162_i_shl_i4_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx3Pad12_uid161_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid159_i_shl_i4_zfp_1d_decompress0_shift_x(BITSELECT,158)@9
    assign leftShiftStage1Idx2Rng8_uid159_i_shl_i4_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q[55:0];
    assign leftShiftStage1Idx2Rng8_uid159_i_shl_i4_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx2Rng8_uid159_i_shl_i4_zfp_1d_decompress0_shift_x_in[55:0];

    // leftShiftStage1Idx2Pad8_uid158_i_shl_i4_zfp_1d_decompress0_shift_x(CONSTANT,157)
    assign leftShiftStage1Idx2Pad8_uid158_i_shl_i4_zfp_1d_decompress0_shift_x_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid160_i_shl_i4_zfp_1d_decompress0_shift_x(BITJOIN,159)@9
    assign leftShiftStage1Idx2_uid160_i_shl_i4_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx2Rng8_uid159_i_shl_i4_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx2Pad8_uid158_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx1Rng4_uid156_i_shl_i4_zfp_1d_decompress0_shift_x(BITSELECT,155)@9
    assign leftShiftStage1Idx1Rng4_uid156_i_shl_i4_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q[59:0];
    assign leftShiftStage1Idx1Rng4_uid156_i_shl_i4_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx1Rng4_uid156_i_shl_i4_zfp_1d_decompress0_shift_x_in[59:0];

    // leftShiftStage1Idx1Pad4_uid155_i_shl_i4_zfp_1d_decompress0_shift_x(CONSTANT,154)
    assign leftShiftStage1Idx1Pad4_uid155_i_shl_i4_zfp_1d_decompress0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid157_i_shl_i4_zfp_1d_decompress0_shift_x(BITJOIN,156)@9
    assign leftShiftStage1Idx1_uid157_i_shl_i4_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx1Rng4_uid156_i_shl_i4_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx1Pad4_uid155_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx3Rng3_uid151_i_shl_i4_zfp_1d_decompress0_shift_x(BITSELECT,150)
    assign leftShiftStage0Idx3Rng3_uid151_i_shl_i4_zfp_1d_decompress0_shift_x_in = c_i64_180_q[60:0];
    assign leftShiftStage0Idx3Rng3_uid151_i_shl_i4_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx3Rng3_uid151_i_shl_i4_zfp_1d_decompress0_shift_x_in[60:0];

    // leftShiftStage0Idx3Pad3_uid150_i_shl_i4_zfp_1d_decompress0_shift_x(CONSTANT,149)
    assign leftShiftStage0Idx3Pad3_uid150_i_shl_i4_zfp_1d_decompress0_shift_x_q = $unsigned(3'b000);

    // leftShiftStage0Idx3_uid152_i_shl_i4_zfp_1d_decompress0_shift_x(BITJOIN,151)
    assign leftShiftStage0Idx3_uid152_i_shl_i4_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx3Rng3_uid151_i_shl_i4_zfp_1d_decompress0_shift_x_b, leftShiftStage0Idx3Pad3_uid150_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid148_i_shl_i4_zfp_1d_decompress0_shift_x(BITSELECT,147)
    assign leftShiftStage0Idx2Rng2_uid148_i_shl_i4_zfp_1d_decompress0_shift_x_in = c_i64_180_q[61:0];
    assign leftShiftStage0Idx2Rng2_uid148_i_shl_i4_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx2Rng2_uid148_i_shl_i4_zfp_1d_decompress0_shift_x_in[61:0];

    // leftShiftStage0Idx2Pad2_uid147_i_shl_i4_zfp_1d_decompress0_shift_x(CONSTANT,146)
    assign leftShiftStage0Idx2Pad2_uid147_i_shl_i4_zfp_1d_decompress0_shift_x_q = $unsigned(2'b00);

    // leftShiftStage0Idx2_uid149_i_shl_i4_zfp_1d_decompress0_shift_x(BITJOIN,148)
    assign leftShiftStage0Idx2_uid149_i_shl_i4_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx2Rng2_uid148_i_shl_i4_zfp_1d_decompress0_shift_x_b, leftShiftStage0Idx2Pad2_uid147_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid145_i_shl_i4_zfp_1d_decompress0_shift_x(BITSELECT,144)
    assign leftShiftStage0Idx1Rng1_uid145_i_shl_i4_zfp_1d_decompress0_shift_x_in = c_i64_180_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid145_i_shl_i4_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng1_uid145_i_shl_i4_zfp_1d_decompress0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid146_i_shl_i4_zfp_1d_decompress0_shift_x(BITJOIN,145)
    assign leftShiftStage0Idx1_uid146_i_shl_i4_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng1_uid145_i_shl_i4_zfp_1d_decompress0_shift_x_b, GND_q};

    // c_i64_180(CONSTANT,32)
    assign c_i64_180_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x(MUX,153)@9
    assign leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid153_i_shl_i4_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_s or c_i64_180_q or leftShiftStage0Idx1_uid146_i_shl_i4_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx2_uid149_i_shl_i4_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx3_uid152_i_shl_i4_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q = c_i64_180_q;
            2'b01 : leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid146_i_shl_i4_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx2_uid149_i_shl_i4_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx3_uid152_i_shl_i4_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x(MUX,164)@9
    assign leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid153_i_shl_i4_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    always @(leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_s or leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx1_uid157_i_shl_i4_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx2_uid160_i_shl_i4_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx3_uid163_i_shl_i4_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_q = leftShiftStage0_uid154_i_shl_i4_zfp_1d_decompress0_shift_x_q;
            2'b01 : leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx1_uid157_i_shl_i4_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx2_uid160_i_shl_i4_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx3_uid163_i_shl_i4_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // valid_fanout_reg1(REG,112)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,119)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_k1_0_i25_pop1787_push44_zfp_1d_decompress38(BLACKBOX,50)@8
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i32_k1_0_i25_pop1787_push44_0 thei_llvm_fpga_push_i32_k1_0_i25_pop1787_push44_zfp_1d_decompress38 (
        .in_c1_ene11(redist10_sync_together113_aunroll_x_in_c1_eni11_11_tpl_1_q),
        .in_data_in(i_llvm_fpga_pop_i32_k1_0_i25_pop1787_pop44_zfp_1d_decompress2_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i32_k1_0_i25_pop1787_pop44_zfp_1d_decompress2_out_feedback_stall_out_44),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i32_k1_0_i25_pop1787_push44_zfp_1d_decompress38_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i32_k1_0_i25_pop1787_push44_zfp_1d_decompress38_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together113_aunroll_x_in_c1_eni11_1_tpl_1(DELAY,215)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together113_aunroll_x_in_c1_eni11_1_tpl_1_q <= $unsigned(in_c1_eni11_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_k1_0_i25_pop1787_pop44_zfp_1d_decompress2(BLACKBOX,38)@8
    // out out_feedback_stall_out_44@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i32_k1_0_i25_pop1787_pop44_0 thei_llvm_fpga_pop_i32_k1_0_i25_pop1787_pop44_zfp_1d_decompress2 (
        .in_data_in(redist0_sync_together113_aunroll_x_in_c1_eni11_1_tpl_1_q),
        .in_dir(redist1_sync_together113_aunroll_x_in_c1_eni11_2_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i32_k1_0_i25_pop1787_push44_zfp_1d_decompress38_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i32_k1_0_i25_pop1787_push44_zfp_1d_decompress38_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_k1_0_i25_pop1787_pop44_zfp_1d_decompress2_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i32_k1_0_i25_pop1787_pop44_zfp_1d_decompress2_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sh_prom_i_zfp_1d_decompress3_sel_x(BITSELECT,100)@8
    assign i_sh_prom_i_zfp_1d_decompress3_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k1_0_i25_pop1787_pop44_zfp_1d_decompress2_out_data_out[31:0]};

    // i_sh_prom_i_zfp_1d_decompress3_vt_select_31(BITSELECT,78)@8
    assign i_sh_prom_i_zfp_1d_decompress3_vt_select_31_b = i_sh_prom_i_zfp_1d_decompress3_sel_x_b[31:0];

    // i_sh_prom_i_zfp_1d_decompress3_vt_join(BITJOIN,77)@8
    assign i_sh_prom_i_zfp_1d_decompress3_vt_join_q = {c_i32_082_q, i_sh_prom_i_zfp_1d_decompress3_vt_select_31_b};

    // i_shl_i4_zfp_1d_decompress0_shift_narrow_x(BITSELECT,103)@8
    assign i_shl_i4_zfp_1d_decompress0_shift_narrow_x_b = i_sh_prom_i_zfp_1d_decompress3_vt_join_q[5:0];

    // redist15_i_shl_i4_zfp_1d_decompress0_shift_narrow_x_b_1(DELAY,230)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_shl_i4_zfp_1d_decompress0_shift_narrow_x_b_1_q <= $unsigned(i_shl_i4_zfp_1d_decompress0_shift_narrow_x_b);
        end
    end

    // leftShiftStageSel0Dto0_uid153_i_shl_i4_zfp_1d_decompress0_shift_x_merged_bit_select(BITSELECT,213)@9
    assign leftShiftStageSel0Dto0_uid153_i_shl_i4_zfp_1d_decompress0_shift_x_merged_bit_select_b = redist15_i_shl_i4_zfp_1d_decompress0_shift_narrow_x_b_1_q[1:0];
    assign leftShiftStageSel0Dto0_uid153_i_shl_i4_zfp_1d_decompress0_shift_x_merged_bit_select_c = redist15_i_shl_i4_zfp_1d_decompress0_shift_narrow_x_b_1_q[3:2];
    assign leftShiftStageSel0Dto0_uid153_i_shl_i4_zfp_1d_decompress0_shift_x_merged_bit_select_d = redist15_i_shl_i4_zfp_1d_decompress0_shift_narrow_x_b_1_q[5:4];

    // leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x(MUX,175)@9 + 1
    assign leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid153_i_shl_i4_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x_s)
                2'b00 : leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x_q <= leftShiftStage1_uid165_i_shl_i4_zfp_1d_decompress0_shift_x_q;
                2'b01 : leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx1_uid168_i_shl_i4_zfp_1d_decompress0_shift_x_q;
                2'b10 : leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx2_uid171_i_shl_i4_zfp_1d_decompress0_shift_x_q;
                2'b11 : leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx3_uid174_i_shl_i4_zfp_1d_decompress0_shift_x_q;
                default : leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x_q <= 64'b0;
            endcase
        end
    end

    // valid_fanout_reg7(REG,118)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg11(REG,122)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist14_sync_together113_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_i_sroa_0_1_push34_zfp_1d_decompress41(BLACKBOX,54)@10
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_u0000_i_sroa_0_1_push34_0 thei_llvm_fpga_push_i64_ublock_i_sroa_0_1_push34_zfp_1d_decompress41 (
        .in_c1_ene11(redist12_sync_together113_aunroll_x_in_c1_eni11_11_tpl_3_q),
        .in_data_in(i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i64_ublock_i_sroa_0_1_push34_zfp_1d_decompress41_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i64_ublock_i_sroa_0_1_push34_zfp_1d_decompress41_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23(BLACKBOX,42)@9
    // out out_feedback_stall_out_34@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23 (
        .in_data_in(redist9_sync_together113_aunroll_x_in_c1_eni11_10_tpl_2_q),
        .in_dir(redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2_q),
        .in_feedback_in_34(i_llvm_fpga_push_i64_ublock_i_sroa_0_1_push34_zfp_1d_decompress41_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i64_ublock_i_sroa_0_1_push34_zfp_1d_decompress41_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,117)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,125)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist14_sync_together113_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_i_sroa_12_1_push31_zfp_1d_decompress44(BLACKBOX,56)@10
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_u0000i_sroa_12_1_push31_0 thei_llvm_fpga_push_i64_ublock_i_sroa_12_1_push31_zfp_1d_decompress44 (
        .in_c1_ene11(redist12_sync_together113_aunroll_x_in_c1_eni11_11_tpl_3_q),
        .in_data_in(i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i64_ublock_i_sroa_12_1_push31_zfp_1d_decompress44_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i64_ublock_i_sroa_12_1_push31_zfp_1d_decompress44_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22(BLACKBOX,44)@9
    // out out_feedback_stall_out_31@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22 (
        .in_data_in(redist8_sync_together113_aunroll_x_in_c1_eni11_9_tpl_2_q),
        .in_dir(redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2_q),
        .in_feedback_in_31(i_llvm_fpga_push_i64_ublock_i_sroa_12_1_push31_zfp_1d_decompress44_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i64_ublock_i_sroa_12_1_push31_zfp_1d_decompress44_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_383(CONSTANT,31)
    assign c_i32_383_q = $unsigned(32'b00000000000000000000000000000011);

    // valid_fanout_reg3(REG,114)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,121)@7 + 1
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

    // c_i32_185(CONSTANT,29)
    assign c_i32_185_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_i_zfp_1d_decompress37(ADD,35)@8
    assign i_inc_i_zfp_1d_decompress37_a = {1'b0, i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12_out_data_out};
    assign i_inc_i_zfp_1d_decompress37_b = {1'b0, c_i32_185_q};
    assign i_inc_i_zfp_1d_decompress37_o = $unsigned(i_inc_i_zfp_1d_decompress37_a) + $unsigned(i_inc_i_zfp_1d_decompress37_b);
    assign i_inc_i_zfp_1d_decompress37_q = i_inc_i_zfp_1d_decompress37_o[32:0];

    // bgTrunc_i_inc_i_zfp_1d_decompress37_sel_x(BITSELECT,91)@8
    assign bgTrunc_i_inc_i_zfp_1d_decompress37_sel_x_b = i_inc_i_zfp_1d_decompress37_q[31:0];

    // i_llvm_fpga_push_i32_i_0_i21_push35_zfp_1d_decompress40(BLACKBOX,49)@8
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i32_i_0_i21_push35_0 thei_llvm_fpga_push_i32_i_0_i21_push35_zfp_1d_decompress40 (
        .in_c1_ene11(redist10_sync_together113_aunroll_x_in_c1_eni11_11_tpl_1_q),
        .in_data_in(bgTrunc_i_inc_i_zfp_1d_decompress37_sel_x_b),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_i_0_i21_push35_zfp_1d_decompress40_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_i_0_i21_push35_zfp_1d_decompress40_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12(BLACKBOX,37)@8
    // out out_feedback_stall_out_35@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i32_i_0_i21_pop35_0 thei_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12 (
        .in_data_in(c_i32_082_q),
        .in_dir(redist1_sync_together113_aunroll_x_in_c1_eni11_2_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_i_0_i21_push35_zfp_1d_decompress40_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_i_0_i21_push35_zfp_1d_decompress40_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_zfp_1d_decompress13(LOGICAL,80)@8 + 1
    assign i_unnamed_zfp_1d_decompress13_qi = $unsigned(i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12_out_data_out == c_i32_383_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress13_delay ( .xin(i_unnamed_zfp_1d_decompress13_qi), .xout(i_unnamed_zfp_1d_decompress13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,116)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg13(REG,124)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist14_sync_together113_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_i_sroa_9_1_push32_zfp_1d_decompress43(BLACKBOX,60)@10
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_u0000_i_sroa_9_1_push32_0 thei_llvm_fpga_push_i64_ublock_i_sroa_9_1_push32_zfp_1d_decompress43 (
        .in_c1_ene11(redist12_sync_together113_aunroll_x_in_c1_eni11_11_tpl_3_q),
        .in_data_in(i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i64_ublock_i_sroa_9_1_push32_zfp_1d_decompress43_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i64_ublock_i_sroa_9_1_push32_zfp_1d_decompress43_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21(BLACKBOX,48)@9
    // out out_feedback_stall_out_32@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21 (
        .in_data_in(redist7_sync_together113_aunroll_x_in_c1_eni11_8_tpl_2_q),
        .in_dir(redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2_q),
        .in_feedback_in_32(i_llvm_fpga_push_i64_ublock_i_sroa_9_1_push32_zfp_1d_decompress43_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i64_ublock_i_sroa_9_1_push32_zfp_1d_decompress43_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_284(CONSTANT,30)
    assign c_i32_284_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_zfp_1d_decompress15(LOGICAL,81)@8 + 1
    assign i_unnamed_zfp_1d_decompress15_qi = $unsigned(i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12_out_data_out == c_i32_284_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress15_delay ( .xin(i_unnamed_zfp_1d_decompress15_qi), .xout(i_unnamed_zfp_1d_decompress15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg4(REG,115)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist13_sync_together113_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg12(REG,123)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist14_sync_together113_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_ublock_i_sroa_6_1_push33_zfp_1d_decompress42(BLACKBOX,58)@10
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_u0000_i_sroa_6_1_push33_0 thei_llvm_fpga_push_i64_ublock_i_sroa_6_1_push33_zfp_1d_decompress42 (
        .in_c1_ene11(redist12_sync_together113_aunroll_x_in_c1_eni11_11_tpl_3_q),
        .in_data_in(i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i64_ublock_i_sroa_6_1_push33_zfp_1d_decompress42_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i64_ublock_i_sroa_6_1_push33_zfp_1d_decompress42_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19(BLACKBOX,46)@9
    // out out_feedback_stall_out_33@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_0 thei_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19 (
        .in_data_in(redist6_sync_together113_aunroll_x_in_c1_eni11_7_tpl_2_q),
        .in_dir(redist2_sync_together113_aunroll_x_in_c1_eni11_2_tpl_2_q),
        .in_feedback_in_33(i_llvm_fpga_push_i64_ublock_i_sroa_6_1_push33_zfp_1d_decompress42_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i64_ublock_i_sroa_6_1_push33_zfp_1d_decompress42_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // comparator(LOGICAL,33)@8 + 1
    assign comparator_qi = $unsigned(i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12_out_data_out == c_i32_185_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt_zfp_1d_decompress24(SELECTOR,36)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt_zfp_1d_decompress24_q <= i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_data_out;
            if (i_unnamed_zfp_1d_decompress13_q == 1'b1)
            begin
                i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt_zfp_1d_decompress24_q <= i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_data_out;
            end
            if (i_unnamed_zfp_1d_decompress15_q == 1'b1)
            begin
                i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt_zfp_1d_decompress24_q <= i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_data_out;
            end
            if (comparator_q == 1'b1)
            begin
                i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt_zfp_1d_decompress24_q <= i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_data_out;
            end
        end
    end

    // i_or_i_zfp_1d_decompress25(LOGICAL,61)@10
    assign i_or_i_zfp_1d_decompress25_q = i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_case_stmt_zfp_1d_decompress24_q | leftShiftStage2_uid176_i_shl_i4_zfp_1d_decompress0_shift_x_q;

    // redist26_i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_data_out_1(DELAY,241)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_data_out);
        end
    end

    // i_unnamed_zfp_1d_decompress26(LOGICAL,83)@8 + 1
    assign i_unnamed_zfp_1d_decompress26_qi = $unsigned(i_llvm_fpga_pop_i32_i_0_i21_pop35_zfp_1d_decompress12_out_data_out == c_i32_082_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress26_delay ( .xin(i_unnamed_zfp_1d_decompress26_qi), .xout(i_unnamed_zfp_1d_decompress26_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_i_unnamed_zfp_1d_decompress26_q_2(DELAY,231)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_unnamed_zfp_1d_decompress26_q_2_q <= $unsigned(i_unnamed_zfp_1d_decompress26_q);
        end
    end

    // c_i64_081_recast_x(CONSTANT,96)
    assign c_i64_081_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // redist5_sync_together113_aunroll_x_in_c1_eni11_5_tpl_1(DELAY,220)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together113_aunroll_x_in_c1_eni11_5_tpl_1_q <= $unsigned(in_c1_eni11_5_tpl);
        end
    end

    // valid_fanout_reg2(REG,113)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,120)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i64_bs_sroa_0_320_push36_zfp_1d_decompress39(BLACKBOX,52)@8
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_bs_sroa_0_320_push36_0 thei_llvm_fpga_push_i64_bs_sroa_0_320_push36_zfp_1d_decompress39 (
        .in_c1_ene11(redist10_sync_together113_aunroll_x_in_c1_eni11_11_tpl_1_q),
        .in_data_in(i_acl_3_zfp_1d_decompress6_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i64_bs_sroa_0_320_pop36_zfp_1d_decompress5_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i64_bs_sroa_0_320_push36_zfp_1d_decompress39_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i64_bs_sroa_0_320_push36_zfp_1d_decompress39_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_bs_sroa_0_320_pop36_zfp_1d_decompress5(BLACKBOX,40)@8
    // out out_feedback_stall_out_36@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_bs_sroa_0_320_pop36_0 thei_llvm_fpga_pop_i64_bs_sroa_0_320_pop36_zfp_1d_decompress5 (
        .in_data_in(redist3_sync_together113_aunroll_x_in_c1_eni11_3_tpl_1_q),
        .in_dir(redist1_sync_together113_aunroll_x_in_c1_eni11_2_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i64_bs_sroa_0_320_push36_zfp_1d_decompress39_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i64_bs_sroa_0_320_push36_zfp_1d_decompress39_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i64_bs_sroa_0_320_pop36_zfp_1d_decompress5_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i64_bs_sroa_0_320_pop36_zfp_1d_decompress5_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together113_aunroll_x_in_c1_eni11_4_tpl_1(DELAY,219)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together113_aunroll_x_in_c1_eni11_4_tpl_1_q <= $unsigned(in_c1_eni11_4_tpl);
        end
    end

    // i_acl_3_zfp_1d_decompress6(MUX,34)@8
    assign i_acl_3_zfp_1d_decompress6_s = redist4_sync_together113_aunroll_x_in_c1_eni11_4_tpl_1_q;
    always @(i_acl_3_zfp_1d_decompress6_s or i_llvm_fpga_pop_i64_bs_sroa_0_320_pop36_zfp_1d_decompress5_out_data_out or redist5_sync_together113_aunroll_x_in_c1_eni11_5_tpl_1_q)
    begin
        unique case (i_acl_3_zfp_1d_decompress6_s)
            1'b0 : i_acl_3_zfp_1d_decompress6_q = i_llvm_fpga_pop_i64_bs_sroa_0_320_pop36_zfp_1d_decompress5_out_data_out;
            1'b1 : i_acl_3_zfp_1d_decompress6_q = redist5_sync_together113_aunroll_x_in_c1_eni11_5_tpl_1_q;
            default : i_acl_3_zfp_1d_decompress6_q = 64'b0;
        endcase
    end

    // leftShiftStage2Idx3Rng48_uid209_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,208)@7
    assign leftShiftStage2Idx3Rng48_uid209_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q[15:0];
    assign leftShiftStage2Idx3Rng48_uid209_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx3Rng48_uid209_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in[15:0];

    // leftShiftStage2Idx3_uid210_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,209)@7
    assign leftShiftStage2Idx3_uid210_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx3Rng48_uid209_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage2Idx3Pad48_uid172_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage2Idx2Rng32_uid206_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,205)@7
    assign leftShiftStage2Idx2Rng32_uid206_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q[31:0];
    assign leftShiftStage2Idx2Rng32_uid206_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx2Rng32_uid206_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in[31:0];

    // leftShiftStage2Idx2_uid207_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,206)@7
    assign leftShiftStage2Idx2_uid207_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx2Rng32_uid206_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b, c_i32_082_q};

    // leftShiftStage2Idx1Rng16_uid203_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,202)@7
    assign leftShiftStage2Idx1Rng16_uid203_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q[47:0];
    assign leftShiftStage2Idx1Rng16_uid203_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx1Rng16_uid203_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in[47:0];

    // leftShiftStage2Idx1_uid204_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,203)@7
    assign leftShiftStage2Idx1_uid204_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx1Rng16_uid203_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage2Idx1Pad16_uid166_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid198_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,197)@7
    assign leftShiftStage1Idx3Rng12_uid198_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q[51:0];
    assign leftShiftStage1Idx3Rng12_uid198_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx3Rng12_uid198_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in[51:0];

    // leftShiftStage1Idx3_uid199_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,198)@7
    assign leftShiftStage1Idx3_uid199_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx3Rng12_uid198_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx3Pad12_uid161_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid195_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,194)@7
    assign leftShiftStage1Idx2Rng8_uid195_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q[55:0];
    assign leftShiftStage1Idx2Rng8_uid195_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx2Rng8_uid195_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in[55:0];

    // leftShiftStage1Idx2_uid196_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,195)@7
    assign leftShiftStage1Idx2_uid196_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx2Rng8_uid195_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx2Pad8_uid158_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx1Rng4_uid192_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,191)@7
    assign leftShiftStage1Idx1Rng4_uid192_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q[59:0];
    assign leftShiftStage1Idx1Rng4_uid192_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx1Rng4_uid192_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_in[59:0];

    // leftShiftStage1Idx1_uid193_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,192)@7
    assign leftShiftStage1Idx1_uid193_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx1Rng4_uid192_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx1Pad4_uid155_i_shl_i4_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(MUX,189)@7
    assign leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid189_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s or c_i64_180_q or leftShiftStage0Idx1_uid146_i_shl_i4_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx2_uid149_i_shl_i4_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx3_uid152_i_shl_i4_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = c_i64_180_q;
            2'b01 : leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid146_i_shl_i4_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx2_uid149_i_shl_i4_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx3_uid152_i_shl_i4_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(MUX,200)@7
    assign leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid189_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    always @(leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s or leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx1_uid193_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx2_uid196_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx3_uid199_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0_uid190_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b01 : leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx1_uid193_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx2_uid196_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx3_uid199_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom_i30_i_zfp_1d_decompress7_sel_x(BITSELECT,99)@7
    assign i_sh_prom_i30_i_zfp_1d_decompress7_sel_x_b = {32'b00000000000000000000000000000000, in_c1_eni11_6_tpl[31:0]};

    // i_sh_prom_i30_i_zfp_1d_decompress7_vt_select_31(BITSELECT,74)@7
    assign i_sh_prom_i30_i_zfp_1d_decompress7_vt_select_31_b = i_sh_prom_i30_i_zfp_1d_decompress7_sel_x_b[31:0];

    // i_sh_prom_i30_i_zfp_1d_decompress7_vt_join(BITJOIN,73)@7
    assign i_sh_prom_i30_i_zfp_1d_decompress7_vt_join_q = {c_i32_082_q, i_sh_prom_i30_i_zfp_1d_decompress7_vt_select_31_b};

    // dupName_0_i_unnamed_zfp_1d_decompress0_shift_narrow_x(BITSELECT,109)@7
    assign dupName_0_i_unnamed_zfp_1d_decompress0_shift_narrow_x_b = i_sh_prom_i30_i_zfp_1d_decompress7_vt_join_q[5:0];

    // leftShiftStageSel0Dto0_uid189_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select(BITSELECT,214)@7
    assign leftShiftStageSel0Dto0_uid189_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_b = dupName_0_i_unnamed_zfp_1d_decompress0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid189_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_c = dupName_0_i_unnamed_zfp_1d_decompress0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid189_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_d = dupName_0_i_unnamed_zfp_1d_decompress0_shift_narrow_x_b[5:4];

    // leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x(MUX,211)@7 + 1
    assign leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid189_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_s)
                2'b00 : leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage1_uid201_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
                2'b01 : leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx1_uid204_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
                2'b10 : leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx2_uid207_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
                2'b11 : leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx3_uid210_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q;
                default : leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q <= 64'b0;
            endcase
        end
    end

    // i_unnamed_zfp_1d_decompress9(LOGICAL,84)@8 + 1
    assign i_unnamed_zfp_1d_decompress9_qi = leftShiftStage2_uid212_dupName_0_i_unnamed_zfp_1d_decompress0_shift_x_q & i_acl_3_zfp_1d_decompress6_q;
    dspba_delay_ver #( .width(64), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress9_delay ( .xin(i_unnamed_zfp_1d_decompress9_qi), .xout(i_unnamed_zfp_1d_decompress9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_tobool_i33_i_zfp_1d_decompress10(LOGICAL,79)@9 + 1
    assign i_tobool_i33_i_zfp_1d_decompress10_qi = $unsigned(i_unnamed_zfp_1d_decompress9_q == c_i64_081_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool_i33_i_zfp_1d_decompress10_delay ( .xin(i_tobool_i33_i_zfp_1d_decompress10_qi), .xout(i_tobool_i33_i_zfp_1d_decompress10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_selcond_zfp_1d_decompress_0_zfp_1d_decompress28(LOGICAL,66)@10
    assign i_selcond_zfp_1d_decompress_0_zfp_1d_decompress28_q = i_tobool_i33_i_zfp_1d_decompress10_q ^ VCC_q;

    // i_selcond_zfp_1d_decompress_7_zfp_1d_decompress35(LOGICAL,70)@10
    assign i_selcond_zfp_1d_decompress_7_zfp_1d_decompress35_q = i_selcond_zfp_1d_decompress_0_zfp_1d_decompress28_q & redist16_i_unnamed_zfp_1d_decompress26_q_2_q;

    // i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36(MUX,65)@10
    assign i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36_s = i_selcond_zfp_1d_decompress_7_zfp_1d_decompress35_q;
    always @(i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36_s or redist26_i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_data_out_1_q or i_or_i_zfp_1d_decompress25_q)
    begin
        unique case (i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36_s)
            1'b0 : i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36_q = redist26_i_llvm_fpga_pop_i64_ublock_i_sroa_0_1_pop34_zfp_1d_decompress23_out_data_out_1_q;
            1'b1 : i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36_q = i_or_i_zfp_1d_decompress25_q;
            default : i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36_q = 64'b0;
        endcase
    end

    // redist22_i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_data_out_1(DELAY,237)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_data_out);
        end
    end

    // redist17_i_unnamed_zfp_1d_decompress17_q_2(DELAY,232)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_unnamed_zfp_1d_decompress17_q_2_q <= $unsigned(comparator_q);
        end
    end

    // i_selcond_zfp_1d_decompress_5_zfp_1d_decompress33(LOGICAL,69)@10
    assign i_selcond_zfp_1d_decompress_5_zfp_1d_decompress33_q = i_selcond_zfp_1d_decompress_0_zfp_1d_decompress28_q & redist17_i_unnamed_zfp_1d_decompress17_q_2_q;

    // i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34(MUX,64)@10
    assign i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34_s = i_selcond_zfp_1d_decompress_5_zfp_1d_decompress33_q;
    always @(i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34_s or redist22_i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_data_out_1_q or i_or_i_zfp_1d_decompress25_q)
    begin
        unique case (i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34_s)
            1'b0 : i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34_q = redist22_i_llvm_fpga_pop_i64_ublock_i_sroa_6_1_pop33_zfp_1d_decompress19_out_data_out_1_q;
            1'b1 : i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34_q = i_or_i_zfp_1d_decompress25_q;
            default : i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34_q = 64'b0;
        endcase
    end

    // redist20_i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_data_out_1(DELAY,235)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_data_out);
        end
    end

    // redist18_i_unnamed_zfp_1d_decompress15_q_2(DELAY,233)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_unnamed_zfp_1d_decompress15_q_2_q <= $unsigned(i_unnamed_zfp_1d_decompress15_q);
        end
    end

    // i_selcond_zfp_1d_decompress_3_zfp_1d_decompress31(LOGICAL,68)@10
    assign i_selcond_zfp_1d_decompress_3_zfp_1d_decompress31_q = i_selcond_zfp_1d_decompress_0_zfp_1d_decompress28_q & redist18_i_unnamed_zfp_1d_decompress15_q_2_q;

    // i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32(MUX,63)@10
    assign i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32_s = i_selcond_zfp_1d_decompress_3_zfp_1d_decompress31_q;
    always @(i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32_s or redist20_i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_data_out_1_q or i_or_i_zfp_1d_decompress25_q)
    begin
        unique case (i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32_s)
            1'b0 : i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32_q = redist20_i_llvm_fpga_pop_i64_ublock_i_sroa_9_1_pop32_zfp_1d_decompress21_out_data_out_1_q;
            1'b1 : i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32_q = i_or_i_zfp_1d_decompress25_q;
            default : i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32_q = 64'b0;
        endcase
    end

    // redist24_i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_data_out_1(DELAY,239)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_data_out);
        end
    end

    // redist19_i_unnamed_zfp_1d_decompress13_q_2(DELAY,234)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_unnamed_zfp_1d_decompress13_q_2_q <= $unsigned(i_unnamed_zfp_1d_decompress13_q);
        end
    end

    // i_selcond_zfp_1d_decompress_1_zfp_1d_decompress29(LOGICAL,67)@10
    assign i_selcond_zfp_1d_decompress_1_zfp_1d_decompress29_q = i_selcond_zfp_1d_decompress_0_zfp_1d_decompress28_q & redist19_i_unnamed_zfp_1d_decompress13_q_2_q;

    // i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30(MUX,62)@10
    assign i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30_s = i_selcond_zfp_1d_decompress_1_zfp_1d_decompress29_q;
    always @(i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30_s or redist24_i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_data_out_1_q or i_or_i_zfp_1d_decompress25_q)
    begin
        unique case (i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30_s)
            1'b0 : i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30_q = redist24_i_llvm_fpga_pop_i64_ublock_i_sroa_12_1_pop31_zfp_1d_decompress22_out_data_out_1_q;
            1'b1 : i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30_q = i_or_i_zfp_1d_decompress25_q;
            default : i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30_q = 64'b0;
        endcase
    end

    // redist29_i_acl_3_zfp_1d_decompress6_q_2(DELAY,244)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_acl_3_zfp_1d_decompress6_q_2_delay_0 <= $unsigned(i_acl_3_zfp_1d_decompress6_q);
            redist29_i_acl_3_zfp_1d_decompress6_q_2_q <= redist29_i_acl_3_zfp_1d_decompress6_q_2_delay_0;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,105)@10
    assign out_c1_exi10_0_tpl = GND_q;
    assign out_c1_exi10_1_tpl = redist29_i_acl_3_zfp_1d_decompress6_q_2_q;
    assign out_c1_exi10_2_tpl = i_reduction_zfp_1d_decompress_0_zfp_1d_decompress30_q;
    assign out_c1_exi10_3_tpl = i_reduction_zfp_1d_decompress_1_zfp_1d_decompress32_q;
    assign out_c1_exi10_4_tpl = i_reduction_zfp_1d_decompress_2_zfp_1d_decompress34_q;
    assign out_c1_exi10_5_tpl = i_reduction_zfp_1d_decompress_3_zfp_1d_decompress36_q;
    assign out_c1_exi10_6_tpl = redist28_i_llvm_fpga_pop_i64_acl_182_pop38_zfp_1d_decompress45_out_data_out_2_q;
    assign out_c1_exi10_7_tpl = redist25_i_llvm_fpga_pop_i64_ublock_i_sroa_12_0_pop1388_pop45_zfp_1d_decompress47_out_data_out_1_q;
    assign out_c1_exi10_8_tpl = redist21_i_llvm_fpga_pop_i64_ublock_i_sroa_9_0_pop1489_pop46_zfp_1d_decompress49_out_data_out_1_q;
    assign out_c1_exi10_9_tpl = redist23_i_llvm_fpga_pop_i64_ublock_i_sroa_6_0_pop1590_pop47_zfp_1d_decompress51_out_data_out_1_q;
    assign out_c1_exi10_10_tpl = redist27_i_llvm_fpga_pop_i64_ublock_i_sroa_0_0_pop1691_pop48_zfp_1d_decompress53_out_data_out_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_1d_decompress1 = GND_q;

endmodule
