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

// SystemVerilog created from zfp_decode_B5_merge
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_B5_merge (
    input wire [63:0] in_acl_1117_0,
    input wire [63:0] in_acl_1117_1,
    input wire [0:0] in_exitcond54120_0,
    input wire [0:0] in_exitcond54120_1,
    input wire [0:0] in_forked81116_0,
    input wire [0:0] in_forked81116_1,
    input wire [0:0] in_forked89_0,
    input wire [0:0] in_forked89_1,
    input wire [31:0] in_k_058_pop19122_0,
    input wire [31:0] in_k_058_pop19122_1,
    input wire [31:0] in_lim_ext110_0,
    input wire [31:0] in_lim_ext110_1,
    input wire [31:0] in_lim_ext82_pop23123_0,
    input wire [31:0] in_lim_ext82_pop23123_1,
    input wire [0:0] in_notexit76121_0,
    input wire [0:0] in_notexit76121_1,
    input wire [31:0] in_reorder_limiter_enter115_0,
    input wire [31:0] in_reorder_limiter_enter115_1,
    input wire [31:0] in_reorder_limiter_enter85_pop24124_0,
    input wire [31:0] in_reorder_limiter_enter85_pop24124_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_sub_i30118_0,
    input wire [31:0] in_sub_i30118_1,
    input wire [0:0] in_tobool_i34119_0,
    input wire [0:0] in_tobool_i34119_1,
    input wire [0:0] in_unnamed_zfp_decode8_0,
    input wire [0:0] in_unnamed_zfp_decode8_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_acl_1117,
    output wire [0:0] out_exitcond54120,
    output wire [0:0] out_forked81116,
    output wire [0:0] out_forked89,
    output wire [31:0] out_k_058_pop19122,
    output wire [31:0] out_lim_ext110,
    output wire [31:0] out_lim_ext82_pop23123,
    output wire [0:0] out_notexit76121,
    output wire [31:0] out_reorder_limiter_enter115,
    output wire [31:0] out_reorder_limiter_enter85_pop24124,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_sub_i30118,
    output wire [0:0] out_tobool_i34119,
    output wire [0:0] out_unnamed_zfp_decode8,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] acl_1117_mux_s;
    reg [63:0] acl_1117_mux_q;
    wire [0:0] exitcond54120_mux_s;
    reg [0:0] exitcond54120_mux_q;
    wire [0:0] forked81116_mux_s;
    reg [0:0] forked81116_mux_q;
    wire [0:0] forked89_mux_s;
    reg [0:0] forked89_mux_q;
    wire [0:0] k_058_pop19122_mux_s;
    reg [31:0] k_058_pop19122_mux_q;
    wire [0:0] lim_ext110_mux_s;
    reg [31:0] lim_ext110_mux_q;
    wire [0:0] lim_ext82_pop23123_mux_s;
    reg [31:0] lim_ext82_pop23123_mux_q;
    wire [0:0] notexit76121_mux_s;
    reg [0:0] notexit76121_mux_q;
    wire [0:0] reorder_limiter_enter115_mux_s;
    reg [31:0] reorder_limiter_enter115_mux_q;
    wire [0:0] reorder_limiter_enter85_pop24124_mux_s;
    reg [31:0] reorder_limiter_enter85_pop24124_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] sub_i30118_mux_s;
    reg [31:0] sub_i30118_mux_q;
    wire [0:0] tobool_i34119_mux_s;
    reg [0:0] tobool_i34119_mux_q;
    wire [0:0] unnamed_zfp_decode8_mux_s;
    reg [0:0] unnamed_zfp_decode8_mux_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // acl_1117_mux(MUX,2)
    assign acl_1117_mux_s = in_valid_in_0;
    always @(acl_1117_mux_s or in_acl_1117_1 or in_acl_1117_0)
    begin
        unique case (acl_1117_mux_s)
            1'b0 : acl_1117_mux_q = in_acl_1117_1;
            1'b1 : acl_1117_mux_q = in_acl_1117_0;
            default : acl_1117_mux_q = 64'b0;
        endcase
    end

    // out_acl_1117(GPOUT,39)
    assign out_acl_1117 = acl_1117_mux_q;

    // exitcond54120_mux(MUX,3)
    assign exitcond54120_mux_s = in_valid_in_0;
    always @(exitcond54120_mux_s or in_exitcond54120_1 or in_exitcond54120_0)
    begin
        unique case (exitcond54120_mux_s)
            1'b0 : exitcond54120_mux_q = in_exitcond54120_1;
            1'b1 : exitcond54120_mux_q = in_exitcond54120_0;
            default : exitcond54120_mux_q = 1'b0;
        endcase
    end

    // out_exitcond54120(GPOUT,40)
    assign out_exitcond54120 = exitcond54120_mux_q;

    // forked81116_mux(MUX,4)
    assign forked81116_mux_s = in_valid_in_0;
    always @(forked81116_mux_s or in_forked81116_1 or in_forked81116_0)
    begin
        unique case (forked81116_mux_s)
            1'b0 : forked81116_mux_q = in_forked81116_1;
            1'b1 : forked81116_mux_q = in_forked81116_0;
            default : forked81116_mux_q = 1'b0;
        endcase
    end

    // out_forked81116(GPOUT,41)
    assign out_forked81116 = forked81116_mux_q;

    // forked89_mux(MUX,5)
    assign forked89_mux_s = in_valid_in_0;
    always @(forked89_mux_s or in_forked89_1 or in_forked89_0)
    begin
        unique case (forked89_mux_s)
            1'b0 : forked89_mux_q = in_forked89_1;
            1'b1 : forked89_mux_q = in_forked89_0;
            default : forked89_mux_q = 1'b0;
        endcase
    end

    // out_forked89(GPOUT,42)
    assign out_forked89 = forked89_mux_q;

    // k_058_pop19122_mux(MUX,35)
    assign k_058_pop19122_mux_s = in_valid_in_0;
    always @(k_058_pop19122_mux_s or in_k_058_pop19122_1 or in_k_058_pop19122_0)
    begin
        unique case (k_058_pop19122_mux_s)
            1'b0 : k_058_pop19122_mux_q = in_k_058_pop19122_1;
            1'b1 : k_058_pop19122_mux_q = in_k_058_pop19122_0;
            default : k_058_pop19122_mux_q = 32'b0;
        endcase
    end

    // out_k_058_pop19122(GPOUT,43)
    assign out_k_058_pop19122 = k_058_pop19122_mux_q;

    // lim_ext110_mux(MUX,36)
    assign lim_ext110_mux_s = in_valid_in_0;
    always @(lim_ext110_mux_s or in_lim_ext110_1 or in_lim_ext110_0)
    begin
        unique case (lim_ext110_mux_s)
            1'b0 : lim_ext110_mux_q = in_lim_ext110_1;
            1'b1 : lim_ext110_mux_q = in_lim_ext110_0;
            default : lim_ext110_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext110(GPOUT,44)
    assign out_lim_ext110 = lim_ext110_mux_q;

    // lim_ext82_pop23123_mux(MUX,37)
    assign lim_ext82_pop23123_mux_s = in_valid_in_0;
    always @(lim_ext82_pop23123_mux_s or in_lim_ext82_pop23123_1 or in_lim_ext82_pop23123_0)
    begin
        unique case (lim_ext82_pop23123_mux_s)
            1'b0 : lim_ext82_pop23123_mux_q = in_lim_ext82_pop23123_1;
            1'b1 : lim_ext82_pop23123_mux_q = in_lim_ext82_pop23123_0;
            default : lim_ext82_pop23123_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext82_pop23123(GPOUT,45)
    assign out_lim_ext82_pop23123 = lim_ext82_pop23123_mux_q;

    // notexit76121_mux(MUX,38)
    assign notexit76121_mux_s = in_valid_in_0;
    always @(notexit76121_mux_s or in_notexit76121_1 or in_notexit76121_0)
    begin
        unique case (notexit76121_mux_s)
            1'b0 : notexit76121_mux_q = in_notexit76121_1;
            1'b1 : notexit76121_mux_q = in_notexit76121_0;
            default : notexit76121_mux_q = 1'b0;
        endcase
    end

    // out_notexit76121(GPOUT,46)
    assign out_notexit76121 = notexit76121_mux_q;

    // reorder_limiter_enter115_mux(MUX,55)
    assign reorder_limiter_enter115_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter115_mux_s or in_reorder_limiter_enter115_1 or in_reorder_limiter_enter115_0)
    begin
        unique case (reorder_limiter_enter115_mux_s)
            1'b0 : reorder_limiter_enter115_mux_q = in_reorder_limiter_enter115_1;
            1'b1 : reorder_limiter_enter115_mux_q = in_reorder_limiter_enter115_0;
            default : reorder_limiter_enter115_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter115(GPOUT,47)
    assign out_reorder_limiter_enter115 = reorder_limiter_enter115_mux_q;

    // reorder_limiter_enter85_pop24124_mux(MUX,56)
    assign reorder_limiter_enter85_pop24124_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter85_pop24124_mux_s or in_reorder_limiter_enter85_pop24124_1 or in_reorder_limiter_enter85_pop24124_0)
    begin
        unique case (reorder_limiter_enter85_pop24124_mux_s)
            1'b0 : reorder_limiter_enter85_pop24124_mux_q = in_reorder_limiter_enter85_pop24124_1;
            1'b1 : reorder_limiter_enter85_pop24124_mux_q = in_reorder_limiter_enter85_pop24124_0;
            default : reorder_limiter_enter85_pop24124_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter85_pop24124(GPOUT,48)
    assign out_reorder_limiter_enter85_pop24124 = reorder_limiter_enter85_pop24124_mux_q;

    // valid_or(LOGICAL,62)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,57)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,49)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,58)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,50)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // sub_i30118_mux(MUX,59)
    assign sub_i30118_mux_s = in_valid_in_0;
    always @(sub_i30118_mux_s or in_sub_i30118_1 or in_sub_i30118_0)
    begin
        unique case (sub_i30118_mux_s)
            1'b0 : sub_i30118_mux_q = in_sub_i30118_1;
            1'b1 : sub_i30118_mux_q = in_sub_i30118_0;
            default : sub_i30118_mux_q = 32'b0;
        endcase
    end

    // out_sub_i30118(GPOUT,51)
    assign out_sub_i30118 = sub_i30118_mux_q;

    // tobool_i34119_mux(MUX,60)
    assign tobool_i34119_mux_s = in_valid_in_0;
    always @(tobool_i34119_mux_s or in_tobool_i34119_1 or in_tobool_i34119_0)
    begin
        unique case (tobool_i34119_mux_s)
            1'b0 : tobool_i34119_mux_q = in_tobool_i34119_1;
            1'b1 : tobool_i34119_mux_q = in_tobool_i34119_0;
            default : tobool_i34119_mux_q = 1'b0;
        endcase
    end

    // out_tobool_i34119(GPOUT,52)
    assign out_tobool_i34119 = tobool_i34119_mux_q;

    // unnamed_zfp_decode8_mux(MUX,61)
    assign unnamed_zfp_decode8_mux_s = in_valid_in_0;
    always @(unnamed_zfp_decode8_mux_s or in_unnamed_zfp_decode8_1 or in_unnamed_zfp_decode8_0)
    begin
        unique case (unnamed_zfp_decode8_mux_s)
            1'b0 : unnamed_zfp_decode8_mux_q = in_unnamed_zfp_decode8_1;
            1'b1 : unnamed_zfp_decode8_mux_q = in_unnamed_zfp_decode8_0;
            default : unnamed_zfp_decode8_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_zfp_decode8(GPOUT,53)
    assign out_unnamed_zfp_decode8 = unnamed_zfp_decode8_mux_q;

    // out_valid_out(GPOUT,54)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,63)
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
