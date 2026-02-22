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

// SystemVerilog created from bb_zfp_decode_B2
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B2 (
    input wire [31:0] in_c0_exe829122_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_wgl_10_exit_exit_stall_out,
    input wire [0:0] in_wgl_10_exit_exit_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_wgl_10_exit_exit_stall_in,
    output wire [0:0] out_wgl_10_exit_exit_valid_in,
    output wire [63:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zfp_decode_B2_stall_region_out_stall_out;
    wire [0:0] bb_zfp_decode_B2_stall_region_out_valid_out;
    wire [0:0] bb_zfp_decode_B2_stall_region_out_wgl_10_exit_exit_stall_in;
    wire [0:0] bb_zfp_decode_B2_stall_region_out_wgl_10_exit_exit_valid_in;
    wire [63:0] bb_zfp_decode_B2_stall_region_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] bb_zfp_decode_B2_stall_region_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] bb_zfp_decode_B2_stall_region_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] zfp_decode_B2_branch_out_stall_out;
    wire [0:0] zfp_decode_B2_branch_out_valid_out_0;
    wire [31:0] zfp_decode_B2_merge_out_c0_exe829122;
    wire [0:0] zfp_decode_B2_merge_out_stall_out_0;
    wire [0:0] zfp_decode_B2_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_decode_B2_branch(BLACKBOX,11)
    zfp_decode_B2_branch thezfp_decode_B2_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_zfp_decode_B2_stall_region_out_valid_out),
        .out_stall_out(zfp_decode_B2_branch_out_stall_out),
        .out_valid_out_0(zfp_decode_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B2_stall_region(BLACKBOX,2)
    zfp_decode_bb_B2_stall_region thebb_zfp_decode_B2_stall_region (
        .in_c0_exe829122(zfp_decode_B2_merge_out_c0_exe829122),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(zfp_decode_B2_branch_out_stall_out),
        .in_valid_in(zfp_decode_B2_merge_out_valid_out),
        .in_wgl_10_exit_exit_stall_out(in_wgl_10_exit_exit_stall_out),
        .in_wgl_10_exit_exit_valid_out(in_wgl_10_exit_exit_valid_out),
        .out_stall_out(bb_zfp_decode_B2_stall_region_out_stall_out),
        .out_valid_out(bb_zfp_decode_B2_stall_region_out_valid_out),
        .out_wgl_10_exit_exit_stall_in(bb_zfp_decode_B2_stall_region_out_wgl_10_exit_exit_stall_in),
        .out_wgl_10_exit_exit_valid_in(bb_zfp_decode_B2_stall_region_out_wgl_10_exit_exit_valid_in),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_zfp_decode_B2_stall_region_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_zfp_decode_B2_stall_region_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(bb_zfp_decode_B2_stall_region_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_decode_B2_merge(BLACKBOX,12)
    zfp_decode_B2_merge thezfp_decode_B2_merge (
        .in_c0_exe829122_0(in_c0_exe829122_0),
        .in_stall_in(bb_zfp_decode_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe829122(zfp_decode_B2_merge_out_c0_exe829122),
        .out_stall_out_0(zfp_decode_B2_merge_out_stall_out_0),
        .out_valid_out(zfp_decode_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,13)
    assign out_stall_out_0 = zfp_decode_B2_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,14)
    assign out_valid_out_0 = zfp_decode_B2_branch_out_valid_out_0;

    // out_wgl_10_exit_exit_stall_in(GPOUT,15)
    assign out_wgl_10_exit_exit_stall_in = bb_zfp_decode_B2_stall_region_out_wgl_10_exit_exit_stall_in;

    // out_wgl_10_exit_exit_valid_in(GPOUT,16)
    assign out_wgl_10_exit_exit_valid_in = bb_zfp_decode_B2_stall_region_out_wgl_10_exit_exit_valid_in;

    // out_intel_reserved_ffwd_0_0_0_tpl(GPOUT,17)
    assign out_intel_reserved_ffwd_0_0_0_tpl = bb_zfp_decode_B2_stall_region_out_intel_reserved_ffwd_0_0_0_tpl;

    // out_intel_reserved_ffwd_0_0_1_tpl(GPOUT,18)
    assign out_intel_reserved_ffwd_0_0_1_tpl = bb_zfp_decode_B2_stall_region_out_intel_reserved_ffwd_0_0_1_tpl;

    // out_intel_reserved_ffwd_0_0_2_tpl(GPOUT,19)
    assign out_intel_reserved_ffwd_0_0_2_tpl = bb_zfp_decode_B2_stall_region_out_intel_reserved_ffwd_0_0_2_tpl;

    // rst_sync(RESETSYNC,20)
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
