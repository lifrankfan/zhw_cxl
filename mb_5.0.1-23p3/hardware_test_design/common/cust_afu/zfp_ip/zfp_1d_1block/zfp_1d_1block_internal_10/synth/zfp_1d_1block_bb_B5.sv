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

// SystemVerilog created from bb_zfp_1d_1block_B5
// Created for function/kernel zfp_1d_1block
// SystemVerilog created on Tue Feb  3 21:17:23 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_1block_bb_B5 (
    output wire [0:0] out_feedback_almost_empty_out_1,
    output wire [0:0] out_feedback_data_out_1,
    output wire [0:0] out_feedback_empty_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    input wire [0:0] in_iowr_bl_return_zfp_1d_1block_i_fifoready,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_iowr_bl_return_zfp_1d_1block_o_fifodata,
    output wire [0:0] out_iowr_bl_return_zfp_1d_1block_o_fifovalid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zfp_1d_1block_B5_stall_region_out_almost_empty_out;
    wire [0:0] bb_zfp_1d_1block_B5_stall_region_out_empty_out;
    wire [0:0] bb_zfp_1d_1block_B5_stall_region_out_feedback_almost_empty_out_1;
    wire [0:0] bb_zfp_1d_1block_B5_stall_region_out_feedback_data_out_1;
    wire [0:0] bb_zfp_1d_1block_B5_stall_region_out_feedback_empty_out_1;
    wire [0:0] bb_zfp_1d_1block_B5_stall_region_out_iowr_bl_return_zfp_1d_1block_o_fifodata;
    wire [0:0] bb_zfp_1d_1block_B5_stall_region_out_iowr_bl_return_zfp_1d_1block_o_fifovalid;
    wire [0:0] bb_zfp_1d_1block_B5_stall_region_out_stall_out;
    wire [0:0] bb_zfp_1d_1block_B5_stall_region_out_valid_out;
    wire [0:0] zfp_1d_1block_B5_branch_out_stall_out;
    wire [0:0] zfp_1d_1block_B5_branch_out_valid_out_0;
    wire [0:0] zfp_1d_1block_B5_merge_out_almost_empty_out;
    wire [0:0] zfp_1d_1block_B5_merge_out_empty_out;
    wire [0:0] zfp_1d_1block_B5_merge_out_stall_out_0;
    wire [0:0] zfp_1d_1block_B5_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_1d_1block_B5_branch(BLACKBOX,16)
    zfp_1d_1block_B5_branch thezfp_1d_1block_B5_branch (
        .in_almost_empty_in(bb_zfp_1d_1block_B5_stall_region_out_almost_empty_out),
        .in_empty_in(bb_zfp_1d_1block_B5_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_zfp_1d_1block_B5_stall_region_out_valid_out),
        .out_stall_out(zfp_1d_1block_B5_branch_out_stall_out),
        .out_valid_out_0(zfp_1d_1block_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_1d_1block_B5_merge(BLACKBOX,17)
    zfp_1d_1block_B5_merge thezfp_1d_1block_B5_merge (
        .in_stall_in(bb_zfp_1d_1block_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(zfp_1d_1block_B5_merge_out_almost_empty_out),
        .out_empty_out(zfp_1d_1block_B5_merge_out_empty_out),
        .out_stall_out_0(zfp_1d_1block_B5_merge_out_stall_out_0),
        .out_valid_out(zfp_1d_1block_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_1block_B5_stall_region(BLACKBOX,2)
    zfp_1d_1block_bb_B5_stall_region thebb_zfp_1d_1block_B5_stall_region (
        .in_almost_empty_in(zfp_1d_1block_B5_merge_out_almost_empty_out),
        .in_empty_in(zfp_1d_1block_B5_merge_out_empty_out),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_iowr_bl_return_zfp_1d_1block_i_fifoready(in_iowr_bl_return_zfp_1d_1block_i_fifoready),
        .in_stall_in(zfp_1d_1block_B5_branch_out_stall_out),
        .in_valid_in(zfp_1d_1block_B5_merge_out_valid_out),
        .out_almost_empty_out(bb_zfp_1d_1block_B5_stall_region_out_almost_empty_out),
        .out_empty_out(bb_zfp_1d_1block_B5_stall_region_out_empty_out),
        .out_feedback_almost_empty_out_1(bb_zfp_1d_1block_B5_stall_region_out_feedback_almost_empty_out_1),
        .out_feedback_data_out_1(bb_zfp_1d_1block_B5_stall_region_out_feedback_data_out_1),
        .out_feedback_empty_out_1(bb_zfp_1d_1block_B5_stall_region_out_feedback_empty_out_1),
        .out_iowr_bl_return_zfp_1d_1block_o_fifodata(bb_zfp_1d_1block_B5_stall_region_out_iowr_bl_return_zfp_1d_1block_o_fifodata),
        .out_iowr_bl_return_zfp_1d_1block_o_fifovalid(bb_zfp_1d_1block_B5_stall_region_out_iowr_bl_return_zfp_1d_1block_o_fifovalid),
        .out_stall_out(bb_zfp_1d_1block_B5_stall_region_out_stall_out),
        .out_valid_out(bb_zfp_1d_1block_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_almost_empty_out_1_sync(GPOUT,3)
    assign out_feedback_almost_empty_out_1 = bb_zfp_1d_1block_B5_stall_region_out_feedback_almost_empty_out_1;

    // feedback_data_out_1_sync(GPOUT,4)
    assign out_feedback_data_out_1 = bb_zfp_1d_1block_B5_stall_region_out_feedback_data_out_1;

    // feedback_empty_out_1_sync(GPOUT,5)
    assign out_feedback_empty_out_1 = bb_zfp_1d_1block_B5_stall_region_out_feedback_empty_out_1;

    // out_iowr_bl_return_zfp_1d_1block_o_fifodata(GPOUT,10)
    assign out_iowr_bl_return_zfp_1d_1block_o_fifodata = bb_zfp_1d_1block_B5_stall_region_out_iowr_bl_return_zfp_1d_1block_o_fifodata;

    // out_iowr_bl_return_zfp_1d_1block_o_fifovalid(GPOUT,11)
    assign out_iowr_bl_return_zfp_1d_1block_o_fifovalid = bb_zfp_1d_1block_B5_stall_region_out_iowr_bl_return_zfp_1d_1block_o_fifovalid;

    // out_stall_in_0(GPOUT,12)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,13)
    assign out_stall_out_0 = zfp_1d_1block_B5_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,14)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,15)
    assign out_valid_out_0 = zfp_1d_1block_B5_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,18)
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
