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

// SystemVerilog created from bb_zfp_inv_lift_B3_stall_region
// Created for function/kernel zfp_inv_lift
// SystemVerilog created on Fri Feb 13 18:09:03 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_inv_lift_bb_B3_stall_region (
    input wire [63:0] in_iord_bl_in_stream_i_fifodata,
    input wire [0:0] in_iord_bl_in_stream_i_fifovalid,
    output wire [0:0] out_iord_bl_in_stream_o_fifoready,
    output wire [0:0] out_iord_bl_in_stream_o_fifoalmost_full,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_iord_bl_in_stream_o_fifoalmost_full;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_iord_bl_in_stream_o_fifoready;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty;
    wire [63:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_stall;
    wire [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out;
    wire [63:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [63:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [63:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_valid;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_i_empty;
    wire coalesced_delay_0_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_almost_empty;
    wire coalesced_delay_0_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_o_empty;
    wire coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_almost_empty;
    wire coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_valid;
    wire coalesced_delay_1_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_stall;
    wire coalesced_delay_1_fifo_i_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_i_data;
    wire [0:0] coalesced_delay_1_fifo_i_empty;
    wire coalesced_delay_1_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_i_almost_empty;
    wire coalesced_delay_1_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_valid;
    wire coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_stall;
    wire coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_o_data;
    wire [0:0] coalesced_delay_1_fifo_o_empty;
    wire coalesced_delay_1_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_o_almost_empty;
    wire coalesced_delay_1_fifo_o_almost_empty_bitsignaltemp;
    wire [63:0] bubble_join_i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_q;
    wire [63:0] bubble_select_i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_b;
    wire [3:0] bubble_join_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_e;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_backStall;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_V0;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_V3;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_V6;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_V1;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_V4;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_V7;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_V2;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_V5;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_V8;
    wire [0:0] merged_in_SE_join_for_coalesced_delay_0_temp_back_stall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V1;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V2;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_1_backStall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_1_V0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_1_V1;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_1_V2;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_1_can_fast_read;
    wire can_fast_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_1_can_slow_read;
    wire can_slow_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_1_no_space_for_result;
    wire no_space_for_result_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_1_forced_read;
    wire forced_read_bitsignaltemp_dup_name_0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_1_temp_back_stall;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg0_q;
    reg [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_in_i_stall_reg0_q;
    reg [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_in_i_stall_reg1_q;
    reg [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty_reg1_q;
    reg [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty_reg0_q;
    reg [63:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data_reg1_q;
    reg [63:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data_reg0_q;
    reg [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty_reg1_q;
    reg [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty_reg0_q;
    reg [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_valid_reg1_q;
    reg [0:0] i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_valid_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg0_q;
    reg [1:0] coalesced_delay_0_fifo_o_data_reg1_q;
    reg [1:0] coalesced_delay_0_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_valid_reg0_q;
    reg [1:0] coalesced_delay_1_fifo_o_data_reg1_q;
    reg [1:0] coalesced_delay_1_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_1_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_1_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty_reg0(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty_reg0_q <= $unsigned(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty);
        end
    end

    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty_reg1(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty_reg1_q <= $unsigned(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_in_i_stall_reg0(REG,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_join_for_coalesced_delay_0_backStall);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_in_i_stall_reg1(REG,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_stall_entry(STALLENABLE,92)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x(BLACKBOX,25)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@35
    // out out_empty_out@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_profile_loop_o_valid@35
    // out out_c0_exit29_0_tpl@35
    // out out_c0_exit29_1_tpl@35
    // out out_c0_exit29_2_tpl@35
    // out out_c0_exit29_3_tpl@35
    zfp_inv_lift_i_sfc_s_c0_in_for_body_s_c0_enter272_zfp_inv_lift1 thei_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit29_0_tpl(),
        .out_c0_exit29_1_tpl(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl),
        .out_c0_exit29_2_tpl(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl),
        .out_c0_exit29_3_tpl(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl_reg0(REG,143)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl_reg1(REG,142)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl_reg0(REG,141)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl_reg1(REG,140)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl_reg0(REG,139)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl_reg1(REG,138)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg0(REG,137)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg1(REG,136)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x(BITJOIN,44)
    assign bubble_join_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_q = {i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_3_tpl_reg1_q, i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_2_tpl_reg1_q, i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_c0_exit29_1_tpl_reg1_q, i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x(BITSELECT,45)
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_q[3:3]);

    // join_for_coalesced_delay_0(BITJOIN,32)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_c};

    // coalesced_delay_0_fifo_i_stall_reg0(REG,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // coalesced_delay_0_fifo_i_stall_reg1(REG,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg1_q <= $unsigned(coalesced_delay_0_fifo_i_stall_reg0_q);
        end
    end

    // coalesced_delay_0_fifo(STALLFIFO,37)
    assign coalesced_delay_0_fifo_i_valid = merged_in_SE_join_for_coalesced_delay_0_V2;
    assign coalesced_delay_0_fifo_i_stall = coalesced_delay_0_fifo_i_stall_reg1_q;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_empty = merged_in_SE_join_for_coalesced_delay_0_V5;
    assign coalesced_delay_0_fifo_i_almost_empty = merged_in_SE_join_for_coalesced_delay_0_V8;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_empty[0] = coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_almost_empty[0] = coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(42),
        .WIDTH(2),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
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
        .o_empty(coalesced_delay_0_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_fifo_o_almost_empty_reg0(REG,161)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty);
        end
    end

    // coalesced_delay_0_fifo_o_almost_empty_reg1(REG,160)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty_reg0(REG,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty_reg0_q <= $unsigned(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty);
        end
    end

    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty_reg1(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty_reg1_q <= $unsigned(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg0(REG,159)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_empty);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg1(REG,158)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_empty_reg0_q);
        end
    end

    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data_reg0(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data_reg0_q <= $unsigned(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data);
        end
    end

    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data_reg1(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data_reg1_q <= $unsigned(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data_reg0_q);
        end
    end

    // bubble_join_i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3(BITJOIN,40)
    assign bubble_join_i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_q = i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data_reg1_q;

    // bubble_select_i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3(BITSELECT,41)
    assign bubble_select_i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_b = $unsigned(bubble_join_i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_q[63:0]);

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q);
        end
    end

    // i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out_reg0(REG,147)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out_reg1(REG,146)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // join_for_coalesced_delay_1(BITJOIN,35)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_b};

    // coalesced_delay_1_fifo_i_stall_reg0(REG,162)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_1_backStall);
        end
    end

    // coalesced_delay_1_fifo_i_stall_reg1(REG,163)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_i_stall_reg1_q <= $unsigned(coalesced_delay_1_fifo_i_stall_reg0_q);
        end
    end

    // coalesced_delay_1_fifo(STALLFIFO,38)
    assign coalesced_delay_1_fifo_i_valid = merged_in_SE_join_for_coalesced_delay_0_V1;
    assign coalesced_delay_1_fifo_i_stall = coalesced_delay_1_fifo_i_stall_reg1_q;
    assign coalesced_delay_1_fifo_i_data = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_i_empty = merged_in_SE_join_for_coalesced_delay_0_V4;
    assign coalesced_delay_1_fifo_i_almost_empty = merged_in_SE_join_for_coalesced_delay_0_V7;
    assign coalesced_delay_1_fifo_i_valid_bitsignaltemp = coalesced_delay_1_fifo_i_valid[0];
    assign coalesced_delay_1_fifo_i_stall_bitsignaltemp = coalesced_delay_1_fifo_i_stall[0];
    assign coalesced_delay_1_fifo_o_valid[0] = coalesced_delay_1_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_stall[0] = coalesced_delay_1_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_empty[0] = coalesced_delay_1_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_1_fifo_o_almost_empty[0] = coalesced_delay_1_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(78),
        .WIDTH(2),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_1_fifo (
        .i_valid(coalesced_delay_1_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_1_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_1_q),
        .o_valid(coalesced_delay_1_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_1_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_1_fifo_o_data),
        .o_empty(coalesced_delay_1_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_1_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_1_fifo_o_almost_empty_reg0(REG,171)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_almost_empty_reg0_q <= $unsigned(coalesced_delay_1_fifo_o_almost_empty);
        end
    end

    // coalesced_delay_1_fifo_o_almost_empty_reg1(REG,170)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_almost_empty_reg1_q <= $unsigned(coalesced_delay_1_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out_reg0(REG,149)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out_reg1(REG,148)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // coalesced_delay_1_fifo_o_empty_reg0(REG,169)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_empty_reg0_q <= $unsigned(coalesced_delay_1_fifo_o_empty);
        end
    end

    // coalesced_delay_1_fifo_o_empty_reg1(REG,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_empty_reg1_q <= $unsigned(coalesced_delay_1_fifo_o_empty_reg0_q);
        end
    end

    // i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_valid_reg0(REG,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_valid_reg1(REG,150)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // coalesced_delay_1_fifo_o_valid_reg0(REG,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_valid_reg0_q <= $unsigned(coalesced_delay_1_fifo_o_valid);
        end
    end

    // coalesced_delay_1_fifo_o_valid_reg1(REG,164)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_valid_reg1_q <= $unsigned(coalesced_delay_1_fifo_o_valid_reg0_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_1(STALLENABLE,95)
    // Sync
    assign merged_in_SE_sel_for_coalesced_delay_1_temp_back_stall = in_stall_in;
    assign merged_in_SE_sel_for_coalesced_delay_1_can_fast_read = ~ ((coalesced_delay_1_fifo_o_almost_empty_reg1_q | i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_1_can_slow_read = ~ ((coalesced_delay_1_fifo_o_empty_reg1_q | i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_1_backStall = ~ (merged_in_SE_sel_for_coalesced_delay_1_forced_read);
    assign merged_in_SE_sel_for_coalesced_delay_1_no_space_for_result = merged_in_SE_sel_for_coalesced_delay_1_temp_back_stall;
    assign merged_in_SE_sel_for_coalesced_delay_1_V0 = merged_in_SE_sel_for_coalesced_delay_1_forced_read;
    assign merged_in_SE_sel_for_coalesced_delay_1_V1 = $unsigned(1'b0);
    assign merged_in_SE_sel_for_coalesced_delay_1_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp_dup_name_0 = merged_in_SE_sel_for_coalesced_delay_1_can_fast_read[0];
    assign can_slow_read_bitsignaltemp_dup_name_0 = merged_in_SE_sel_for_coalesced_delay_1_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp_dup_name_0 = merged_in_SE_sel_for_coalesced_delay_1_no_space_for_result[0];
    assign merged_in_SE_sel_for_coalesced_delay_1_forced_read[0] = forced_read_bitsignaltemp_dup_name_0;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_sel_for_coalesced_delay_1 (
        .can_fast_read(can_fast_read_bitsignaltemp_dup_name_0),
        .can_slow_read(can_slow_read_bitsignaltemp_dup_name_0),
        .no_space_for_result(no_space_for_result_bitsignaltemp_dup_name_0),
        .forced_read(forced_read_bitsignaltemp_dup_name_0),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_in_i_stall_reg0(REG,144)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_1_backStall);
        end
    end

    // i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_in_i_stall_reg1(REG,145)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_data_reg0(REG,157)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_data);
        end
    end

    // coalesced_delay_0_fifo_o_data_reg1(REG,156)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,49)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,50)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,33)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x(BLACKBOX,26)@59
    // in in_i_stall@20000000
    // out out_almost_empty_out@95
    // out out_empty_out@95
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@95
    // out out_c1_exit_0_tpl@95
    zfp_inv_lift_i_sfc_s_c1_in_for_body_s_c1_enter_zfp_inv_lift5 thei_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x (
        .in_almost_empty_in(merged_in_SE_sel_for_coalesced_delay_0_V2),
        .in_c0_exe130(sel_for_coalesced_delay_0_b),
        .in_c0_exe3(sel_for_coalesced_delay_0_c),
        .in_empty_in(merged_in_SE_sel_for_coalesced_delay_0_V1),
        .in_i_stall(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q),
        .in_c1_eni3_0_tpl(GND_q),
        .in_c1_eni3_1_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni3_2_tpl(bubble_select_i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_b),
        .in_c1_eni3_3_tpl(sel_for_coalesced_delay_0_b),
        .out_almost_empty_out(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_empty_out),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_o_stall(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_valid_reg0(REG,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_valid_reg0_q <= $unsigned(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_valid);
        end
    end

    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_valid_reg1(REG,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_valid_reg1_q <= $unsigned(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_valid_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg0(REG,155)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_valid);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg1(REG,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_valid_reg0_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0(STALLENABLE,94)
    // Sync
    assign merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall = i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_o_stall;
    assign merged_in_SE_sel_for_coalesced_delay_0_can_fast_read = ~ ((coalesced_delay_0_fifo_o_almost_empty_reg1_q | i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_can_slow_read = ~ ((coalesced_delay_0_fifo_o_empty_reg1_q | i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_backStall = ~ (merged_in_SE_sel_for_coalesced_delay_0_forced_read);
    assign merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result = merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    assign merged_in_SE_sel_for_coalesced_delay_0_V0 = merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    assign merged_in_SE_sel_for_coalesced_delay_0_V1 = $unsigned(1'b0);
    assign merged_in_SE_sel_for_coalesced_delay_0_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result[0];
    assign merged_in_SE_sel_for_coalesced_delay_0_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_sel_for_coalesced_delay_0 (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_in_i_stall_reg0(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_in_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_in_i_stall_reg1(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_in_i_stall_reg1_q <= $unsigned(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_in_i_stall_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg0(REG,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg1(REG,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out_reg0(REG,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out_reg1(REG,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid_reg0(REG,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid_reg1(REG,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_join_for_coalesced_delay_0(STALLENABLE,93)
    // Desync
    assign merged_in_SE_join_for_coalesced_delay_0_temp_back_stall = i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_stall | coalesced_delay_1_fifo_o_stall | coalesced_delay_0_fifo_o_stall;
    assign merged_in_SE_join_for_coalesced_delay_0_backStall = merged_in_SE_join_for_coalesced_delay_0_temp_back_stall;
    assign merged_in_SE_join_for_coalesced_delay_0_V0 = i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_join_for_coalesced_delay_0_V3 = i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_join_for_coalesced_delay_0_V6 = i_sfc_s_c0_in_for_body_zfp_inv_lifts_c0_enter272_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg1_q;
    assign merged_in_SE_join_for_coalesced_delay_0_V1 = merged_in_SE_join_for_coalesced_delay_0_V0;
    assign merged_in_SE_join_for_coalesced_delay_0_V4 = merged_in_SE_join_for_coalesced_delay_0_V3;
    assign merged_in_SE_join_for_coalesced_delay_0_V7 = merged_in_SE_join_for_coalesced_delay_0_V6;
    assign merged_in_SE_join_for_coalesced_delay_0_V2 = merged_in_SE_join_for_coalesced_delay_0_V0;
    assign merged_in_SE_join_for_coalesced_delay_0_V5 = merged_in_SE_join_for_coalesced_delay_0_V3;
    assign merged_in_SE_join_for_coalesced_delay_0_V8 = merged_in_SE_join_for_coalesced_delay_0_V6;

    // i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3(BLACKBOX,8)@35
    // in in_i_stall@20000000
    // out out_iord_bl_in_stream_o_fifoalmost_full@20000000
    // out out_iord_bl_in_stream_o_fifoready@20000000
    // out out_o_almost_empty@59
    // out out_o_data@59
    // out out_o_empty@59
    // out out_o_stall@20000000
    // out out_o_valid@59
    zfp_inv_lift_i_iord_bl_in_stream_unnamed_10_zfp_inv_lift0 thei_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3 (
        .in_almost_empty_in(merged_in_SE_join_for_coalesced_delay_0_V6),
        .in_empty_in(merged_in_SE_join_for_coalesced_delay_0_V3),
        .in_i_stall(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_join_for_coalesced_delay_0_V0),
        .in_iord_bl_in_stream_i_fifodata(in_iord_bl_in_stream_i_fifodata),
        .in_iord_bl_in_stream_i_fifovalid(in_iord_bl_in_stream_i_fifovalid),
        .out_iord_bl_in_stream_o_fifoalmost_full(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_iord_bl_in_stream_o_fifoalmost_full),
        .out_iord_bl_in_stream_o_fifoready(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_iord_bl_in_stream_o_fifoready),
        .out_o_almost_empty(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_almost_empty),
        .out_o_data(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_data),
        .out_o_empty(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_empty),
        .out_o_stall(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_stall),
        .out_o_valid(i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_iord_bl_in_stream_o_fifoready = i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_iord_bl_in_stream_o_fifoready;
    assign out_iord_bl_in_stream_o_fifoalmost_full = i_iord_bl_in_stream_unnamed_zfp_inv_lift10_zfp_inv_lift3_out_iord_bl_in_stream_o_fifoalmost_full;

    // regfree_osync(GPOUT,15)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_4_0;

    // stall_entry_frontStall_reg0(REG,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,19)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_5_0;

    // merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg0(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_1_V0);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg1(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg2(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg3(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg4(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg5(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg6(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg5_q);
        end
    end

    // coalesced_delay_1_fifo_o_data_reg0(REG,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_data_reg0_q <= $unsigned(coalesced_delay_1_fifo_o_data);
        end
    end

    // coalesced_delay_1_fifo_o_data_reg1(REG,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_1_fifo_o_data_reg1_q <= $unsigned(coalesced_delay_1_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,52)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,53)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,36)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,22)@95
    assign out_almost_empty_out = merged_in_SE_sel_for_coalesced_delay_1_V2;
    assign out_c0_exe2 = sel_for_coalesced_delay_1_c;
    assign out_empty_out = merged_in_SE_sel_for_coalesced_delay_1_V1;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_1_b;
    assign out_valid_out = merged_in_SE_sel_for_coalesced_delay_1_V0_sync_valid_reg6_q;

    // dupName_1_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_2_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_s_c1_in_for_body_zfp_inv_lifts_c1_enter_zfp_inv_lift5_aunroll_x_out_intel_reserved_ffwd_7_0;

    // rst_sync(RESETSYNC,172)
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
