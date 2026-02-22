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

// SystemVerilog created from zfp_1d_decompress_B4_merge
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_B4_merge (
    input wire [63:0] in_acl_192_0,
    input wire [63:0] in_acl_192_1,
    input wire [0:0] in_exitcond4095_0,
    input wire [0:0] in_exitcond4095_1,
    input wire [0:0] in_forked81_0,
    input wire [0:0] in_forked81_1,
    input wire [31:0] in_k1_0_i25_pop1797_0,
    input wire [31:0] in_k1_0_i25_pop1797_1,
    input wire [0:0] in_notexit7496_0,
    input wire [0:0] in_notexit7496_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_sub_i_i93_0,
    input wire [31:0] in_sub_i_i93_1,
    input wire [0:0] in_tobool_i_i94_0,
    input wire [0:0] in_tobool_i_i94_1,
    input wire [63:0] in_ublock_i_sroa_0_0_pop16101_0,
    input wire [63:0] in_ublock_i_sroa_0_0_pop16101_1,
    input wire [63:0] in_ublock_i_sroa_12_0_pop1398_0,
    input wire [63:0] in_ublock_i_sroa_12_0_pop1398_1,
    input wire [63:0] in_ublock_i_sroa_6_0_pop15100_0,
    input wire [63:0] in_ublock_i_sroa_6_0_pop15100_1,
    input wire [63:0] in_ublock_i_sroa_9_0_pop1499_0,
    input wire [63:0] in_ublock_i_sroa_9_0_pop1499_1,
    input wire [0:0] in_unnamed_zfp_1d_decompress7_0,
    input wire [0:0] in_unnamed_zfp_1d_decompress7_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_acl_192,
    output wire [0:0] out_exitcond4095,
    output wire [0:0] out_forked81,
    output wire [31:0] out_k1_0_i25_pop1797,
    output wire [0:0] out_notexit7496,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_sub_i_i93,
    output wire [0:0] out_tobool_i_i94,
    output wire [63:0] out_ublock_i_sroa_0_0_pop16101,
    output wire [63:0] out_ublock_i_sroa_12_0_pop1398,
    output wire [63:0] out_ublock_i_sroa_6_0_pop15100,
    output wire [63:0] out_ublock_i_sroa_9_0_pop1499,
    output wire [0:0] out_unnamed_zfp_1d_decompress7,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] acl_192_mux_s;
    reg [63:0] acl_192_mux_q;
    wire [0:0] exitcond4095_mux_s;
    reg [0:0] exitcond4095_mux_q;
    wire [0:0] forked81_mux_s;
    reg [0:0] forked81_mux_q;
    wire [0:0] k1_0_i25_pop1797_mux_s;
    reg [31:0] k1_0_i25_pop1797_mux_q;
    wire [0:0] notexit7496_mux_s;
    reg [0:0] notexit7496_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] sub_i_i93_mux_s;
    reg [31:0] sub_i_i93_mux_q;
    wire [0:0] tobool_i_i94_mux_s;
    reg [0:0] tobool_i_i94_mux_q;
    wire [0:0] ublock_i_sroa_0_0_pop16101_mux_s;
    reg [63:0] ublock_i_sroa_0_0_pop16101_mux_q;
    wire [0:0] ublock_i_sroa_12_0_pop1398_mux_s;
    reg [63:0] ublock_i_sroa_12_0_pop1398_mux_q;
    wire [0:0] ublock_i_sroa_6_0_pop15100_mux_s;
    reg [63:0] ublock_i_sroa_6_0_pop15100_mux_q;
    wire [0:0] ublock_i_sroa_9_0_pop1499_mux_s;
    reg [63:0] ublock_i_sroa_9_0_pop1499_mux_q;
    wire [0:0] unnamed_zfp_1d_decompress7_mux_s;
    reg [0:0] unnamed_zfp_1d_decompress7_mux_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // acl_192_mux(MUX,2)
    assign acl_192_mux_s = in_valid_in_0;
    always @(acl_192_mux_s or in_acl_192_1 or in_acl_192_0)
    begin
        unique case (acl_192_mux_s)
            1'b0 : acl_192_mux_q = in_acl_192_1;
            1'b1 : acl_192_mux_q = in_acl_192_0;
            default : acl_192_mux_q = 64'b0;
        endcase
    end

    // out_acl_192(GPOUT,34)
    assign out_acl_192 = acl_192_mux_q;

    // exitcond4095_mux(MUX,3)
    assign exitcond4095_mux_s = in_valid_in_0;
    always @(exitcond4095_mux_s or in_exitcond4095_1 or in_exitcond4095_0)
    begin
        unique case (exitcond4095_mux_s)
            1'b0 : exitcond4095_mux_q = in_exitcond4095_1;
            1'b1 : exitcond4095_mux_q = in_exitcond4095_0;
            default : exitcond4095_mux_q = 1'b0;
        endcase
    end

    // out_exitcond4095(GPOUT,35)
    assign out_exitcond4095 = exitcond4095_mux_q;

    // forked81_mux(MUX,4)
    assign forked81_mux_s = in_valid_in_0;
    always @(forked81_mux_s or in_forked81_1 or in_forked81_0)
    begin
        unique case (forked81_mux_s)
            1'b0 : forked81_mux_q = in_forked81_1;
            1'b1 : forked81_mux_q = in_forked81_0;
            default : forked81_mux_q = 1'b0;
        endcase
    end

    // out_forked81(GPOUT,36)
    assign out_forked81 = forked81_mux_q;

    // k1_0_i25_pop1797_mux(MUX,32)
    assign k1_0_i25_pop1797_mux_s = in_valid_in_0;
    always @(k1_0_i25_pop1797_mux_s or in_k1_0_i25_pop1797_1 or in_k1_0_i25_pop1797_0)
    begin
        unique case (k1_0_i25_pop1797_mux_s)
            1'b0 : k1_0_i25_pop1797_mux_q = in_k1_0_i25_pop1797_1;
            1'b1 : k1_0_i25_pop1797_mux_q = in_k1_0_i25_pop1797_0;
            default : k1_0_i25_pop1797_mux_q = 32'b0;
        endcase
    end

    // out_k1_0_i25_pop1797(GPOUT,37)
    assign out_k1_0_i25_pop1797 = k1_0_i25_pop1797_mux_q;

    // notexit7496_mux(MUX,33)
    assign notexit7496_mux_s = in_valid_in_0;
    always @(notexit7496_mux_s or in_notexit7496_1 or in_notexit7496_0)
    begin
        unique case (notexit7496_mux_s)
            1'b0 : notexit7496_mux_q = in_notexit7496_1;
            1'b1 : notexit7496_mux_q = in_notexit7496_0;
            default : notexit7496_mux_q = 1'b0;
        endcase
    end

    // out_notexit7496(GPOUT,38)
    assign out_notexit7496 = notexit7496_mux_q;

    // valid_or(LOGICAL,58)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,49)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,50)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,40)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // sub_i_i93_mux(MUX,51)
    assign sub_i_i93_mux_s = in_valid_in_0;
    always @(sub_i_i93_mux_s or in_sub_i_i93_1 or in_sub_i_i93_0)
    begin
        unique case (sub_i_i93_mux_s)
            1'b0 : sub_i_i93_mux_q = in_sub_i_i93_1;
            1'b1 : sub_i_i93_mux_q = in_sub_i_i93_0;
            default : sub_i_i93_mux_q = 32'b0;
        endcase
    end

    // out_sub_i_i93(GPOUT,41)
    assign out_sub_i_i93 = sub_i_i93_mux_q;

    // tobool_i_i94_mux(MUX,52)
    assign tobool_i_i94_mux_s = in_valid_in_0;
    always @(tobool_i_i94_mux_s or in_tobool_i_i94_1 or in_tobool_i_i94_0)
    begin
        unique case (tobool_i_i94_mux_s)
            1'b0 : tobool_i_i94_mux_q = in_tobool_i_i94_1;
            1'b1 : tobool_i_i94_mux_q = in_tobool_i_i94_0;
            default : tobool_i_i94_mux_q = 1'b0;
        endcase
    end

    // out_tobool_i_i94(GPOUT,42)
    assign out_tobool_i_i94 = tobool_i_i94_mux_q;

    // ublock_i_sroa_0_0_pop16101_mux(MUX,53)
    assign ublock_i_sroa_0_0_pop16101_mux_s = in_valid_in_0;
    always @(ublock_i_sroa_0_0_pop16101_mux_s or in_ublock_i_sroa_0_0_pop16101_1 or in_ublock_i_sroa_0_0_pop16101_0)
    begin
        unique case (ublock_i_sroa_0_0_pop16101_mux_s)
            1'b0 : ublock_i_sroa_0_0_pop16101_mux_q = in_ublock_i_sroa_0_0_pop16101_1;
            1'b1 : ublock_i_sroa_0_0_pop16101_mux_q = in_ublock_i_sroa_0_0_pop16101_0;
            default : ublock_i_sroa_0_0_pop16101_mux_q = 64'b0;
        endcase
    end

    // out_ublock_i_sroa_0_0_pop16101(GPOUT,43)
    assign out_ublock_i_sroa_0_0_pop16101 = ublock_i_sroa_0_0_pop16101_mux_q;

    // ublock_i_sroa_12_0_pop1398_mux(MUX,54)
    assign ublock_i_sroa_12_0_pop1398_mux_s = in_valid_in_0;
    always @(ublock_i_sroa_12_0_pop1398_mux_s or in_ublock_i_sroa_12_0_pop1398_1 or in_ublock_i_sroa_12_0_pop1398_0)
    begin
        unique case (ublock_i_sroa_12_0_pop1398_mux_s)
            1'b0 : ublock_i_sroa_12_0_pop1398_mux_q = in_ublock_i_sroa_12_0_pop1398_1;
            1'b1 : ublock_i_sroa_12_0_pop1398_mux_q = in_ublock_i_sroa_12_0_pop1398_0;
            default : ublock_i_sroa_12_0_pop1398_mux_q = 64'b0;
        endcase
    end

    // out_ublock_i_sroa_12_0_pop1398(GPOUT,44)
    assign out_ublock_i_sroa_12_0_pop1398 = ublock_i_sroa_12_0_pop1398_mux_q;

    // ublock_i_sroa_6_0_pop15100_mux(MUX,55)
    assign ublock_i_sroa_6_0_pop15100_mux_s = in_valid_in_0;
    always @(ublock_i_sroa_6_0_pop15100_mux_s or in_ublock_i_sroa_6_0_pop15100_1 or in_ublock_i_sroa_6_0_pop15100_0)
    begin
        unique case (ublock_i_sroa_6_0_pop15100_mux_s)
            1'b0 : ublock_i_sroa_6_0_pop15100_mux_q = in_ublock_i_sroa_6_0_pop15100_1;
            1'b1 : ublock_i_sroa_6_0_pop15100_mux_q = in_ublock_i_sroa_6_0_pop15100_0;
            default : ublock_i_sroa_6_0_pop15100_mux_q = 64'b0;
        endcase
    end

    // out_ublock_i_sroa_6_0_pop15100(GPOUT,45)
    assign out_ublock_i_sroa_6_0_pop15100 = ublock_i_sroa_6_0_pop15100_mux_q;

    // ublock_i_sroa_9_0_pop1499_mux(MUX,56)
    assign ublock_i_sroa_9_0_pop1499_mux_s = in_valid_in_0;
    always @(ublock_i_sroa_9_0_pop1499_mux_s or in_ublock_i_sroa_9_0_pop1499_1 or in_ublock_i_sroa_9_0_pop1499_0)
    begin
        unique case (ublock_i_sroa_9_0_pop1499_mux_s)
            1'b0 : ublock_i_sroa_9_0_pop1499_mux_q = in_ublock_i_sroa_9_0_pop1499_1;
            1'b1 : ublock_i_sroa_9_0_pop1499_mux_q = in_ublock_i_sroa_9_0_pop1499_0;
            default : ublock_i_sroa_9_0_pop1499_mux_q = 64'b0;
        endcase
    end

    // out_ublock_i_sroa_9_0_pop1499(GPOUT,46)
    assign out_ublock_i_sroa_9_0_pop1499 = ublock_i_sroa_9_0_pop1499_mux_q;

    // unnamed_zfp_1d_decompress7_mux(MUX,57)
    assign unnamed_zfp_1d_decompress7_mux_s = in_valid_in_0;
    always @(unnamed_zfp_1d_decompress7_mux_s or in_unnamed_zfp_1d_decompress7_1 or in_unnamed_zfp_1d_decompress7_0)
    begin
        unique case (unnamed_zfp_1d_decompress7_mux_s)
            1'b0 : unnamed_zfp_1d_decompress7_mux_q = in_unnamed_zfp_1d_decompress7_1;
            1'b1 : unnamed_zfp_1d_decompress7_mux_q = in_unnamed_zfp_1d_decompress7_0;
            default : unnamed_zfp_1d_decompress7_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_zfp_1d_decompress7(GPOUT,47)
    assign out_unnamed_zfp_1d_decompress7 = unnamed_zfp_1d_decompress7_mux_q;

    // out_valid_out(GPOUT,48)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,59)
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
