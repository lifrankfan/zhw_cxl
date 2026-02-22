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

// SystemVerilog created from i_sfc_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_s_c0_in_for_cond13_preh0000enter164_zfp_decode0 (
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [63:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_2_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_zfp_decode2_0_tpl,
    output wire [0:0] out_c0_exit165_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x(BLACKBOX,11)@0
    // out out_o_valid@2
    // out out_unnamed_zfp_decode0@2
    // out out_intel_reserved_ffwd_0_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_2_tpl@20000000
    // out out_unnamed_zfp_decode4_0_tpl@2
    zfp_decode_i_sfc_logic_s_c0_in_for_cond10000enter164_zfp_decode0 thei_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_o_valid),
        .out_unnamed_zfp_decode0(),
        .out_intel_reserved_ffwd_0_0_0_tpl(i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_unnamed_zfp_decode4_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x(BLACKBOX,10)@2
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@6
    // out out_data_out_0_tpl@6
    zfp_decode_i_llvm_fpga_sfc_exit_s_c0_out0000_exit165_zfp_decode0 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out(GPOUT,9)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x_out_stall_entry;

    // regfree_osync_aunroll_x(GPOUT,12)
    assign out_intel_reserved_ffwd_0_0_0_tpl = i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    assign out_intel_reserved_ffwd_0_0_1_tpl = i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    assign out_intel_reserved_ffwd_0_0_2_tpl = i_sfc_logic_s_c0_in_for_cond13_preheader_zfp_decodes_c0_enter164_zfp_decode0_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;

    // dupName_0_sync_out_aunroll_x(GPOUT,14)@6
    assign out_c0_exit165_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond13_preheader_zfp_decodes_c0_exit165_zfp_decode1_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,15)
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
