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

// SystemVerilog created from zfp_1d_decompress_function
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_in_stream,
    input wire [63:0] in_arg_out_stream,
    input wire [63:0] in_arg_return,
    input wire [0:0] in_iord_bl_call_zfp_1d_decompress_i_fifodata,
    input wire [0:0] in_iord_bl_call_zfp_1d_decompress_i_fifovalid,
    input wire [63:0] in_iord_in_stream_i_fifodata,
    input wire [0:0] in_iord_in_stream_i_fifovalid,
    input wire [0:0] in_iowr_bl_out_stream_i_fifoready,
    input wire [0:0] in_iowr_bl_return_zfp_1d_decompress_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_zfp_1d_decompress_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_zfp_1d_decompress_o_fifoready,
    output wire [0:0] out_iord_in_stream_o_fifoalmost_full,
    output wire [0:0] out_iord_in_stream_o_fifoready,
    output wire [63:0] out_iowr_bl_out_stream_o_fifodata,
    output wire [0:0] out_iowr_bl_out_stream_o_fifovalid,
    output wire [0:0] out_iowr_bl_return_zfp_1d_decompress_o_fifodata,
    output wire [0:0] out_iowr_bl_return_zfp_1d_decompress_o_fifovalid,
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
    wire [0:0] bb_zfp_1d_decompress_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_zfp_1d_decompress_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_zfp_1d_decompress_B1_start_out_feedback_stall_out_1;
    wire [0:0] bb_zfp_1d_decompress_B1_start_out_iord_bl_call_zfp_1d_decompress_o_fifoalmost_full;
    wire [0:0] bb_zfp_1d_decompress_B1_start_out_iord_bl_call_zfp_1d_decompress_o_fifoready;
    wire [0:0] bb_zfp_1d_decompress_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_zfp_1d_decompress_B1_start_out_stall_out_0;
    wire [0:0] bb_zfp_1d_decompress_B1_start_out_stall_out_1;
    wire [0:0] bb_zfp_1d_decompress_B1_start_out_valid_in_0;
    wire [0:0] bb_zfp_1d_decompress_B1_start_out_valid_in_1;
    wire [0:0] bb_zfp_1d_decompress_B1_start_out_valid_out_0;
    wire [0:0] bb_zfp_1d_decompress_B3_out_c0_exe1123;
    wire [0:0] bb_zfp_1d_decompress_B3_out_c0_exe2;
    wire [31:0] bb_zfp_1d_decompress_B3_out_c0_exe3;
    wire [31:0] bb_zfp_1d_decompress_B3_out_c1_exe3;
    wire [63:0] bb_zfp_1d_decompress_B3_out_c2_exe1;
    wire [0:0] bb_zfp_1d_decompress_B3_out_c2_exe2;
    wire [0:0] bb_zfp_1d_decompress_B3_out_c2_exe3;
    wire [0:0] bb_zfp_1d_decompress_B3_out_exiting_stall_out;
    wire [0:0] bb_zfp_1d_decompress_B3_out_exiting_valid_out;
    wire [0:0] bb_zfp_1d_decompress_B3_out_feedback_stall_out_13;
    wire [0:0] bb_zfp_1d_decompress_B3_out_feedback_stall_out_14;
    wire [0:0] bb_zfp_1d_decompress_B3_out_feedback_stall_out_15;
    wire [0:0] bb_zfp_1d_decompress_B3_out_feedback_stall_out_16;
    wire [0:0] bb_zfp_1d_decompress_B3_out_feedback_stall_out_18;
    wire [0:0] bb_zfp_1d_decompress_B3_out_feedback_stall_out_19;
    wire [0:0] bb_zfp_1d_decompress_B3_out_feedback_stall_out_20;
    wire [0:0] bb_zfp_1d_decompress_B3_out_iord_bl_in_stream_0_o_fifoalmost_full;
    wire [0:0] bb_zfp_1d_decompress_B3_out_iord_bl_in_stream_0_o_fifoready;
    wire [0:0] bb_zfp_1d_decompress_B3_out_pipeline_valid_out;
    wire [0:0] bb_zfp_1d_decompress_B3_out_stall_out_0;
    wire [0:0] bb_zfp_1d_decompress_B3_out_stall_out_1;
    wire [63:0] bb_zfp_1d_decompress_B3_out_ublock_i_sroa_0_0_pop16;
    wire [63:0] bb_zfp_1d_decompress_B3_out_ublock_i_sroa_12_0_pop13;
    wire [63:0] bb_zfp_1d_decompress_B3_out_ublock_i_sroa_6_0_pop15;
    wire [63:0] bb_zfp_1d_decompress_B3_out_ublock_i_sroa_9_0_pop14;
    wire [0:0] bb_zfp_1d_decompress_B3_out_valid_in_0;
    wire [0:0] bb_zfp_1d_decompress_B3_out_valid_in_1;
    wire [0:0] bb_zfp_1d_decompress_B3_out_valid_out_0;
    wire [0:0] bb_zfp_1d_decompress_B4_out_c0_exe2133;
    wire [31:0] bb_zfp_1d_decompress_B4_out_c0_exe4135;
    wire [31:0] bb_zfp_1d_decompress_B4_out_c0_exe7;
    wire [0:0] bb_zfp_1d_decompress_B4_out_c0_exe8;
    wire [0:0] bb_zfp_1d_decompress_B4_out_c0_exe9;
    wire [63:0] bb_zfp_1d_decompress_B4_out_c1_exe10;
    wire [63:0] bb_zfp_1d_decompress_B4_out_c1_exe1149;
    wire [63:0] bb_zfp_1d_decompress_B4_out_c1_exe2150;
    wire [63:0] bb_zfp_1d_decompress_B4_out_c1_exe3151;
    wire [63:0] bb_zfp_1d_decompress_B4_out_c1_exe4;
    wire [63:0] bb_zfp_1d_decompress_B4_out_c1_exe5;
    wire [63:0] bb_zfp_1d_decompress_B4_out_c1_exe6;
    wire [63:0] bb_zfp_1d_decompress_B4_out_c1_exe7;
    wire [63:0] bb_zfp_1d_decompress_B4_out_c1_exe8;
    wire [63:0] bb_zfp_1d_decompress_B4_out_c1_exe9;
    wire [0:0] bb_zfp_1d_decompress_B4_out_c2_exe1141;
    wire [0:0] bb_zfp_1d_decompress_B4_out_exiting_stall_out;
    wire [0:0] bb_zfp_1d_decompress_B4_out_exiting_valid_out;
    wire [0:0] bb_zfp_1d_decompress_B4_out_iord_bl_in_stream_1_o_fifoalmost_full;
    wire [0:0] bb_zfp_1d_decompress_B4_out_iord_bl_in_stream_1_o_fifoready;
    wire [0:0] bb_zfp_1d_decompress_B4_out_pipeline_valid_out;
    wire [0:0] bb_zfp_1d_decompress_B4_out_stall_in_0;
    wire [0:0] bb_zfp_1d_decompress_B4_out_stall_out_0;
    wire [0:0] bb_zfp_1d_decompress_B4_out_stall_out_1;
    wire [0:0] bb_zfp_1d_decompress_B4_out_valid_in_0;
    wire [0:0] bb_zfp_1d_decompress_B4_out_valid_in_1;
    wire [0:0] bb_zfp_1d_decompress_B4_out_valid_out_0;
    wire [63:0] bb_zfp_1d_decompress_B5_out_feedback_out_13;
    wire [63:0] bb_zfp_1d_decompress_B5_out_feedback_out_14;
    wire [63:0] bb_zfp_1d_decompress_B5_out_feedback_out_15;
    wire [63:0] bb_zfp_1d_decompress_B5_out_feedback_out_16;
    wire [63:0] bb_zfp_1d_decompress_B5_out_feedback_out_18;
    wire [31:0] bb_zfp_1d_decompress_B5_out_feedback_out_19;
    wire [0:0] bb_zfp_1d_decompress_B5_out_feedback_out_20;
    wire [0:0] bb_zfp_1d_decompress_B5_out_feedback_valid_out_13;
    wire [0:0] bb_zfp_1d_decompress_B5_out_feedback_valid_out_14;
    wire [0:0] bb_zfp_1d_decompress_B5_out_feedback_valid_out_15;
    wire [0:0] bb_zfp_1d_decompress_B5_out_feedback_valid_out_16;
    wire [0:0] bb_zfp_1d_decompress_B5_out_feedback_valid_out_18;
    wire [0:0] bb_zfp_1d_decompress_B5_out_feedback_valid_out_19;
    wire [0:0] bb_zfp_1d_decompress_B5_out_feedback_valid_out_20;
    wire [63:0] bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_zfp_1d_decompress_B5_out_stall_in_0;
    wire [0:0] bb_zfp_1d_decompress_B5_out_stall_out_0;
    wire [0:0] bb_zfp_1d_decompress_B5_out_valid_out_0;
    wire [63:0] bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_10_0;
    wire [63:0] bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_11_0;
    wire [63:0] bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_12_0;
    wire [63:0] bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_zfp_1d_decompress_B7_out_stall_out_0;
    wire [0:0] bb_zfp_1d_decompress_B7_out_valid_out_0;
    wire [63:0] bb_zfp_1d_decompress_B8_out_iowr_bl_out_stream_o_fifodata;
    wire [0:0] bb_zfp_1d_decompress_B8_out_iowr_bl_out_stream_o_fifovalid;
    wire [0:0] bb_zfp_1d_decompress_B8_out_profile_loop_o_valid;
    wire [0:0] bb_zfp_1d_decompress_B8_out_stall_in_0;
    wire [0:0] bb_zfp_1d_decompress_B8_out_stall_out_1;
    wire [0:0] bb_zfp_1d_decompress_B8_out_valid_in_1;
    wire [0:0] bb_zfp_1d_decompress_B8_out_valid_out_0;
    wire [0:0] bb_zfp_1d_decompress_B9_out_feedback_out_1;
    wire [0:0] bb_zfp_1d_decompress_B9_out_feedback_valid_out_1;
    wire [0:0] bb_zfp_1d_decompress_B9_out_iowr_bl_return_zfp_1d_decompress_o_fifodata;
    wire [0:0] bb_zfp_1d_decompress_B9_out_iowr_bl_return_zfp_1d_decompress_o_fifovalid;
    wire [0:0] bb_zfp_1d_decompress_B9_out_stall_in_0;
    wire [0:0] bb_zfp_1d_decompress_B9_out_stall_out_0;
    wire [0:0] bb_zfp_1d_decompress_B9_out_valid_out_0;
    wire [1:0] c_i2_054_q;
    wire [31:0] c_i32_undef14_q;
    wire [63:0] c_i64_undef12_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_zfp_1d_decompress0_out_o_stall;
    wire [0:0] loop_limiter_zfp_1d_decompress0_out_o_valid;
    wire [0:0] loop_limiter_zfp_1d_decompress1_out_o_stall;
    wire [0:0] loop_limiter_zfp_1d_decompress1_out_o_valid;
    wire [0:0] zfp_1d_decompress_B1_start_x_i_capture;
    wire zfp_1d_decompress_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B1_start_x_i_clear;
    wire zfp_1d_decompress_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B1_start_x_i_enable;
    wire zfp_1d_decompress_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B1_start_x_i_shift;
    wire zfp_1d_decompress_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B1_start_x_i_stall_pred;
    wire zfp_1d_decompress_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B1_start_x_i_stall_succ;
    wire zfp_1d_decompress_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B1_start_x_i_valid_loop;
    wire zfp_1d_decompress_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B1_start_x_i_valid_pred;
    wire zfp_1d_decompress_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B1_start_x_i_valid_succ;
    wire zfp_1d_decompress_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B3_x_i_capture;
    wire zfp_1d_decompress_B3_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B3_x_i_clear;
    wire zfp_1d_decompress_B3_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B3_x_i_enable;
    wire zfp_1d_decompress_B3_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B3_x_i_shift;
    wire zfp_1d_decompress_B3_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B3_x_i_stall_pred;
    wire zfp_1d_decompress_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B3_x_i_stall_succ;
    wire zfp_1d_decompress_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B3_x_i_valid_loop;
    wire zfp_1d_decompress_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B3_x_i_valid_pred;
    wire zfp_1d_decompress_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B3_x_i_valid_succ;
    wire zfp_1d_decompress_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B4_x_i_capture;
    wire zfp_1d_decompress_B4_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B4_x_i_clear;
    wire zfp_1d_decompress_B4_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B4_x_i_enable;
    wire zfp_1d_decompress_B4_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B4_x_i_shift;
    wire zfp_1d_decompress_B4_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B4_x_i_stall_pred;
    wire zfp_1d_decompress_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B4_x_i_stall_succ;
    wire zfp_1d_decompress_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B4_x_i_valid_loop;
    wire zfp_1d_decompress_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B4_x_i_valid_pred;
    wire zfp_1d_decompress_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B4_x_i_valid_succ;
    wire zfp_1d_decompress_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B6_x_i_capture;
    wire zfp_1d_decompress_B6_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B6_x_i_clear;
    wire zfp_1d_decompress_B6_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B6_x_i_enable;
    wire zfp_1d_decompress_B6_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B6_x_i_shift;
    wire zfp_1d_decompress_B6_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B6_x_i_stall_pred;
    wire zfp_1d_decompress_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B6_x_i_stall_succ;
    wire zfp_1d_decompress_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B6_x_i_valid_loop;
    wire zfp_1d_decompress_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B6_x_i_valid_pred;
    wire zfp_1d_decompress_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B6_x_i_valid_succ;
    wire zfp_1d_decompress_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B8_x_i_capture;
    wire zfp_1d_decompress_B8_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B8_x_i_clear;
    wire zfp_1d_decompress_B8_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B8_x_i_enable;
    wire zfp_1d_decompress_B8_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B8_x_i_shift;
    wire zfp_1d_decompress_B8_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B8_x_i_stall_pred;
    wire zfp_1d_decompress_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B8_x_i_stall_succ;
    wire zfp_1d_decompress_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B8_x_i_valid_loop;
    wire zfp_1d_decompress_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B8_x_i_valid_pred;
    wire zfp_1d_decompress_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_1d_decompress_B8_x_i_valid_succ;
    wire zfp_1d_decompress_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_zfp_1d_decompress_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_1d_decompress_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_1d_decompress_B2_aunroll_x_out_stall_out_0;
    wire [0:0] bb_zfp_1d_decompress_B2_aunroll_x_out_valid_out_0;
    wire [63:0] bb_zfp_1d_decompress_B2_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] bb_zfp_1d_decompress_B2_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] bb_zfp_1d_decompress_B2_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] bb_zfp_1d_decompress_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_1d_decompress_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_1d_decompress_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_1d_decompress_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_1d_decompress_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [63:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [63:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [63:0] bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [63:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [63:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [63:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [63:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [63:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [63:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [63:0] bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [63:0] bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [63:0] bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [63:0] bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [63:0] bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [0:0] bb_zfp_1d_decompress_B6_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] bb_zfp_1d_decompress_B6_aunroll_x_out_stall_in_0;
    wire [0:0] bb_zfp_1d_decompress_B6_aunroll_x_out_stall_out_1;
    wire [0:0] bb_zfp_1d_decompress_B6_aunroll_x_out_valid_in_1;
    wire [0:0] bb_zfp_1d_decompress_B6_aunroll_x_out_valid_out_0;
    wire [0:0] bb_zfp_1d_decompress_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_1d_decompress_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_1d_decompress_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_1d_decompress_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_1d_decompress_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_1d_decompress_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_zfp_1d_decompress_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_zfp_1d_decompress_B9_sr_0_aunroll_x_out_o_valid;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_zfp_1d_decompress_B0_runOnce(BLACKBOX,3)
    zfp_1d_decompress_bb_B0_runOnce thebb_zfp_1d_decompress_B0_runOnce (
        .in_stall_in_0(bb_zfp_1d_decompress_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_zfp_1d_decompress_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_zfp_1d_decompress_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B1_start_sr_1_aunroll_x(BLACKBOX,91)
    zfp_1d_decompress_bb_B1_start_sr_1 thebb_zfp_1d_decompress_B1_start_sr_1_aunroll_x (
        .in_i_stall(bb_zfp_1d_decompress_B1_start_out_stall_out_1),
        .in_i_valid(bb_zfp_1d_decompress_B0_runOnce_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_zfp_1d_decompress_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_1d_decompress_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i2_054(CONSTANT,45)
    assign c_i2_054_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_valid_fifo(BLACKBOX,61)
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going76_1_valid_fifo thei_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_valid_fifo (
        .in_data_in(c_i2_054_q),
        .in_stall_in(bb_zfp_1d_decompress_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_valid_fifo(BLACKBOX,59)
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going72_2_valid_fifo thei_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_valid_fifo (
        .in_data_in(c_i2_054_q),
        .in_stall_in(bb_zfp_1d_decompress_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_valid_fifo(BLACKBOX,57)
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going68_2_valid_fifo thei_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_valid_fifo (
        .in_data_in(c_i2_054_q),
        .in_stall_in(bb_zfp_1d_decompress_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B5_sr_0_aunroll_x(BLACKBOX,96)
    zfp_1d_decompress_bb_B5_sr_0 thebb_zfp_1d_decompress_B5_sr_0_aunroll_x (
        .in_i_stall(bb_zfp_1d_decompress_B5_out_stall_out_0),
        .in_i_valid(bb_zfp_1d_decompress_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_zfp_1d_decompress_B4_out_c0_exe2133),
        .in_i_data_1_tpl(bb_zfp_1d_decompress_B4_out_c0_exe4135),
        .in_i_data_2_tpl(bb_zfp_1d_decompress_B4_out_c0_exe7),
        .in_i_data_3_tpl(bb_zfp_1d_decompress_B4_out_c0_exe8),
        .in_i_data_4_tpl(bb_zfp_1d_decompress_B4_out_c0_exe9),
        .in_i_data_5_tpl(bb_zfp_1d_decompress_B4_out_c2_exe1141),
        .in_i_data_6_tpl(bb_zfp_1d_decompress_B4_out_c1_exe1149),
        .in_i_data_7_tpl(bb_zfp_1d_decompress_B4_out_c1_exe2150),
        .in_i_data_8_tpl(bb_zfp_1d_decompress_B4_out_c1_exe3151),
        .in_i_data_9_tpl(bb_zfp_1d_decompress_B4_out_c1_exe4),
        .in_i_data_10_tpl(bb_zfp_1d_decompress_B4_out_c1_exe5),
        .in_i_data_11_tpl(bb_zfp_1d_decompress_B4_out_c1_exe6),
        .in_i_data_12_tpl(bb_zfp_1d_decompress_B4_out_c1_exe7),
        .in_i_data_13_tpl(bb_zfp_1d_decompress_B4_out_c1_exe8),
        .in_i_data_14_tpl(bb_zfp_1d_decompress_B4_out_c1_exe9),
        .in_i_data_15_tpl(bb_zfp_1d_decompress_B4_out_c1_exe10),
        .out_o_stall(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_15_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_sr(BLACKBOX,56)
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going68_2_sr thei_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_valid_fifo_out_stall_out),
        .in_i_valid(bb_zfp_1d_decompress_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_sr_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i32_undef14(CONSTANT,48)
    assign c_i32_undef14_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i64_undef12(CONSTANT,50)
    assign c_i64_undef12_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_zfp_1d_decompress_B4(BLACKBOX,6)
    zfp_1d_decompress_bb_B4 thebb_zfp_1d_decompress_B4 (
        .in_acl_192_0(c_i64_undef12_q),
        .in_acl_192_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_exitcond4095_0(GND_q),
        .in_exitcond4095_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_forked81_0(GND_q),
        .in_forked81_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_iord_bl_in_stream_1_i_fifodata(arbiter_iord_in_stream_out_data_out1),
        .in_iord_bl_in_stream_1_i_fifovalid(arbiter_iord_in_stream_out_valid_out1),
        .in_k1_0_i25_pop1797_0(c_i32_undef14_q),
        .in_k1_0_i25_pop1797_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notexit7496_0(GND_q),
        .in_notexit7496_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_sr_out_o_stall),
        .in_stall_in_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_sub_i_i93_0(c_i32_undef14_q),
        .in_sub_i_i93_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_tobool_i_i94_0(GND_q),
        .in_tobool_i_i94_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_ublock_i_sroa_0_0_pop16101_0(c_i64_undef12_q),
        .in_ublock_i_sroa_0_0_pop16101_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_ublock_i_sroa_12_0_pop1398_0(c_i64_undef12_q),
        .in_ublock_i_sroa_12_0_pop1398_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_ublock_i_sroa_6_0_pop15100_0(c_i64_undef12_q),
        .in_ublock_i_sroa_6_0_pop15100_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_ublock_i_sroa_9_0_pop1499_0(c_i64_undef12_q),
        .in_ublock_i_sroa_9_0_pop1499_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_unnamed_zfp_1d_decompress7_0(GND_q),
        .in_unnamed_zfp_1d_decompress7_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2133(bb_zfp_1d_decompress_B4_out_c0_exe2133),
        .out_c0_exe4135(bb_zfp_1d_decompress_B4_out_c0_exe4135),
        .out_c0_exe7(bb_zfp_1d_decompress_B4_out_c0_exe7),
        .out_c0_exe8(bb_zfp_1d_decompress_B4_out_c0_exe8),
        .out_c0_exe9(bb_zfp_1d_decompress_B4_out_c0_exe9),
        .out_c1_exe10(bb_zfp_1d_decompress_B4_out_c1_exe10),
        .out_c1_exe1149(bb_zfp_1d_decompress_B4_out_c1_exe1149),
        .out_c1_exe2150(bb_zfp_1d_decompress_B4_out_c1_exe2150),
        .out_c1_exe3151(bb_zfp_1d_decompress_B4_out_c1_exe3151),
        .out_c1_exe4(bb_zfp_1d_decompress_B4_out_c1_exe4),
        .out_c1_exe5(bb_zfp_1d_decompress_B4_out_c1_exe5),
        .out_c1_exe6(bb_zfp_1d_decompress_B4_out_c1_exe6),
        .out_c1_exe7(bb_zfp_1d_decompress_B4_out_c1_exe7),
        .out_c1_exe8(bb_zfp_1d_decompress_B4_out_c1_exe8),
        .out_c1_exe9(bb_zfp_1d_decompress_B4_out_c1_exe9),
        .out_c2_exe1141(bb_zfp_1d_decompress_B4_out_c2_exe1141),
        .out_exiting_stall_out(bb_zfp_1d_decompress_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_zfp_1d_decompress_B4_out_exiting_valid_out),
        .out_iord_bl_in_stream_1_o_fifoalmost_full(bb_zfp_1d_decompress_B4_out_iord_bl_in_stream_1_o_fifoalmost_full),
        .out_iord_bl_in_stream_1_o_fifoready(bb_zfp_1d_decompress_B4_out_iord_bl_in_stream_1_o_fifoready),
        .out_pipeline_valid_out(bb_zfp_1d_decompress_B4_out_pipeline_valid_out),
        .out_stall_in_0(bb_zfp_1d_decompress_B4_out_stall_in_0),
        .out_stall_out_0(bb_zfp_1d_decompress_B4_out_stall_out_0),
        .out_stall_out_1(bb_zfp_1d_decompress_B4_out_stall_out_1),
        .out_valid_in_0(bb_zfp_1d_decompress_B4_out_valid_in_0),
        .out_valid_in_1(bb_zfp_1d_decompress_B4_out_valid_in_1),
        .out_valid_out_0(bb_zfp_1d_decompress_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_zfp_1d_decompress_B4_sr_1_aunroll_x(BLACKBOX,95)
    zfp_1d_decompress_bb_B4_sr_1 thebb_zfp_1d_decompress_B4_sr_1_aunroll_x (
        .in_i_stall(bb_zfp_1d_decompress_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_zfp_1d_decompress1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_zfp_1d_decompress_B3_out_c2_exe1),
        .in_i_data_2_tpl(bb_zfp_1d_decompress_B3_out_c1_exe3),
        .in_i_data_3_tpl(bb_zfp_1d_decompress_B3_out_c2_exe2),
        .in_i_data_4_tpl(bb_zfp_1d_decompress_B3_out_c2_exe3),
        .in_i_data_5_tpl(bb_zfp_1d_decompress_B3_out_c0_exe1123),
        .in_i_data_6_tpl(bb_zfp_1d_decompress_B3_out_c0_exe2),
        .in_i_data_7_tpl(bb_zfp_1d_decompress_B3_out_c0_exe3),
        .in_i_data_8_tpl(bb_zfp_1d_decompress_B3_out_ublock_i_sroa_12_0_pop13),
        .in_i_data_9_tpl(bb_zfp_1d_decompress_B3_out_ublock_i_sroa_9_0_pop14),
        .in_i_data_10_tpl(bb_zfp_1d_decompress_B3_out_ublock_i_sroa_6_0_pop15),
        .in_i_data_11_tpl(bb_zfp_1d_decompress_B3_out_ublock_i_sroa_0_0_pop16),
        .out_o_stall(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // loop_limiter_zfp_1d_decompress1(BLACKBOX,75)
    zfp_1d_decompress_loop_limiter_1 theloop_limiter_zfp_1d_decompress1 (
        .in_i_stall(bb_zfp_1d_decompress_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_zfp_1d_decompress_B4_out_exiting_stall_out),
        .in_i_valid(bb_zfp_1d_decompress_B3_out_valid_out_0),
        .in_i_valid_exit(bb_zfp_1d_decompress_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_zfp_1d_decompress1_out_o_stall),
        .out_o_valid(loop_limiter_zfp_1d_decompress1_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_sr(BLACKBOX,58)
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going72_2_sr thei_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_valid_fifo_out_stall_out),
        .in_i_valid(bb_zfp_1d_decompress_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_sr_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // arbiter_iord_in_stream(BLACKBOX,2)
    zfp_1d_decompress_arbiter_iord_in_stream thearbiter_iord_in_stream (
        .in_almost_full_in0(bb_zfp_1d_decompress_B3_out_iord_bl_in_stream_0_o_fifoalmost_full),
        .in_almost_full_in1(bb_zfp_1d_decompress_B4_out_iord_bl_in_stream_1_o_fifoalmost_full),
        .in_i_fifodata(in_iord_in_stream_i_fifodata),
        .in_i_fifovalid(in_iord_in_stream_i_fifovalid),
        .in_ready_in0(bb_zfp_1d_decompress_B3_out_iord_bl_in_stream_0_o_fifoready),
        .in_ready_in1(bb_zfp_1d_decompress_B4_out_iord_bl_in_stream_1_o_fifoready),
        .out_data_out0(arbiter_iord_in_stream_out_data_out0),
        .out_data_out1(arbiter_iord_in_stream_out_data_out1),
        .out_o_fifoalmost_full(arbiter_iord_in_stream_out_o_fifoalmost_full),
        .out_o_fifoready(arbiter_iord_in_stream_out_o_fifoready),
        .out_valid_out0(arbiter_iord_in_stream_out_valid_out0),
        .out_valid_out1(arbiter_iord_in_stream_out_valid_out1),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_1d_decompress_B9_sr_0_aunroll_x(BLACKBOX,101)
    zfp_1d_decompress_bb_B9_sr_0 thebb_zfp_1d_decompress_B9_sr_0_aunroll_x (
        .in_i_stall(bb_zfp_1d_decompress_B9_out_stall_out_0),
        .in_i_valid(bb_zfp_1d_decompress_B8_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_zfp_1d_decompress_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_1d_decompress_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_1d_decompress_B8(BLACKBOX,9)
    zfp_1d_decompress_bb_B8 thebb_zfp_1d_decompress_B8 (
        .in_intel_reserved_ffwd_10_0(bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_9_0(bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_9_0),
        .in_iowr_bl_out_stream_i_fifoready(in_iowr_bl_out_stream_i_fifoready),
        .in_stall_in_0(bb_zfp_1d_decompress_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_zfp_1d_decompress_B8_sr_1_aunroll_x_out_o_valid),
        .out_iowr_bl_out_stream_o_fifodata(bb_zfp_1d_decompress_B8_out_iowr_bl_out_stream_o_fifodata),
        .out_iowr_bl_out_stream_o_fifovalid(bb_zfp_1d_decompress_B8_out_iowr_bl_out_stream_o_fifovalid),
        .out_profile_loop_o_valid(bb_zfp_1d_decompress_B8_out_profile_loop_o_valid),
        .out_stall_in_0(bb_zfp_1d_decompress_B8_out_stall_in_0),
        .out_stall_out_0(),
        .out_stall_out_1(bb_zfp_1d_decompress_B8_out_stall_out_1),
        .out_valid_in_1(bb_zfp_1d_decompress_B8_out_valid_in_1),
        .out_valid_out_0(bb_zfp_1d_decompress_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B8_sr_1_aunroll_x(BLACKBOX,100)
    zfp_1d_decompress_bb_B8_sr_1 thebb_zfp_1d_decompress_B8_sr_1_aunroll_x (
        .in_i_stall(bb_zfp_1d_decompress_B8_out_stall_out_1),
        .in_i_valid(bb_zfp_1d_decompress_B7_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_zfp_1d_decompress_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_1d_decompress_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_1d_decompress_B7(BLACKBOX,8)
    zfp_1d_decompress_bb_B7 thebb_zfp_1d_decompress_B7 (
        .in_intel_reserved_ffwd_5_0(bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_8_0),
        .in_stall_in_0(bb_zfp_1d_decompress_B8_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_zfp_1d_decompress_B7_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_10_0(bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_9_0(bb_zfp_1d_decompress_B7_out_intel_reserved_ffwd_9_0),
        .out_stall_out_0(bb_zfp_1d_decompress_B7_out_stall_out_0),
        .out_valid_out_0(bb_zfp_1d_decompress_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B7_sr_0_aunroll_x(BLACKBOX,99)
    zfp_1d_decompress_bb_B7_sr_0 thebb_zfp_1d_decompress_B7_sr_0_aunroll_x (
        .in_i_stall(bb_zfp_1d_decompress_B7_out_stall_out_0),
        .in_i_valid(bb_zfp_1d_decompress_B6_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_zfp_1d_decompress_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_1d_decompress_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_1d_decompress_B6_aunroll_x(BLACKBOX,97)
    zfp_1d_decompress_bb_B6 thebb_zfp_1d_decompress_B6_aunroll_x (
        .in_intel_reserved_ffwd_1_0(bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_1_0),
        .in_stall_in_0(bb_zfp_1d_decompress_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_zfp_1d_decompress_B6_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_zfp_1d_decompress_B2_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_zfp_1d_decompress_B2_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_zfp_1d_decompress_B2_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_intel_reserved_ffwd_5_0(bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_zfp_1d_decompress_B6_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_profile_loop_o_valid(bb_zfp_1d_decompress_B6_aunroll_x_out_profile_loop_o_valid),
        .out_stall_in_0(bb_zfp_1d_decompress_B6_aunroll_x_out_stall_in_0),
        .out_stall_out_0(),
        .out_stall_out_1(bb_zfp_1d_decompress_B6_aunroll_x_out_stall_out_1),
        .out_valid_in_1(bb_zfp_1d_decompress_B6_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_zfp_1d_decompress_B6_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B6_sr_1_aunroll_x(BLACKBOX,98)
    zfp_1d_decompress_bb_B6_sr_1 thebb_zfp_1d_decompress_B6_sr_1_aunroll_x (
        .in_i_stall(bb_zfp_1d_decompress_B6_aunroll_x_out_stall_out_1),
        .in_i_valid(bb_zfp_1d_decompress_B2_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_zfp_1d_decompress_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_1d_decompress_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_1d_decompress_B2_aunroll_x(BLACKBOX,92)
    zfp_1d_decompress_bb_B2 thebb_zfp_1d_decompress_B2_aunroll_x (
        .in_intel_reserved_ffwd_2_0(bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_4_0),
        .in_stall_in_0(bb_zfp_1d_decompress_B6_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_zfp_1d_decompress_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_zfp_1d_decompress_B2_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_zfp_1d_decompress_B2_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_zfp_1d_decompress_B2_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_zfp_1d_decompress_B2_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(bb_zfp_1d_decompress_B2_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B2_sr_0_aunroll_x(BLACKBOX,93)
    zfp_1d_decompress_bb_B2_sr_0 thebb_zfp_1d_decompress_B2_sr_0_aunroll_x (
        .in_i_stall(bb_zfp_1d_decompress_B2_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_zfp_1d_decompress_B5_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_zfp_1d_decompress_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_1d_decompress_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_1d_decompress_B5(BLACKBOX,7)
    zfp_1d_decompress_bb_B5 thebb_zfp_1d_decompress_B5 (
        .in_c0_exe21331_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe41352_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe73_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe84_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe95_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c1_exe1016_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c1_exe11497_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c1_exe21508_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c1_exe31519_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c1_exe410_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c1_exe511_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c1_exe612_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c1_exe713_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c1_exe814_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c1_exe915_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c2_exe11416_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_feedback_stall_in_13(bb_zfp_1d_decompress_B3_out_feedback_stall_out_13),
        .in_feedback_stall_in_14(bb_zfp_1d_decompress_B3_out_feedback_stall_out_14),
        .in_feedback_stall_in_15(bb_zfp_1d_decompress_B3_out_feedback_stall_out_15),
        .in_feedback_stall_in_16(bb_zfp_1d_decompress_B3_out_feedback_stall_out_16),
        .in_feedback_stall_in_18(bb_zfp_1d_decompress_B3_out_feedback_stall_out_18),
        .in_feedback_stall_in_19(bb_zfp_1d_decompress_B3_out_feedback_stall_out_19),
        .in_feedback_stall_in_20(bb_zfp_1d_decompress_B3_out_feedback_stall_out_20),
        .in_stall_in_0(bb_zfp_1d_decompress_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_zfp_1d_decompress_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_13(bb_zfp_1d_decompress_B5_out_feedback_out_13),
        .out_feedback_out_14(bb_zfp_1d_decompress_B5_out_feedback_out_14),
        .out_feedback_out_15(bb_zfp_1d_decompress_B5_out_feedback_out_15),
        .out_feedback_out_16(bb_zfp_1d_decompress_B5_out_feedback_out_16),
        .out_feedback_out_18(bb_zfp_1d_decompress_B5_out_feedback_out_18),
        .out_feedback_out_19(bb_zfp_1d_decompress_B5_out_feedback_out_19),
        .out_feedback_out_20(bb_zfp_1d_decompress_B5_out_feedback_out_20),
        .out_feedback_valid_out_13(bb_zfp_1d_decompress_B5_out_feedback_valid_out_13),
        .out_feedback_valid_out_14(bb_zfp_1d_decompress_B5_out_feedback_valid_out_14),
        .out_feedback_valid_out_15(bb_zfp_1d_decompress_B5_out_feedback_valid_out_15),
        .out_feedback_valid_out_16(bb_zfp_1d_decompress_B5_out_feedback_valid_out_16),
        .out_feedback_valid_out_18(bb_zfp_1d_decompress_B5_out_feedback_valid_out_18),
        .out_feedback_valid_out_19(bb_zfp_1d_decompress_B5_out_feedback_valid_out_19),
        .out_feedback_valid_out_20(bb_zfp_1d_decompress_B5_out_feedback_valid_out_20),
        .out_intel_reserved_ffwd_1_0(bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_zfp_1d_decompress_B5_out_intel_reserved_ffwd_4_0),
        .out_stall_in_0(bb_zfp_1d_decompress_B5_out_stall_in_0),
        .out_stall_out_0(bb_zfp_1d_decompress_B5_out_stall_out_0),
        .out_valid_out_0(bb_zfp_1d_decompress_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B3(BLACKBOX,5)
    zfp_1d_decompress_bb_B3 thebb_zfp_1d_decompress_B3 (
        .in_feedback_in_13(bb_zfp_1d_decompress_B5_out_feedback_out_13),
        .in_feedback_in_14(bb_zfp_1d_decompress_B5_out_feedback_out_14),
        .in_feedback_in_15(bb_zfp_1d_decompress_B5_out_feedback_out_15),
        .in_feedback_in_16(bb_zfp_1d_decompress_B5_out_feedback_out_16),
        .in_feedback_in_18(bb_zfp_1d_decompress_B5_out_feedback_out_18),
        .in_feedback_in_19(bb_zfp_1d_decompress_B5_out_feedback_out_19),
        .in_feedback_in_20(bb_zfp_1d_decompress_B5_out_feedback_out_20),
        .in_feedback_valid_in_13(bb_zfp_1d_decompress_B5_out_feedback_valid_out_13),
        .in_feedback_valid_in_14(bb_zfp_1d_decompress_B5_out_feedback_valid_out_14),
        .in_feedback_valid_in_15(bb_zfp_1d_decompress_B5_out_feedback_valid_out_15),
        .in_feedback_valid_in_16(bb_zfp_1d_decompress_B5_out_feedback_valid_out_16),
        .in_feedback_valid_in_18(bb_zfp_1d_decompress_B5_out_feedback_valid_out_18),
        .in_feedback_valid_in_19(bb_zfp_1d_decompress_B5_out_feedback_valid_out_19),
        .in_feedback_valid_in_20(bb_zfp_1d_decompress_B5_out_feedback_valid_out_20),
        .in_forked79_0(GND_q),
        .in_forked79_1(bb_zfp_1d_decompress_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_iord_bl_in_stream_0_i_fifodata(arbiter_iord_in_stream_out_data_out0),
        .in_iord_bl_in_stream_0_i_fifovalid(arbiter_iord_in_stream_out_valid_out0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_zfp_1d_decompress1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_zfp_1d_decompress_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1123(bb_zfp_1d_decompress_B3_out_c0_exe1123),
        .out_c0_exe2(bb_zfp_1d_decompress_B3_out_c0_exe2),
        .out_c0_exe3(bb_zfp_1d_decompress_B3_out_c0_exe3),
        .out_c1_exe3(bb_zfp_1d_decompress_B3_out_c1_exe3),
        .out_c2_exe1(bb_zfp_1d_decompress_B3_out_c2_exe1),
        .out_c2_exe2(bb_zfp_1d_decompress_B3_out_c2_exe2),
        .out_c2_exe3(bb_zfp_1d_decompress_B3_out_c2_exe3),
        .out_exiting_stall_out(bb_zfp_1d_decompress_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_zfp_1d_decompress_B3_out_exiting_valid_out),
        .out_feedback_stall_out_13(bb_zfp_1d_decompress_B3_out_feedback_stall_out_13),
        .out_feedback_stall_out_14(bb_zfp_1d_decompress_B3_out_feedback_stall_out_14),
        .out_feedback_stall_out_15(bb_zfp_1d_decompress_B3_out_feedback_stall_out_15),
        .out_feedback_stall_out_16(bb_zfp_1d_decompress_B3_out_feedback_stall_out_16),
        .out_feedback_stall_out_18(bb_zfp_1d_decompress_B3_out_feedback_stall_out_18),
        .out_feedback_stall_out_19(bb_zfp_1d_decompress_B3_out_feedback_stall_out_19),
        .out_feedback_stall_out_20(bb_zfp_1d_decompress_B3_out_feedback_stall_out_20),
        .out_iord_bl_in_stream_0_o_fifoalmost_full(bb_zfp_1d_decompress_B3_out_iord_bl_in_stream_0_o_fifoalmost_full),
        .out_iord_bl_in_stream_0_o_fifoready(bb_zfp_1d_decompress_B3_out_iord_bl_in_stream_0_o_fifoready),
        .out_pipeline_valid_out(bb_zfp_1d_decompress_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_zfp_1d_decompress_B3_out_stall_out_0),
        .out_stall_out_1(bb_zfp_1d_decompress_B3_out_stall_out_1),
        .out_ublock_i_sroa_0_0_pop16(bb_zfp_1d_decompress_B3_out_ublock_i_sroa_0_0_pop16),
        .out_ublock_i_sroa_12_0_pop13(bb_zfp_1d_decompress_B3_out_ublock_i_sroa_12_0_pop13),
        .out_ublock_i_sroa_6_0_pop15(bb_zfp_1d_decompress_B3_out_ublock_i_sroa_6_0_pop15),
        .out_ublock_i_sroa_9_0_pop14(bb_zfp_1d_decompress_B3_out_ublock_i_sroa_9_0_pop14),
        .out_valid_in_0(bb_zfp_1d_decompress_B3_out_valid_in_0),
        .out_valid_in_1(bb_zfp_1d_decompress_B3_out_valid_in_1),
        .out_valid_out_0(bb_zfp_1d_decompress_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B3_sr_1_aunroll_x(BLACKBOX,94)
    zfp_1d_decompress_bb_B3_sr_1 thebb_zfp_1d_decompress_B3_sr_1_aunroll_x (
        .in_i_stall(bb_zfp_1d_decompress_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_zfp_1d_decompress0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_zfp_1d_decompress_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_zfp_1d_decompress_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_zfp_1d_decompress_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // loop_limiter_zfp_1d_decompress0(BLACKBOX,74)
    zfp_1d_decompress_loop_limiter_0 theloop_limiter_zfp_1d_decompress0 (
        .in_i_stall(bb_zfp_1d_decompress_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_zfp_1d_decompress_B3_out_exiting_stall_out),
        .in_i_valid(bb_zfp_1d_decompress_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_zfp_1d_decompress_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_zfp_1d_decompress0_out_o_stall),
        .out_o_valid(loop_limiter_zfp_1d_decompress0_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_sr(BLACKBOX,60)
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going76_1_sr thei_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_valid_fifo_out_stall_out),
        .in_i_valid(bb_zfp_1d_decompress_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_sr_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_zfp_1d_decompress_B9(BLACKBOX,10)
    zfp_1d_decompress_bb_B9 thebb_zfp_1d_decompress_B9 (
        .in_feedback_stall_in_1(bb_zfp_1d_decompress_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_zfp_1d_decompress_i_fifoready(in_iowr_bl_return_zfp_1d_decompress_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_zfp_1d_decompress_B9_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_zfp_1d_decompress_B9_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_zfp_1d_decompress_B9_out_feedback_valid_out_1),
        .out_iowr_bl_return_zfp_1d_decompress_o_fifodata(bb_zfp_1d_decompress_B9_out_iowr_bl_return_zfp_1d_decompress_o_fifodata),
        .out_iowr_bl_return_zfp_1d_decompress_o_fifovalid(bb_zfp_1d_decompress_B9_out_iowr_bl_return_zfp_1d_decompress_o_fifovalid),
        .out_stall_in_0(bb_zfp_1d_decompress_B9_out_stall_in_0),
        .out_stall_out_0(bb_zfp_1d_decompress_B9_out_stall_out_0),
        .out_valid_out_0(bb_zfp_1d_decompress_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B1_start(BLACKBOX,4)
    zfp_1d_decompress_bb_B1_start thebb_zfp_1d_decompress_B1_start (
        .in_feedback_in_1(bb_zfp_1d_decompress_B9_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_zfp_1d_decompress_B9_out_feedback_valid_out_1),
        .in_iord_bl_call_zfp_1d_decompress_i_fifodata(in_iord_bl_call_zfp_1d_decompress_i_fifodata),
        .in_iord_bl_call_zfp_1d_decompress_i_fifovalid(in_iord_bl_call_zfp_1d_decompress_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_zfp_1d_decompress0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going76_zfp_1d_decompress1_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_zfp_1d_decompress_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_zfp_1d_decompress_B1_start_out_feedback_stall_out_1),
        .out_iord_bl_call_zfp_1d_decompress_o_fifoalmost_full(bb_zfp_1d_decompress_B1_start_out_iord_bl_call_zfp_1d_decompress_o_fifoalmost_full),
        .out_iord_bl_call_zfp_1d_decompress_o_fifoready(bb_zfp_1d_decompress_B1_start_out_iord_bl_call_zfp_1d_decompress_o_fifoready),
        .out_pipeline_valid_out(bb_zfp_1d_decompress_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_zfp_1d_decompress_B1_start_out_stall_out_0),
        .out_stall_out_1(bb_zfp_1d_decompress_B1_start_out_stall_out_1),
        .out_valid_in_0(bb_zfp_1d_decompress_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_zfp_1d_decompress_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_zfp_1d_decompress_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_zfp_1d_decompress_o_fifoalmost_full(GPOUT,76)
    assign out_iord_bl_call_zfp_1d_decompress_o_fifoalmost_full = bb_zfp_1d_decompress_B1_start_out_iord_bl_call_zfp_1d_decompress_o_fifoalmost_full;

    // out_iord_bl_call_zfp_1d_decompress_o_fifoready(GPOUT,77)
    assign out_iord_bl_call_zfp_1d_decompress_o_fifoready = bb_zfp_1d_decompress_B1_start_out_iord_bl_call_zfp_1d_decompress_o_fifoready;

    // out_iord_in_stream_o_fifoalmost_full(GPOUT,78)
    assign out_iord_in_stream_o_fifoalmost_full = arbiter_iord_in_stream_out_o_fifoalmost_full;

    // out_iord_in_stream_o_fifoready(GPOUT,79)
    assign out_iord_in_stream_o_fifoready = arbiter_iord_in_stream_out_o_fifoready;

    // out_iowr_bl_out_stream_o_fifodata(GPOUT,80)
    assign out_iowr_bl_out_stream_o_fifodata = bb_zfp_1d_decompress_B8_out_iowr_bl_out_stream_o_fifodata;

    // out_iowr_bl_out_stream_o_fifovalid(GPOUT,81)
    assign out_iowr_bl_out_stream_o_fifovalid = bb_zfp_1d_decompress_B8_out_iowr_bl_out_stream_o_fifovalid;

    // out_iowr_bl_return_zfp_1d_decompress_o_fifodata(GPOUT,82)
    assign out_iowr_bl_return_zfp_1d_decompress_o_fifodata = bb_zfp_1d_decompress_B9_out_iowr_bl_return_zfp_1d_decompress_o_fifodata;

    // out_iowr_bl_return_zfp_1d_decompress_o_fifovalid(GPOUT,83)
    assign out_iowr_bl_return_zfp_1d_decompress_o_fifovalid = bb_zfp_1d_decompress_B9_out_iowr_bl_return_zfp_1d_decompress_o_fifovalid;

    // out_stall_out(GPOUT,84)
    assign out_stall_out = bb_zfp_1d_decompress_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,85)
    assign out_valid_out = GND_q;

    // zfp_1d_decompress_B1_start_x(EXTIFACE,86)
    assign zfp_1d_decompress_B1_start_x_i_capture = GND_q;
    assign zfp_1d_decompress_B1_start_x_i_clear = GND_q;
    assign zfp_1d_decompress_B1_start_x_i_enable = VCC_q;
    assign zfp_1d_decompress_B1_start_x_i_shift = GND_q;
    assign zfp_1d_decompress_B1_start_x_i_stall_pred = bb_zfp_1d_decompress_B1_start_sr_1_aunroll_x_out_o_stall;
    assign zfp_1d_decompress_B1_start_x_i_stall_succ = bb_zfp_1d_decompress_B9_out_stall_in_0;
    assign zfp_1d_decompress_B1_start_x_i_valid_loop = bb_zfp_1d_decompress_B1_start_out_valid_in_0;
    assign zfp_1d_decompress_B1_start_x_i_valid_pred = bb_zfp_1d_decompress_B1_start_out_valid_in_1;
    assign zfp_1d_decompress_B1_start_x_i_valid_succ = bb_zfp_1d_decompress_B9_out_valid_out_0;
    assign zfp_1d_decompress_B1_start_x_i_capture_bitsignaltemp = zfp_1d_decompress_B1_start_x_i_capture[0];
    assign zfp_1d_decompress_B1_start_x_i_clear_bitsignaltemp = zfp_1d_decompress_B1_start_x_i_clear[0];
    assign zfp_1d_decompress_B1_start_x_i_enable_bitsignaltemp = zfp_1d_decompress_B1_start_x_i_enable[0];
    assign zfp_1d_decompress_B1_start_x_i_shift_bitsignaltemp = zfp_1d_decompress_B1_start_x_i_shift[0];
    assign zfp_1d_decompress_B1_start_x_i_stall_pred_bitsignaltemp = zfp_1d_decompress_B1_start_x_i_stall_pred[0];
    assign zfp_1d_decompress_B1_start_x_i_stall_succ_bitsignaltemp = zfp_1d_decompress_B1_start_x_i_stall_succ[0];
    assign zfp_1d_decompress_B1_start_x_i_valid_loop_bitsignaltemp = zfp_1d_decompress_B1_start_x_i_valid_loop[0];
    assign zfp_1d_decompress_B1_start_x_i_valid_pred_bitsignaltemp = zfp_1d_decompress_B1_start_x_i_valid_pred[0];
    assign zfp_1d_decompress_B1_start_x_i_valid_succ_bitsignaltemp = zfp_1d_decompress_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_1d_decompress.B1.start")
    ) thezfp_1d_decompress_B1_start_x (
        .i_capture(zfp_1d_decompress_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(zfp_1d_decompress_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(zfp_1d_decompress_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(zfp_1d_decompress_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_1d_decompress_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_1d_decompress_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_1d_decompress_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_1d_decompress_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_1d_decompress_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // zfp_1d_decompress_B3_x(EXTIFACE,87)
    assign zfp_1d_decompress_B3_x_i_capture = GND_q;
    assign zfp_1d_decompress_B3_x_i_clear = GND_q;
    assign zfp_1d_decompress_B3_x_i_enable = VCC_q;
    assign zfp_1d_decompress_B3_x_i_shift = GND_q;
    assign zfp_1d_decompress_B3_x_i_stall_pred = loop_limiter_zfp_1d_decompress0_out_o_stall;
    assign zfp_1d_decompress_B3_x_i_stall_succ = bb_zfp_1d_decompress_B5_out_stall_in_0;
    assign zfp_1d_decompress_B3_x_i_valid_loop = bb_zfp_1d_decompress_B3_out_valid_in_0;
    assign zfp_1d_decompress_B3_x_i_valid_pred = bb_zfp_1d_decompress_B3_out_valid_in_1;
    assign zfp_1d_decompress_B3_x_i_valid_succ = bb_zfp_1d_decompress_B5_out_valid_out_0;
    assign zfp_1d_decompress_B3_x_i_capture_bitsignaltemp = zfp_1d_decompress_B3_x_i_capture[0];
    assign zfp_1d_decompress_B3_x_i_clear_bitsignaltemp = zfp_1d_decompress_B3_x_i_clear[0];
    assign zfp_1d_decompress_B3_x_i_enable_bitsignaltemp = zfp_1d_decompress_B3_x_i_enable[0];
    assign zfp_1d_decompress_B3_x_i_shift_bitsignaltemp = zfp_1d_decompress_B3_x_i_shift[0];
    assign zfp_1d_decompress_B3_x_i_stall_pred_bitsignaltemp = zfp_1d_decompress_B3_x_i_stall_pred[0];
    assign zfp_1d_decompress_B3_x_i_stall_succ_bitsignaltemp = zfp_1d_decompress_B3_x_i_stall_succ[0];
    assign zfp_1d_decompress_B3_x_i_valid_loop_bitsignaltemp = zfp_1d_decompress_B3_x_i_valid_loop[0];
    assign zfp_1d_decompress_B3_x_i_valid_pred_bitsignaltemp = zfp_1d_decompress_B3_x_i_valid_pred[0];
    assign zfp_1d_decompress_B3_x_i_valid_succ_bitsignaltemp = zfp_1d_decompress_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_1d_decompress.B3")
    ) thezfp_1d_decompress_B3_x (
        .i_capture(zfp_1d_decompress_B3_x_i_capture_bitsignaltemp),
        .i_clear(zfp_1d_decompress_B3_x_i_clear_bitsignaltemp),
        .i_enable(zfp_1d_decompress_B3_x_i_enable_bitsignaltemp),
        .i_shift(zfp_1d_decompress_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_1d_decompress_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_1d_decompress_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_1d_decompress_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_1d_decompress_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_1d_decompress_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // zfp_1d_decompress_B4_x(EXTIFACE,88)
    assign zfp_1d_decompress_B4_x_i_capture = GND_q;
    assign zfp_1d_decompress_B4_x_i_clear = GND_q;
    assign zfp_1d_decompress_B4_x_i_enable = VCC_q;
    assign zfp_1d_decompress_B4_x_i_shift = GND_q;
    assign zfp_1d_decompress_B4_x_i_stall_pred = loop_limiter_zfp_1d_decompress1_out_o_stall;
    assign zfp_1d_decompress_B4_x_i_stall_succ = bb_zfp_1d_decompress_B4_out_stall_in_0;
    assign zfp_1d_decompress_B4_x_i_valid_loop = bb_zfp_1d_decompress_B4_out_valid_in_0;
    assign zfp_1d_decompress_B4_x_i_valid_pred = bb_zfp_1d_decompress_B4_out_valid_in_1;
    assign zfp_1d_decompress_B4_x_i_valid_succ = bb_zfp_1d_decompress_B4_out_valid_out_0;
    assign zfp_1d_decompress_B4_x_i_capture_bitsignaltemp = zfp_1d_decompress_B4_x_i_capture[0];
    assign zfp_1d_decompress_B4_x_i_clear_bitsignaltemp = zfp_1d_decompress_B4_x_i_clear[0];
    assign zfp_1d_decompress_B4_x_i_enable_bitsignaltemp = zfp_1d_decompress_B4_x_i_enable[0];
    assign zfp_1d_decompress_B4_x_i_shift_bitsignaltemp = zfp_1d_decompress_B4_x_i_shift[0];
    assign zfp_1d_decompress_B4_x_i_stall_pred_bitsignaltemp = zfp_1d_decompress_B4_x_i_stall_pred[0];
    assign zfp_1d_decompress_B4_x_i_stall_succ_bitsignaltemp = zfp_1d_decompress_B4_x_i_stall_succ[0];
    assign zfp_1d_decompress_B4_x_i_valid_loop_bitsignaltemp = zfp_1d_decompress_B4_x_i_valid_loop[0];
    assign zfp_1d_decompress_B4_x_i_valid_pred_bitsignaltemp = zfp_1d_decompress_B4_x_i_valid_pred[0];
    assign zfp_1d_decompress_B4_x_i_valid_succ_bitsignaltemp = zfp_1d_decompress_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_1d_decompress.B4")
    ) thezfp_1d_decompress_B4_x (
        .i_capture(zfp_1d_decompress_B4_x_i_capture_bitsignaltemp),
        .i_clear(zfp_1d_decompress_B4_x_i_clear_bitsignaltemp),
        .i_enable(zfp_1d_decompress_B4_x_i_enable_bitsignaltemp),
        .i_shift(zfp_1d_decompress_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_1d_decompress_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_1d_decompress_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_1d_decompress_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_1d_decompress_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_1d_decompress_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // zfp_1d_decompress_B6_x(EXTIFACE,89)
    assign zfp_1d_decompress_B6_x_i_capture = GND_q;
    assign zfp_1d_decompress_B6_x_i_clear = GND_q;
    assign zfp_1d_decompress_B6_x_i_enable = VCC_q;
    assign zfp_1d_decompress_B6_x_i_shift = GND_q;
    assign zfp_1d_decompress_B6_x_i_stall_pred = bb_zfp_1d_decompress_B6_sr_1_aunroll_x_out_o_stall;
    assign zfp_1d_decompress_B6_x_i_stall_succ = bb_zfp_1d_decompress_B6_aunroll_x_out_stall_in_0;
    assign zfp_1d_decompress_B6_x_i_valid_loop = bb_zfp_1d_decompress_B6_aunroll_x_out_profile_loop_o_valid;
    assign zfp_1d_decompress_B6_x_i_valid_pred = bb_zfp_1d_decompress_B6_aunroll_x_out_valid_in_1;
    assign zfp_1d_decompress_B6_x_i_valid_succ = bb_zfp_1d_decompress_B6_aunroll_x_out_valid_out_0;
    assign zfp_1d_decompress_B6_x_i_capture_bitsignaltemp = zfp_1d_decompress_B6_x_i_capture[0];
    assign zfp_1d_decompress_B6_x_i_clear_bitsignaltemp = zfp_1d_decompress_B6_x_i_clear[0];
    assign zfp_1d_decompress_B6_x_i_enable_bitsignaltemp = zfp_1d_decompress_B6_x_i_enable[0];
    assign zfp_1d_decompress_B6_x_i_shift_bitsignaltemp = zfp_1d_decompress_B6_x_i_shift[0];
    assign zfp_1d_decompress_B6_x_i_stall_pred_bitsignaltemp = zfp_1d_decompress_B6_x_i_stall_pred[0];
    assign zfp_1d_decompress_B6_x_i_stall_succ_bitsignaltemp = zfp_1d_decompress_B6_x_i_stall_succ[0];
    assign zfp_1d_decompress_B6_x_i_valid_loop_bitsignaltemp = zfp_1d_decompress_B6_x_i_valid_loop[0];
    assign zfp_1d_decompress_B6_x_i_valid_pred_bitsignaltemp = zfp_1d_decompress_B6_x_i_valid_pred[0];
    assign zfp_1d_decompress_B6_x_i_valid_succ_bitsignaltemp = zfp_1d_decompress_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_1d_decompress.B6")
    ) thezfp_1d_decompress_B6_x (
        .i_capture(zfp_1d_decompress_B6_x_i_capture_bitsignaltemp),
        .i_clear(zfp_1d_decompress_B6_x_i_clear_bitsignaltemp),
        .i_enable(zfp_1d_decompress_B6_x_i_enable_bitsignaltemp),
        .i_shift(zfp_1d_decompress_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_1d_decompress_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_1d_decompress_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_1d_decompress_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_1d_decompress_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_1d_decompress_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // zfp_1d_decompress_B8_x(EXTIFACE,90)
    assign zfp_1d_decompress_B8_x_i_capture = GND_q;
    assign zfp_1d_decompress_B8_x_i_clear = GND_q;
    assign zfp_1d_decompress_B8_x_i_enable = VCC_q;
    assign zfp_1d_decompress_B8_x_i_shift = GND_q;
    assign zfp_1d_decompress_B8_x_i_stall_pred = bb_zfp_1d_decompress_B8_sr_1_aunroll_x_out_o_stall;
    assign zfp_1d_decompress_B8_x_i_stall_succ = bb_zfp_1d_decompress_B8_out_stall_in_0;
    assign zfp_1d_decompress_B8_x_i_valid_loop = bb_zfp_1d_decompress_B8_out_profile_loop_o_valid;
    assign zfp_1d_decompress_B8_x_i_valid_pred = bb_zfp_1d_decompress_B8_out_valid_in_1;
    assign zfp_1d_decompress_B8_x_i_valid_succ = bb_zfp_1d_decompress_B8_out_valid_out_0;
    assign zfp_1d_decompress_B8_x_i_capture_bitsignaltemp = zfp_1d_decompress_B8_x_i_capture[0];
    assign zfp_1d_decompress_B8_x_i_clear_bitsignaltemp = zfp_1d_decompress_B8_x_i_clear[0];
    assign zfp_1d_decompress_B8_x_i_enable_bitsignaltemp = zfp_1d_decompress_B8_x_i_enable[0];
    assign zfp_1d_decompress_B8_x_i_shift_bitsignaltemp = zfp_1d_decompress_B8_x_i_shift[0];
    assign zfp_1d_decompress_B8_x_i_stall_pred_bitsignaltemp = zfp_1d_decompress_B8_x_i_stall_pred[0];
    assign zfp_1d_decompress_B8_x_i_stall_succ_bitsignaltemp = zfp_1d_decompress_B8_x_i_stall_succ[0];
    assign zfp_1d_decompress_B8_x_i_valid_loop_bitsignaltemp = zfp_1d_decompress_B8_x_i_valid_loop[0];
    assign zfp_1d_decompress_B8_x_i_valid_pred_bitsignaltemp = zfp_1d_decompress_B8_x_i_valid_pred[0];
    assign zfp_1d_decompress_B8_x_i_valid_succ_bitsignaltemp = zfp_1d_decompress_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_1d_decompress.B8")
    ) thezfp_1d_decompress_B8_x (
        .i_capture(zfp_1d_decompress_B8_x_i_capture_bitsignaltemp),
        .i_clear(zfp_1d_decompress_B8_x_i_clear_bitsignaltemp),
        .i_enable(zfp_1d_decompress_B8_x_i_enable_bitsignaltemp),
        .i_shift(zfp_1d_decompress_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_1d_decompress_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_1d_decompress_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_1d_decompress_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_1d_decompress_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_1d_decompress_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // rst_sync(RESETSYNC,102)
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
