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

// SystemVerilog created from zfp_uint_to_int_function
// Created for function/kernel zfp_uint_to_int
// SystemVerilog created on Fri Feb 13 18:08:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_uint_to_int_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_in_stream,
    input wire [63:0] in_arg_out_stream,
    input wire [63:0] in_arg_return,
    input wire [0:0] in_iord_bl_call_zfp_uint_to_int_i_fifodata,
    input wire [0:0] in_iord_bl_call_zfp_uint_to_int_i_fifovalid,
    input wire [63:0] in_iord_bl_in_stream_i_fifodata,
    input wire [0:0] in_iord_bl_in_stream_i_fifovalid,
    input wire [0:0] in_iowr_bl_out_stream_i_fifoready,
    input wire [0:0] in_iowr_bl_return_zfp_uint_to_int_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_zfp_uint_to_int_o_fifoready,
    output wire [0:0] out_iord_bl_in_stream_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_in_stream_o_fifoready,
    output wire [63:0] out_iowr_bl_out_stream_o_fifodata,
    output wire [0:0] out_iowr_bl_out_stream_o_fifovalid,
    output wire [0:0] out_iowr_bl_return_zfp_uint_to_int_o_fifodata,
    output wire [0:0] out_iowr_bl_return_zfp_uint_to_int_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_zfp_uint_to_int_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_zfp_uint_to_int_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_zfp_uint_to_int_B1_start_out_feedback_stall_out_1;
    wire [0:0] bb_zfp_uint_to_int_B1_start_out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full;
    wire [0:0] bb_zfp_uint_to_int_B1_start_out_iord_bl_call_zfp_uint_to_int_o_fifoready;
    wire [0:0] bb_zfp_uint_to_int_B1_start_out_stall_out_0;
    wire [0:0] bb_zfp_uint_to_int_B1_start_out_valid_in_0;
    wire [0:0] bb_zfp_uint_to_int_B1_start_out_valid_out_0;
    wire [63:0] bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_zfp_uint_to_int_B3_out_iord_bl_in_stream_o_fifoalmost_full;
    wire [0:0] bb_zfp_uint_to_int_B3_out_iord_bl_in_stream_o_fifoready;
    wire [0:0] bb_zfp_uint_to_int_B3_out_profile_loop_o_valid;
    wire [0:0] bb_zfp_uint_to_int_B3_out_stall_in_0;
    wire [0:0] bb_zfp_uint_to_int_B3_out_stall_out_0;
    wire [0:0] bb_zfp_uint_to_int_B3_out_valid_in_0;
    wire [0:0] bb_zfp_uint_to_int_B3_out_valid_out_0;
    wire [0:0] bb_zfp_uint_to_int_B4_out_feedback_almost_empty_out_1;
    wire [0:0] bb_zfp_uint_to_int_B4_out_feedback_data_out_1;
    wire [0:0] bb_zfp_uint_to_int_B4_out_feedback_empty_out_1;
    wire [0:0] bb_zfp_uint_to_int_B4_out_iowr_bl_return_zfp_uint_to_int_o_fifodata;
    wire [0:0] bb_zfp_uint_to_int_B4_out_iowr_bl_return_zfp_uint_to_int_o_fifovalid;
    wire [0:0] bb_zfp_uint_to_int_B4_out_stall_in_0;
    wire [0:0] bb_zfp_uint_to_int_B4_out_stall_out_0;
    wire [0:0] bb_zfp_uint_to_int_B4_out_valid_in_0;
    wire [0:0] bb_zfp_uint_to_int_B4_out_valid_out_0;
    wire [0:0] zfp_uint_to_int_B1_start_x_i_capture;
    wire zfp_uint_to_int_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B1_start_x_i_clear;
    wire zfp_uint_to_int_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B1_start_x_i_enable;
    wire zfp_uint_to_int_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B1_start_x_i_shift;
    wire zfp_uint_to_int_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B1_start_x_i_stall_pred;
    wire zfp_uint_to_int_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B1_start_x_i_stall_succ;
    wire zfp_uint_to_int_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B1_start_x_i_valid_loop;
    wire zfp_uint_to_int_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B1_start_x_i_valid_pred;
    wire zfp_uint_to_int_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B1_start_x_i_valid_succ;
    wire zfp_uint_to_int_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B3_x_i_capture;
    wire zfp_uint_to_int_B3_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B3_x_i_clear;
    wire zfp_uint_to_int_B3_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B3_x_i_enable;
    wire zfp_uint_to_int_B3_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B3_x_i_shift;
    wire zfp_uint_to_int_B3_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B3_x_i_stall_pred;
    wire zfp_uint_to_int_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B3_x_i_stall_succ;
    wire zfp_uint_to_int_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B3_x_i_valid_loop;
    wire zfp_uint_to_int_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B3_x_i_valid_pred;
    wire zfp_uint_to_int_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B3_x_i_valid_succ;
    wire zfp_uint_to_int_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B5_x_i_capture;
    wire zfp_uint_to_int_B5_x_i_capture_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B5_x_i_clear;
    wire zfp_uint_to_int_B5_x_i_clear_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B5_x_i_enable;
    wire zfp_uint_to_int_B5_x_i_enable_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B5_x_i_shift;
    wire zfp_uint_to_int_B5_x_i_shift_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B5_x_i_stall_pred;
    wire zfp_uint_to_int_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B5_x_i_stall_succ;
    wire zfp_uint_to_int_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B5_x_i_valid_loop;
    wire zfp_uint_to_int_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B5_x_i_valid_pred;
    wire zfp_uint_to_int_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] zfp_uint_to_int_B5_x_i_valid_succ;
    wire zfp_uint_to_int_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_zfp_uint_to_int_B2_aunroll_x_out_stall_out_0;
    wire [0:0] bb_zfp_uint_to_int_B2_aunroll_x_out_valid_out_0;
    wire [63:0] bb_zfp_uint_to_int_B2_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] bb_zfp_uint_to_int_B2_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] bb_zfp_uint_to_int_B2_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [63:0] bb_zfp_uint_to_int_B5_aunroll_x_out_iowr_bl_out_stream_o_fifodata;
    wire [0:0] bb_zfp_uint_to_int_B5_aunroll_x_out_iowr_bl_out_stream_o_fifovalid;
    wire [0:0] bb_zfp_uint_to_int_B5_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] bb_zfp_uint_to_int_B5_aunroll_x_out_stall_in_0;
    wire [0:0] bb_zfp_uint_to_int_B5_aunroll_x_out_stall_out_0;
    wire [0:0] bb_zfp_uint_to_int_B5_aunroll_x_out_valid_in_0;
    wire [0:0] bb_zfp_uint_to_int_B5_aunroll_x_out_valid_out_0;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_zfp_uint_to_int_B0_runOnce(BLACKBOX,2)
    zfp_uint_to_int_bb_B0_runOnce thebb_zfp_uint_to_int_B0_runOnce (
        .in_stall_in_0(bb_zfp_uint_to_int_B1_start_out_stall_out_0),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_zfp_uint_to_int_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_zfp_uint_to_int_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_uint_to_int_B5_aunroll_x(BLACKBOX,38)
    zfp_uint_to_int_bb_B5 thebb_zfp_uint_to_int_B5_aunroll_x (
        .in_intel_reserved_ffwd_1_0(bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_1_0),
        .in_iowr_bl_out_stream_i_fifoready(in_iowr_bl_out_stream_i_fifoready),
        .in_stall_in_0(bb_zfp_uint_to_int_B4_out_stall_out_0),
        .in_valid_in_0(bb_zfp_uint_to_int_B2_aunroll_x_out_valid_out_0),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_zfp_uint_to_int_B2_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_zfp_uint_to_int_B2_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_zfp_uint_to_int_B2_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_iowr_bl_out_stream_o_fifodata(bb_zfp_uint_to_int_B5_aunroll_x_out_iowr_bl_out_stream_o_fifodata),
        .out_iowr_bl_out_stream_o_fifovalid(bb_zfp_uint_to_int_B5_aunroll_x_out_iowr_bl_out_stream_o_fifovalid),
        .out_profile_loop_o_valid(bb_zfp_uint_to_int_B5_aunroll_x_out_profile_loop_o_valid),
        .out_stall_in_0(bb_zfp_uint_to_int_B5_aunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_zfp_uint_to_int_B5_aunroll_x_out_stall_out_0),
        .out_valid_in_0(bb_zfp_uint_to_int_B5_aunroll_x_out_valid_in_0),
        .out_valid_out_0(bb_zfp_uint_to_int_B5_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_uint_to_int_B2_aunroll_x(BLACKBOX,37)
    zfp_uint_to_int_bb_B2 thebb_zfp_uint_to_int_B2_aunroll_x (
        .in_intel_reserved_ffwd_2_0(bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_4_0),
        .in_stall_in_0(bb_zfp_uint_to_int_B5_aunroll_x_out_stall_out_0),
        .in_valid_in_0(bb_zfp_uint_to_int_B3_out_valid_out_0),
        .out_stall_out_0(bb_zfp_uint_to_int_B2_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_zfp_uint_to_int_B2_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_zfp_uint_to_int_B2_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_zfp_uint_to_int_B2_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(bb_zfp_uint_to_int_B2_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_uint_to_int_B3(BLACKBOX,4)
    zfp_uint_to_int_bb_B3 thebb_zfp_uint_to_int_B3 (
        .in_iord_bl_in_stream_i_fifodata(in_iord_bl_in_stream_i_fifodata),
        .in_iord_bl_in_stream_i_fifovalid(in_iord_bl_in_stream_i_fifovalid),
        .in_stall_in_0(bb_zfp_uint_to_int_B2_aunroll_x_out_stall_out_0),
        .in_valid_in_0(bb_zfp_uint_to_int_B1_start_out_valid_out_0),
        .out_intel_reserved_ffwd_1_0(bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_zfp_uint_to_int_B3_out_intel_reserved_ffwd_4_0),
        .out_iord_bl_in_stream_o_fifoalmost_full(bb_zfp_uint_to_int_B3_out_iord_bl_in_stream_o_fifoalmost_full),
        .out_iord_bl_in_stream_o_fifoready(bb_zfp_uint_to_int_B3_out_iord_bl_in_stream_o_fifoready),
        .out_profile_loop_o_valid(bb_zfp_uint_to_int_B3_out_profile_loop_o_valid),
        .out_stall_in_0(bb_zfp_uint_to_int_B3_out_stall_in_0),
        .out_stall_out_0(bb_zfp_uint_to_int_B3_out_stall_out_0),
        .out_valid_in_0(bb_zfp_uint_to_int_B3_out_valid_in_0),
        .out_valid_out_0(bb_zfp_uint_to_int_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_uint_to_int_B4(BLACKBOX,5)
    zfp_uint_to_int_bb_B4 thebb_zfp_uint_to_int_B4 (
        .in_feedback_stall_in_1(bb_zfp_uint_to_int_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_zfp_uint_to_int_i_fifoready(in_iowr_bl_return_zfp_uint_to_int_i_fifoready),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_zfp_uint_to_int_B5_aunroll_x_out_valid_out_0),
        .out_feedback_almost_empty_out_1(bb_zfp_uint_to_int_B4_out_feedback_almost_empty_out_1),
        .out_feedback_data_out_1(bb_zfp_uint_to_int_B4_out_feedback_data_out_1),
        .out_feedback_empty_out_1(bb_zfp_uint_to_int_B4_out_feedback_empty_out_1),
        .out_iowr_bl_return_zfp_uint_to_int_o_fifodata(bb_zfp_uint_to_int_B4_out_iowr_bl_return_zfp_uint_to_int_o_fifodata),
        .out_iowr_bl_return_zfp_uint_to_int_o_fifovalid(bb_zfp_uint_to_int_B4_out_iowr_bl_return_zfp_uint_to_int_o_fifovalid),
        .out_stall_in_0(bb_zfp_uint_to_int_B4_out_stall_in_0),
        .out_stall_out_0(bb_zfp_uint_to_int_B4_out_stall_out_0),
        .out_valid_in_0(bb_zfp_uint_to_int_B4_out_valid_in_0),
        .out_valid_out_0(bb_zfp_uint_to_int_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_uint_to_int_B1_start(BLACKBOX,3)
    zfp_uint_to_int_bb_B1_start thebb_zfp_uint_to_int_B1_start (
        .in_feedback_almost_empty_in_1(bb_zfp_uint_to_int_B4_out_feedback_almost_empty_out_1),
        .in_feedback_data_in_1(bb_zfp_uint_to_int_B4_out_feedback_data_out_1),
        .in_feedback_empty_in_1(bb_zfp_uint_to_int_B4_out_feedback_empty_out_1),
        .in_iord_bl_call_zfp_uint_to_int_i_fifodata(in_iord_bl_call_zfp_uint_to_int_i_fifodata),
        .in_iord_bl_call_zfp_uint_to_int_i_fifovalid(in_iord_bl_call_zfp_uint_to_int_i_fifovalid),
        .in_stall_in_0(bb_zfp_uint_to_int_B3_out_stall_out_0),
        .in_valid_in_0(bb_zfp_uint_to_int_B0_runOnce_out_valid_out_0),
        .out_feedback_stall_out_1(bb_zfp_uint_to_int_B1_start_out_feedback_stall_out_1),
        .out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full(bb_zfp_uint_to_int_B1_start_out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full),
        .out_iord_bl_call_zfp_uint_to_int_o_fifoready(bb_zfp_uint_to_int_B1_start_out_iord_bl_call_zfp_uint_to_int_o_fifoready),
        .out_stall_out_0(bb_zfp_uint_to_int_B1_start_out_stall_out_0),
        .out_valid_in_0(bb_zfp_uint_to_int_B1_start_out_valid_in_0),
        .out_valid_out_0(bb_zfp_uint_to_int_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full(GPOUT,24)
    assign out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full = bb_zfp_uint_to_int_B1_start_out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full;

    // out_iord_bl_call_zfp_uint_to_int_o_fifoready(GPOUT,25)
    assign out_iord_bl_call_zfp_uint_to_int_o_fifoready = bb_zfp_uint_to_int_B1_start_out_iord_bl_call_zfp_uint_to_int_o_fifoready;

    // out_iord_bl_in_stream_o_fifoalmost_full(GPOUT,26)
    assign out_iord_bl_in_stream_o_fifoalmost_full = bb_zfp_uint_to_int_B3_out_iord_bl_in_stream_o_fifoalmost_full;

    // out_iord_bl_in_stream_o_fifoready(GPOUT,27)
    assign out_iord_bl_in_stream_o_fifoready = bb_zfp_uint_to_int_B3_out_iord_bl_in_stream_o_fifoready;

    // out_iowr_bl_out_stream_o_fifodata(GPOUT,28)
    assign out_iowr_bl_out_stream_o_fifodata = bb_zfp_uint_to_int_B5_aunroll_x_out_iowr_bl_out_stream_o_fifodata;

    // out_iowr_bl_out_stream_o_fifovalid(GPOUT,29)
    assign out_iowr_bl_out_stream_o_fifovalid = bb_zfp_uint_to_int_B5_aunroll_x_out_iowr_bl_out_stream_o_fifovalid;

    // out_iowr_bl_return_zfp_uint_to_int_o_fifodata(GPOUT,30)
    assign out_iowr_bl_return_zfp_uint_to_int_o_fifodata = bb_zfp_uint_to_int_B4_out_iowr_bl_return_zfp_uint_to_int_o_fifodata;

    // out_iowr_bl_return_zfp_uint_to_int_o_fifovalid(GPOUT,31)
    assign out_iowr_bl_return_zfp_uint_to_int_o_fifovalid = bb_zfp_uint_to_int_B4_out_iowr_bl_return_zfp_uint_to_int_o_fifovalid;

    // out_stall_out(GPOUT,32)
    assign out_stall_out = bb_zfp_uint_to_int_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,33)
    assign out_valid_out = bb_zfp_uint_to_int_B4_out_valid_out_0;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // zfp_uint_to_int_B1_start_x(EXTIFACE,34)
    assign zfp_uint_to_int_B1_start_x_i_capture = GND_q;
    assign zfp_uint_to_int_B1_start_x_i_clear = GND_q;
    assign zfp_uint_to_int_B1_start_x_i_enable = VCC_q;
    assign zfp_uint_to_int_B1_start_x_i_shift = GND_q;
    assign zfp_uint_to_int_B1_start_x_i_stall_pred = bb_zfp_uint_to_int_B1_start_out_stall_out_0;
    assign zfp_uint_to_int_B1_start_x_i_stall_succ = bb_zfp_uint_to_int_B4_out_stall_in_0;
    assign zfp_uint_to_int_B1_start_x_i_valid_loop = bb_zfp_uint_to_int_B4_out_valid_in_0;
    assign zfp_uint_to_int_B1_start_x_i_valid_pred = bb_zfp_uint_to_int_B1_start_out_valid_in_0;
    assign zfp_uint_to_int_B1_start_x_i_valid_succ = bb_zfp_uint_to_int_B4_out_valid_out_0;
    assign zfp_uint_to_int_B1_start_x_i_capture_bitsignaltemp = zfp_uint_to_int_B1_start_x_i_capture[0];
    assign zfp_uint_to_int_B1_start_x_i_clear_bitsignaltemp = zfp_uint_to_int_B1_start_x_i_clear[0];
    assign zfp_uint_to_int_B1_start_x_i_enable_bitsignaltemp = zfp_uint_to_int_B1_start_x_i_enable[0];
    assign zfp_uint_to_int_B1_start_x_i_shift_bitsignaltemp = zfp_uint_to_int_B1_start_x_i_shift[0];
    assign zfp_uint_to_int_B1_start_x_i_stall_pred_bitsignaltemp = zfp_uint_to_int_B1_start_x_i_stall_pred[0];
    assign zfp_uint_to_int_B1_start_x_i_stall_succ_bitsignaltemp = zfp_uint_to_int_B1_start_x_i_stall_succ[0];
    assign zfp_uint_to_int_B1_start_x_i_valid_loop_bitsignaltemp = zfp_uint_to_int_B1_start_x_i_valid_loop[0];
    assign zfp_uint_to_int_B1_start_x_i_valid_pred_bitsignaltemp = zfp_uint_to_int_B1_start_x_i_valid_pred[0];
    assign zfp_uint_to_int_B1_start_x_i_valid_succ_bitsignaltemp = zfp_uint_to_int_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_uint_to_int.B1.start")
    ) thezfp_uint_to_int_B1_start_x (
        .i_capture(zfp_uint_to_int_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(zfp_uint_to_int_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(zfp_uint_to_int_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(zfp_uint_to_int_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_uint_to_int_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_uint_to_int_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_uint_to_int_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_uint_to_int_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_uint_to_int_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // zfp_uint_to_int_B3_x(EXTIFACE,35)
    assign zfp_uint_to_int_B3_x_i_capture = GND_q;
    assign zfp_uint_to_int_B3_x_i_clear = GND_q;
    assign zfp_uint_to_int_B3_x_i_enable = VCC_q;
    assign zfp_uint_to_int_B3_x_i_shift = GND_q;
    assign zfp_uint_to_int_B3_x_i_stall_pred = bb_zfp_uint_to_int_B3_out_stall_out_0;
    assign zfp_uint_to_int_B3_x_i_stall_succ = bb_zfp_uint_to_int_B3_out_stall_in_0;
    assign zfp_uint_to_int_B3_x_i_valid_loop = bb_zfp_uint_to_int_B3_out_profile_loop_o_valid;
    assign zfp_uint_to_int_B3_x_i_valid_pred = bb_zfp_uint_to_int_B3_out_valid_in_0;
    assign zfp_uint_to_int_B3_x_i_valid_succ = bb_zfp_uint_to_int_B3_out_valid_out_0;
    assign zfp_uint_to_int_B3_x_i_capture_bitsignaltemp = zfp_uint_to_int_B3_x_i_capture[0];
    assign zfp_uint_to_int_B3_x_i_clear_bitsignaltemp = zfp_uint_to_int_B3_x_i_clear[0];
    assign zfp_uint_to_int_B3_x_i_enable_bitsignaltemp = zfp_uint_to_int_B3_x_i_enable[0];
    assign zfp_uint_to_int_B3_x_i_shift_bitsignaltemp = zfp_uint_to_int_B3_x_i_shift[0];
    assign zfp_uint_to_int_B3_x_i_stall_pred_bitsignaltemp = zfp_uint_to_int_B3_x_i_stall_pred[0];
    assign zfp_uint_to_int_B3_x_i_stall_succ_bitsignaltemp = zfp_uint_to_int_B3_x_i_stall_succ[0];
    assign zfp_uint_to_int_B3_x_i_valid_loop_bitsignaltemp = zfp_uint_to_int_B3_x_i_valid_loop[0];
    assign zfp_uint_to_int_B3_x_i_valid_pred_bitsignaltemp = zfp_uint_to_int_B3_x_i_valid_pred[0];
    assign zfp_uint_to_int_B3_x_i_valid_succ_bitsignaltemp = zfp_uint_to_int_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_uint_to_int.B3")
    ) thezfp_uint_to_int_B3_x (
        .i_capture(zfp_uint_to_int_B3_x_i_capture_bitsignaltemp),
        .i_clear(zfp_uint_to_int_B3_x_i_clear_bitsignaltemp),
        .i_enable(zfp_uint_to_int_B3_x_i_enable_bitsignaltemp),
        .i_shift(zfp_uint_to_int_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_uint_to_int_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_uint_to_int_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_uint_to_int_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_uint_to_int_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_uint_to_int_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // zfp_uint_to_int_B5_x(EXTIFACE,36)
    assign zfp_uint_to_int_B5_x_i_capture = GND_q;
    assign zfp_uint_to_int_B5_x_i_clear = GND_q;
    assign zfp_uint_to_int_B5_x_i_enable = VCC_q;
    assign zfp_uint_to_int_B5_x_i_shift = GND_q;
    assign zfp_uint_to_int_B5_x_i_stall_pred = bb_zfp_uint_to_int_B5_aunroll_x_out_stall_out_0;
    assign zfp_uint_to_int_B5_x_i_stall_succ = bb_zfp_uint_to_int_B5_aunroll_x_out_stall_in_0;
    assign zfp_uint_to_int_B5_x_i_valid_loop = bb_zfp_uint_to_int_B5_aunroll_x_out_profile_loop_o_valid;
    assign zfp_uint_to_int_B5_x_i_valid_pred = bb_zfp_uint_to_int_B5_aunroll_x_out_valid_in_0;
    assign zfp_uint_to_int_B5_x_i_valid_succ = bb_zfp_uint_to_int_B5_aunroll_x_out_valid_out_0;
    assign zfp_uint_to_int_B5_x_i_capture_bitsignaltemp = zfp_uint_to_int_B5_x_i_capture[0];
    assign zfp_uint_to_int_B5_x_i_clear_bitsignaltemp = zfp_uint_to_int_B5_x_i_clear[0];
    assign zfp_uint_to_int_B5_x_i_enable_bitsignaltemp = zfp_uint_to_int_B5_x_i_enable[0];
    assign zfp_uint_to_int_B5_x_i_shift_bitsignaltemp = zfp_uint_to_int_B5_x_i_shift[0];
    assign zfp_uint_to_int_B5_x_i_stall_pred_bitsignaltemp = zfp_uint_to_int_B5_x_i_stall_pred[0];
    assign zfp_uint_to_int_B5_x_i_stall_succ_bitsignaltemp = zfp_uint_to_int_B5_x_i_stall_succ[0];
    assign zfp_uint_to_int_B5_x_i_valid_loop_bitsignaltemp = zfp_uint_to_int_B5_x_i_valid_loop[0];
    assign zfp_uint_to_int_B5_x_i_valid_pred_bitsignaltemp = zfp_uint_to_int_B5_x_i_valid_pred[0];
    assign zfp_uint_to_int_B5_x_i_valid_succ_bitsignaltemp = zfp_uint_to_int_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("zfp_uint_to_int.B5")
    ) thezfp_uint_to_int_B5_x (
        .i_capture(zfp_uint_to_int_B5_x_i_capture_bitsignaltemp),
        .i_clear(zfp_uint_to_int_B5_x_i_clear_bitsignaltemp),
        .i_enable(zfp_uint_to_int_B5_x_i_enable_bitsignaltemp),
        .i_shift(zfp_uint_to_int_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(zfp_uint_to_int_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(zfp_uint_to_int_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(zfp_uint_to_int_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(zfp_uint_to_int_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(zfp_uint_to_int_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // rst_sync(RESETSYNC,39)
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
