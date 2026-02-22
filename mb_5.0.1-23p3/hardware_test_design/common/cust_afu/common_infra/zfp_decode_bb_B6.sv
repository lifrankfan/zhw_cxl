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

// SystemVerilog created from bb_zfp_decode_B6
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B6 (
    input wire [0:0] in_exitcond5495_pop38145_0,
    input wire [0:0] in_exitcond5495_pop38145_1,
    input wire [31:0] in_k_058_pop1999_pop40149_0,
    input wire [31:0] in_k_058_pop1999_pop40149_1,
    input wire [31:0] in_lim_ext108_0,
    input wire [31:0] in_lim_ext108_1,
    input wire [31:0] in_lim_ext83_pop31138_0,
    input wire [31:0] in_lim_ext83_pop31138_1,
    input wire [0:0] in_notexit7697_pop39147_0,
    input wire [0:0] in_notexit7697_pop39147_1,
    input wire [63:0] in_or_i_shuffle134_0,
    input wire [63:0] in_or_i_shuffle134_1,
    input wire [0:0] in_pop37136_0,
    input wire [0:0] in_pop37136_1,
    input wire [31:0] in_reorder_limiter_enter113_0,
    input wire [31:0] in_reorder_limiter_enter113_1,
    input wire [31:0] in_reorder_limiter_enter86_pop32140_0,
    input wire [31:0] in_reorder_limiter_enter86_pop32140_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_tobool_i3493_pop36129_0,
    input wire [0:0] in_tobool_i3493_pop36129_1,
    input wire [63:0] in_ublock_sroa_0_0_pop18128_0,
    input wire [63:0] in_ublock_sroa_0_0_pop18128_1,
    input wire [63:0] in_ublock_sroa_12_0_pop15125_0,
    input wire [63:0] in_ublock_sroa_12_0_pop15125_1,
    input wire [63:0] in_ublock_sroa_6_0_pop17127_0,
    input wire [63:0] in_ublock_sroa_6_0_pop17127_1,
    input wire [63:0] in_ublock_sroa_9_0_pop16126_0,
    input wire [63:0] in_ublock_sroa_9_0_pop16126_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10293,
    output wire [63:0] out_c0_exe11294,
    output wire [63:0] out_c0_exe12295,
    output wire [63:0] out_c0_exe1284,
    output wire [63:0] out_c0_exe13296,
    output wire [63:0] out_c0_exe14297,
    output wire [63:0] out_c0_exe2285,
    output wire [63:0] out_c0_exe3286,
    output wire [63:0] out_c0_exe4287,
    output wire [0:0] out_c0_exe7290,
    output wire [31:0] out_c0_exe8291,
    output wire [0:0] out_c0_exe9292,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zfp_decode_B6_stall_region_out_c0_exe10293;
    wire [63:0] bb_zfp_decode_B6_stall_region_out_c0_exe11294;
    wire [63:0] bb_zfp_decode_B6_stall_region_out_c0_exe12295;
    wire [63:0] bb_zfp_decode_B6_stall_region_out_c0_exe1284;
    wire [63:0] bb_zfp_decode_B6_stall_region_out_c0_exe13296;
    wire [63:0] bb_zfp_decode_B6_stall_region_out_c0_exe14297;
    wire [63:0] bb_zfp_decode_B6_stall_region_out_c0_exe2285;
    wire [63:0] bb_zfp_decode_B6_stall_region_out_c0_exe3286;
    wire [63:0] bb_zfp_decode_B6_stall_region_out_c0_exe4287;
    wire [0:0] bb_zfp_decode_B6_stall_region_out_c0_exe6289;
    wire [0:0] bb_zfp_decode_B6_stall_region_out_c0_exe7290;
    wire [31:0] bb_zfp_decode_B6_stall_region_out_c0_exe8291;
    wire [0:0] bb_zfp_decode_B6_stall_region_out_c0_exe9292;
    wire [0:0] bb_zfp_decode_B6_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_zfp_decode_B6_stall_region_out_stall_out;
    wire [0:0] bb_zfp_decode_B6_stall_region_out_valid_out;
    wire [0:0] zfp_decode_B6_branch_out_c0_exe10293;
    wire [63:0] zfp_decode_B6_branch_out_c0_exe11294;
    wire [63:0] zfp_decode_B6_branch_out_c0_exe12295;
    wire [63:0] zfp_decode_B6_branch_out_c0_exe1284;
    wire [63:0] zfp_decode_B6_branch_out_c0_exe13296;
    wire [63:0] zfp_decode_B6_branch_out_c0_exe14297;
    wire [63:0] zfp_decode_B6_branch_out_c0_exe2285;
    wire [63:0] zfp_decode_B6_branch_out_c0_exe3286;
    wire [63:0] zfp_decode_B6_branch_out_c0_exe4287;
    wire [0:0] zfp_decode_B6_branch_out_c0_exe7290;
    wire [31:0] zfp_decode_B6_branch_out_c0_exe8291;
    wire [0:0] zfp_decode_B6_branch_out_c0_exe9292;
    wire [0:0] zfp_decode_B6_branch_out_stall_out;
    wire [0:0] zfp_decode_B6_branch_out_valid_out_0;
    wire [0:0] zfp_decode_B6_branch_out_valid_out_1;
    wire [0:0] zfp_decode_B6_merge_out_exitcond5495_pop38145;
    wire [31:0] zfp_decode_B6_merge_out_k_058_pop1999_pop40149;
    wire [31:0] zfp_decode_B6_merge_out_lim_ext108;
    wire [31:0] zfp_decode_B6_merge_out_lim_ext83_pop31138;
    wire [0:0] zfp_decode_B6_merge_out_notexit7697_pop39147;
    wire [63:0] zfp_decode_B6_merge_out_or_i_shuffle134;
    wire [0:0] zfp_decode_B6_merge_out_pop37136;
    wire [31:0] zfp_decode_B6_merge_out_reorder_limiter_enter113;
    wire [31:0] zfp_decode_B6_merge_out_reorder_limiter_enter86_pop32140;
    wire [0:0] zfp_decode_B6_merge_out_stall_out_0;
    wire [0:0] zfp_decode_B6_merge_out_stall_out_1;
    wire [0:0] zfp_decode_B6_merge_out_tobool_i3493_pop36129;
    wire [63:0] zfp_decode_B6_merge_out_ublock_sroa_0_0_pop18128;
    wire [63:0] zfp_decode_B6_merge_out_ublock_sroa_12_0_pop15125;
    wire [63:0] zfp_decode_B6_merge_out_ublock_sroa_6_0_pop17127;
    wire [63:0] zfp_decode_B6_merge_out_ublock_sroa_9_0_pop16126;
    wire [0:0] zfp_decode_B6_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // zfp_decode_B6_merge(BLACKBOX,55)
    zfp_decode_B6_merge thezfp_decode_B6_merge (
        .in_exitcond5495_pop38145_0(in_exitcond5495_pop38145_0),
        .in_exitcond5495_pop38145_1(in_exitcond5495_pop38145_1),
        .in_k_058_pop1999_pop40149_0(in_k_058_pop1999_pop40149_0),
        .in_k_058_pop1999_pop40149_1(in_k_058_pop1999_pop40149_1),
        .in_lim_ext108_0(in_lim_ext108_0),
        .in_lim_ext108_1(in_lim_ext108_1),
        .in_lim_ext83_pop31138_0(in_lim_ext83_pop31138_0),
        .in_lim_ext83_pop31138_1(in_lim_ext83_pop31138_1),
        .in_notexit7697_pop39147_0(in_notexit7697_pop39147_0),
        .in_notexit7697_pop39147_1(in_notexit7697_pop39147_1),
        .in_or_i_shuffle134_0(in_or_i_shuffle134_0),
        .in_or_i_shuffle134_1(in_or_i_shuffle134_1),
        .in_pop37136_0(in_pop37136_0),
        .in_pop37136_1(in_pop37136_1),
        .in_reorder_limiter_enter113_0(in_reorder_limiter_enter113_0),
        .in_reorder_limiter_enter113_1(in_reorder_limiter_enter113_1),
        .in_reorder_limiter_enter86_pop32140_0(in_reorder_limiter_enter86_pop32140_0),
        .in_reorder_limiter_enter86_pop32140_1(in_reorder_limiter_enter86_pop32140_1),
        .in_stall_in(bb_zfp_decode_B6_stall_region_out_stall_out),
        .in_tobool_i3493_pop36129_0(in_tobool_i3493_pop36129_0),
        .in_tobool_i3493_pop36129_1(in_tobool_i3493_pop36129_1),
        .in_ublock_sroa_0_0_pop18128_0(in_ublock_sroa_0_0_pop18128_0),
        .in_ublock_sroa_0_0_pop18128_1(in_ublock_sroa_0_0_pop18128_1),
        .in_ublock_sroa_12_0_pop15125_0(in_ublock_sroa_12_0_pop15125_0),
        .in_ublock_sroa_12_0_pop15125_1(in_ublock_sroa_12_0_pop15125_1),
        .in_ublock_sroa_6_0_pop17127_0(in_ublock_sroa_6_0_pop17127_0),
        .in_ublock_sroa_6_0_pop17127_1(in_ublock_sroa_6_0_pop17127_1),
        .in_ublock_sroa_9_0_pop16126_0(in_ublock_sroa_9_0_pop16126_0),
        .in_ublock_sroa_9_0_pop16126_1(in_ublock_sroa_9_0_pop16126_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond5495_pop38145(zfp_decode_B6_merge_out_exitcond5495_pop38145),
        .out_k_058_pop1999_pop40149(zfp_decode_B6_merge_out_k_058_pop1999_pop40149),
        .out_lim_ext108(zfp_decode_B6_merge_out_lim_ext108),
        .out_lim_ext83_pop31138(zfp_decode_B6_merge_out_lim_ext83_pop31138),
        .out_notexit7697_pop39147(zfp_decode_B6_merge_out_notexit7697_pop39147),
        .out_or_i_shuffle134(zfp_decode_B6_merge_out_or_i_shuffle134),
        .out_pop37136(zfp_decode_B6_merge_out_pop37136),
        .out_reorder_limiter_enter113(zfp_decode_B6_merge_out_reorder_limiter_enter113),
        .out_reorder_limiter_enter86_pop32140(zfp_decode_B6_merge_out_reorder_limiter_enter86_pop32140),
        .out_stall_out_0(zfp_decode_B6_merge_out_stall_out_0),
        .out_stall_out_1(zfp_decode_B6_merge_out_stall_out_1),
        .out_tobool_i3493_pop36129(zfp_decode_B6_merge_out_tobool_i3493_pop36129),
        .out_ublock_sroa_0_0_pop18128(zfp_decode_B6_merge_out_ublock_sroa_0_0_pop18128),
        .out_ublock_sroa_12_0_pop15125(zfp_decode_B6_merge_out_ublock_sroa_12_0_pop15125),
        .out_ublock_sroa_6_0_pop17127(zfp_decode_B6_merge_out_ublock_sroa_6_0_pop17127),
        .out_ublock_sroa_9_0_pop16126(zfp_decode_B6_merge_out_ublock_sroa_9_0_pop16126),
        .out_valid_out(zfp_decode_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zfp_decode_B6_stall_region(BLACKBOX,2)
    zfp_decode_bb_B6_stall_region thebb_zfp_decode_B6_stall_region (
        .in_exitcond5495_pop38145(zfp_decode_B6_merge_out_exitcond5495_pop38145),
        .in_k_058_pop1999_pop40149(zfp_decode_B6_merge_out_k_058_pop1999_pop40149),
        .in_lim_ext108(zfp_decode_B6_merge_out_lim_ext108),
        .in_lim_ext83_pop31138(zfp_decode_B6_merge_out_lim_ext83_pop31138),
        .in_notexit7697_pop39147(zfp_decode_B6_merge_out_notexit7697_pop39147),
        .in_or_i_shuffle134(zfp_decode_B6_merge_out_or_i_shuffle134),
        .in_pop37136(zfp_decode_B6_merge_out_pop37136),
        .in_reorder_limiter_enter113(zfp_decode_B6_merge_out_reorder_limiter_enter113),
        .in_reorder_limiter_enter86_pop32140(zfp_decode_B6_merge_out_reorder_limiter_enter86_pop32140),
        .in_stall_in(zfp_decode_B6_branch_out_stall_out),
        .in_tobool_i3493_pop36129(zfp_decode_B6_merge_out_tobool_i3493_pop36129),
        .in_ublock_sroa_0_0_pop18128(zfp_decode_B6_merge_out_ublock_sroa_0_0_pop18128),
        .in_ublock_sroa_12_0_pop15125(zfp_decode_B6_merge_out_ublock_sroa_12_0_pop15125),
        .in_ublock_sroa_6_0_pop17127(zfp_decode_B6_merge_out_ublock_sroa_6_0_pop17127),
        .in_ublock_sroa_9_0_pop16126(zfp_decode_B6_merge_out_ublock_sroa_9_0_pop16126),
        .in_valid_in(zfp_decode_B6_merge_out_valid_out),
        .out_c0_exe10293(bb_zfp_decode_B6_stall_region_out_c0_exe10293),
        .out_c0_exe11294(bb_zfp_decode_B6_stall_region_out_c0_exe11294),
        .out_c0_exe12295(bb_zfp_decode_B6_stall_region_out_c0_exe12295),
        .out_c0_exe1284(bb_zfp_decode_B6_stall_region_out_c0_exe1284),
        .out_c0_exe13296(bb_zfp_decode_B6_stall_region_out_c0_exe13296),
        .out_c0_exe14297(bb_zfp_decode_B6_stall_region_out_c0_exe14297),
        .out_c0_exe2285(bb_zfp_decode_B6_stall_region_out_c0_exe2285),
        .out_c0_exe3286(bb_zfp_decode_B6_stall_region_out_c0_exe3286),
        .out_c0_exe4287(bb_zfp_decode_B6_stall_region_out_c0_exe4287),
        .out_c0_exe6289(bb_zfp_decode_B6_stall_region_out_c0_exe6289),
        .out_c0_exe7290(bb_zfp_decode_B6_stall_region_out_c0_exe7290),
        .out_c0_exe8291(bb_zfp_decode_B6_stall_region_out_c0_exe8291),
        .out_c0_exe9292(bb_zfp_decode_B6_stall_region_out_c0_exe9292),
        .out_profile_loop_o_valid(bb_zfp_decode_B6_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_zfp_decode_B6_stall_region_out_stall_out),
        .out_valid_out(bb_zfp_decode_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // zfp_decode_B6_branch(BLACKBOX,54)
    zfp_decode_B6_branch thezfp_decode_B6_branch (
        .in_c0_exe10293(bb_zfp_decode_B6_stall_region_out_c0_exe10293),
        .in_c0_exe11294(bb_zfp_decode_B6_stall_region_out_c0_exe11294),
        .in_c0_exe12295(bb_zfp_decode_B6_stall_region_out_c0_exe12295),
        .in_c0_exe1284(bb_zfp_decode_B6_stall_region_out_c0_exe1284),
        .in_c0_exe13296(bb_zfp_decode_B6_stall_region_out_c0_exe13296),
        .in_c0_exe14297(bb_zfp_decode_B6_stall_region_out_c0_exe14297),
        .in_c0_exe2285(bb_zfp_decode_B6_stall_region_out_c0_exe2285),
        .in_c0_exe3286(bb_zfp_decode_B6_stall_region_out_c0_exe3286),
        .in_c0_exe4287(bb_zfp_decode_B6_stall_region_out_c0_exe4287),
        .in_c0_exe6289(bb_zfp_decode_B6_stall_region_out_c0_exe6289),
        .in_c0_exe7290(bb_zfp_decode_B6_stall_region_out_c0_exe7290),
        .in_c0_exe8291(bb_zfp_decode_B6_stall_region_out_c0_exe8291),
        .in_c0_exe9292(bb_zfp_decode_B6_stall_region_out_c0_exe9292),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_zfp_decode_B6_stall_region_out_valid_out),
        .out_c0_exe10293(zfp_decode_B6_branch_out_c0_exe10293),
        .out_c0_exe11294(zfp_decode_B6_branch_out_c0_exe11294),
        .out_c0_exe12295(zfp_decode_B6_branch_out_c0_exe12295),
        .out_c0_exe1284(zfp_decode_B6_branch_out_c0_exe1284),
        .out_c0_exe13296(zfp_decode_B6_branch_out_c0_exe13296),
        .out_c0_exe14297(zfp_decode_B6_branch_out_c0_exe14297),
        .out_c0_exe2285(zfp_decode_B6_branch_out_c0_exe2285),
        .out_c0_exe3286(zfp_decode_B6_branch_out_c0_exe3286),
        .out_c0_exe4287(zfp_decode_B6_branch_out_c0_exe4287),
        .out_c0_exe7290(zfp_decode_B6_branch_out_c0_exe7290),
        .out_c0_exe8291(zfp_decode_B6_branch_out_c0_exe8291),
        .out_c0_exe9292(zfp_decode_B6_branch_out_c0_exe9292),
        .out_stall_out(zfp_decode_B6_branch_out_stall_out),
        .out_valid_out_0(zfp_decode_B6_branch_out_valid_out_0),
        .out_valid_out_1(zfp_decode_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10293(GPOUT,35)
    assign out_c0_exe10293 = zfp_decode_B6_branch_out_c0_exe10293;

    // out_c0_exe11294(GPOUT,36)
    assign out_c0_exe11294 = zfp_decode_B6_branch_out_c0_exe11294;

    // out_c0_exe12295(GPOUT,37)
    assign out_c0_exe12295 = zfp_decode_B6_branch_out_c0_exe12295;

    // out_c0_exe1284(GPOUT,38)
    assign out_c0_exe1284 = zfp_decode_B6_branch_out_c0_exe1284;

    // out_c0_exe13296(GPOUT,39)
    assign out_c0_exe13296 = zfp_decode_B6_branch_out_c0_exe13296;

    // out_c0_exe14297(GPOUT,40)
    assign out_c0_exe14297 = zfp_decode_B6_branch_out_c0_exe14297;

    // out_c0_exe2285(GPOUT,41)
    assign out_c0_exe2285 = zfp_decode_B6_branch_out_c0_exe2285;

    // out_c0_exe3286(GPOUT,42)
    assign out_c0_exe3286 = zfp_decode_B6_branch_out_c0_exe3286;

    // out_c0_exe4287(GPOUT,43)
    assign out_c0_exe4287 = zfp_decode_B6_branch_out_c0_exe4287;

    // out_c0_exe7290(GPOUT,44)
    assign out_c0_exe7290 = zfp_decode_B6_branch_out_c0_exe7290;

    // out_c0_exe8291(GPOUT,45)
    assign out_c0_exe8291 = zfp_decode_B6_branch_out_c0_exe8291;

    // out_c0_exe9292(GPOUT,46)
    assign out_c0_exe9292 = zfp_decode_B6_branch_out_c0_exe9292;

    // out_profile_loop_o_valid(GPOUT,47)
    assign out_profile_loop_o_valid = bb_zfp_decode_B6_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,48)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,49)
    assign out_stall_out_0 = zfp_decode_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,50)
    assign out_stall_out_1 = zfp_decode_B6_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,51)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,52)
    assign out_valid_out_0 = zfp_decode_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,53)
    assign out_valid_out_1 = zfp_decode_B6_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,56)
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
