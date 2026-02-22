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

// SystemVerilog created from bb_zfp_decode_B2_stall_region
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B2_stall_region (
    input wire [0:0] in_wgl_10_exit_exit_valid_out,
    input wire [0:0] in_wgl_10_exit_exit_stall_out,
    output wire [0:0] out_wgl_10_exit_exit_valid_in,
    output wire [0:0] out_wgl_10_exit_exit_stall_in,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe829122,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_wgl_10_exit_exit_stall_in;
    wire [0:0] i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_wgl_10_exit_exit_valid_in;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,24)
    assign bubble_join_stall_entry_q = in_c0_exe829122;

    // bubble_select_stall_entry(BITSELECT,25)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x(BLACKBOX,20)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_c0_exit165_0_tpl@6
    // out out_intel_reserved_ffwd_0_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_2_tpl@20000000
    zfp_decode_i_sfc_s_c0_in_for_cond13_preh0000enter164_zfp_decode0 thei_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_unnamed_zfp_decode2_0_tpl(GND_q),
        .out_o_stall(i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_o_valid),
        .out_c0_exit165_0_tpl(),
        .out_intel_reserved_ffwd_0_0_0_tpl(i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,30)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x(STALLENABLE,35)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_and0 = i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_o_valid & SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_and0;

    // i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x(BLACKBOX,21)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_wgl_10_exit_exit_stall_in@20000000
    // out out_wgl_10_exit_exit_valid_in@20000000
    // out out_c1_exit169_0_tpl@6
    zfp_decode_i_sfc_s_c1_in_for_cond13_preh0000enter167_zfp_decode2 thei_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_wgl_10_exit_exit_stall_out(in_wgl_10_exit_exit_stall_out),
        .in_wgl_10_exit_exit_valid_out(in_wgl_10_exit_exit_valid_out),
        .in_c1_eni1166_0_tpl(GND_q),
        .in_c1_eni1166_1_tpl(bubble_select_stall_entry_b),
        .out_o_stall(i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_o_valid),
        .out_wgl_10_exit_exit_stall_in(i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_wgl_10_exit_exit_stall_in),
        .out_wgl_10_exit_exit_valid_in(i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_wgl_10_exit_exit_valid_in),
        .out_c1_exit169_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_wgl_10_exit_exit_valid_in = i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_wgl_10_exit_exit_valid_in;
    assign out_wgl_10_exit_exit_stall_in = i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_out_wgl_10_exit_exit_stall_in;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,19)@6
    assign out_valid_out = SE_out_i_sfc_s_c1_in_for_cond13_preheader_zfp_decodes_c1_enter167_zfp_decode2_aunroll_x_V0;

    // regfree_osync_aunroll_x(GPOUT,22)
    assign out_intel_reserved_ffwd_0_0_0_tpl = i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    assign out_intel_reserved_ffwd_0_0_1_tpl = i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    assign out_intel_reserved_ffwd_0_0_2_tpl = i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;

    // rst_sync(RESETSYNC,48)
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
