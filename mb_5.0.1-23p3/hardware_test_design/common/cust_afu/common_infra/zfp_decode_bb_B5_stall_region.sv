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

// SystemVerilog created from bb_zfp_decode_B5_stall_region
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B5_stall_region (
    input wire [63:0] in_iord_bl_in_stream_1_i_fifodata,
    input wire [0:0] in_iord_bl_in_stream_1_i_fifovalid,
    output wire [0:0] out_iord_bl_in_stream_1_o_fifoready,
    output wire [0:0] out_iord_bl_in_stream_1_o_fifoalmost_full,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_1117,
    input wire [0:0] in_exitcond54120,
    input wire [0:0] in_forked81116,
    input wire [0:0] in_forked89,
    input wire [31:0] in_k_058_pop19122,
    input wire [31:0] in_lim_ext110,
    input wire [31:0] in_lim_ext82_pop23123,
    input wire [0:0] in_notexit76121,
    input wire [31:0] in_reorder_limiter_enter115,
    input wire [31:0] in_reorder_limiter_enter85_pop24124,
    input wire [31:0] in_sub_i30118,
    input wire [0:0] in_tobool_i34119,
    input wire [0:0] in_unnamed_zfp_decode8,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out,
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
    output wire [0:0] out_c0_exe7222,
    output wire [31:0] out_c0_exe8223,
    output wire [31:0] out_c0_exe9,
    output wire [63:0] out_c1_exe1237,
    output wire [63:0] out_c1_exe2238,
    output wire [63:0] out_c1_exe3239,
    output wire [0:0] out_c2_exe1229,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_iord_bl_in_stream_1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_iord_bl_in_stream_1_o_fifoready;
    wire [63:0] i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_o_data;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_o_stall;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_17_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_18_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_c1_exit236_1_tpl;
    wire [63:0] i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_c1_exit236_2_tpl;
    wire [63:0] i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_c1_exit236_3_tpl;
    wire [0:0] i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl;
    wire [0:0] zfp_decode_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] zfp_decode_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [63:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] zfp_decode_B5_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [229:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    reg [0:0] redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_q;
    reg [0:0] redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_q;
    reg [229:0] coalesced_delay_0_0_q;
    reg [229:0] coalesced_delay_0_1_q;
    reg [229:0] coalesced_delay_0_2_q;
    reg [229:0] coalesced_delay_0_3_q;
    reg [229:0] coalesced_delay_0_4_q;
    reg [229:0] coalesced_delay_0_5_q;
    wire [63:0] bubble_join_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_q;
    wire [63:0] bubble_select_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_b;
    wire [261:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [297:0] bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_r;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_s;
    wire [191:0] bubble_join_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_d;
    wire [0:0] bubble_join_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_b;
    wire [261:0] bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_e;
    wire [63:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_zfp_decode_B5_merge_reg_aunroll_x_n;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_wireValid;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_wireStall;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_StallValid;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_toReg0;
    reg [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_fromReg0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_consumed0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_toReg1;
    reg [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_fromReg1;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_consumed1;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_or0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_backStall;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_V0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_V2;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_and1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_V0;
    wire [0:0] SE_out_zfp_decode_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_zfp_decode_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_zfp_decode_B5_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_V0;
    reg [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    reg [0:0] SE_coalesced_delay_0_5_R_v_0;
    wire [0:0] SE_coalesced_delay_0_5_v_s_0;
    wire [0:0] SE_coalesced_delay_0_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_5_backEN;
    wire [0:0] SE_coalesced_delay_0_5_backStall;
    wire [0:0] SE_coalesced_delay_0_5_V0;
    wire [0:0] SR_SE_coalesced_delay_0_2_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_2_r_valid;
    reg [229:0] SR_SE_coalesced_delay_0_2_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_2_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_2_V;
    wire [229:0] SR_SE_coalesced_delay_0_2_D0;
    wire [0:0] SR_SE_coalesced_delay_0_4_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_4_r_valid;
    reg [229:0] SR_SE_coalesced_delay_0_4_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_4_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_4_V;
    wire [229:0] SR_SE_coalesced_delay_0_4_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // join_for_coalesced_delay_0(BITJOIN,46)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_e};

    // coalesced_delay_0_0(REG,50)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= $unsigned(230'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,51)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_1_q <= $unsigned(230'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,52)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_2_q <= $unsigned(230'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(SR_SE_coalesced_delay_0_2_D0);
        end
    end

    // coalesced_delay_0_3(REG,53)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_3_q <= $unsigned(230'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // bubble_join_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3(BITJOIN,57)
    assign bubble_join_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_q = i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_o_data;

    // bubble_select_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3(BITSELECT,58)
    assign bubble_select_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_b = $unsigned(bubble_join_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_q[63:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x(BLACKBOX,29)@7
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_c2_exit228_0_tpl@11
    // out out_c2_exit228_1_tpl@11
    zfp_decode_i_sfc_s_c2_in_for_body_i_s_c2_enter225_zfp_decode5 thei_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_V1),
        .in_c2_eni1224_0_tpl(GND_q),
        .in_c2_eni1224_1_tpl(bubble_select_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_b),
        .out_o_stall(i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_o_valid),
        .out_c2_exit228_0_tpl(),
        .out_c2_exit228_1_tpl(i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x(STALLENABLE,86)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_V0 = SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_backStall = SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_backStall | ~ (SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_wireValid = i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_o_valid;

    // SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0(STALLENABLE,91)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_V0 = SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_s_tv_0 = SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_backStall & SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_backEN = ~ (SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_v_s_0 = SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_backEN & SE_out_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_backStall = ~ (SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_R_v_0 <= SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_R_v_0 & SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_R_v_0 <= SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_v_s_0;
            end

        end
    end

    // SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1(STALLENABLE,92)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_V0 = SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_s_tv_0 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_backStall & SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_backEN = ~ (SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_v_s_0 = SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_backEN & SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_backStall = ~ (SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_R_v_0 <= SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_R_v_0 & SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_R_v_0 <= SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_v_s_0;
            end

        end
    end

    // i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x(BLACKBOX,28)@7
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@13
    // out out_c1_exit236_0_tpl@13
    // out out_c1_exit236_1_tpl@13
    // out out_c1_exit236_2_tpl@13
    // out out_c1_exit236_3_tpl@13
    zfp_decode_i_sfc_s_c1_in_for_body_i_s_c1_enter231_zfp_decode8 thei_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x (
        .in_c0_exe15(bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_p),
        .in_c0_exe6221(bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_g),
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_backStall),
        .in_i_valid(SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_V0),
        .in_c1_eni6_0_tpl(GND_q),
        .in_c1_eni6_1_tpl(bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_s),
        .in_c1_eni6_2_tpl(bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_p),
        .in_c1_eni6_3_tpl(bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_b),
        .in_c1_eni6_4_tpl(bubble_select_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_b),
        .in_c1_eni6_5_tpl(bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_e),
        .in_c1_eni6_6_tpl(bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_g),
        .out_o_stall(i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_o_valid),
        .out_c1_exit236_0_tpl(),
        .out_c1_exit236_1_tpl(i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_c1_exit236_1_tpl),
        .out_c1_exit236_2_tpl(i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_c1_exit236_2_tpl),
        .out_c1_exit236_3_tpl(i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_c1_exit236_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x(STALLENABLE,84)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_and0 = i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_and1 = SE_coalesced_delay_0_5_V0 & SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_and0;
    assign SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_wireValid = SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_V0 & SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_and1;

    // SE_coalesced_delay_0_5(STALLENABLE,98)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SE_coalesced_delay_0_4_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_R_v_0 & SE_coalesced_delay_0_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_4(STALLENABLE,97)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SR_SE_coalesced_delay_0_4_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_4(STALLREG,130)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_4_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_4_r_data0 <= 230'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_4_r_valid <= SE_coalesced_delay_0_4_backStall & (SR_SE_coalesced_delay_0_4_r_valid | SR_SE_coalesced_delay_0_4_i_valid);

            if (SR_SE_coalesced_delay_0_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_4_r_data0 <= $unsigned(coalesced_delay_0_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_4_i_valid = SE_coalesced_delay_0_3_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_4_backStall = SR_SE_coalesced_delay_0_4_r_valid | ~ (SR_SE_coalesced_delay_0_4_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_4_V = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_valid : SR_SE_coalesced_delay_0_4_i_valid;

    assign SR_SE_coalesced_delay_0_4_D0 = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_data0 : coalesced_delay_0_3_q;

    // SE_coalesced_delay_0_3(STALLENABLE,96)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SR_SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SE_coalesced_delay_0_2_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_2(STALLENABLE,95)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SR_SE_coalesced_delay_0_2_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_2(STALLREG,129)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_2_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_2_r_data0 <= 230'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_2_r_valid <= SE_coalesced_delay_0_2_backStall & (SR_SE_coalesced_delay_0_2_r_valid | SR_SE_coalesced_delay_0_2_i_valid);

            if (SR_SE_coalesced_delay_0_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_2_r_data0 <= $unsigned(coalesced_delay_0_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_2_i_valid = SE_coalesced_delay_0_1_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_2_backStall = SR_SE_coalesced_delay_0_2_r_valid | ~ (SR_SE_coalesced_delay_0_2_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_2_V = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_valid : SR_SE_coalesced_delay_0_2_i_valid;

    assign SR_SE_coalesced_delay_0_2_D0 = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_data0 : coalesced_delay_0_1_q;

    // SE_coalesced_delay_0_1(STALLENABLE,94)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SR_SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_0(STALLENABLE,93)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_V2;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x(STALLENABLE,83)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_V0 = SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_backStall = i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_and0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_V0;
    assign SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_wireValid = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_V0 & SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_and0;

    // bubble_join_stall_entry(BITJOIN,60)
    assign bubble_join_stall_entry_q = {in_unnamed_zfp_decode8, in_tobool_i34119, in_sub_i30118, in_reorder_limiter_enter85_pop24124, in_reorder_limiter_enter115, in_notexit76121, in_lim_ext82_pop23123, in_lim_ext110, in_k_058_pop19122, in_forked89, in_forked81116, in_exitcond54120, in_acl_1117};

    // bubble_select_stall_entry(BITSELECT,61)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[98:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:99]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[162:131]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[163:163]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[195:164]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[227:196]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[259:228]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[260:260]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[261:261]);

    // SE_stall_entry(STALLENABLE,79)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = zfp_decode_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // zfp_decode_B5_merge_reg_aunroll_x(BLACKBOX,30)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    zfp_decode_B5_merge_reg thezfp_decode_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_zfp_decode_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_e),
        .in_data_in_1_tpl(bubble_select_stall_entry_g),
        .in_data_in_2_tpl(bubble_select_stall_entry_j),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_b),
        .in_data_in_5_tpl(bubble_select_stall_entry_l),
        .in_data_in_6_tpl(bubble_select_stall_entry_m),
        .in_data_in_7_tpl(bubble_select_stall_entry_n),
        .in_data_in_8_tpl(bubble_select_stall_entry_c),
        .in_data_in_9_tpl(bubble_select_stall_entry_i),
        .in_data_in_10_tpl(bubble_select_stall_entry_f),
        .in_data_in_11_tpl(bubble_select_stall_entry_h),
        .in_data_in_12_tpl(bubble_select_stall_entry_k),
        .out_stall_out(zfp_decode_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(zfp_decode_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(zfp_decode_B5_merge_reg_aunroll_x_out_data_out_12_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_zfp_decode_B5_merge_reg_aunroll_x(BITJOIN,74)
    assign bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q = {zfp_decode_B5_merge_reg_aunroll_x_out_data_out_12_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_11_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_10_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_9_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_8_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_7_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_6_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_5_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_4_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_3_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_2_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_1_tpl, zfp_decode_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_zfp_decode_B5_merge_reg_aunroll_x(BITSELECT,75)
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[129:66]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_g = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[161:130]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_h = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[162:162]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_i = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[163:163]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_j = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[164:164]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_k = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[165:165]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_l = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[197:166]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_m = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[229:198]);
    assign bubble_select_zfp_decode_B5_merge_reg_aunroll_x_n = $unsigned(bubble_join_zfp_decode_B5_merge_reg_aunroll_x_q[261:230]);

    // SE_out_zfp_decode_B5_merge_reg_aunroll_x(STALLENABLE,88)
    // Valid signal propagation
    assign SE_out_zfp_decode_B5_merge_reg_aunroll_x_V0 = SE_out_zfp_decode_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_zfp_decode_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_o_stall | ~ (SE_out_zfp_decode_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_zfp_decode_B5_merge_reg_aunroll_x_wireValid = zfp_decode_B5_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x(BLACKBOX,27)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit215_0_tpl@7
    // out out_c0_exit215_1_tpl@7
    // out out_c0_exit215_2_tpl@7
    // out out_c0_exit215_3_tpl@7
    // out out_c0_exit215_4_tpl@7
    // out out_c0_exit215_5_tpl@7
    // out out_c0_exit215_6_tpl@7
    // out out_c0_exit215_7_tpl@7
    // out out_c0_exit215_8_tpl@7
    // out out_c0_exit215_9_tpl@7
    // out out_c0_exit215_10_tpl@7
    // out out_c0_exit215_11_tpl@7
    // out out_c0_exit215_12_tpl@7
    // out out_c0_exit215_13_tpl@7
    // out out_c0_exit215_14_tpl@7
    // out out_c0_exit215_15_tpl@7
    // out out_c0_exit215_16_tpl@7
    // out out_c0_exit215_17_tpl@7
    // out out_c0_exit215_18_tpl@7
    zfp_decode_i_sfc_s_c0_in_for_body_i_s_c0_enter20133_zfp_decode1 thei_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_backStall),
        .in_i_valid(SE_out_zfp_decode_B5_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni13_0_tpl(GND_q),
        .in_c0_eni13_1_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_g),
        .in_c0_eni13_2_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_b),
        .in_c0_eni13_3_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_h),
        .in_c0_eni13_4_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_i),
        .in_c0_eni13_5_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_m),
        .in_c0_eni13_6_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_n),
        .in_c0_eni13_7_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_e),
        .in_c0_eni13_8_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_j),
        .in_c0_eni13_9_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_k),
        .in_c0_eni13_10_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_l),
        .in_c0_eni13_11_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_c),
        .in_c0_eni13_12_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_d),
        .in_c0_eni13_13_tpl(bubble_select_zfp_decode_B5_merge_reg_aunroll_x_f),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit215_0_tpl(),
        .out_c0_exit215_1_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_1_tpl),
        .out_c0_exit215_2_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_2_tpl),
        .out_c0_exit215_3_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_3_tpl),
        .out_c0_exit215_4_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_4_tpl),
        .out_c0_exit215_5_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_5_tpl),
        .out_c0_exit215_6_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_6_tpl),
        .out_c0_exit215_7_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_7_tpl),
        .out_c0_exit215_8_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_8_tpl),
        .out_c0_exit215_9_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_9_tpl),
        .out_c0_exit215_10_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_10_tpl),
        .out_c0_exit215_11_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_11_tpl),
        .out_c0_exit215_12_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_12_tpl),
        .out_c0_exit215_13_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_13_tpl),
        .out_c0_exit215_14_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_14_tpl),
        .out_c0_exit215_15_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_15_tpl),
        .out_c0_exit215_16_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_16_tpl),
        .out_c0_exit215_17_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_17_tpl),
        .out_c0_exit215_18_tpl(i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_18_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x(STALLENABLE,82)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed0 = (~ (SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_backStall) & SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed1 = (~ (i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed2 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_o_valid;

    // SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3(STALLENABLE,78)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_fromReg0 <= '0;
            SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_fromReg0 <= SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_toReg0;
            // Successor 1
            SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_fromReg1 <= SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_consumed0 = (~ (SE_in_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_backStall) & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_wireValid) | SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_fromReg0;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_consumed1 = (~ (i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_o_stall) & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_wireValid) | SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_StallValid = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_backStall & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_wireValid;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_toReg0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_StallValid & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_consumed0;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_toReg1 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_StallValid & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_or0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_consumed0;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_wireStall = ~ (SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_consumed1 & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_or0);
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_backStall = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_V0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_wireValid & ~ (SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_fromReg0);
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_V1 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_wireValid & ~ (SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_wireValid = i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x(BITJOIN,64)
    assign bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q = {i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_18_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_17_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_16_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_15_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_14_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_13_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_12_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_11_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_10_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_9_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_8_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_7_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_6_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_5_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_4_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_3_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_2_tpl, i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_c0_exit215_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x(BITSELECT,65)
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[34:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[35:35]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[36:36]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[37:37]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[69:38]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[101:70]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[102:102]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[134:103]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[135:135]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[136:136]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[168:137]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[169:169]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[201:170]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[233:202]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_q[297:234]);

    // i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3(BLACKBOX,7)@7
    // in in_i_stall@20000000
    // out out_iord_bl_in_stream_1_o_fifoalmost_full@20000000
    // out out_iord_bl_in_stream_1_o_fifoready@20000000
    // out out_o_stall@20000000
    zfp_decode_i_iord_bl_in_stream_unnamed_9_zfp_decode0 thei_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3 (
        .in_c0_exe3218(bubble_select_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_d),
        .in_i_stall(SE_out_i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_V1),
        .in_iord_bl_in_stream_1_i_fifodata(in_iord_bl_in_stream_1_i_fifodata),
        .in_iord_bl_in_stream_1_i_fifovalid(in_iord_bl_in_stream_1_i_fifovalid),
        .out_iord_bl_in_stream_1_o_fifoalmost_full(i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_iord_bl_in_stream_1_o_fifoalmost_full),
        .out_iord_bl_in_stream_1_o_fifoready(i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_iord_bl_in_stream_1_o_fifoready),
        .out_o_data(i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_o_data),
        .out_o_stall(i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_o_stall),
        .out_o_valid(i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iord_bl_in_stream_1_o_fifoready = i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_iord_bl_in_stream_1_o_fifoready;
    assign out_iord_bl_in_stream_1_o_fifoalmost_full = i_iord_bl_in_stream_unnamed_zfp_decode9_zfp_decode3_out_iord_bl_in_stream_1_o_fifoalmost_full;

    // pipeline_valid_out_sync(GPOUT,19)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,23)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,25)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out = i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out = i_sfc_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out;

    // bubble_join_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x(BITJOIN,71)
    assign bubble_join_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_q = i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl;

    // bubble_select_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x(BITSELECT,72)
    assign bubble_select_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_q[0:0]);

    // redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0(REG,48)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_q <= $unsigned(bubble_select_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_b);
        end
    end

    // redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1(REG,49)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_q <= $unsigned(redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_0_q);
        end
    end

    // bubble_join_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x(BITJOIN,67)
    assign bubble_join_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_q = {i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_c1_exit236_3_tpl, i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_c1_exit236_2_tpl, i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_out_c1_exit236_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x(BITSELECT,68)
    assign bubble_select_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_q[191:128]);

    // coalesced_delay_0_4(REG,54)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_4_q <= $unsigned(230'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(SR_SE_coalesced_delay_0_4_D0);
        end
    end

    // coalesced_delay_0_5(REG,55)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_5_q <= $unsigned(230'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(coalesced_delay_0_4_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,47)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_5_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_5_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_5_q[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_5_q[127:96]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_5_q[159:128]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_5_q[191:160]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_5_q[223:192]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_5_q[224:224]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_5_q[225:225]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_5_q[226:226]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_5_q[227:227]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_5_q[228:228]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_5_q[229:229]);

    // dupName_0_sync_out_x(GPOUT,26)@13
    assign out_c0_exe10 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe11 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe12 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe13 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe14 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe16 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe17 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe2217 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe4219 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe5220 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe7222 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe8223 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_d;
    assign out_c1_exe1237 = bubble_select_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_b;
    assign out_c1_exe2238 = bubble_select_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_c;
    assign out_c1_exe3239 = bubble_select_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_d;
    assign out_c2_exe1229 = redist0_i_sfc_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode5_aunroll_x_out_c2_exit228_1_tpl_2_1_q;
    assign out_valid_out = SE_out_i_sfc_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode8_aunroll_x_V0;

    // rst_sync(RESETSYNC,131)
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
