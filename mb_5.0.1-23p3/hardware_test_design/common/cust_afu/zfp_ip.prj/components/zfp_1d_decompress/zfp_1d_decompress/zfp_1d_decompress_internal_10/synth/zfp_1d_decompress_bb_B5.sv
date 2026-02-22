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

// SystemVerilog created from bb_zfp_1d_decompress_B5
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_bb_B5 (
    output wire [63:0] out_feedback_out_13,
    output wire [63:0] out_feedback_out_14,
    output wire [63:0] out_feedback_out_15,
    output wire [63:0] out_feedback_out_16,
    output wire [63:0] out_feedback_out_18,
    output wire [31:0] out_feedback_out_19,
    output wire [0:0] out_feedback_out_20,
    input wire [0:0] in_feedback_stall_in_13,
    input wire [0:0] in_feedback_stall_in_14,
    input wire [0:0] in_feedback_stall_in_15,
    input wire [0:0] in_feedback_stall_in_16,
    input wire [0:0] in_feedback_stall_in_18,
    input wire [0:0] in_feedback_stall_in_19,
    input wire [0:0] in_feedback_stall_in_20,
    output wire [0:0] out_feedback_valid_out_13,
    output wire [0:0] out_feedback_valid_out_14,
    output wire [0:0] out_feedback_valid_out_15,
    output wire [0:0] out_feedback_valid_out_16,
    output wire [0:0] out_feedback_valid_out_18,
    output wire [0:0] out_feedback_valid_out_19,
    output wire [0:0] out_feedback_valid_out_20,
    input wire [0:0] in_c0_exe21331_0,
    input wire [31:0] in_c0_exe41352_0,
    input wire [31:0] in_c0_exe73_0,
    input wire [0:0] in_c0_exe84_0,
    input wire [0:0] in_c0_exe95_0,
    input wire [63:0] in_c1_exe1016_0,
    input wire [63:0] in_c1_exe11497_0,
    input wire [63:0] in_c1_exe21508_0,
    input wire [63:0] in_c1_exe31519_0,
    input wire [63:0] in_c1_exe410_0,
    input wire [63:0] in_c1_exe511_0,
    input wire [63:0] in_c1_exe612_0,
    input wire [63:0] in_c1_exe713_0,
    input wire [63:0] in_c1_exe814_0,
    input wire [63:0] in_c1_exe915_0,
    input wire [0:0] in_c2_exe11416_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_c0_exe84;
    wire [63:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_13;
    wire [63:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_14;
    wire [63:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_15;
    wire [63:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_16;
    wire [63:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_18;
    wire [31:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_19;
    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_20;
    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_13;
    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_14;
    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_15;
    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_16;
    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_18;
    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_19;
    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_20;
    wire [63:0] bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_stall_out;
    wire [0:0] bb_zfp_1d_decompress_B5_stall_region_out_valid_out;
    wire [0:0] zfp_1d_decompress_B5_branch_out_stall_out;
    wire [0:0] zfp_1d_decompress_B5_branch_out_valid_out_0;
    wire [0:0] zfp_1d_decompress_B5_branch_out_valid_out_1;
    wire [0:0] zfp_1d_decompress_B5_merge_out_c0_exe21331;
    wire [31:0] zfp_1d_decompress_B5_merge_out_c0_exe41352;
    wire [31:0] zfp_1d_decompress_B5_merge_out_c0_exe73;
    wire [0:0] zfp_1d_decompress_B5_merge_out_c0_exe84;
    wire [0:0] zfp_1d_decompress_B5_merge_out_c0_exe95;
    wire [63:0] zfp_1d_decompress_B5_merge_out_c1_exe1016;
    wire [63:0] zfp_1d_decompress_B5_merge_out_c1_exe11497;
    wire [63:0] zfp_1d_decompress_B5_merge_out_c1_exe21508;
    wire [63:0] zfp_1d_decompress_B5_merge_out_c1_exe31519;
    wire [63:0] zfp_1d_decompress_B5_merge_out_c1_exe410;
    wire [63:0] zfp_1d_decompress_B5_merge_out_c1_exe511;
    wire [63:0] zfp_1d_decompress_B5_merge_out_c1_exe612;
    wire [63:0] zfp_1d_decompress_B5_merge_out_c1_exe713;
    wire [63:0] zfp_1d_decompress_B5_merge_out_c1_exe814;
    wire [63:0] zfp_1d_decompress_B5_merge_out_c1_exe915;
    wire [0:0] zfp_1d_decompress_B5_merge_out_c2_exe11416;
    wire [0:0] zfp_1d_decompress_B5_merge_out_stall_out_0;
    wire [0:0] zfp_1d_decompress_B5_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_1d_decompress_B5_branch(BLACKBOX,51)
    zfp_1d_decompress_B5_branch thezfp_1d_decompress_B5_branch (
        .in_c0_exe84(bb_zfp_1d_decompress_B5_stall_region_out_c0_exe84),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_zfp_1d_decompress_B5_stall_region_out_valid_out),
        .out_stall_out(zfp_1d_decompress_B5_branch_out_stall_out),
        .out_valid_out_0(zfp_1d_decompress_B5_branch_out_valid_out_0),
        .out_valid_out_1(zfp_1d_decompress_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_1d_decompress_B5_merge(BLACKBOX,52)
    zfp_1d_decompress_B5_merge thezfp_1d_decompress_B5_merge (
        .in_c0_exe21331_0(in_c0_exe21331_0),
        .in_c0_exe41352_0(in_c0_exe41352_0),
        .in_c0_exe73_0(in_c0_exe73_0),
        .in_c0_exe84_0(in_c0_exe84_0),
        .in_c0_exe95_0(in_c0_exe95_0),
        .in_c1_exe1016_0(in_c1_exe1016_0),
        .in_c1_exe11497_0(in_c1_exe11497_0),
        .in_c1_exe21508_0(in_c1_exe21508_0),
        .in_c1_exe31519_0(in_c1_exe31519_0),
        .in_c1_exe410_0(in_c1_exe410_0),
        .in_c1_exe511_0(in_c1_exe511_0),
        .in_c1_exe612_0(in_c1_exe612_0),
        .in_c1_exe713_0(in_c1_exe713_0),
        .in_c1_exe814_0(in_c1_exe814_0),
        .in_c1_exe915_0(in_c1_exe915_0),
        .in_c2_exe11416_0(in_c2_exe11416_0),
        .in_stall_in(bb_zfp_1d_decompress_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe21331(zfp_1d_decompress_B5_merge_out_c0_exe21331),
        .out_c0_exe41352(zfp_1d_decompress_B5_merge_out_c0_exe41352),
        .out_c0_exe73(zfp_1d_decompress_B5_merge_out_c0_exe73),
        .out_c0_exe84(zfp_1d_decompress_B5_merge_out_c0_exe84),
        .out_c0_exe95(zfp_1d_decompress_B5_merge_out_c0_exe95),
        .out_c1_exe1016(zfp_1d_decompress_B5_merge_out_c1_exe1016),
        .out_c1_exe11497(zfp_1d_decompress_B5_merge_out_c1_exe11497),
        .out_c1_exe21508(zfp_1d_decompress_B5_merge_out_c1_exe21508),
        .out_c1_exe31519(zfp_1d_decompress_B5_merge_out_c1_exe31519),
        .out_c1_exe410(zfp_1d_decompress_B5_merge_out_c1_exe410),
        .out_c1_exe511(zfp_1d_decompress_B5_merge_out_c1_exe511),
        .out_c1_exe612(zfp_1d_decompress_B5_merge_out_c1_exe612),
        .out_c1_exe713(zfp_1d_decompress_B5_merge_out_c1_exe713),
        .out_c1_exe814(zfp_1d_decompress_B5_merge_out_c1_exe814),
        .out_c1_exe915(zfp_1d_decompress_B5_merge_out_c1_exe915),
        .out_c2_exe11416(zfp_1d_decompress_B5_merge_out_c2_exe11416),
        .out_stall_out_0(zfp_1d_decompress_B5_merge_out_stall_out_0),
        .out_valid_out(zfp_1d_decompress_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_1d_decompress_B5_stall_region(BLACKBOX,2)
    zfp_1d_decompress_bb_B5_stall_region thebb_zfp_1d_decompress_B5_stall_region (
        .in_c0_exe21331(zfp_1d_decompress_B5_merge_out_c0_exe21331),
        .in_c0_exe41352(zfp_1d_decompress_B5_merge_out_c0_exe41352),
        .in_c0_exe73(zfp_1d_decompress_B5_merge_out_c0_exe73),
        .in_c0_exe84(zfp_1d_decompress_B5_merge_out_c0_exe84),
        .in_c0_exe95(zfp_1d_decompress_B5_merge_out_c0_exe95),
        .in_c1_exe1016(zfp_1d_decompress_B5_merge_out_c1_exe1016),
        .in_c1_exe11497(zfp_1d_decompress_B5_merge_out_c1_exe11497),
        .in_c1_exe21508(zfp_1d_decompress_B5_merge_out_c1_exe21508),
        .in_c1_exe31519(zfp_1d_decompress_B5_merge_out_c1_exe31519),
        .in_c1_exe410(zfp_1d_decompress_B5_merge_out_c1_exe410),
        .in_c1_exe511(zfp_1d_decompress_B5_merge_out_c1_exe511),
        .in_c1_exe612(zfp_1d_decompress_B5_merge_out_c1_exe612),
        .in_c1_exe713(zfp_1d_decompress_B5_merge_out_c1_exe713),
        .in_c1_exe814(zfp_1d_decompress_B5_merge_out_c1_exe814),
        .in_c1_exe915(zfp_1d_decompress_B5_merge_out_c1_exe915),
        .in_c2_exe11416(zfp_1d_decompress_B5_merge_out_c2_exe11416),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_feedback_stall_in_14(in_feedback_stall_in_14),
        .in_feedback_stall_in_15(in_feedback_stall_in_15),
        .in_feedback_stall_in_16(in_feedback_stall_in_16),
        .in_feedback_stall_in_18(in_feedback_stall_in_18),
        .in_feedback_stall_in_19(in_feedback_stall_in_19),
        .in_feedback_stall_in_20(in_feedback_stall_in_20),
        .in_stall_in(zfp_1d_decompress_B5_branch_out_stall_out),
        .in_valid_in(zfp_1d_decompress_B5_merge_out_valid_out),
        .out_c0_exe84(bb_zfp_1d_decompress_B5_stall_region_out_c0_exe84),
        .out_feedback_out_13(bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_13),
        .out_feedback_out_14(bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_14),
        .out_feedback_out_15(bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_15),
        .out_feedback_out_16(bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_16),
        .out_feedback_out_18(bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_18),
        .out_feedback_out_19(bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_19),
        .out_feedback_out_20(bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_20),
        .out_feedback_valid_out_13(bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_13),
        .out_feedback_valid_out_14(bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_14),
        .out_feedback_valid_out_15(bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_15),
        .out_feedback_valid_out_16(bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_16),
        .out_feedback_valid_out_18(bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_18),
        .out_feedback_valid_out_19(bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_19),
        .out_feedback_valid_out_20(bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_20),
        .out_intel_reserved_ffwd_1_0(bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_4_0),
        .out_stall_out(bb_zfp_1d_decompress_B5_stall_region_out_stall_out),
        .out_valid_out(bb_zfp_1d_decompress_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_13_sync(GPOUT,3)
    assign out_feedback_out_13 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_13;

    // feedback_out_14_sync(GPOUT,4)
    assign out_feedback_out_14 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_14;

    // feedback_out_15_sync(GPOUT,5)
    assign out_feedback_out_15 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_15;

    // feedback_out_16_sync(GPOUT,6)
    assign out_feedback_out_16 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_16;

    // feedback_out_18_sync(GPOUT,7)
    assign out_feedback_out_18 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_18;

    // feedback_out_19_sync(GPOUT,8)
    assign out_feedback_out_19 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_19;

    // feedback_out_20_sync(GPOUT,9)
    assign out_feedback_out_20 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_out_20;

    // feedback_valid_out_13_sync(GPOUT,17)
    assign out_feedback_valid_out_13 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_13;

    // feedback_valid_out_14_sync(GPOUT,18)
    assign out_feedback_valid_out_14 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_14;

    // feedback_valid_out_15_sync(GPOUT,19)
    assign out_feedback_valid_out_15 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_15;

    // feedback_valid_out_16_sync(GPOUT,20)
    assign out_feedback_valid_out_16 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_16;

    // feedback_valid_out_18_sync(GPOUT,21)
    assign out_feedback_valid_out_18 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_18;

    // feedback_valid_out_19_sync(GPOUT,22)
    assign out_feedback_valid_out_19 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_19;

    // feedback_valid_out_20_sync(GPOUT,23)
    assign out_feedback_valid_out_20 = bb_zfp_1d_decompress_B5_stall_region_out_feedback_valid_out_20;

    // out_intel_reserved_ffwd_1_0(GPOUT,43)
    assign out_intel_reserved_ffwd_1_0 = bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,44)
    assign out_intel_reserved_ffwd_2_0 = bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,45)
    assign out_intel_reserved_ffwd_3_0 = bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,46)
    assign out_intel_reserved_ffwd_4_0 = bb_zfp_1d_decompress_B5_stall_region_out_intel_reserved_ffwd_4_0;

    // out_stall_in_0(GPOUT,47)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,48)
    assign out_stall_out_0 = zfp_1d_decompress_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,49)
    assign out_valid_out_0 = zfp_1d_decompress_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,50)
    assign out_valid_out_1 = zfp_1d_decompress_B5_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,53)
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
