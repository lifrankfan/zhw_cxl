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

// SystemVerilog created from zfp_decode_B6_merge
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_B6_merge (
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
    input wire [0:0] in_stall_in,
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
    output wire [0:0] out_exitcond5495_pop38145,
    output wire [31:0] out_k_058_pop1999_pop40149,
    output wire [31:0] out_lim_ext108,
    output wire [31:0] out_lim_ext83_pop31138,
    output wire [0:0] out_notexit7697_pop39147,
    output wire [63:0] out_or_i_shuffle134,
    output wire [0:0] out_pop37136,
    output wire [31:0] out_reorder_limiter_enter113,
    output wire [31:0] out_reorder_limiter_enter86_pop32140,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_tobool_i3493_pop36129,
    output wire [63:0] out_ublock_sroa_0_0_pop18128,
    output wire [63:0] out_ublock_sroa_12_0_pop15125,
    output wire [63:0] out_ublock_sroa_6_0_pop17127,
    output wire [63:0] out_ublock_sroa_9_0_pop16126,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond5495_pop38145_mux_s;
    reg [0:0] exitcond5495_pop38145_mux_q;
    wire [0:0] k_058_pop1999_pop40149_mux_s;
    reg [31:0] k_058_pop1999_pop40149_mux_q;
    wire [0:0] lim_ext108_mux_s;
    reg [31:0] lim_ext108_mux_q;
    wire [0:0] lim_ext83_pop31138_mux_s;
    reg [31:0] lim_ext83_pop31138_mux_q;
    wire [0:0] notexit7697_pop39147_mux_s;
    reg [0:0] notexit7697_pop39147_mux_q;
    wire [0:0] or_i_shuffle134_mux_s;
    reg [63:0] or_i_shuffle134_mux_q;
    wire [0:0] pop37136_mux_s;
    reg [0:0] pop37136_mux_q;
    wire [0:0] reorder_limiter_enter113_mux_s;
    reg [31:0] reorder_limiter_enter113_mux_q;
    wire [0:0] reorder_limiter_enter86_pop32140_mux_s;
    reg [31:0] reorder_limiter_enter86_pop32140_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tobool_i3493_pop36129_mux_s;
    reg [0:0] tobool_i3493_pop36129_mux_q;
    wire [0:0] ublock_sroa_0_0_pop18128_mux_s;
    reg [63:0] ublock_sroa_0_0_pop18128_mux_q;
    wire [0:0] ublock_sroa_12_0_pop15125_mux_s;
    reg [63:0] ublock_sroa_12_0_pop15125_mux_q;
    wire [0:0] ublock_sroa_6_0_pop17127_mux_s;
    reg [63:0] ublock_sroa_6_0_pop17127_mux_q;
    wire [0:0] ublock_sroa_9_0_pop16126_mux_s;
    reg [63:0] ublock_sroa_9_0_pop16126_mux_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond5495_pop38145_mux(MUX,2)
    assign exitcond5495_pop38145_mux_s = in_valid_in_0;
    always @(exitcond5495_pop38145_mux_s or in_exitcond5495_pop38145_1 or in_exitcond5495_pop38145_0)
    begin
        unique case (exitcond5495_pop38145_mux_s)
            1'b0 : exitcond5495_pop38145_mux_q = in_exitcond5495_pop38145_1;
            1'b1 : exitcond5495_pop38145_mux_q = in_exitcond5495_pop38145_0;
            default : exitcond5495_pop38145_mux_q = 1'b0;
        endcase
    end

    // out_exitcond5495_pop38145(GPOUT,39)
    assign out_exitcond5495_pop38145 = exitcond5495_pop38145_mux_q;

    // k_058_pop1999_pop40149_mux(MUX,34)
    assign k_058_pop1999_pop40149_mux_s = in_valid_in_0;
    always @(k_058_pop1999_pop40149_mux_s or in_k_058_pop1999_pop40149_1 or in_k_058_pop1999_pop40149_0)
    begin
        unique case (k_058_pop1999_pop40149_mux_s)
            1'b0 : k_058_pop1999_pop40149_mux_q = in_k_058_pop1999_pop40149_1;
            1'b1 : k_058_pop1999_pop40149_mux_q = in_k_058_pop1999_pop40149_0;
            default : k_058_pop1999_pop40149_mux_q = 32'b0;
        endcase
    end

    // out_k_058_pop1999_pop40149(GPOUT,40)
    assign out_k_058_pop1999_pop40149 = k_058_pop1999_pop40149_mux_q;

    // lim_ext108_mux(MUX,35)
    assign lim_ext108_mux_s = in_valid_in_0;
    always @(lim_ext108_mux_s or in_lim_ext108_1 or in_lim_ext108_0)
    begin
        unique case (lim_ext108_mux_s)
            1'b0 : lim_ext108_mux_q = in_lim_ext108_1;
            1'b1 : lim_ext108_mux_q = in_lim_ext108_0;
            default : lim_ext108_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext108(GPOUT,41)
    assign out_lim_ext108 = lim_ext108_mux_q;

    // lim_ext83_pop31138_mux(MUX,36)
    assign lim_ext83_pop31138_mux_s = in_valid_in_0;
    always @(lim_ext83_pop31138_mux_s or in_lim_ext83_pop31138_1 or in_lim_ext83_pop31138_0)
    begin
        unique case (lim_ext83_pop31138_mux_s)
            1'b0 : lim_ext83_pop31138_mux_q = in_lim_ext83_pop31138_1;
            1'b1 : lim_ext83_pop31138_mux_q = in_lim_ext83_pop31138_0;
            default : lim_ext83_pop31138_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext83_pop31138(GPOUT,42)
    assign out_lim_ext83_pop31138 = lim_ext83_pop31138_mux_q;

    // notexit7697_pop39147_mux(MUX,37)
    assign notexit7697_pop39147_mux_s = in_valid_in_0;
    always @(notexit7697_pop39147_mux_s or in_notexit7697_pop39147_1 or in_notexit7697_pop39147_0)
    begin
        unique case (notexit7697_pop39147_mux_s)
            1'b0 : notexit7697_pop39147_mux_q = in_notexit7697_pop39147_1;
            1'b1 : notexit7697_pop39147_mux_q = in_notexit7697_pop39147_0;
            default : notexit7697_pop39147_mux_q = 1'b0;
        endcase
    end

    // out_notexit7697_pop39147(GPOUT,43)
    assign out_notexit7697_pop39147 = notexit7697_pop39147_mux_q;

    // or_i_shuffle134_mux(MUX,38)
    assign or_i_shuffle134_mux_s = in_valid_in_0;
    always @(or_i_shuffle134_mux_s or in_or_i_shuffle134_1 or in_or_i_shuffle134_0)
    begin
        unique case (or_i_shuffle134_mux_s)
            1'b0 : or_i_shuffle134_mux_q = in_or_i_shuffle134_1;
            1'b1 : or_i_shuffle134_mux_q = in_or_i_shuffle134_0;
            default : or_i_shuffle134_mux_q = 64'b0;
        endcase
    end

    // out_or_i_shuffle134(GPOUT,44)
    assign out_or_i_shuffle134 = or_i_shuffle134_mux_q;

    // pop37136_mux(MUX,56)
    assign pop37136_mux_s = in_valid_in_0;
    always @(pop37136_mux_s or in_pop37136_1 or in_pop37136_0)
    begin
        unique case (pop37136_mux_s)
            1'b0 : pop37136_mux_q = in_pop37136_1;
            1'b1 : pop37136_mux_q = in_pop37136_0;
            default : pop37136_mux_q = 1'b0;
        endcase
    end

    // out_pop37136(GPOUT,45)
    assign out_pop37136 = pop37136_mux_q;

    // reorder_limiter_enter113_mux(MUX,57)
    assign reorder_limiter_enter113_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter113_mux_s or in_reorder_limiter_enter113_1 or in_reorder_limiter_enter113_0)
    begin
        unique case (reorder_limiter_enter113_mux_s)
            1'b0 : reorder_limiter_enter113_mux_q = in_reorder_limiter_enter113_1;
            1'b1 : reorder_limiter_enter113_mux_q = in_reorder_limiter_enter113_0;
            default : reorder_limiter_enter113_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter113(GPOUT,46)
    assign out_reorder_limiter_enter113 = reorder_limiter_enter113_mux_q;

    // reorder_limiter_enter86_pop32140_mux(MUX,58)
    assign reorder_limiter_enter86_pop32140_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter86_pop32140_mux_s or in_reorder_limiter_enter86_pop32140_1 or in_reorder_limiter_enter86_pop32140_0)
    begin
        unique case (reorder_limiter_enter86_pop32140_mux_s)
            1'b0 : reorder_limiter_enter86_pop32140_mux_q = in_reorder_limiter_enter86_pop32140_1;
            1'b1 : reorder_limiter_enter86_pop32140_mux_q = in_reorder_limiter_enter86_pop32140_0;
            default : reorder_limiter_enter86_pop32140_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter86_pop32140(GPOUT,47)
    assign out_reorder_limiter_enter86_pop32140 = reorder_limiter_enter86_pop32140_mux_q;

    // valid_or(LOGICAL,66)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,59)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,48)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,60)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,49)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tobool_i3493_pop36129_mux(MUX,61)
    assign tobool_i3493_pop36129_mux_s = in_valid_in_0;
    always @(tobool_i3493_pop36129_mux_s or in_tobool_i3493_pop36129_1 or in_tobool_i3493_pop36129_0)
    begin
        unique case (tobool_i3493_pop36129_mux_s)
            1'b0 : tobool_i3493_pop36129_mux_q = in_tobool_i3493_pop36129_1;
            1'b1 : tobool_i3493_pop36129_mux_q = in_tobool_i3493_pop36129_0;
            default : tobool_i3493_pop36129_mux_q = 1'b0;
        endcase
    end

    // out_tobool_i3493_pop36129(GPOUT,50)
    assign out_tobool_i3493_pop36129 = tobool_i3493_pop36129_mux_q;

    // ublock_sroa_0_0_pop18128_mux(MUX,62)
    assign ublock_sroa_0_0_pop18128_mux_s = in_valid_in_0;
    always @(ublock_sroa_0_0_pop18128_mux_s or in_ublock_sroa_0_0_pop18128_1 or in_ublock_sroa_0_0_pop18128_0)
    begin
        unique case (ublock_sroa_0_0_pop18128_mux_s)
            1'b0 : ublock_sroa_0_0_pop18128_mux_q = in_ublock_sroa_0_0_pop18128_1;
            1'b1 : ublock_sroa_0_0_pop18128_mux_q = in_ublock_sroa_0_0_pop18128_0;
            default : ublock_sroa_0_0_pop18128_mux_q = 64'b0;
        endcase
    end

    // out_ublock_sroa_0_0_pop18128(GPOUT,51)
    assign out_ublock_sroa_0_0_pop18128 = ublock_sroa_0_0_pop18128_mux_q;

    // ublock_sroa_12_0_pop15125_mux(MUX,63)
    assign ublock_sroa_12_0_pop15125_mux_s = in_valid_in_0;
    always @(ublock_sroa_12_0_pop15125_mux_s or in_ublock_sroa_12_0_pop15125_1 or in_ublock_sroa_12_0_pop15125_0)
    begin
        unique case (ublock_sroa_12_0_pop15125_mux_s)
            1'b0 : ublock_sroa_12_0_pop15125_mux_q = in_ublock_sroa_12_0_pop15125_1;
            1'b1 : ublock_sroa_12_0_pop15125_mux_q = in_ublock_sroa_12_0_pop15125_0;
            default : ublock_sroa_12_0_pop15125_mux_q = 64'b0;
        endcase
    end

    // out_ublock_sroa_12_0_pop15125(GPOUT,52)
    assign out_ublock_sroa_12_0_pop15125 = ublock_sroa_12_0_pop15125_mux_q;

    // ublock_sroa_6_0_pop17127_mux(MUX,64)
    assign ublock_sroa_6_0_pop17127_mux_s = in_valid_in_0;
    always @(ublock_sroa_6_0_pop17127_mux_s or in_ublock_sroa_6_0_pop17127_1 or in_ublock_sroa_6_0_pop17127_0)
    begin
        unique case (ublock_sroa_6_0_pop17127_mux_s)
            1'b0 : ublock_sroa_6_0_pop17127_mux_q = in_ublock_sroa_6_0_pop17127_1;
            1'b1 : ublock_sroa_6_0_pop17127_mux_q = in_ublock_sroa_6_0_pop17127_0;
            default : ublock_sroa_6_0_pop17127_mux_q = 64'b0;
        endcase
    end

    // out_ublock_sroa_6_0_pop17127(GPOUT,53)
    assign out_ublock_sroa_6_0_pop17127 = ublock_sroa_6_0_pop17127_mux_q;

    // ublock_sroa_9_0_pop16126_mux(MUX,65)
    assign ublock_sroa_9_0_pop16126_mux_s = in_valid_in_0;
    always @(ublock_sroa_9_0_pop16126_mux_s or in_ublock_sroa_9_0_pop16126_1 or in_ublock_sroa_9_0_pop16126_0)
    begin
        unique case (ublock_sroa_9_0_pop16126_mux_s)
            1'b0 : ublock_sroa_9_0_pop16126_mux_q = in_ublock_sroa_9_0_pop16126_1;
            1'b1 : ublock_sroa_9_0_pop16126_mux_q = in_ublock_sroa_9_0_pop16126_0;
            default : ublock_sroa_9_0_pop16126_mux_q = 64'b0;
        endcase
    end

    // out_ublock_sroa_9_0_pop16126(GPOUT,54)
    assign out_ublock_sroa_9_0_pop16126 = ublock_sroa_9_0_pop16126_mux_q;

    // out_valid_out(GPOUT,55)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,67)
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
