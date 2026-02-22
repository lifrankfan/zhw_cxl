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

// SystemVerilog created from bb_zfp_decode_B3_stall_region
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B3_stall_region (
    input wire [63:0] in_iord_bl_in_stream_0_i_fifodata,
    input wire [0:0] in_iord_bl_in_stream_0_i_fifovalid,
    output wire [0:0] out_iord_bl_in_stream_0_o_fifoready,
    output wire [0:0] out_iord_bl_in_stream_0_o_fifoalmost_full,
    input wire [63:0] in_feedback_in_20,
    input wire [31:0] in_feedback_in_21,
    input wire [0:0] in_feedback_in_22,
    output wire [0:0] out_feedback_stall_out_20,
    output wire [0:0] out_feedback_stall_out_21,
    output wire [0:0] out_feedback_stall_out_22,
    input wire [0:0] in_feedback_valid_in_20,
    input wire [0:0] in_feedback_valid_in_21,
    input wire [0:0] in_feedback_valid_in_22,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked81,
    input wire [31:0] in_lim_ext106,
    input wire [31:0] in_reorder_limiter_enter111,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out,
    output wire [0:0] out_c0_exe1176,
    output wire [0:0] out_c0_exe2177,
    output wire [31:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [31:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c1_exe3,
    output wire [63:0] out_c2_exe1,
    output wire [0:0] out_c2_exe2,
    output wire [0:0] out_c2_exe3,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_015_q;
    wire [63:0] c_i64_016_q;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_iord_bl_in_stream_0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_iord_bl_in_stream_0_o_fifoready;
    wire [63:0] i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_o_data;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_o_stall;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_8_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_2_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl;
    wire [0:0] i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_c2_exit_1_tpl;
    wire [0:0] i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_c2_exit_2_tpl;
    wire [0:0] i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_c2_exit_3_tpl;
    wire [0:0] zfp_decode_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] zfp_decode_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] zfp_decode_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] zfp_decode_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] zfp_decode_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [161:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_q;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_q;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_q;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_q;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_q;
    reg [31:0] redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_q;
    reg [0:0] redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_q;
    reg [0:0] redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_q;
    reg [0:0] redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_q;
    reg [0:0] redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_q;
    reg [0:0] redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_q;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [161:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [161:0] coalesced_delay_0_fifo_o_data;
    wire [63:0] bubble_join_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_q;
    wire [63:0] bubble_select_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_b;
    wire [64:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [162:0] bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_i;
    wire [33:0] bubble_join_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_d;
    wire [65:0] bubble_join_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_d;
    wire [64:0] bubble_join_zfp_decode_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_zfp_decode_B3_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_zfp_decode_B3_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_zfp_decode_B3_merge_reg_aunroll_x_d;
    wire [161:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [161:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_wireValid;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_wireStall;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_StallValid;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_toReg0;
    reg [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_fromReg0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_consumed0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_toReg1;
    reg [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_fromReg1;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_consumed1;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_or0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_backStall;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_V0;
    wire [0:0] SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_V2;
    wire [0:0] SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_and1;
    wire [0:0] SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_V0;
    wire [0:0] SE_out_zfp_decode_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_zfp_decode_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_zfp_decode_B3_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_V0;
    reg [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_R_v_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_v_s_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_s_tv_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_backEN;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_backStall;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_V0;
    reg [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_R_v_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_v_s_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_s_tv_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_backEN;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_backStall;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_V0;
    reg [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_R_v_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_v_s_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_s_tv_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backEN;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backStall;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_V0;
    reg [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_0;
    reg [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_1;
    reg [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_2;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_v_s_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_1;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_2;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backEN;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_or0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_or1;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backStall;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V1;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V2;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_V0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_R_v_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_V0;
    wire [0:0] bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_valid;
    wire bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_stall;
    wire bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_valid;
    wire bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_stall;
    wire bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_valid;
    wire bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_stall;
    wire bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_valid;
    wire bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_stall;
    wire bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_stall_bitsignaltemp;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_i_valid;
    reg [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_valid;
    reg [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_data0;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backStall;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_V;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_D0;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_i_valid;
    reg [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_valid;
    reg [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_data0;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backStall;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_D0;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_i_valid;
    reg [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_valid;
    reg [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_data0;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backStall;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_V;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_D0;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_i_valid;
    reg [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_valid;
    reg [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_data0;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backStall;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_V;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_D0;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_i_valid;
    reg [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_valid;
    reg [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_data0;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backStall;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_V;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_D0;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_i_valid;
    reg [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_valid;
    reg [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_data0;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backStall;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_V;
    wire [0:0] SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_D0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_i_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_valid;
    reg [31:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_data0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backStall;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_V;
    wire [31:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_D0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_i_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_valid;
    reg [31:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_data0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backStall;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_V;
    wire [31:0] SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0(REG,64)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_d);
        end
    end

    // redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1(REG,65)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_q <= $unsigned(redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_q);
        end
    end

    // redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2(REG,66)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_D0);
        end
    end

    // redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3(REG,67)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_q <= $unsigned(redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_q);
        end
    end

    // SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4(STALLENABLE,150)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_V0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_s_tv_0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_backStall & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backEN & SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_V;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_v_s_0;
            end

        end
    end

    // SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2(STALLENABLE,148)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_V0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_s_tv_0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_backStall & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backEN & SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_V;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_v_s_0;
            end

        end
    end

    // SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0(STALLENABLE,146)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_V0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_s_tv_0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_backStall & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backEN & SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_V;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3(STALLENABLE,121)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_V0 = SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_backStall = i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_wireValid = i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i32_015(CONSTANT,3)
    assign c_i32_015_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3(BLACKBOX,20)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    zfp_decode_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_0 thei_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3 (
        .in_data_in(c_i32_015_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_g),
        .in_feedback_in_21(in_feedback_in_21),
        .in_feedback_valid_in_21(in_feedback_valid_in_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_stall_entry(BITJOIN,97)
    assign bubble_join_stall_entry_q = {in_reorder_limiter_enter111, in_lim_ext106, in_forked81};

    // bubble_select_stall_entry(BITSELECT,98)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);

    // SE_stall_entry(STALLENABLE,124)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = zfp_decode_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // zfp_decode_B3_merge_reg_aunroll_x(BLACKBOX,50)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    zfp_decode_B3_merge_reg thezfp_decode_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_zfp_decode_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .out_stall_out(zfp_decode_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(zfp_decode_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(zfp_decode_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(zfp_decode_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(zfp_decode_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_zfp_decode_B3_merge_reg_aunroll_x(BITJOIN,110)
    assign bubble_join_zfp_decode_B3_merge_reg_aunroll_x_q = {zfp_decode_B3_merge_reg_aunroll_x_out_data_out_2_tpl, zfp_decode_B3_merge_reg_aunroll_x_out_data_out_1_tpl, zfp_decode_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_zfp_decode_B3_merge_reg_aunroll_x(BITSELECT,111)
    assign bubble_select_zfp_decode_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_zfp_decode_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_zfp_decode_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_zfp_decode_B3_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_zfp_decode_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_zfp_decode_B3_merge_reg_aunroll_x_q[64:33]);

    // SE_out_zfp_decode_B3_merge_reg_aunroll_x(STALLENABLE,133)
    // Valid signal propagation
    assign SE_out_zfp_decode_B3_merge_reg_aunroll_x_V0 = SE_out_zfp_decode_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_zfp_decode_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_o_stall | ~ (SE_out_zfp_decode_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_zfp_decode_B3_merge_reg_aunroll_x_wireValid = zfp_decode_B3_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x(BLACKBOX,47)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit175_0_tpl@6
    // out out_c0_exit175_1_tpl@6
    // out out_c0_exit175_2_tpl@6
    // out out_c0_exit175_3_tpl@6
    // out out_c0_exit175_4_tpl@6
    // out out_c0_exit175_5_tpl@6
    // out out_c0_exit175_6_tpl@6
    // out out_c0_exit175_7_tpl@6
    // out out_c0_exit175_8_tpl@6
    zfp_decode_i_sfc_s_c0_in_for_body_s_c0_enter17131_zfp_decode1 thei_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_backStall),
        .in_i_valid(SE_out_zfp_decode_B3_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_zfp_decode_B3_merge_reg_aunroll_x_b),
        .in_c0_eni3_2_tpl(bubble_select_zfp_decode_B3_merge_reg_aunroll_x_c),
        .in_c0_eni3_3_tpl(bubble_select_zfp_decode_B3_merge_reg_aunroll_x_d),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit175_0_tpl(),
        .out_c0_exit175_1_tpl(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_1_tpl),
        .out_c0_exit175_2_tpl(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_2_tpl),
        .out_c0_exit175_3_tpl(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_3_tpl),
        .out_c0_exit175_4_tpl(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_4_tpl),
        .out_c0_exit175_5_tpl(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_5_tpl),
        .out_c0_exit175_6_tpl(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl),
        .out_c0_exit175_7_tpl(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_7_tpl),
        .out_c0_exit175_8_tpl(i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x(STALLENABLE,127)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed0 = (~ (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_backStall) & SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_o_stall) & SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_o_valid;

    // SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0(STALLENABLE,142)
    // Valid signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_V0 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_s_tv_0 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_backStall & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_backEN = ~ (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_v_s_0 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_backEN & SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_backStall = ~ (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_R_v_0 & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x(BITJOIN,101)
    assign bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_q = {i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_8_tpl, i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_7_tpl, i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl, i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_5_tpl, i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_4_tpl, i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_3_tpl, i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_2_tpl, i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x(BITSELECT,102)
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_q[65:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_q[97:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_q[130:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_q[162:131]);

    // redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0(REG,70)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_g);
        end
    end

    // redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1(REG,71)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_q <= $unsigned(redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_q);
        end
    end

    // SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1(STALLENABLE,143)
    // Valid signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_V0 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_s_tv_0 = SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backStall & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_backEN = ~ (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_v_s_0 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_backEN & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_0_V0;
    // Backward Stall generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_backStall = ~ (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_backEN == 1'b0)
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_R_v_0 & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_s_tv_0;
            end
            else
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2(STALLREG,205)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_valid <= 1'b0;
            SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_valid <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backStall & (SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_valid | SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_i_valid);

            if (SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_data0 <= $unsigned(redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_i_valid = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_V0;
    // Stall signal propagation
    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backStall = SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_valid | ~ (SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_i_valid);

    // Valid
    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_V = SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_valid == 1'b1 ? SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_valid : SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_i_valid;

    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_D0 = SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_valid == 1'b1 ? SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_r_data0 : redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_1_q;

    // redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2(REG,72)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_q <= $unsigned(SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_D0);
        end
    end

    // SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2(STALLENABLE,144)
    // Valid signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_V0 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_s_tv_0 = SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backStall & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backEN = ~ (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_v_s_0 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backEN & SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_V;
    // Backward Stall generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backStall = ~ (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_backEN == 1'b0)
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_R_v_0 & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_s_tv_0;
            end
            else
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3(STALLREG,206)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_valid <= 1'b0;
            SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_valid <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backStall & (SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_valid | SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_i_valid);

            if (SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_data0 <= $unsigned(redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_i_valid = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_V0;
    // Stall signal propagation
    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backStall = SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_valid | ~ (SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_i_valid);

    // Valid
    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V = SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_valid == 1'b1 ? SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_valid : SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_i_valid;

    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_D0 = SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_valid == 1'b1 ? SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_r_data0 : redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_2_q;

    // redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3(REG,73)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_q <= $unsigned(SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_D0);
        end
    end

    // SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5(STALLENABLE,123)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_fromReg0 <= SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_fromReg1 <= SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_stall) & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_wireValid) | SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_consumed1 = (~ (SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_wireValid) | SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_StallValid = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_backStall & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_toReg0 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_StallValid & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_toReg1 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_StallValid & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_or0 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_consumed1 & SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_or0);
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_backStall = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_V0 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_V1 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_wireValid = i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_valid_out;

    // c_i64_016(CONSTANT,4)
    assign c_i64_016_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5(BLACKBOX,21)@10
    // in in_stall_in@20000000
    // out out_data_out@11
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@11
    zfp_decode_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_0 thei_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5 (
        .in_data_in(c_i64_016_q),
        .in_dir(redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_q),
        .in_feedback_in_20(in_feedback_in_20),
        .in_feedback_valid_in_20(in_feedback_valid_in_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_backStall),
        .in_valid_in(SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V2),
        .out_data_out(i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3(STALLENABLE,145)
    // Valid signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V0 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_0;
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V1 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_1;
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V2 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_2;
    // Stall signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_0 = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backStall & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_0;
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_stall_out & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_1;
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_2 = i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_stall_out & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_2;
    // Backward Enable generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_or0 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_0;
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_or1 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_1 | SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_or0;
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backEN = ~ (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_2 | SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_v_s_0 = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backEN & SR_SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V;
    // Backward Stall generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backStall = ~ (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_0 <= 1'b0;
            SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_1 <= 1'b0;
            SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backEN == 1'b0)
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_0 & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_0;
            end
            else
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_v_s_0;
            end

            if (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backEN == 1'b0)
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_1 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_1 & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_1;
            end
            else
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_1 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_v_s_0;
            end

            if (SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_backEN == 1'b0)
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_2 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_2 & SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_s_tv_2;
            end
            else
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_R_v_2 <= SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_v_s_0;
            end

        end
    end

    // SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0(STALLREG,207)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_valid <= 1'b0;
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_valid <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backStall & (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_valid | SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_i_valid);

            if (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_data0 <= $unsigned(redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_i_valid = SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V0;
    // Stall signal propagation
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backStall = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_valid | ~ (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_i_valid);

    // Valid
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_V = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_valid == 1'b1 ? SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_valid : SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_i_valid;

    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_D0 = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_valid == 1'b1 ? SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_r_data0 : redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_q;

    // redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0(REG,74)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_q <= $unsigned(SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_D0);
        end
    end

    // redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1(REG,75)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_q <= $unsigned(redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_q);
        end
    end

    // SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1(STALLENABLE,147)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_V0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_s_tv_0 = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backStall & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_backEN & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_0_V0;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_v_s_0;
            end

        end
    end

    // SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2(STALLREG,208)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_valid <= 1'b0;
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_valid <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backStall & (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_valid | SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_i_valid);

            if (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_data0 <= $unsigned(redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_i_valid = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_V0;
    // Stall signal propagation
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backStall = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_valid | ~ (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_i_valid);

    // Valid
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_V = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_valid == 1'b1 ? SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_valid : SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_i_valid;

    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_D0 = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_valid == 1'b1 ? SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_r_data0 : redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_1_q;

    // redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2(REG,76)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_q <= $unsigned(SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_D0);
        end
    end

    // redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3(REG,77)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_q <= $unsigned(redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_q);
        end
    end

    // SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3(STALLENABLE,149)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_V0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_s_tv_0 = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backStall & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_backEN & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_2_V0;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_v_s_0;
            end

        end
    end

    // SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4(STALLREG,209)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_valid <= 1'b0;
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_valid <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backStall & (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_valid | SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_i_valid);

            if (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_data0 <= $unsigned(redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_i_valid = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_V0;
    // Stall signal propagation
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backStall = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_valid | ~ (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_i_valid);

    // Valid
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_V = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_valid == 1'b1 ? SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_valid : SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_i_valid;

    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_D0 = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_valid == 1'b1 ? SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_r_data0 : redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_3_q;

    // redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4(REG,78)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_q <= $unsigned(SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_D0);
        end
    end

    // redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5(REG,79)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_q <= $unsigned(redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_q);
        end
    end

    // SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5(STALLENABLE,151)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_V0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_s_tv_0 = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backStall & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_backEN & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_4_V0;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_v_s_0;
            end

        end
    end

    // SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6(STALLREG,210)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_valid <= 1'b0;
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_valid <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backStall & (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_valid | SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_i_valid);

            if (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_data0 <= $unsigned(redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_i_valid = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_V0;
    // Stall signal propagation
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backStall = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_valid | ~ (SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_i_valid);

    // Valid
    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_V = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_valid == 1'b1 ? SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_valid : SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_i_valid;

    assign SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_D0 = SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_valid == 1'b1 ? SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_r_data0 : redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_5_q;

    // SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6(STALLENABLE,152)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_V0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_backStall & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backEN = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_v_s_0 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backEN & SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_V;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backStall = ~ (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_R_v_0 & SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_R_v_0 <= SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_v_s_0;
            end

        end
    end

    // bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg(STALLFIFO,203)
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_valid = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_V0;
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_backStall;
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_valid_bitsignaltemp = bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_valid[0];
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_stall_bitsignaltemp = bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_stall[0];
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_valid[0] = bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_stall[0] = bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_stall_bitsignaltemp;
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
    ) thebubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg (
        .i_valid(bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5(BITJOIN,93)
    assign bubble_join_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_q = i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5(BITSELECT,94)
    assign bubble_select_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_q[63:0]);

    // bubble_join_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9(BITJOIN,83)
    assign bubble_join_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_q = i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_o_data;

    // bubble_select_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9(BITSELECT,84)
    assign bubble_select_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_b = $unsigned(bubble_join_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_q[63:0]);

    // i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x(BLACKBOX,49)@11
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@17
    // out out_c2_exit_0_tpl@17
    // out out_c2_exit_1_tpl@17
    // out out_c2_exit_2_tpl@17
    // out out_c2_exit_3_tpl@17
    zfp_decode_i_sfc_s_c2_in_for_body_s_c2_enter_zfp_decode11 thei_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x (
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_backStall),
        .in_i_valid(SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_V0),
        .in_c2_eni4_0_tpl(GND_q),
        .in_c2_eni4_1_tpl(bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_b),
        .in_c2_eni4_2_tpl(bubble_select_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_b),
        .in_c2_eni4_3_tpl(bubble_select_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_b),
        .in_c2_eni4_4_tpl(bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_d),
        .out_o_stall(i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_o_valid),
        .out_c2_exit_0_tpl(),
        .out_c2_exit_1_tpl(i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_c2_exit_1_tpl),
        .out_c2_exit_2_tpl(i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_c2_exit_2_tpl),
        .out_c2_exit_3_tpl(i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_c2_exit_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,62)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,81)
    assign coalesced_delay_0_fifo_i_valid = SE_out_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_V2;
    assign coalesced_delay_0_fifo_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_backStall;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(12),
        .WIDTH(162),
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

    // bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg(STALLFIFO,204)
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_valid = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_V0;
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_stall = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_valid_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_valid[0];
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_stall_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_stall[0];
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_valid[0] = bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_stall[0] = bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_stall_bitsignaltemp;
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
    ) thebubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg (
        .i_valid(bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1(STALLENABLE,174)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and0 = bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_reg_o_valid;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and1 = coalesced_delay_0_fifo_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and2 = i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and3 = bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and4 = SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_wireValid = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_and4;

    // SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5(STALLENABLE,141)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_V0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_backStall & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_backEN & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_v_s_0;
            end

        end
    end

    // SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4(STALLENABLE,140)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_V0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_s_tv_0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_backStall & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backEN & SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_V;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_v_s_0;
            end

        end
    end

    // SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4(STALLREG,212)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_valid <= 1'b0;
            SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_valid <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backStall & (SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_valid | SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_i_valid);

            if (SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_i_valid = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backStall = SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_valid | ~ (SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_i_valid);

    // Valid
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_V = SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_valid : SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_i_valid;

    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_D0 = SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_r_data0 : redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_q;

    // SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3(STALLENABLE,139)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_V0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_s_tv_0 = SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backStall & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_backEN & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_v_s_0;
            end

        end
    end

    // SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2(STALLENABLE,138)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_V0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_s_tv_0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_3_backStall & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backEN & SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_V;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_v_s_0;
            end

        end
    end

    // SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2(STALLREG,211)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_valid <= 1'b0;
            SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_valid <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backStall & (SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_valid | SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_i_valid);

            if (SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_i_valid = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backStall = SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_valid | ~ (SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_i_valid);

    // Valid
    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_V = SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_valid : SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_i_valid;

    assign SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_D0 = SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_r_data0 : redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_q;

    // SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1(STALLENABLE,137)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_V0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_s_tv_0 = SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_2_backStall & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_backEN & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_v_s_0;
            end

        end
    end

    // SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0(STALLENABLE,136)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_V0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_s_tv_0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_1_backStall & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_backEN = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_v_s_0 = SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_backEN & SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_V2;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_backStall = ~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_R_v_0 & SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_v_s_0;
            end

        end
    end

    // SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x(STALLENABLE,130)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_V0 = SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_backStall = i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_and0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_V1;
    assign SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_and1 = SE_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_V1 & SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_and0;
    assign SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_wireValid = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_V1 & SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_and1;

    // bubble_join_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3(BITJOIN,90)
    assign bubble_join_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_q = i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3(BITSELECT,91)
    assign bubble_select_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_q[31:0]);

    // i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x(BLACKBOX,48)@7
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_c1_exit182_0_tpl@11
    // out out_c1_exit182_1_tpl@11
    // out out_c1_exit182_2_tpl@11
    // out out_c1_exit182_3_tpl@11
    zfp_decode_i_sfc_s_c1_in_for_body_s_c1_enter179_zfp_decode7 thei_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_V0),
        .in_c1_eni1178_0_tpl(GND_q),
        .in_c1_eni1178_1_tpl(bubble_select_i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_b),
        .out_o_stall(i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_o_valid),
        .out_c1_exit182_0_tpl(),
        .out_c1_exit182_1_tpl(i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_1_tpl),
        .out_c1_exit182_2_tpl(i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_2_tpl),
        .out_c1_exit182_3_tpl(i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x(STALLENABLE,129)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_backStall) & SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed1 = (~ (SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_backStall) & SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed2 = (~ (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_0_backStall) & SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_toReg2 = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_or1 = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_or0;
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_consumed2 & SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_or1);
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_V2 = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_wireValid = i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_o_valid;

    // i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4(BLACKBOX,19)@10
    // in in_stall_in@20000000
    // out out_data_out@11
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@11
    zfp_decode_i_llvm_fpga_pop_i1_memdep_phi_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4 (
        .in_data_in(GND_q),
        .in_dir(redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_q),
        .in_feedback_in_22(in_feedback_in_22),
        .in_feedback_valid_in_22(in_feedback_valid_in_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_backStall),
        .in_valid_in(SE_redist6_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_4_3_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4(STALLENABLE,119)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_backStall = i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_wireValid = SE_out_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_and0;

    // SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9(STALLENABLE,117)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_fromReg0 <= '0;
            SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_fromReg0 <= SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_toReg0;
            // Successor 1
            SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_fromReg1 <= SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_consumed0 = (~ (bubble_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_1_reg_o_stall) & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_wireValid) | SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_fromReg0;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_consumed1 = (~ (SE_in_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_backStall) & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_wireValid) | SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_StallValid = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_backStall & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_wireValid;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_toReg0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_StallValid & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_consumed0;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_toReg1 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_StallValid & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_or0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_consumed0;
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_wireStall = ~ (SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_consumed1 & SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_or0);
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_backStall = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_V0 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_wireValid & ~ (SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_fromReg0);
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_V1 = SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_wireValid & ~ (SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_wireValid = i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4(BITJOIN,87)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_q = i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4(BITSELECT,88)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_q[0:0]);

    // bubble_join_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x(BITJOIN,104)
    assign bubble_join_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_q = {i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl, i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_2_tpl, i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x(BITSELECT,105)
    assign bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_q[33:2]);

    // i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9(BLACKBOX,18)@11
    // in in_i_stall@20000000
    // out out_iord_bl_in_stream_0_o_fifoalmost_full@20000000
    // out out_iord_bl_in_stream_0_o_fifoready@20000000
    // out out_o_stall@20000000
    zfp_decode_i_iord_bl_in_stream_unnamed_7_zfp_decode0 thei_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_c),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_b),
        .in_i_stall(SE_out_i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_V0),
        .in_iord_bl_in_stream_0_i_fifodata(in_iord_bl_in_stream_0_i_fifodata),
        .in_iord_bl_in_stream_0_i_fifovalid(in_iord_bl_in_stream_0_i_fifovalid),
        .out_iord_bl_in_stream_0_o_fifoalmost_full(i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_iord_bl_in_stream_0_o_fifoalmost_full),
        .out_iord_bl_in_stream_0_o_fifoready(i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_iord_bl_in_stream_0_o_fifoready),
        .out_o_data(i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_o_data),
        .out_o_stall(i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_o_stall),
        .out_o_valid(i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_iord_bl_in_stream_0_o_fifoready = i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_iord_bl_in_stream_0_o_fifoready;
    assign out_iord_bl_in_stream_0_o_fifoalmost_full = i_iord_bl_in_stream_unnamed_zfp_decode7_zfp_decode9_out_iord_bl_in_stream_0_o_fifoalmost_full;

    // feedback_stall_out_20_sync(GPOUT,12)
    assign out_feedback_stall_out_20 = i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_out_feedback_stall_out_20;

    // feedback_stall_out_21_sync(GPOUT,13)
    assign out_feedback_stall_out_21 = i_llvm_fpga_pop_i32_bs_sroa_7_056_pop21_zfp_decode3_out_feedback_stall_out_21;

    // feedback_stall_out_22_sync(GPOUT,14)
    assign out_feedback_stall_out_22 = i_llvm_fpga_pop_i1_memdep_phi_pop22_zfp_decode4_out_feedback_stall_out_22;

    // pipeline_valid_out_sync(GPOUT,39)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,43)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,45)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out = i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out = i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out;

    // bubble_join_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x(BITJOIN,107)
    assign bubble_join_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_q = {i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_c2_exit_3_tpl, i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_c2_exit_2_tpl, i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_out_c2_exit_1_tpl};

    // bubble_select_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x(BITSELECT,108)
    assign bubble_select_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_q[64:64]);
    assign bubble_select_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_q[65:65]);

    // redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4(REG,68)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_D0);
        end
    end

    // redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5(REG,69)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_q <= $unsigned(redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_4_q);
        end
    end

    // redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6(REG,80)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_q <= $unsigned(SR_SE_redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_D0);
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,114)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,115)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[161:0]);

    // sel_for_coalesced_delay_0(BITSELECT,63)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:96]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[160:160]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[161:161]);

    // dupName_0_sync_out_x(GPOUT,46)@17
    assign out_c0_exe1176 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe2177 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe4 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe6 = redist7_i_sfc_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode1_aunroll_x_out_c0_exit175_6_tpl_11_6_q;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe8 = sel_for_coalesced_delay_0_f;
    assign out_c1_exe3 = redist0_i_sfc_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode7_aunroll_x_out_c1_exit182_3_tpl_6_5_q;
    assign out_c2_exe1 = bubble_select_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_b;
    assign out_c2_exe2 = bubble_select_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_c;
    assign out_c2_exe3 = bubble_select_i_sfc_s_c2_in_for_body_zfp_decodes_c2_enter_zfp_decode11_aunroll_x_d;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i64_bs_sroa_0_057_pop20_zfp_decode5_1_V0;

    // rst_sync(RESETSYNC,213)
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
