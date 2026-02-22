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

// SystemVerilog created from zfp_1d_1block_B5_merge_storage
// Created for function/kernel zfp_1d_1block
// SystemVerilog created on Tue Feb  3 21:17:23 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_1block_B5_merge_storage (
    input wire [1:0] in_almost_empty_in,
    input wire [1:0] in_empty_in,
    input wire [1:0] in_i_data,
    input wire [0:0] in_i_stall,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_empty,
    output wire [1:0] out_o_data,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [1:0] zfp_1d_1block_B5_merge_storage_i_data;
    wire [0:0] zfp_1d_1block_B5_merge_storage_i_stall;
    wire zfp_1d_1block_B5_merge_storage_i_stall_bitsignaltemp;
    wire [0:0] zfp_1d_1block_B5_merge_storage_i_valid;
    wire zfp_1d_1block_B5_merge_storage_i_valid_bitsignaltemp;
    wire [0:0] zfp_1d_1block_B5_merge_storage_o_almost_empty;
    wire zfp_1d_1block_B5_merge_storage_o_almost_empty_bitsignaltemp;
    wire [1:0] zfp_1d_1block_B5_merge_storage_o_data;
    wire [0:0] zfp_1d_1block_B5_merge_storage_o_empty;
    wire zfp_1d_1block_B5_merge_storage_o_empty_bitsignaltemp;
    wire [0:0] zfp_1d_1block_B5_merge_storage_o_stall;
    wire zfp_1d_1block_B5_merge_storage_o_stall_bitsignaltemp;
    wire [0:0] zfp_1d_1block_B5_merge_storage_o_valid;
    wire zfp_1d_1block_B5_merge_storage_o_valid_bitsignaltemp;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_1d_1block_B5_merge_storage(EXTIFACE,12)
    assign zfp_1d_1block_B5_merge_storage_i_data = in_i_data;
    assign zfp_1d_1block_B5_merge_storage_i_stall = in_i_stall;
    assign zfp_1d_1block_B5_merge_storage_i_valid = in_i_valid;
    assign zfp_1d_1block_B5_merge_storage_i_stall_bitsignaltemp = zfp_1d_1block_B5_merge_storage_i_stall[0];
    assign zfp_1d_1block_B5_merge_storage_i_valid_bitsignaltemp = zfp_1d_1block_B5_merge_storage_i_valid[0];
    assign zfp_1d_1block_B5_merge_storage_o_almost_empty[0] = zfp_1d_1block_B5_merge_storage_o_almost_empty_bitsignaltemp;
    assign zfp_1d_1block_B5_merge_storage_o_empty[0] = zfp_1d_1block_B5_merge_storage_o_empty_bitsignaltemp;
    assign zfp_1d_1block_B5_merge_storage_o_stall[0] = zfp_1d_1block_B5_merge_storage_o_stall_bitsignaltemp;
    assign zfp_1d_1block_B5_merge_storage_o_valid[0] = zfp_1d_1block_B5_merge_storage_o_valid_bitsignaltemp;
    hld_fifo #(
        .ALMOST_EMPTY_CUTOFF(4),
        .ALMOST_FULL_CUTOFF(9),
        .ASYNC_RESET(0),
        .DEPTH(32),
        .RESET_EXTERNALLY_HELD(1),
        .STYLE("ms"),
        .SYNCHRONIZE_RESET(0),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .WIDTH(0)
    ) thezfp_1d_1block_B5_merge_storage (
        .i_data(in_i_data),
        .i_stall(zfp_1d_1block_B5_merge_storage_i_stall_bitsignaltemp),
        .i_valid(zfp_1d_1block_B5_merge_storage_i_valid_bitsignaltemp),
        .o_almost_empty(zfp_1d_1block_B5_merge_storage_o_almost_empty_bitsignaltemp),
        .o_data(zfp_1d_1block_B5_merge_storage_o_data),
        .o_empty(zfp_1d_1block_B5_merge_storage_o_empty_bitsignaltemp),
        .o_stall(zfp_1d_1block_B5_merge_storage_o_stall_bitsignaltemp),
        .o_valid(zfp_1d_1block_B5_merge_storage_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_o_almost_empty(GPOUT,7)
    assign out_o_almost_empty = zfp_1d_1block_B5_merge_storage_o_almost_empty;

    // out_o_data(GPOUT,8)
    assign out_o_data = zfp_1d_1block_B5_merge_storage_o_data;

    // out_o_empty(GPOUT,9)
    assign out_o_empty = zfp_1d_1block_B5_merge_storage_o_empty;

    // out_o_stall(GPOUT,10)
    assign out_o_stall = zfp_1d_1block_B5_merge_storage_o_stall;

    // out_o_valid(GPOUT,11)
    assign out_o_valid = zfp_1d_1block_B5_merge_storage_o_valid;

    // rst_sync(RESETSYNC,13)
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
