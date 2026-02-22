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

// SystemVerilog created from bb_zfp_decode_B9
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B9 (
    output wire [63:0] out_iowr_bl_out_stream_o_fifodata,
    output wire [0:0] out_iowr_bl_out_stream_o_fifovalid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_iowr_bl_out_stream_i_fifoready,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zfp_decode_B9_stall_region_out_c0_exe3339;
    wire [63:0] bb_zfp_decode_B9_stall_region_out_iowr_bl_out_stream_o_fifodata;
    wire [0:0] bb_zfp_decode_B9_stall_region_out_iowr_bl_out_stream_o_fifovalid;
    wire [0:0] bb_zfp_decode_B9_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_zfp_decode_B9_stall_region_out_stall_out;
    wire [0:0] bb_zfp_decode_B9_stall_region_out_valid_out;
    wire [0:0] zfp_decode_B9_branch_out_stall_out;
    wire [0:0] zfp_decode_B9_branch_out_valid_out_0;
    wire [0:0] zfp_decode_B9_branch_out_valid_out_1;
    wire [0:0] zfp_decode_B9_merge_out_stall_out_0;
    wire [0:0] zfp_decode_B9_merge_out_stall_out_1;
    wire [0:0] zfp_decode_B9_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_decode_B9_merge(BLACKBOX,13)
    zfp_decode_B9_merge thezfp_decode_B9_merge (
        .in_stall_in(bb_zfp_decode_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(zfp_decode_B9_merge_out_stall_out_0),
        .out_stall_out_1(zfp_decode_B9_merge_out_stall_out_1),
        .out_valid_out(zfp_decode_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_decode_B9_branch(BLACKBOX,12)
    zfp_decode_B9_branch thezfp_decode_B9_branch (
        .in_c0_exe3339(bb_zfp_decode_B9_stall_region_out_c0_exe3339),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_zfp_decode_B9_stall_region_out_valid_out),
        .out_stall_out(zfp_decode_B9_branch_out_stall_out),
        .out_valid_out_0(zfp_decode_B9_branch_out_valid_out_0),
        .out_valid_out_1(zfp_decode_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B9_stall_region(BLACKBOX,2)
    zfp_decode_bb_B9_stall_region thebb_zfp_decode_B9_stall_region (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_iowr_bl_out_stream_i_fifoready(in_iowr_bl_out_stream_i_fifoready),
        .in_stall_in(zfp_decode_B9_branch_out_stall_out),
        .in_valid_in(zfp_decode_B9_merge_out_valid_out),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_c0_exe3339(bb_zfp_decode_B9_stall_region_out_c0_exe3339),
        .out_iowr_bl_out_stream_o_fifodata(bb_zfp_decode_B9_stall_region_out_iowr_bl_out_stream_o_fifodata),
        .out_iowr_bl_out_stream_o_fifovalid(bb_zfp_decode_B9_stall_region_out_iowr_bl_out_stream_o_fifovalid),
        .out_profile_loop_o_valid(bb_zfp_decode_B9_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_zfp_decode_B9_stall_region_out_stall_out),
        .out_valid_out(bb_zfp_decode_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iowr_bl_out_stream_o_fifodata(GPOUT,3)
    assign out_iowr_bl_out_stream_o_fifodata = bb_zfp_decode_B9_stall_region_out_iowr_bl_out_stream_o_fifodata;

    // out_iowr_bl_out_stream_o_fifovalid(GPOUT,4)
    assign out_iowr_bl_out_stream_o_fifovalid = bb_zfp_decode_B9_stall_region_out_iowr_bl_out_stream_o_fifovalid;

    // out_profile_loop_o_valid(GPOUT,5)
    assign out_profile_loop_o_valid = bb_zfp_decode_B9_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,6)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,7)
    assign out_stall_out_0 = zfp_decode_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,8)
    assign out_stall_out_1 = zfp_decode_B9_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,9)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,10)
    assign out_valid_out_0 = zfp_decode_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,11)
    assign out_valid_out_1 = zfp_decode_B9_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,23)
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
