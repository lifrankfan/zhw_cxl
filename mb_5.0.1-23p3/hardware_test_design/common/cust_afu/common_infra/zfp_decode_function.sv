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

// SystemVerilog created from zfp_decode_function
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_in_stream,
    input wire [63:0] in_arg_out_stream,
    input wire [63:0] in_arg_return,
    input wire [0:0] in_iord_bl_call_zfp_decode_i_fifodata,
    input wire [0:0] in_iord_bl_call_zfp_decode_i_fifovalid,
    input wire [63:0] in_iord_in_stream_i_fifodata,
    input wire [0:0] in_iord_in_stream_i_fifovalid,
    input wire [0:0] in_iowr_bl_out_stream_i_fifoready,
    input wire [0:0] in_iowr_bl_return_zfp_decode_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_zfp_decode_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_zfp_decode_o_fifoready,
    output wire [0:0] out_iord_in_stream_o_fifoalmost_full,
    output wire [0:0] out_iord_in_stream_o_fifoready,
    output wire [63:0] out_iowr_bl_out_stream_o_fifodata,
    output wire [0:0] out_iowr_bl_out_stream_o_fifovalid,
    output wire [0:0] out_iowr_bl_return_zfp_decode_o_fifodata,
    output wire [0:0] out_iowr_bl_return_zfp_decode_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] arbiter_iord_in_stream_out_data_out0;
    wire [63:0] arbiter_iord_in_stream_out_data_out1;
    wire [0:0] arbiter_iord_in_stream_out_o_fifoalmost_full;
    wire [0:0] arbiter_iord_in_stream_out_o_fifoready;
    wire [0:0] arbiter_iord_in_stream_out_valid_out0;
    wire [0:0] arbiter_iord_in_stream_out_valid_out1;
    wire [0:0] bb_zfp_decode_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_zfp_decode_B0_runOnce_out_valid_out_0;
    wire [31:0] bb_zfp_decode_B1_start_out_c1_exe1;
    wire [0:0] bb_zfp_decode_B1_start_out_feedback_stall_out_1;
    wire [0:0] bb_zfp_decode_B1_start_out_iord_bl_call_zfp_decode_o_fifoalmost_full;
    wire [0:0] bb_zfp_decode_B1_start_out_iord_bl_call_zfp_decode_o_fifoready;
    wire [0:0] bb_zfp_decode_B1_start_out_pipeline_valid_out;
    wire [31:0] bb_zfp_decode_B1_start_out_reorder_limiter_enter;
    wire [0:0] bb_zfp_decode_B1_start_out_stall_out_0;
    wire [0:0] bb_zfp_decode_B1_start_out_stall_out_1;
    wire [0:0] bb_zfp_decode_B1_start_out_valid_in_0;
    wire [0:0] bb_zfp_decode_B1_start_out_valid_in_1;
    wire [0:0] bb_zfp_decode_B1_start_out_valid_out_0;
    wire [0:0] bb_zfp_decode_B1_start_out_wgl_10_enter_exit_stall_out;
    wire [0:0] bb_zfp_decode_B1_start_out_wgl_10_enter_exit_valid_out;
    wire [0:0] bb_zfp_decode_B3_out_c0_exe1176;
    wire [0:0] bb_zfp_decode_B3_out_c0_exe2177;
    wire [31:0] bb_zfp_decode_B3_out_c0_exe3;
    wire [31:0] bb_zfp_decode_B3_out_c0_exe4;
    wire [31:0] bb_zfp_decode_B3_out_c0_exe5;
    wire [0:0] bb_zfp_decode_B3_out_c0_exe6;
    wire [31:0] bb_zfp_decode_B3_out_c0_exe7;
    wire [31:0] bb_zfp_decode_B3_out_c0_exe8;
    wire [31:0] bb_zfp_decode_B3_out_c1_exe3;
    wire [63:0] bb_zfp_decode_B3_out_c2_exe1;
    wire [0:0] bb_zfp_decode_B3_out_c2_exe2;
    wire [0:0] bb_zfp_decode_B3_out_c2_exe3;
    wire [0:0] bb_zfp_decode_B3_out_exiting_stall_out;
    wire [0:0] bb_zfp_decode_B3_out_exiting_valid_out;
    wire [0:0] bb_zfp_decode_B3_out_feedback_stall_out_20;
    wire [0:0] bb_zfp_decode_B3_out_feedback_stall_out_21;
    wire [0:0] bb_zfp_decode_B3_out_feedback_stall_out_22;
    wire [0:0] bb_zfp_decode_B3_out_iord_bl_in_stream_0_o_fifoalmost_full;
    wire [0:0] bb_zfp_decode_B3_out_iord_bl_in_stream_0_o_fifoready;
    wire [0:0] bb_zfp_decode_B3_out_pipeline_valid_out;
    wire [0:0] bb_zfp_decode_B3_out_stall_out_0;
    wire [0:0] bb_zfp_decode_B3_out_stall_out_1;
    wire [0:0] bb_zfp_decode_B3_out_valid_in_0;
    wire [0:0] bb_zfp_decode_B3_out_valid_in_1;
    wire [0:0] bb_zfp_decode_B3_out_valid_out_0;
    wire [0:0] bb_zfp_decode_B4_out_c0_exe128;
    wire [0:0] bb_zfp_decode_B4_out_c0_exe139;
    wire [31:0] bb_zfp_decode_B4_out_c0_exe1410;
    wire [31:0] bb_zfp_decode_B4_out_c0_exe1611;
    wire [31:0] bb_zfp_decode_B4_out_c0_exe1712;
    wire [0:0] bb_zfp_decode_B4_out_c0_exe22171;
    wire [0:0] bb_zfp_decode_B4_out_c0_exe52203;
    wire [31:0] bb_zfp_decode_B4_out_c0_exe82234;
    wire [31:0] bb_zfp_decode_B4_out_c0_exe95;
    wire [63:0] bb_zfp_decode_B4_out_c1_exe223815;
    wire [63:0] bb_zfp_decode_B4_out_feedback_out_20;
    wire [31:0] bb_zfp_decode_B4_out_feedback_out_21;
    wire [0:0] bb_zfp_decode_B4_out_feedback_out_22;
    wire [0:0] bb_zfp_decode_B4_out_feedback_stall_out_15;
    wire [0:0] bb_zfp_decode_B4_out_feedback_stall_out_16;
    wire [0:0] bb_zfp_decode_B4_out_feedback_stall_out_17;
    wire [0:0] bb_zfp_decode_B4_out_feedback_stall_out_18;
    wire [0:0] bb_zfp_decode_B4_out_feedback_valid_out_20;
    wire [0:0] bb_zfp_decode_B4_out_feedback_valid_out_21;
    wire [0:0] bb_zfp_decode_B4_out_feedback_valid_out_22;
    wire [0:0] bb_zfp_decode_B4_out_stall_out_0;
    wire [63:0] bb_zfp_decode_B4_out_ublock_sroa_0_0_pop18;
    wire [63:0] bb_zfp_decode_B4_out_ublock_sroa_12_0_pop15;
    wire [63:0] bb_zfp_decode_B4_out_ublock_sroa_6_0_pop17;
    wire [63:0] bb_zfp_decode_B4_out_ublock_sroa_9_0_pop16;
    wire [0:0] bb_zfp_decode_B4_out_valid_out_0;
    wire [0:0] bb_zfp_decode_B5_out_c0_exe10;
    wire [31:0] bb_zfp_decode_B5_out_c0_exe11;
    wire [0:0] bb_zfp_decode_B5_out_c0_exe12;
    wire [0:0] bb_zfp_decode_B5_out_c0_exe13;
    wire [31:0] bb_zfp_decode_B5_out_c0_exe14;
    wire [31:0] bb_zfp_decode_B5_out_c0_exe16;
    wire [31:0] bb_zfp_decode_B5_out_c0_exe17;
    wire [0:0] bb_zfp_decode_B5_out_c0_exe2217;
    wire [31:0] bb_zfp_decode_B5_out_c0_exe4219;
    wire [0:0] bb_zfp_decode_B5_out_c0_exe5220;
    wire [31:0] bb_zfp_decode_B5_out_c0_exe8223;
    wire [31:0] bb_zfp_decode_B5_out_c0_exe9;
    wire [63:0] bb_zfp_decode_B5_out_c1_exe1237;
    wire [63:0] bb_zfp_decode_B5_out_c1_exe2238;
    wire [63:0] bb_zfp_decode_B5_out_c1_exe3239;
    wire [0:0] bb_zfp_decode_B5_out_c2_exe1229;
    wire [0:0] bb_zfp_decode_B5_out_exiting_stall_out;
    wire [0:0] bb_zfp_decode_B5_out_exiting_valid_out;
    wire [0:0] bb_zfp_decode_B5_out_iord_bl_in_stream_1_o_fifoalmost_full;
    wire [0:0] bb_zfp_decode_B5_out_iord_bl_in_stream_1_o_fifoready;
    wire [0:0] bb_zfp_decode_B5_out_pipeline_valid_out;
    wire [0:0] bb_zfp_decode_B5_out_stall_in_0;
    wire [0:0] bb_zfp_decode_B5_out_stall_out_0;
    wire [0:0] bb_zfp_decode_B5_out_stall_out_1;
    wire [0:0] bb_zfp_decode_B5_out_valid_in_0;
    wire [0:0] bb_zfp_decode_B5_out_valid_in_1;
    wire [0:0] bb_zfp_decode_B5_out_valid_out_0;
    wire [0:0] bb_zfp_decode_B6_out_c0_exe10293;
    wire [63:0] bb_zfp_decode_B6_out_c0_exe11294;
    wire [63:0] bb_zfp_decode_B6_out_c0_exe12295;
    wire [63:0] bb_zfp_decode_B6_out_c0_exe1284;
    wire [63:0] bb_zfp_decode_B6_out_c0_exe13296;
    wire [63:0] bb_zfp_decode_B6_out_c0_exe14297;
    wire [63:0] bb_zfp_decode_B6_out_c0_exe2285;
    wire [63:0] bb_zfp_decode_B6_out_c0_exe3286;
    wire [63:0] bb_zfp_decode_B6_out_c0_exe4287;
    wire [0:0] bb_zfp_decode_B6_out_c0_exe7290;
    wire [31:0] bb_zfp_decode_B6_out_c0_exe8291;
    wire [0:0] bb_zfp_decode_B6_out_c0_exe9292;
    wire [0:0] bb_zfp_decode_B6_out_profile_loop_o_valid;
    wire [0:0] bb_zfp_decode_B6_out_stall_in_0;
    wire [0:0] bb_zfp_decode_B6_out_stall_out_1;
    wire [0:0] bb_zfp_decode_B6_out_valid_in_1;
    wire [0:0] bb_zfp_decode_B6_out_valid_out_0;
    wire [31:0] bb_zfp_decode_B7_out_c0_exe829123;
    wire [63:0] bb_zfp_decode_B7_out_feedback_out_15;
    wire [63:0] bb_zfp_decode_B7_out_feedback_out_16;
    wire [63:0] bb_zfp_decode_B7_out_feedback_out_17;
    wire [63:0] bb_zfp_decode_B7_out_feedback_out_18;
    wire [0:0] bb_zfp_decode_B7_out_feedback_valid_out_15;
    wire [0:0] bb_zfp_decode_B7_out_feedback_valid_out_16;
    wire [0:0] bb_zfp_decode_B7_out_feedback_valid_out_17;
    wire [0:0] bb_zfp_decode_B7_out_feedback_valid_out_18;
    wire [63:0] bb_zfp_decode_B7_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_zfp_decode_B7_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_zfp_decode_B7_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_zfp_decode_B7_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_zfp_decode_B7_out_stall_in_0;
    wire [0:0] bb_zfp_decode_B7_out_stall_out_0;
    wire [0:0] bb_zfp_decode_B7_out_valid_out_0;
    wire [0:0] bb_zfp_decode_B8_out_feedback_out_1;
    wire [0:0] bb_zfp_decode_B8_out_feedback_valid_out_1;
    wire [0:0] bb_zfp_decode_B8_out_iowr_bl_return_zfp_decode_o_fifodata;
    wire [0:0] bb_zfp_decode_B8_out_iowr_bl_return_zfp_decode_o_fifovalid;
    wire [0:0] bb_zfp_decode_B8_out_stall_in_0;
    wire [0:0] bb_zfp_decode_B8_out_stall_out_0;
    wire [0:0] bb_zfp_decode_B8_out_valid_out_0;
    wire [1:0] c_i2_0104_q;
    wire [31:0] c_i32_undef12_q;
    wire [63:0] c_i64_undef42_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_zfp_decode2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_zfp_decode2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_zfp_decode2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_zfp_decode2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_zfp_decode2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_zfp_decode2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_zfp_decode2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_zfp_decode2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_zfp_decode2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_zfp_decode2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_zfp_decode2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_zfp_decode2_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_zfp_decode0_out_o_stall;
    wire [0:0] loop_limiter_zfp_decode0_out_o_valid;
    wire [0:0] loop_limiter_zfp_decode1_out_o_stall;
    wire [0:0] loop_limiter_zfp_decode1_out_o_valid;
    wire [0:0] zfp_decode_B1_start_x_i_capture;
    wire zfp_decode_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_decode_B1_start_x_i_clear;
    wire zfp_decode_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_decode_B1_start_x_i_enable;
    wire zfp_decode_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_decode_B1_start_x_i_shift;
    wire zfp_decode_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_decode_B1_start_x_i_stall_pred;
    wire zfp_decode_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_decode_B1_start_x_i_stall_succ;
    wire zfp_decode_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_decode_B1_start_x_i_valid_loop;
    wire zfp_decode_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_decode_B1_start_x_i_valid_pred;
    wire zfp_decode_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_decode_B1_start_x_i_valid_succ;
    wire zfp_decode_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] zfp_decode_B3_x_i_capture;
    wire zfp_decode_B3_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_decode_B3_x_i_clear;
    wire zfp_decode_B3_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_decode_B3_x_i_enable;
    wire zfp_decode_B3_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_decode_B3_x_i_shift;
    wire zfp_decode_B3_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_decode_B3_x_i_stall_pred;
    wire zfp_decode_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_decode_B3_x_i_stall_succ;
    wire zfp_decode_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_decode_B3_x_i_valid_loop;
    wire zfp_decode_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_decode_B3_x_i_valid_pred;
    wire zfp_decode_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_decode_B3_x_i_valid_succ;
    wire zfp_decode_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] zfp_decode_B5_x_i_capture;
    wire zfp_decode_B5_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_decode_B5_x_i_clear;
    wire zfp_decode_B5_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_decode_B5_x_i_enable;
    wire zfp_decode_B5_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_decode_B5_x_i_shift;
    wire zfp_decode_B5_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_decode_B5_x_i_stall_pred;
    wire zfp_decode_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_decode_B5_x_i_stall_succ;
    wire zfp_decode_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_decode_B5_x_i_valid_loop;
    wire zfp_decode_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_decode_B5_x_i_valid_pred;
    wire zfp_decode_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_decode_B5_x_i_valid_succ;
    wire zfp_decode_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] zfp_decode_B6_x_i_capture;
    wire zfp_decode_B6_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_decode_B6_x_i_clear;
    wire zfp_decode_B6_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_decode_B6_x_i_enable;
    wire zfp_decode_B6_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_decode_B6_x_i_shift;
    wire zfp_decode_B6_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_decode_B6_x_i_stall_pred;
    wire zfp_decode_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_decode_B6_x_i_stall_succ;
    wire zfp_decode_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_decode_B6_x_i_valid_loop;
    wire zfp_decode_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_decode_B6_x_i_valid_pred;
    wire zfp_decode_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_decode_B6_x_i_valid_succ;
    wire zfp_decode_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] zfp_decode_B9_x_i_capture;
    wire zfp_decode_B9_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_decode_B9_x_i_clear;
    wire zfp_decode_B9_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_decode_B9_x_i_enable;
    wire zfp_decode_B9_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_decode_B9_x_i_shift;
    wire zfp_decode_B9_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_decode_B9_x_i_stall_pred;
    wire zfp_decode_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_decode_B9_x_i_stall_succ;
    wire zfp_decode_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_decode_B9_x_i_valid_loop;
    wire zfp_decode_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_decode_B9_x_i_valid_pred;
    wire zfp_decode_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_decode_B9_x_i_valid_succ;
    wire zfp_decode_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_zfp_decode_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_decode_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_decode_B1_start_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_zfp_decode_B2_aunroll_x_out_stall_out_0;
    wire [0:0] bb_zfp_decode_B2_aunroll_x_out_valid_out_0;
    wire [0:0] bb_zfp_decode_B2_aunroll_x_out_wgl_10_exit_exit_stall_in;
    wire [0:0] bb_zfp_decode_B2_aunroll_x_out_wgl_10_exit_exit_valid_in;
    wire [63:0] bb_zfp_decode_B2_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] bb_zfp_decode_B2_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] bb_zfp_decode_B2_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] bb_zfp_decode_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_decode_B2_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_zfp_decode_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_zfp_decode_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_decode_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_decode_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_zfp_decode_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_zfp_decode_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [63:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [63:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [63:0] bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [63:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [63:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [63:0] bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_zfp_decode_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_decode_B8_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_zfp_decode_B9_aunroll_x_out_iowr_bl_out_stream_o_fifodata;
    wire [0:0] bb_zfp_decode_B9_aunroll_x_out_iowr_bl_out_stream_o_fifovalid;
    wire [0:0] bb_zfp_decode_B9_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] bb_zfp_decode_B9_aunroll_x_out_stall_in_0;
    wire [0:0] bb_zfp_decode_B9_aunroll_x_out_stall_out_1;
    wire [0:0] bb_zfp_decode_B9_aunroll_x_out_valid_in_1;
    wire [0:0] bb_zfp_decode_B9_aunroll_x_out_valid_out_0;
    wire [0:0] bb_zfp_decode_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_decode_B9_sr_1_aunroll_x_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_zfp_decode_B8_sr_0_aunroll_x(BLACKBOX,114)
    zfp_decode_bb_B8_sr_0 thebb_zfp_decode_B8_sr_0_aunroll_x (
        .in_i_stall(bb_zfp_decode_B8_out_stall_out_0),
        .in_i_valid(bb_zfp_decode_B9_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_zfp_decode_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_decode_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_decode_B9_aunroll_x(BLACKBOX,115)
    zfp_decode_bb_B9 thebb_zfp_decode_B9_aunroll_x (
        .in_intel_reserved_ffwd_1_0(bb_zfp_decode_B7_out_intel_reserved_ffwd_1_0),
        .in_iowr_bl_out_stream_i_fifoready(in_iowr_bl_out_stream_i_fifoready),
        .in_stall_in_0(bb_zfp_decode_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_zfp_decode_B9_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_zfp_decode_B2_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_zfp_decode_B2_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_zfp_decode_B2_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_iowr_bl_out_stream_o_fifodata(bb_zfp_decode_B9_aunroll_x_out_iowr_bl_out_stream_o_fifodata),
        .out_iowr_bl_out_stream_o_fifovalid(bb_zfp_decode_B9_aunroll_x_out_iowr_bl_out_stream_o_fifovalid),
        .out_profile_loop_o_valid(bb_zfp_decode_B9_aunroll_x_out_profile_loop_o_valid),
        .out_stall_in_0(bb_zfp_decode_B9_aunroll_x_out_stall_in_0),
        .out_stall_out_0(),
        .out_stall_out_1(bb_zfp_decode_B9_aunroll_x_out_stall_out_1),
        .out_valid_in_1(bb_zfp_decode_B9_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_zfp_decode_B9_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B9_sr_1_aunroll_x(BLACKBOX,116)
    zfp_decode_bb_B9_sr_1 thebb_zfp_decode_B9_sr_1_aunroll_x (
        .in_i_stall(bb_zfp_decode_B9_aunroll_x_out_stall_out_1),
        .in_i_valid(bb_zfp_decode_B2_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_zfp_decode_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_decode_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i64_undef42(CONSTANT,64)
    assign c_i64_undef42_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i32_undef12(CONSTANT,51)
    assign c_i32_undef12_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_zfp_decode_B6(BLACKBOX,8)
    zfp_decode_bb_B6 thebb_zfp_decode_B6 (
        .in_exitcond5495_pop38145_0(GND_q),
        .in_exitcond5495_pop38145_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_k_058_pop1999_pop40149_0(c_i32_undef12_q),
        .in_k_058_pop1999_pop40149_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_lim_ext108_0(c_i32_undef12_q),
        .in_lim_ext108_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lim_ext83_pop31138_0(c_i32_undef12_q),
        .in_lim_ext83_pop31138_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notexit7697_pop39147_0(GND_q),
        .in_notexit7697_pop39147_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_or_i_shuffle134_0(c_i64_undef42_q),
        .in_or_i_shuffle134_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_pop37136_0(GND_q),
        .in_pop37136_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_reorder_limiter_enter113_0(c_i32_undef12_q),
        .in_reorder_limiter_enter113_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_reorder_limiter_enter86_pop32140_0(c_i32_undef12_q),
        .in_reorder_limiter_enter86_pop32140_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_stall_in_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_tobool_i3493_pop36129_0(GND_q),
        .in_tobool_i3493_pop36129_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_ublock_sroa_0_0_pop18128_0(c_i64_undef42_q),
        .in_ublock_sroa_0_0_pop18128_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_ublock_sroa_12_0_pop15125_0(c_i64_undef42_q),
        .in_ublock_sroa_12_0_pop15125_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_ublock_sroa_6_0_pop17127_0(c_i64_undef42_q),
        .in_ublock_sroa_6_0_pop17127_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_ublock_sroa_9_0_pop16126_0(c_i64_undef42_q),
        .in_ublock_sroa_9_0_pop16126_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10293(bb_zfp_decode_B6_out_c0_exe10293),
        .out_c0_exe11294(bb_zfp_decode_B6_out_c0_exe11294),
        .out_c0_exe12295(bb_zfp_decode_B6_out_c0_exe12295),
        .out_c0_exe1284(bb_zfp_decode_B6_out_c0_exe1284),
        .out_c0_exe13296(bb_zfp_decode_B6_out_c0_exe13296),
        .out_c0_exe14297(bb_zfp_decode_B6_out_c0_exe14297),
        .out_c0_exe2285(bb_zfp_decode_B6_out_c0_exe2285),
        .out_c0_exe3286(bb_zfp_decode_B6_out_c0_exe3286),
        .out_c0_exe4287(bb_zfp_decode_B6_out_c0_exe4287),
        .out_c0_exe7290(bb_zfp_decode_B6_out_c0_exe7290),
        .out_c0_exe8291(bb_zfp_decode_B6_out_c0_exe8291),
        .out_c0_exe9292(bb_zfp_decode_B6_out_c0_exe9292),
        .out_profile_loop_o_valid(bb_zfp_decode_B6_out_profile_loop_o_valid),
        .out_stall_in_0(bb_zfp_decode_B6_out_stall_in_0),
        .out_stall_out_0(),
        .out_stall_out_1(bb_zfp_decode_B6_out_stall_out_1),
        .out_valid_in_1(bb_zfp_decode_B6_out_valid_in_1),
        .out_valid_out_0(bb_zfp_decode_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B6_sr_1_aunroll_x(BLACKBOX,112)
    zfp_decode_bb_B6_sr_1 thebb_zfp_decode_B6_sr_1_aunroll_x (
        .in_i_stall(bb_zfp_decode_B6_out_stall_out_1),
        .in_i_valid(bb_zfp_decode_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_zfp_decode_B4_out_c0_exe1611),
        .in_i_data_1_tpl(bb_zfp_decode_B4_out_c0_exe1712),
        .in_i_data_2_tpl(bb_zfp_decode_B4_out_ublock_sroa_12_0_pop15),
        .in_i_data_3_tpl(bb_zfp_decode_B4_out_ublock_sroa_9_0_pop16),
        .in_i_data_4_tpl(bb_zfp_decode_B4_out_ublock_sroa_6_0_pop17),
        .in_i_data_5_tpl(bb_zfp_decode_B4_out_ublock_sroa_0_0_pop18),
        .in_i_data_6_tpl(bb_zfp_decode_B4_out_c0_exe22171),
        .in_i_data_7_tpl(bb_zfp_decode_B4_out_c1_exe223815),
        .in_i_data_8_tpl(bb_zfp_decode_B4_out_c0_exe52203),
        .in_i_data_9_tpl(bb_zfp_decode_B4_out_c0_exe82234),
        .in_i_data_10_tpl(bb_zfp_decode_B4_out_c0_exe95),
        .in_i_data_11_tpl(bb_zfp_decode_B4_out_c0_exe128),
        .in_i_data_12_tpl(bb_zfp_decode_B4_out_c0_exe139),
        .in_i_data_13_tpl(bb_zfp_decode_B4_out_c0_exe1410),
        .out_o_stall(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i2_0104(CONSTANT,48)
    assign c_i2_0104_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going74_zfp_decode2_valid_fifo(BLACKBOX,74)
    zfp_decode_i_llvm_fpga_pipeline_keep_going74_2_valid_fifo thei_llvm_fpga_pipeline_keep_going74_zfp_decode2_valid_fifo (
        .in_data_in(c_i2_0104_q),
        .in_stall_in(bb_zfp_decode_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going70_zfp_decode2_valid_fifo(BLACKBOX,72)
    zfp_decode_i_llvm_fpga_pipeline_keep_going70_2_valid_fifo thei_llvm_fpga_pipeline_keep_going70_zfp_decode2_valid_fifo (
        .in_data_in(c_i2_0104_q),
        .in_stall_in(bb_zfp_decode_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going70_zfp_decode2_sr(BLACKBOX,71)
    zfp_decode_i_llvm_fpga_pipeline_keep_going70_2_sr thei_llvm_fpga_pipeline_keep_going70_zfp_decode2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_valid_fifo_out_stall_out),
        .in_i_valid(bb_zfp_decode_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_sr_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_decode_B5(BLACKBOX,7)
    zfp_decode_bb_B5 thebb_zfp_decode_B5 (
        .in_acl_1117_0(c_i64_undef42_q),
        .in_acl_1117_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_exitcond54120_0(GND_q),
        .in_exitcond54120_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_forked81116_0(GND_q),
        .in_forked81116_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_forked89_0(GND_q),
        .in_forked89_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_iord_bl_in_stream_1_i_fifodata(arbiter_iord_in_stream_out_data_out1),
        .in_iord_bl_in_stream_1_i_fifovalid(arbiter_iord_in_stream_out_valid_out1),
        .in_k_058_pop19122_0(c_i32_undef12_q),
        .in_k_058_pop19122_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_lim_ext110_0(c_i32_undef12_q),
        .in_lim_ext110_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lim_ext82_pop23123_0(c_i32_undef12_q),
        .in_lim_ext82_pop23123_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notexit76121_0(GND_q),
        .in_notexit76121_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_sr_out_o_stall),
        .in_reorder_limiter_enter115_0(c_i32_undef12_q),
        .in_reorder_limiter_enter115_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_reorder_limiter_enter85_pop24124_0(c_i32_undef12_q),
        .in_reorder_limiter_enter85_pop24124_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_stall_in_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_sub_i30118_0(c_i32_undef12_q),
        .in_sub_i30118_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_tobool_i34119_0(GND_q),
        .in_tobool_i34119_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_unnamed_zfp_decode8_0(GND_q),
        .in_unnamed_zfp_decode8_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_zfp_decode_B5_out_c0_exe10),
        .out_c0_exe11(bb_zfp_decode_B5_out_c0_exe11),
        .out_c0_exe12(bb_zfp_decode_B5_out_c0_exe12),
        .out_c0_exe13(bb_zfp_decode_B5_out_c0_exe13),
        .out_c0_exe14(bb_zfp_decode_B5_out_c0_exe14),
        .out_c0_exe16(bb_zfp_decode_B5_out_c0_exe16),
        .out_c0_exe17(bb_zfp_decode_B5_out_c0_exe17),
        .out_c0_exe2217(bb_zfp_decode_B5_out_c0_exe2217),
        .out_c0_exe4219(bb_zfp_decode_B5_out_c0_exe4219),
        .out_c0_exe5220(bb_zfp_decode_B5_out_c0_exe5220),
        .out_c0_exe8223(bb_zfp_decode_B5_out_c0_exe8223),
        .out_c0_exe9(bb_zfp_decode_B5_out_c0_exe9),
        .out_c1_exe1237(bb_zfp_decode_B5_out_c1_exe1237),
        .out_c1_exe2238(bb_zfp_decode_B5_out_c1_exe2238),
        .out_c1_exe3239(bb_zfp_decode_B5_out_c1_exe3239),
        .out_c2_exe1229(bb_zfp_decode_B5_out_c2_exe1229),
        .out_exiting_stall_out(bb_zfp_decode_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_zfp_decode_B5_out_exiting_valid_out),
        .out_iord_bl_in_stream_1_o_fifoalmost_full(bb_zfp_decode_B5_out_iord_bl_in_stream_1_o_fifoalmost_full),
        .out_iord_bl_in_stream_1_o_fifoready(bb_zfp_decode_B5_out_iord_bl_in_stream_1_o_fifoready),
        .out_pipeline_valid_out(bb_zfp_decode_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_zfp_decode_B5_out_stall_in_0),
        .out_stall_out_0(bb_zfp_decode_B5_out_stall_out_0),
        .out_stall_out_1(bb_zfp_decode_B5_out_stall_out_1),
        .out_valid_in_0(bb_zfp_decode_B5_out_valid_in_0),
        .out_valid_in_1(bb_zfp_decode_B5_out_valid_in_1),
        .out_valid_out_0(bb_zfp_decode_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_zfp_decode_B5_sr_1_aunroll_x(BLACKBOX,111)
    zfp_decode_bb_B5_sr_1 thebb_zfp_decode_B5_sr_1_aunroll_x (
        .in_i_stall(bb_zfp_decode_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_zfp_decode1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_zfp_decode_B3_out_c0_exe7),
        .in_i_data_2_tpl(bb_zfp_decode_B3_out_c0_exe8),
        .in_i_data_3_tpl(bb_zfp_decode_B3_out_c0_exe6),
        .in_i_data_4_tpl(bb_zfp_decode_B3_out_c2_exe1),
        .in_i_data_5_tpl(bb_zfp_decode_B3_out_c1_exe3),
        .in_i_data_6_tpl(bb_zfp_decode_B3_out_c2_exe2),
        .in_i_data_7_tpl(bb_zfp_decode_B3_out_c2_exe3),
        .in_i_data_8_tpl(bb_zfp_decode_B3_out_c0_exe1176),
        .in_i_data_9_tpl(bb_zfp_decode_B3_out_c0_exe2177),
        .in_i_data_10_tpl(bb_zfp_decode_B3_out_c0_exe3),
        .in_i_data_11_tpl(bb_zfp_decode_B3_out_c0_exe4),
        .in_i_data_12_tpl(bb_zfp_decode_B3_out_c0_exe5),
        .out_o_stall(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // loop_limiter_zfp_decode1(BLACKBOX,90)
    zfp_decode_loop_limiter_1 theloop_limiter_zfp_decode1 (
        .in_i_stall(bb_zfp_decode_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_zfp_decode_B5_out_exiting_stall_out),
        .in_i_valid(bb_zfp_decode_B3_out_valid_out_0),
        .in_i_valid_exit(bb_zfp_decode_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_zfp_decode1_out_o_stall),
        .out_o_valid(loop_limiter_zfp_decode1_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pipeline_keep_going74_zfp_decode2_sr(BLACKBOX,73)
    zfp_decode_i_llvm_fpga_pipeline_keep_going74_2_sr thei_llvm_fpga_pipeline_keep_going74_zfp_decode2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_valid_fifo_out_stall_out),
        .in_i_valid(bb_zfp_decode_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_sr_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // arbiter_iord_in_stream(BLACKBOX,2)
    zfp_decode_arbiter_iord_in_stream thearbiter_iord_in_stream (
        .in_almost_full_in0(bb_zfp_decode_B3_out_iord_bl_in_stream_0_o_fifoalmost_full),
        .in_almost_full_in1(bb_zfp_decode_B5_out_iord_bl_in_stream_1_o_fifoalmost_full),
        .in_i_fifodata(in_iord_in_stream_i_fifodata),
        .in_i_fifovalid(in_iord_in_stream_i_fifovalid),
        .in_ready_in0(bb_zfp_decode_B3_out_iord_bl_in_stream_0_o_fifoready),
        .in_ready_in1(bb_zfp_decode_B5_out_iord_bl_in_stream_1_o_fifoready),
        .out_data_out0(arbiter_iord_in_stream_out_data_out0),
        .out_data_out1(arbiter_iord_in_stream_out_data_out1),
        .out_o_fifoalmost_full(arbiter_iord_in_stream_out_o_fifoalmost_full),
        .out_o_fifoready(arbiter_iord_in_stream_out_o_fifoready),
        .out_valid_out0(arbiter_iord_in_stream_out_valid_out0),
        .out_valid_out1(arbiter_iord_in_stream_out_valid_out1),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_decode_B3_sr_1_aunroll_x(BLACKBOX,109)
    zfp_decode_bb_B3_sr_1 thebb_zfp_decode_B3_sr_1_aunroll_x (
        .in_i_stall(bb_zfp_decode_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_zfp_decode0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_zfp_decode_B1_start_out_c1_exe1),
        .in_i_data_2_tpl(bb_zfp_decode_B1_start_out_reorder_limiter_enter),
        .out_o_stall(bb_zfp_decode_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_decode_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_zfp_decode_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_zfp_decode_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_zfp_decode_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_decode_B3(BLACKBOX,5)
    zfp_decode_bb_B3 thebb_zfp_decode_B3 (
        .in_feedback_in_20(bb_zfp_decode_B4_out_feedback_out_20),
        .in_feedback_in_21(bb_zfp_decode_B4_out_feedback_out_21),
        .in_feedback_in_22(bb_zfp_decode_B4_out_feedback_out_22),
        .in_feedback_valid_in_20(bb_zfp_decode_B4_out_feedback_valid_out_20),
        .in_feedback_valid_in_21(bb_zfp_decode_B4_out_feedback_valid_out_21),
        .in_feedback_valid_in_22(bb_zfp_decode_B4_out_feedback_valid_out_22),
        .in_forked81_0(GND_q),
        .in_forked81_1(bb_zfp_decode_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_iord_bl_in_stream_0_i_fifodata(arbiter_iord_in_stream_out_data_out0),
        .in_iord_bl_in_stream_0_i_fifovalid(arbiter_iord_in_stream_out_valid_out0),
        .in_lim_ext106_0(c_i32_undef12_q),
        .in_lim_ext106_1(bb_zfp_decode_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_sr_out_o_stall),
        .in_reorder_limiter_enter111_0(c_i32_undef12_q),
        .in_reorder_limiter_enter111_1(bb_zfp_decode_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(loop_limiter_zfp_decode1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_zfp_decode_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1176(bb_zfp_decode_B3_out_c0_exe1176),
        .out_c0_exe2177(bb_zfp_decode_B3_out_c0_exe2177),
        .out_c0_exe3(bb_zfp_decode_B3_out_c0_exe3),
        .out_c0_exe4(bb_zfp_decode_B3_out_c0_exe4),
        .out_c0_exe5(bb_zfp_decode_B3_out_c0_exe5),
        .out_c0_exe6(bb_zfp_decode_B3_out_c0_exe6),
        .out_c0_exe7(bb_zfp_decode_B3_out_c0_exe7),
        .out_c0_exe8(bb_zfp_decode_B3_out_c0_exe8),
        .out_c1_exe3(bb_zfp_decode_B3_out_c1_exe3),
        .out_c2_exe1(bb_zfp_decode_B3_out_c2_exe1),
        .out_c2_exe2(bb_zfp_decode_B3_out_c2_exe2),
        .out_c2_exe3(bb_zfp_decode_B3_out_c2_exe3),
        .out_exiting_stall_out(bb_zfp_decode_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_zfp_decode_B3_out_exiting_valid_out),
        .out_feedback_stall_out_20(bb_zfp_decode_B3_out_feedback_stall_out_20),
        .out_feedback_stall_out_21(bb_zfp_decode_B3_out_feedback_stall_out_21),
        .out_feedback_stall_out_22(bb_zfp_decode_B3_out_feedback_stall_out_22),
        .out_iord_bl_in_stream_0_o_fifoalmost_full(bb_zfp_decode_B3_out_iord_bl_in_stream_0_o_fifoalmost_full),
        .out_iord_bl_in_stream_0_o_fifoready(bb_zfp_decode_B3_out_iord_bl_in_stream_0_o_fifoready),
        .out_pipeline_valid_out(bb_zfp_decode_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_zfp_decode_B3_out_stall_out_0),
        .out_stall_out_1(bb_zfp_decode_B3_out_stall_out_1),
        .out_valid_in_0(bb_zfp_decode_B3_out_valid_in_0),
        .out_valid_in_1(bb_zfp_decode_B3_out_valid_in_1),
        .out_valid_out_0(bb_zfp_decode_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B4_sr_0_aunroll_x(BLACKBOX,110)
    zfp_decode_bb_B4_sr_0 thebb_zfp_decode_B4_sr_0_aunroll_x (
        .in_i_stall(bb_zfp_decode_B4_out_stall_out_0),
        .in_i_valid(bb_zfp_decode_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_zfp_decode_B5_out_c0_exe2217),
        .in_i_data_1_tpl(bb_zfp_decode_B5_out_c0_exe4219),
        .in_i_data_2_tpl(bb_zfp_decode_B5_out_c0_exe5220),
        .in_i_data_3_tpl(bb_zfp_decode_B5_out_c0_exe8223),
        .in_i_data_4_tpl(bb_zfp_decode_B5_out_c0_exe9),
        .in_i_data_5_tpl(bb_zfp_decode_B5_out_c0_exe10),
        .in_i_data_6_tpl(bb_zfp_decode_B5_out_c0_exe11),
        .in_i_data_7_tpl(bb_zfp_decode_B5_out_c0_exe12),
        .in_i_data_8_tpl(bb_zfp_decode_B5_out_c0_exe13),
        .in_i_data_9_tpl(bb_zfp_decode_B5_out_c0_exe14),
        .in_i_data_10_tpl(bb_zfp_decode_B5_out_c0_exe16),
        .in_i_data_11_tpl(bb_zfp_decode_B5_out_c0_exe17),
        .in_i_data_12_tpl(bb_zfp_decode_B5_out_c2_exe1229),
        .in_i_data_13_tpl(bb_zfp_decode_B5_out_c1_exe1237),
        .in_i_data_14_tpl(bb_zfp_decode_B5_out_c1_exe2238),
        .in_i_data_15_tpl(bb_zfp_decode_B5_out_c1_exe3239),
        .out_o_stall(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_15_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_decode_B4(BLACKBOX,6)
    zfp_decode_bb_B4 thebb_zfp_decode_B4 (
        .in_c0_exe106_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe117_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe128_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe139_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1410_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1611_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1712_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe22171_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42192_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe52203_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe82234_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe95_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c1_exe123714_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c1_exe223815_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c1_exe323916_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c2_exe122913_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_feedback_in_15(bb_zfp_decode_B7_out_feedback_out_15),
        .in_feedback_in_16(bb_zfp_decode_B7_out_feedback_out_16),
        .in_feedback_in_17(bb_zfp_decode_B7_out_feedback_out_17),
        .in_feedback_in_18(bb_zfp_decode_B7_out_feedback_out_18),
        .in_feedback_stall_in_20(bb_zfp_decode_B3_out_feedback_stall_out_20),
        .in_feedback_stall_in_21(bb_zfp_decode_B3_out_feedback_stall_out_21),
        .in_feedback_stall_in_22(bb_zfp_decode_B3_out_feedback_stall_out_22),
        .in_feedback_valid_in_15(bb_zfp_decode_B7_out_feedback_valid_out_15),
        .in_feedback_valid_in_16(bb_zfp_decode_B7_out_feedback_valid_out_16),
        .in_feedback_valid_in_17(bb_zfp_decode_B7_out_feedback_valid_out_17),
        .in_feedback_valid_in_18(bb_zfp_decode_B7_out_feedback_valid_out_18),
        .in_stall_in_0(bb_zfp_decode_B6_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_zfp_decode_B4_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe128(bb_zfp_decode_B4_out_c0_exe128),
        .out_c0_exe139(bb_zfp_decode_B4_out_c0_exe139),
        .out_c0_exe1410(bb_zfp_decode_B4_out_c0_exe1410),
        .out_c0_exe1611(bb_zfp_decode_B4_out_c0_exe1611),
        .out_c0_exe1712(bb_zfp_decode_B4_out_c0_exe1712),
        .out_c0_exe22171(bb_zfp_decode_B4_out_c0_exe22171),
        .out_c0_exe52203(bb_zfp_decode_B4_out_c0_exe52203),
        .out_c0_exe82234(bb_zfp_decode_B4_out_c0_exe82234),
        .out_c0_exe95(bb_zfp_decode_B4_out_c0_exe95),
        .out_c1_exe223815(bb_zfp_decode_B4_out_c1_exe223815),
        .out_feedback_out_20(bb_zfp_decode_B4_out_feedback_out_20),
        .out_feedback_out_21(bb_zfp_decode_B4_out_feedback_out_21),
        .out_feedback_out_22(bb_zfp_decode_B4_out_feedback_out_22),
        .out_feedback_stall_out_15(bb_zfp_decode_B4_out_feedback_stall_out_15),
        .out_feedback_stall_out_16(bb_zfp_decode_B4_out_feedback_stall_out_16),
        .out_feedback_stall_out_17(bb_zfp_decode_B4_out_feedback_stall_out_17),
        .out_feedback_stall_out_18(bb_zfp_decode_B4_out_feedback_stall_out_18),
        .out_feedback_valid_out_20(bb_zfp_decode_B4_out_feedback_valid_out_20),
        .out_feedback_valid_out_21(bb_zfp_decode_B4_out_feedback_valid_out_21),
        .out_feedback_valid_out_22(bb_zfp_decode_B4_out_feedback_valid_out_22),
        .out_stall_out_0(bb_zfp_decode_B4_out_stall_out_0),
        .out_ublock_sroa_0_0_pop18(bb_zfp_decode_B4_out_ublock_sroa_0_0_pop18),
        .out_ublock_sroa_12_0_pop15(bb_zfp_decode_B4_out_ublock_sroa_12_0_pop15),
        .out_ublock_sroa_6_0_pop17(bb_zfp_decode_B4_out_ublock_sroa_6_0_pop17),
        .out_ublock_sroa_9_0_pop16(bb_zfp_decode_B4_out_ublock_sroa_9_0_pop16),
        .out_valid_out_0(bb_zfp_decode_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B7_sr_0_aunroll_x(BLACKBOX,113)
    zfp_decode_bb_B7_sr_0 thebb_zfp_decode_B7_sr_0_aunroll_x (
        .in_i_stall(bb_zfp_decode_B7_out_stall_out_0),
        .in_i_valid(bb_zfp_decode_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_zfp_decode_B6_out_c0_exe1284),
        .in_i_data_1_tpl(bb_zfp_decode_B6_out_c0_exe2285),
        .in_i_data_2_tpl(bb_zfp_decode_B6_out_c0_exe3286),
        .in_i_data_3_tpl(bb_zfp_decode_B6_out_c0_exe4287),
        .in_i_data_4_tpl(bb_zfp_decode_B6_out_c0_exe7290),
        .in_i_data_5_tpl(bb_zfp_decode_B6_out_c0_exe8291),
        .in_i_data_6_tpl(bb_zfp_decode_B6_out_c0_exe9292),
        .in_i_data_7_tpl(bb_zfp_decode_B6_out_c0_exe10293),
        .in_i_data_8_tpl(bb_zfp_decode_B6_out_c0_exe11294),
        .in_i_data_9_tpl(bb_zfp_decode_B6_out_c0_exe12295),
        .in_i_data_10_tpl(bb_zfp_decode_B6_out_c0_exe13296),
        .in_i_data_11_tpl(bb_zfp_decode_B6_out_c0_exe14297),
        .out_o_stall(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_11_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_decode_B7(BLACKBOX,9)
    zfp_decode_bb_B7 thebb_zfp_decode_B7 (
        .in_c0_exe1029325_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe1129426_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1229527_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe128417_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe1329628_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1429729_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe228518_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe328619_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe428720_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe729021_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe829123_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe929224_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_feedback_stall_in_15(bb_zfp_decode_B4_out_feedback_stall_out_15),
        .in_feedback_stall_in_16(bb_zfp_decode_B4_out_feedback_stall_out_16),
        .in_feedback_stall_in_17(bb_zfp_decode_B4_out_feedback_stall_out_17),
        .in_feedback_stall_in_18(bb_zfp_decode_B4_out_feedback_stall_out_18),
        .in_stall_in_0(bb_zfp_decode_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_zfp_decode_B7_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe829123(bb_zfp_decode_B7_out_c0_exe829123),
        .out_feedback_out_15(bb_zfp_decode_B7_out_feedback_out_15),
        .out_feedback_out_16(bb_zfp_decode_B7_out_feedback_out_16),
        .out_feedback_out_17(bb_zfp_decode_B7_out_feedback_out_17),
        .out_feedback_out_18(bb_zfp_decode_B7_out_feedback_out_18),
        .out_feedback_valid_out_15(bb_zfp_decode_B7_out_feedback_valid_out_15),
        .out_feedback_valid_out_16(bb_zfp_decode_B7_out_feedback_valid_out_16),
        .out_feedback_valid_out_17(bb_zfp_decode_B7_out_feedback_valid_out_17),
        .out_feedback_valid_out_18(bb_zfp_decode_B7_out_feedback_valid_out_18),
        .out_intel_reserved_ffwd_1_0(bb_zfp_decode_B7_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_zfp_decode_B7_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_zfp_decode_B7_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_zfp_decode_B7_out_intel_reserved_ffwd_4_0),
        .out_stall_in_0(bb_zfp_decode_B7_out_stall_in_0),
        .out_stall_out_0(bb_zfp_decode_B7_out_stall_out_0),
        .out_valid_out_0(bb_zfp_decode_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B2_sr_0_aunroll_x(BLACKBOX,108)
    zfp_decode_bb_B2_sr_0 thebb_zfp_decode_B2_sr_0_aunroll_x (
        .in_i_stall(bb_zfp_decode_B2_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_zfp_decode_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_zfp_decode_B7_out_c0_exe829123),
        .out_o_stall(bb_zfp_decode_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_decode_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_zfp_decode_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_decode_B2_aunroll_x(BLACKBOX,107)
    zfp_decode_bb_B2 thebb_zfp_decode_B2_aunroll_x (
        .in_c0_exe829122_0(bb_zfp_decode_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_zfp_decode_B7_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_zfp_decode_B7_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_zfp_decode_B7_out_intel_reserved_ffwd_4_0),
        .in_stall_in_0(bb_zfp_decode_B9_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_zfp_decode_B2_sr_0_aunroll_x_out_o_valid),
        .in_wgl_10_exit_exit_stall_out(bb_zfp_decode_B1_start_out_wgl_10_enter_exit_stall_out),
        .in_wgl_10_exit_exit_valid_out(bb_zfp_decode_B1_start_out_wgl_10_enter_exit_valid_out),
        .out_stall_out_0(bb_zfp_decode_B2_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_zfp_decode_B2_aunroll_x_out_valid_out_0),
        .out_wgl_10_exit_exit_stall_in(bb_zfp_decode_B2_aunroll_x_out_wgl_10_exit_exit_stall_in),
        .out_wgl_10_exit_exit_valid_in(bb_zfp_decode_B2_aunroll_x_out_wgl_10_exit_exit_valid_in),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_zfp_decode_B2_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_zfp_decode_B2_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(bb_zfp_decode_B2_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going79_zfp_decode2_valid_fifo(BLACKBOX,76)
    zfp_decode_i_llvm_fpga_pipeline_keep_going79_2_valid_fifo thei_llvm_fpga_pipeline_keep_going79_zfp_decode2_valid_fifo (
        .in_data_in(c_i2_0104_q),
        .in_stall_in(bb_zfp_decode_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going79_zfp_decode2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going79_zfp_decode2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going79_zfp_decode2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_zfp_decode0(BLACKBOX,89)
    zfp_decode_loop_limiter_0 theloop_limiter_zfp_decode0 (
        .in_i_stall(bb_zfp_decode_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_zfp_decode_B3_out_exiting_stall_out),
        .in_i_valid(bb_zfp_decode_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_zfp_decode_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_zfp_decode0_out_o_stall),
        .out_o_valid(loop_limiter_zfp_decode0_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pipeline_keep_going79_zfp_decode2_sr(BLACKBOX,75)
    zfp_decode_i_llvm_fpga_pipeline_keep_going79_2_sr thei_llvm_fpga_pipeline_keep_going79_zfp_decode2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going79_zfp_decode2_valid_fifo_out_stall_out),
        .in_i_valid(bb_zfp_decode_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going79_zfp_decode2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going79_zfp_decode2_sr_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_decode_B0_runOnce(BLACKBOX,3)
    zfp_decode_bb_B0_runOnce thebb_zfp_decode_B0_runOnce (
        .in_stall_in_0(bb_zfp_decode_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_zfp_decode_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_zfp_decode_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B1_start_sr_1_aunroll_x(BLACKBOX,106)
    zfp_decode_bb_B1_start_sr_1 thebb_zfp_decode_B1_start_sr_1_aunroll_x (
        .in_i_stall(bb_zfp_decode_B1_start_out_stall_out_1),
        .in_i_valid(bb_zfp_decode_B0_runOnce_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_zfp_decode_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_decode_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_zfp_decode_B1_start_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_zfp_decode_B8(BLACKBOX,10)
    zfp_decode_bb_B8 thebb_zfp_decode_B8 (
        .in_feedback_stall_in_1(bb_zfp_decode_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_zfp_decode_i_fifoready(in_iowr_bl_return_zfp_decode_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_zfp_decode_B8_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_zfp_decode_B8_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_zfp_decode_B8_out_feedback_valid_out_1),
        .out_iowr_bl_return_zfp_decode_o_fifodata(bb_zfp_decode_B8_out_iowr_bl_return_zfp_decode_o_fifodata),
        .out_iowr_bl_return_zfp_decode_o_fifovalid(bb_zfp_decode_B8_out_iowr_bl_return_zfp_decode_o_fifovalid),
        .out_stall_in_0(bb_zfp_decode_B8_out_stall_in_0),
        .out_stall_out_0(bb_zfp_decode_B8_out_stall_out_0),
        .out_valid_out_0(bb_zfp_decode_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B1_start(BLACKBOX,4)
    zfp_decode_bb_B1_start thebb_zfp_decode_B1_start (
        .in_feedback_in_1(bb_zfp_decode_B8_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_zfp_decode_B8_out_feedback_valid_out_1),
        .in_forked_0(GND_q),
        .in_forked_1(bb_zfp_decode_B1_start_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_iord_bl_call_zfp_decode_i_fifodata(in_iord_bl_call_zfp_decode_i_fifodata),
        .in_iord_bl_call_zfp_decode_i_fifovalid(in_iord_bl_call_zfp_decode_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going79_zfp_decode2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_zfp_decode0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going79_zfp_decode2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_zfp_decode_B1_start_sr_1_aunroll_x_out_o_valid),
        .in_wgl_10_enter_exit_stall_in(bb_zfp_decode_B2_aunroll_x_out_wgl_10_exit_exit_stall_in),
        .in_wgl_10_enter_exit_valid_in(bb_zfp_decode_B2_aunroll_x_out_wgl_10_exit_exit_valid_in),
        .out_c1_exe1(bb_zfp_decode_B1_start_out_c1_exe1),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_zfp_decode_B1_start_out_feedback_stall_out_1),
        .out_iord_bl_call_zfp_decode_o_fifoalmost_full(bb_zfp_decode_B1_start_out_iord_bl_call_zfp_decode_o_fifoalmost_full),
        .out_iord_bl_call_zfp_decode_o_fifoready(bb_zfp_decode_B1_start_out_iord_bl_call_zfp_decode_o_fifoready),
        .out_pipeline_valid_out(bb_zfp_decode_B1_start_out_pipeline_valid_out),
        .out_reorder_limiter_enter(bb_zfp_decode_B1_start_out_reorder_limiter_enter),
        .out_stall_out_0(bb_zfp_decode_B1_start_out_stall_out_0),
        .out_stall_out_1(bb_zfp_decode_B1_start_out_stall_out_1),
        .out_valid_in_0(bb_zfp_decode_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_zfp_decode_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_zfp_decode_B1_start_out_valid_out_0),
        .out_wgl_10_enter_exit_stall_out(bb_zfp_decode_B1_start_out_wgl_10_enter_exit_stall_out),
        .out_wgl_10_enter_exit_valid_out(bb_zfp_decode_B1_start_out_wgl_10_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_zfp_decode_o_fifoalmost_full(GPOUT,91)
    assign out_iord_bl_call_zfp_decode_o_fifoalmost_full = bb_zfp_decode_B1_start_out_iord_bl_call_zfp_decode_o_fifoalmost_full;

    // out_iord_bl_call_zfp_decode_o_fifoready(GPOUT,92)
    assign out_iord_bl_call_zfp_decode_o_fifoready = bb_zfp_decode_B1_start_out_iord_bl_call_zfp_decode_o_fifoready;

    // out_iord_in_stream_o_fifoalmost_full(GPOUT,93)
    assign out_iord_in_stream_o_fifoalmost_full = arbiter_iord_in_stream_out_o_fifoalmost_full;

    // out_iord_in_stream_o_fifoready(GPOUT,94)
    assign out_iord_in_stream_o_fifoready = arbiter_iord_in_stream_out_o_fifoready;

    // out_iowr_bl_out_stream_o_fifodata(GPOUT,95)
    assign out_iowr_bl_out_stream_o_fifodata = bb_zfp_decode_B9_aunroll_x_out_iowr_bl_out_stream_o_fifodata;

    // out_iowr_bl_out_stream_o_fifovalid(GPOUT,96)
    assign out_iowr_bl_out_stream_o_fifovalid = bb_zfp_decode_B9_aunroll_x_out_iowr_bl_out_stream_o_fifovalid;

    // out_iowr_bl_return_zfp_decode_o_fifodata(GPOUT,97)
    assign out_iowr_bl_return_zfp_decode_o_fifodata = bb_zfp_decode_B8_out_iowr_bl_return_zfp_decode_o_fifodata;

    // out_iowr_bl_return_zfp_decode_o_fifovalid(GPOUT,98)
    assign out_iowr_bl_return_zfp_decode_o_fifovalid = bb_zfp_decode_B8_out_iowr_bl_return_zfp_decode_o_fifovalid;

    // out_stall_out(GPOUT,99)
    assign out_stall_out = bb_zfp_decode_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,100)
    assign out_valid_out = GND_q;

    // zfp_decode_B1_start_x(EXTIFACE,101)
    assign zfp_decode_B1_start_x_i_capture = GND_q;
    assign zfp_decode_B1_start_x_i_clear = GND_q;
    assign zfp_decode_B1_start_x_i_enable = VCC_q;
    assign zfp_decode_B1_start_x_i_shift = GND_q;
    assign zfp_decode_B1_start_x_i_stall_pred = bb_zfp_decode_B1_start_sr_1_aunroll_x_out_o_stall;
    assign zfp_decode_B1_start_x_i_stall_succ = bb_zfp_decode_B8_out_stall_in_0;
    assign zfp_decode_B1_start_x_i_valid_loop = bb_zfp_decode_B1_start_out_valid_in_0;
    assign zfp_decode_B1_start_x_i_valid_pred = bb_zfp_decode_B1_start_out_valid_in_1;
    assign zfp_decode_B1_start_x_i_valid_succ = bb_zfp_decode_B8_out_valid_out_0;
    assign zfp_decode_B1_start_x_i_capture_bitsignaltemp = zfp_decode_B1_start_x_i_capture[0];
    assign zfp_decode_B1_start_x_i_clear_bitsignaltemp = zfp_decode_B1_start_x_i_clear[0];
    assign zfp_decode_B1_start_x_i_enable_bitsignaltemp = zfp_decode_B1_start_x_i_enable[0];
    assign zfp_decode_B1_start_x_i_shift_bitsignaltemp = zfp_decode_B1_start_x_i_shift[0];
    assign zfp_decode_B1_start_x_i_stall_pred_bitsignaltemp = zfp_decode_B1_start_x_i_stall_pred[0];
    assign zfp_decode_B1_start_x_i_stall_succ_bitsignaltemp = zfp_decode_B1_start_x_i_stall_succ[0];
    assign zfp_decode_B1_start_x_i_valid_loop_bitsignaltemp = zfp_decode_B1_start_x_i_valid_loop[0];
    assign zfp_decode_B1_start_x_i_valid_pred_bitsignaltemp = zfp_decode_B1_start_x_i_valid_pred[0];
    assign zfp_decode_B1_start_x_i_valid_succ_bitsignaltemp = zfp_decode_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_decode.B1.start")
    ) thezfp_decode_B1_start_x (
        .i_capture(zfp_decode_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(zfp_decode_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(zfp_decode_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(zfp_decode_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_decode_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_decode_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_decode_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_decode_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_decode_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // zfp_decode_B3_x(EXTIFACE,102)
    assign zfp_decode_B3_x_i_capture = GND_q;
    assign zfp_decode_B3_x_i_clear = GND_q;
    assign zfp_decode_B3_x_i_enable = VCC_q;
    assign zfp_decode_B3_x_i_shift = GND_q;
    assign zfp_decode_B3_x_i_stall_pred = loop_limiter_zfp_decode0_out_o_stall;
    assign zfp_decode_B3_x_i_stall_succ = bb_zfp_decode_B7_out_stall_in_0;
    assign zfp_decode_B3_x_i_valid_loop = bb_zfp_decode_B3_out_valid_in_0;
    assign zfp_decode_B3_x_i_valid_pred = bb_zfp_decode_B3_out_valid_in_1;
    assign zfp_decode_B3_x_i_valid_succ = bb_zfp_decode_B7_out_valid_out_0;
    assign zfp_decode_B3_x_i_capture_bitsignaltemp = zfp_decode_B3_x_i_capture[0];
    assign zfp_decode_B3_x_i_clear_bitsignaltemp = zfp_decode_B3_x_i_clear[0];
    assign zfp_decode_B3_x_i_enable_bitsignaltemp = zfp_decode_B3_x_i_enable[0];
    assign zfp_decode_B3_x_i_shift_bitsignaltemp = zfp_decode_B3_x_i_shift[0];
    assign zfp_decode_B3_x_i_stall_pred_bitsignaltemp = zfp_decode_B3_x_i_stall_pred[0];
    assign zfp_decode_B3_x_i_stall_succ_bitsignaltemp = zfp_decode_B3_x_i_stall_succ[0];
    assign zfp_decode_B3_x_i_valid_loop_bitsignaltemp = zfp_decode_B3_x_i_valid_loop[0];
    assign zfp_decode_B3_x_i_valid_pred_bitsignaltemp = zfp_decode_B3_x_i_valid_pred[0];
    assign zfp_decode_B3_x_i_valid_succ_bitsignaltemp = zfp_decode_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_decode.B3")
    ) thezfp_decode_B3_x (
        .i_capture(zfp_decode_B3_x_i_capture_bitsignaltemp),
        .i_clear(zfp_decode_B3_x_i_clear_bitsignaltemp),
        .i_enable(zfp_decode_B3_x_i_enable_bitsignaltemp),
        .i_shift(zfp_decode_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_decode_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_decode_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_decode_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_decode_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_decode_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // zfp_decode_B5_x(EXTIFACE,103)
    assign zfp_decode_B5_x_i_capture = GND_q;
    assign zfp_decode_B5_x_i_clear = GND_q;
    assign zfp_decode_B5_x_i_enable = VCC_q;
    assign zfp_decode_B5_x_i_shift = GND_q;
    assign zfp_decode_B5_x_i_stall_pred = loop_limiter_zfp_decode1_out_o_stall;
    assign zfp_decode_B5_x_i_stall_succ = bb_zfp_decode_B5_out_stall_in_0;
    assign zfp_decode_B5_x_i_valid_loop = bb_zfp_decode_B5_out_valid_in_0;
    assign zfp_decode_B5_x_i_valid_pred = bb_zfp_decode_B5_out_valid_in_1;
    assign zfp_decode_B5_x_i_valid_succ = bb_zfp_decode_B5_out_valid_out_0;
    assign zfp_decode_B5_x_i_capture_bitsignaltemp = zfp_decode_B5_x_i_capture[0];
    assign zfp_decode_B5_x_i_clear_bitsignaltemp = zfp_decode_B5_x_i_clear[0];
    assign zfp_decode_B5_x_i_enable_bitsignaltemp = zfp_decode_B5_x_i_enable[0];
    assign zfp_decode_B5_x_i_shift_bitsignaltemp = zfp_decode_B5_x_i_shift[0];
    assign zfp_decode_B5_x_i_stall_pred_bitsignaltemp = zfp_decode_B5_x_i_stall_pred[0];
    assign zfp_decode_B5_x_i_stall_succ_bitsignaltemp = zfp_decode_B5_x_i_stall_succ[0];
    assign zfp_decode_B5_x_i_valid_loop_bitsignaltemp = zfp_decode_B5_x_i_valid_loop[0];
    assign zfp_decode_B5_x_i_valid_pred_bitsignaltemp = zfp_decode_B5_x_i_valid_pred[0];
    assign zfp_decode_B5_x_i_valid_succ_bitsignaltemp = zfp_decode_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_decode.B5")
    ) thezfp_decode_B5_x (
        .i_capture(zfp_decode_B5_x_i_capture_bitsignaltemp),
        .i_clear(zfp_decode_B5_x_i_clear_bitsignaltemp),
        .i_enable(zfp_decode_B5_x_i_enable_bitsignaltemp),
        .i_shift(zfp_decode_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_decode_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_decode_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_decode_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_decode_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_decode_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // zfp_decode_B6_x(EXTIFACE,104)
    assign zfp_decode_B6_x_i_capture = GND_q;
    assign zfp_decode_B6_x_i_clear = GND_q;
    assign zfp_decode_B6_x_i_enable = VCC_q;
    assign zfp_decode_B6_x_i_shift = GND_q;
    assign zfp_decode_B6_x_i_stall_pred = bb_zfp_decode_B6_sr_1_aunroll_x_out_o_stall;
    assign zfp_decode_B6_x_i_stall_succ = bb_zfp_decode_B6_out_stall_in_0;
    assign zfp_decode_B6_x_i_valid_loop = bb_zfp_decode_B6_out_profile_loop_o_valid;
    assign zfp_decode_B6_x_i_valid_pred = bb_zfp_decode_B6_out_valid_in_1;
    assign zfp_decode_B6_x_i_valid_succ = bb_zfp_decode_B6_out_valid_out_0;
    assign zfp_decode_B6_x_i_capture_bitsignaltemp = zfp_decode_B6_x_i_capture[0];
    assign zfp_decode_B6_x_i_clear_bitsignaltemp = zfp_decode_B6_x_i_clear[0];
    assign zfp_decode_B6_x_i_enable_bitsignaltemp = zfp_decode_B6_x_i_enable[0];
    assign zfp_decode_B6_x_i_shift_bitsignaltemp = zfp_decode_B6_x_i_shift[0];
    assign zfp_decode_B6_x_i_stall_pred_bitsignaltemp = zfp_decode_B6_x_i_stall_pred[0];
    assign zfp_decode_B6_x_i_stall_succ_bitsignaltemp = zfp_decode_B6_x_i_stall_succ[0];
    assign zfp_decode_B6_x_i_valid_loop_bitsignaltemp = zfp_decode_B6_x_i_valid_loop[0];
    assign zfp_decode_B6_x_i_valid_pred_bitsignaltemp = zfp_decode_B6_x_i_valid_pred[0];
    assign zfp_decode_B6_x_i_valid_succ_bitsignaltemp = zfp_decode_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_decode.B6")
    ) thezfp_decode_B6_x (
        .i_capture(zfp_decode_B6_x_i_capture_bitsignaltemp),
        .i_clear(zfp_decode_B6_x_i_clear_bitsignaltemp),
        .i_enable(zfp_decode_B6_x_i_enable_bitsignaltemp),
        .i_shift(zfp_decode_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_decode_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_decode_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_decode_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_decode_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_decode_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // zfp_decode_B9_x(EXTIFACE,105)
    assign zfp_decode_B9_x_i_capture = GND_q;
    assign zfp_decode_B9_x_i_clear = GND_q;
    assign zfp_decode_B9_x_i_enable = VCC_q;
    assign zfp_decode_B9_x_i_shift = GND_q;
    assign zfp_decode_B9_x_i_stall_pred = bb_zfp_decode_B9_sr_1_aunroll_x_out_o_stall;
    assign zfp_decode_B9_x_i_stall_succ = bb_zfp_decode_B9_aunroll_x_out_stall_in_0;
    assign zfp_decode_B9_x_i_valid_loop = bb_zfp_decode_B9_aunroll_x_out_profile_loop_o_valid;
    assign zfp_decode_B9_x_i_valid_pred = bb_zfp_decode_B9_aunroll_x_out_valid_in_1;
    assign zfp_decode_B9_x_i_valid_succ = bb_zfp_decode_B9_aunroll_x_out_valid_out_0;
    assign zfp_decode_B9_x_i_capture_bitsignaltemp = zfp_decode_B9_x_i_capture[0];
    assign zfp_decode_B9_x_i_clear_bitsignaltemp = zfp_decode_B9_x_i_clear[0];
    assign zfp_decode_B9_x_i_enable_bitsignaltemp = zfp_decode_B9_x_i_enable[0];
    assign zfp_decode_B9_x_i_shift_bitsignaltemp = zfp_decode_B9_x_i_shift[0];
    assign zfp_decode_B9_x_i_stall_pred_bitsignaltemp = zfp_decode_B9_x_i_stall_pred[0];
    assign zfp_decode_B9_x_i_stall_succ_bitsignaltemp = zfp_decode_B9_x_i_stall_succ[0];
    assign zfp_decode_B9_x_i_valid_loop_bitsignaltemp = zfp_decode_B9_x_i_valid_loop[0];
    assign zfp_decode_B9_x_i_valid_pred_bitsignaltemp = zfp_decode_B9_x_i_valid_pred[0];
    assign zfp_decode_B9_x_i_valid_succ_bitsignaltemp = zfp_decode_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_decode.B9")
    ) thezfp_decode_B9_x (
        .i_capture(zfp_decode_B9_x_i_capture_bitsignaltemp),
        .i_clear(zfp_decode_B9_x_i_clear_bitsignaltemp),
        .i_enable(zfp_decode_B9_x_i_enable_bitsignaltemp),
        .i_shift(zfp_decode_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_decode_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_decode_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_decode_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_decode_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_decode_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // rst_sync(RESETSYNC,117)
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
