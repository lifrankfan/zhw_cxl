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

// SystemVerilog created from zfp_1d_1block_function_wrapper
// Created for function/kernel zfp_1d_1block
// SystemVerilog created on Tue Feb  3 21:17:23 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_1block_function_wrapper (
    input wire [0:0] avst_iord_bl_call_zfp_1d_1block_data,
    input wire [0:0] avst_iord_bl_call_zfp_1d_1block_valid,
    input wire [63:0] avst_iord_bl_in_stream_data,
    input wire [0:0] avst_iord_bl_in_stream_valid,
    input wire [0:0] avst_iowr_bl_out_stream_almostfull,
    input wire [0:0] avst_iowr_bl_out_stream_ready,
    input wire [0:0] avst_iowr_bl_return_zfp_1d_1block_almostfull,
    input wire [0:0] avst_iowr_bl_return_zfp_1d_1block_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_call_zfp_1d_1block_almost_full,
    output wire [0:0] avst_iord_bl_call_zfp_1d_1block_ready,
    output wire [0:0] avst_iord_bl_in_stream_almost_full,
    output wire [0:0] avst_iord_bl_in_stream_ready,
    output wire [63:0] avst_iowr_bl_out_stream_data,
    output wire [0:0] avst_iowr_bl_out_stream_valid,
    output wire [0:0] avst_iowr_bl_return_zfp_1d_1block_data,
    output wire [0:0] avst_iowr_bl_return_zfp_1d_1block_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] start_mask_and_q;
    wire [0:0] start_pulse_out_o_valid;
    wire [0:0] wait_pulse_extender_inst_out_o_sclrn;
    wire [0:0] zfp_1d_1block_function_out_iord_bl_call_zfp_1d_1block_o_fifoalmost_full;
    wire [0:0] zfp_1d_1block_function_out_iord_bl_call_zfp_1d_1block_o_fifoready;
    wire [0:0] zfp_1d_1block_function_out_iord_bl_in_stream_o_fifoalmost_full;
    wire [0:0] zfp_1d_1block_function_out_iord_bl_in_stream_o_fifoready;
    wire [63:0] zfp_1d_1block_function_out_iowr_bl_out_stream_o_fifodata;
    wire [0:0] zfp_1d_1block_function_out_iowr_bl_out_stream_o_fifovalid;
    wire [0:0] zfp_1d_1block_function_out_iowr_bl_return_zfp_1d_1block_o_fifodata;
    wire [0:0] zfp_1d_1block_function_out_iowr_bl_return_zfp_1d_1block_o_fifovalid;
    wire [0:0] zfp_1d_1block_function_out_stall_out;
    reg [0:0] rst_sync_rst_sclrn;


    // wait_pulse_extender_inst(BLACKBOX,36)
    zfp_1d_1block_wait_pulse_extender_inst thewait_pulse_extender_inst (
        .out_o_sclrn(wait_pulse_extender_inst_out_o_sclrn),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // start_pulse(BLACKBOX,35)
    zfp_1d_1block_start_pulse thestart_pulse (
        .in_i_stall(zfp_1d_1block_function_out_stall_out),
        .in_i_valid(wait_pulse_extender_inst_out_o_sclrn),
        .out_o_valid(start_pulse_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall(LOGICAL,20)
    assign not_stall_q = ~ (stall);

    // start_mask_and(LOGICAL,34)
    assign start_mask_and_q = start & wait_pulse_extender_inst_out_o_sclrn;

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // zfp_1d_1block_function(BLACKBOX,37)
    zfp_1d_1block_function thezfp_1d_1block_function (
        .in_arg_call(call_const_q),
        .in_arg_in_stream(call_const_q),
        .in_arg_out_stream(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_zfp_1d_1block_i_fifodata(avst_iord_bl_call_zfp_1d_1block_data),
        .in_iord_bl_call_zfp_1d_1block_i_fifovalid(start_mask_and_q),
        .in_iord_bl_in_stream_i_fifodata(avst_iord_bl_in_stream_data),
        .in_iord_bl_in_stream_i_fifovalid(avst_iord_bl_in_stream_valid),
        .in_iowr_bl_out_stream_i_fifoready(avst_iowr_bl_out_stream_ready),
        .in_iowr_bl_return_zfp_1d_1block_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_valid_in(start_pulse_out_o_valid),
        .out_iord_bl_call_zfp_1d_1block_o_fifoalmost_full(zfp_1d_1block_function_out_iord_bl_call_zfp_1d_1block_o_fifoalmost_full),
        .out_iord_bl_call_zfp_1d_1block_o_fifoready(zfp_1d_1block_function_out_iord_bl_call_zfp_1d_1block_o_fifoready),
        .out_iord_bl_in_stream_o_fifoalmost_full(zfp_1d_1block_function_out_iord_bl_in_stream_o_fifoalmost_full),
        .out_iord_bl_in_stream_o_fifoready(zfp_1d_1block_function_out_iord_bl_in_stream_o_fifoready),
        .out_iowr_bl_out_stream_o_fifodata(zfp_1d_1block_function_out_iowr_bl_out_stream_o_fifodata),
        .out_iowr_bl_out_stream_o_fifovalid(zfp_1d_1block_function_out_iowr_bl_out_stream_o_fifovalid),
        .out_iowr_bl_return_zfp_1d_1block_o_fifodata(zfp_1d_1block_function_out_iowr_bl_return_zfp_1d_1block_o_fifodata),
        .out_iowr_bl_return_zfp_1d_1block_o_fifovalid(zfp_1d_1block_function_out_iowr_bl_return_zfp_1d_1block_o_fifovalid),
        .out_stall_out(zfp_1d_1block_function_out_stall_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_call_zfp_1d_1block_almost_full(GPOUT,22)
    assign avst_iord_bl_call_zfp_1d_1block_almost_full = zfp_1d_1block_function_out_iord_bl_call_zfp_1d_1block_o_fifoalmost_full;

    // avst_iord_bl_call_zfp_1d_1block_ready(GPOUT,23)
    assign avst_iord_bl_call_zfp_1d_1block_ready = zfp_1d_1block_function_out_iord_bl_call_zfp_1d_1block_o_fifoready;

    // avst_iord_bl_in_stream_almost_full(GPOUT,24)
    assign avst_iord_bl_in_stream_almost_full = zfp_1d_1block_function_out_iord_bl_in_stream_o_fifoalmost_full;

    // avst_iord_bl_in_stream_ready(GPOUT,25)
    assign avst_iord_bl_in_stream_ready = zfp_1d_1block_function_out_iord_bl_in_stream_o_fifoready;

    // avst_iowr_bl_out_stream_data(GPOUT,26)
    assign avst_iowr_bl_out_stream_data = zfp_1d_1block_function_out_iowr_bl_out_stream_o_fifodata;

    // avst_iowr_bl_out_stream_valid(GPOUT,27)
    assign avst_iowr_bl_out_stream_valid = zfp_1d_1block_function_out_iowr_bl_out_stream_o_fifovalid;

    // avst_iowr_bl_return_zfp_1d_1block_data(GPOUT,28)
    assign avst_iowr_bl_return_zfp_1d_1block_data = zfp_1d_1block_function_out_iowr_bl_return_zfp_1d_1block_o_fifodata;

    // avst_iowr_bl_return_zfp_1d_1block_valid(GPOUT,29)
    assign avst_iowr_bl_return_zfp_1d_1block_valid = zfp_1d_1block_function_out_iowr_bl_return_zfp_1d_1block_o_fifovalid;

    // not_ready(LOGICAL,19)
    assign not_ready_q = ~ (zfp_1d_1block_function_out_iord_bl_call_zfp_1d_1block_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // pos_reset(LOGICAL,32)
    assign pos_reset_q = ~ (wait_pulse_extender_inst_out_o_sclrn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,30)
    assign busy = busy_or_q;

    // done(GPOUT,31)
    assign done = zfp_1d_1block_function_out_iowr_bl_return_zfp_1d_1block_o_fifovalid;

    // rst_sync(RESETSYNC,38)
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
