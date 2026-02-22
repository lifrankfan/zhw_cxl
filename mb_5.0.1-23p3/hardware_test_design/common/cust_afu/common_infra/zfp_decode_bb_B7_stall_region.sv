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

// SystemVerilog created from bb_zfp_decode_B7_stall_region
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B7_stall_region (
    output wire [63:0] out_feedback_out_15,
    output wire [63:0] out_feedback_out_16,
    output wire [63:0] out_feedback_out_17,
    output wire [63:0] out_feedback_out_18,
    input wire [0:0] in_feedback_stall_in_15,
    input wire [0:0] in_feedback_stall_in_16,
    input wire [0:0] in_feedback_stall_in_17,
    input wire [0:0] in_feedback_stall_in_18,
    output wire [0:0] out_feedback_valid_out_15,
    output wire [0:0] out_feedback_valid_out_16,
    output wire [0:0] out_feedback_valid_out_17,
    output wire [0:0] out_feedback_valid_out_18,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1029325,
    input wire [63:0] in_c0_exe1129426,
    input wire [63:0] in_c0_exe1229527,
    input wire [63:0] in_c0_exe128417,
    input wire [63:0] in_c0_exe1329628,
    input wire [63:0] in_c0_exe1429729,
    input wire [63:0] in_c0_exe228518,
    input wire [63:0] in_c0_exe328619,
    input wire [63:0] in_c0_exe428720,
    input wire [0:0] in_c0_exe729021,
    input wire [31:0] in_c0_exe829123,
    input wire [0:0] in_c0_exe929224,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_c0_exe729021,
    output wire [31:0] out_c0_exe829123,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_valid_out;
    wire [63:0] i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_c0_exit308_1_tpl;
    wire [63:0] i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_c1_exit318_1_tpl;
    wire [63:0] i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_c2_exit328_1_tpl;
    wire [63:0] i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_c3_exit_1_tpl;
    wire [33:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    reg [33:0] coalesced_delay_0_0_q;
    reg [33:0] coalesced_delay_0_1_q;
    reg [33:0] coalesced_delay_0_2_q;
    reg [33:0] coalesced_delay_0_3_q;
    reg [33:0] coalesced_delay_0_4_q;
    wire [546:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [63:0] bubble_select_stall_entry_h;
    wire [63:0] bubble_select_stall_entry_i;
    wire [63:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [63:0] bubble_join_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_b;
    wire [63:0] bubble_join_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_b;
    wire [63:0] bubble_join_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_b;
    wire [63:0] bubble_join_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_exit_wireValid;
    wire [0:0] SE_stall_exit_and0;
    wire [0:0] SE_stall_exit_and1;
    wire [0:0] SE_stall_exit_and2;
    wire [0:0] SE_stall_exit_and3;
    wire [0:0] SE_stall_exit_backStall;
    wire [0:0] SE_stall_exit_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_V1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    reg [0:0] SE_coalesced_delay_0_4_R_v_1;
    reg [0:0] SE_coalesced_delay_0_4_R_v_2;
    reg [0:0] SE_coalesced_delay_0_4_R_v_3;
    reg [0:0] SE_coalesced_delay_0_4_R_v_4;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_3;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_4;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_or0;
    wire [0:0] SE_coalesced_delay_0_4_or1;
    wire [0:0] SE_coalesced_delay_0_4_or2;
    wire [0:0] SE_coalesced_delay_0_4_or3;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    wire [0:0] SE_coalesced_delay_0_4_V1;
    wire [0:0] SE_coalesced_delay_0_4_V2;
    wire [0:0] SE_coalesced_delay_0_4_V3;
    wire [0:0] SE_coalesced_delay_0_4_V4;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_and0;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_backStall;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_V0;
    wire [0:0] SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid;
    wire [0:0] SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_and0;
    wire [0:0] SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_backStall;
    wire [0:0] SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_V0;
    wire [0:0] SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid;
    wire [0:0] SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_and0;
    wire [0:0] SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_backStall;
    wire [0:0] SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_V0;
    wire [0:0] SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid;
    wire [0:0] SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_and0;
    wire [0:0] SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_backStall;
    wire [0:0] SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_V0;
    wire [0:0] SR_SE_coalesced_delay_0_1_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_1_r_valid;
    reg [33:0] SR_SE_coalesced_delay_0_1_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_1_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_1_V;
    wire [33:0] SR_SE_coalesced_delay_0_1_D0;
    wire [0:0] SR_SE_coalesced_delay_0_3_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_3_r_valid;
    reg [33:0] SR_SE_coalesced_delay_0_3_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_3_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_3_V;
    wire [33:0] SR_SE_coalesced_delay_0_3_D0;
    wire [0:0] SR_SE_coalesced_delay_0_4_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_4_r_valid;
    reg [33:0] SR_SE_coalesced_delay_0_4_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_4_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_4_V;
    wire [33:0] SR_SE_coalesced_delay_0_4_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,63)
    assign bubble_join_stall_entry_q = {in_c0_exe929224, in_c0_exe829123, in_c0_exe729021, in_c0_exe428720, in_c0_exe328619, in_c0_exe228518, in_c0_exe1429729, in_c0_exe1329628, in_c0_exe128417, in_c0_exe1229527, in_c0_exe1129426, in_c0_exe1029325};

    // bubble_select_stall_entry(BITSELECT,64)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[128:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[192:129]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[256:193]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[320:257]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[384:321]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[448:385]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[512:449]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[513:513]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[545:514]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[546:546]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x(BLACKBOX,49)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c2_exit328_0_tpl@5
    // out out_c2_exit328_1_tpl@5
    zfp_decode_i_sfc_s_c2_in_if_end9_s_c2_enter323_zfp_decode13 thei_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V3),
        .in_c2_eni3322_0_tpl(GND_q),
        .in_c2_eni3322_1_tpl(bubble_select_stall_entry_m),
        .in_c2_eni3322_2_tpl(bubble_select_stall_entry_f),
        .in_c2_eni3322_3_tpl(bubble_select_stall_entry_i),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_o_stall(i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_o_valid),
        .out_c2_exit328_0_tpl(),
        .out_c2_exit328_1_tpl(i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_c2_exit328_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x(BLACKBOX,48)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c1_exit318_0_tpl@5
    // out out_c1_exit318_1_tpl@5
    zfp_decode_i_sfc_s_c1_in_if_end9_s_c1_enter313_zfp_decode8 thei_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V2),
        .in_c1_eni3312_0_tpl(GND_q),
        .in_c1_eni3312_1_tpl(bubble_select_stall_entry_m),
        .in_c1_eni3312_2_tpl(bubble_select_stall_entry_d),
        .in_c1_eni3312_3_tpl(bubble_select_stall_entry_h),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_o_stall(i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_o_valid),
        .out_c1_exit318_0_tpl(),
        .out_c1_exit318_1_tpl(i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_c1_exit318_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x(BLACKBOX,47)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c0_exit308_0_tpl@5
    // out out_c0_exit308_1_tpl@5
    zfp_decode_i_sfc_s_c0_in_if_end9_s_c0_enter303_zfp_decode3 thei_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_c0_eni3302_0_tpl(GND_q),
        .in_c0_eni3302_1_tpl(bubble_select_stall_entry_m),
        .in_c0_eni3302_2_tpl(bubble_select_stall_entry_c),
        .in_c0_eni3302_3_tpl(bubble_select_stall_entry_e),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_o_stall(i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_o_valid),
        .out_c0_exit308_0_tpl(),
        .out_c0_exit308_1_tpl(i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_c0_exit308_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,55)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_k, bubble_select_stall_entry_b, bubble_select_stall_entry_l};

    // coalesced_delay_0_0(REG,57)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,58)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_1_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(SR_SE_coalesced_delay_0_1_D0);
        end
    end

    // coalesced_delay_0_2(REG,59)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_2_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // SE_coalesced_delay_0_3(STALLENABLE,108)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SR_SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SR_SE_coalesced_delay_0_3_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_3(STALLREG,147)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_3_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_3_r_data0 <= 34'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_3_r_valid <= SE_coalesced_delay_0_3_backStall & (SR_SE_coalesced_delay_0_3_r_valid | SR_SE_coalesced_delay_0_3_i_valid);

            if (SR_SE_coalesced_delay_0_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_3_r_data0 <= $unsigned(coalesced_delay_0_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_3_i_valid = SE_coalesced_delay_0_2_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_3_backStall = SR_SE_coalesced_delay_0_3_r_valid | ~ (SR_SE_coalesced_delay_0_3_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_3_V = SR_SE_coalesced_delay_0_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_3_r_valid : SR_SE_coalesced_delay_0_3_i_valid;

    assign SR_SE_coalesced_delay_0_3_D0 = SR_SE_coalesced_delay_0_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_3_r_data0 : coalesced_delay_0_2_q;

    // SE_coalesced_delay_0_2(STALLENABLE,107)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SR_SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SE_coalesced_delay_0_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,106)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SR_SE_coalesced_delay_0_1_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_1(STALLREG,146)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_1_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_1_r_data0 <= 34'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_1_r_valid <= SE_coalesced_delay_0_1_backStall & (SR_SE_coalesced_delay_0_1_r_valid | SR_SE_coalesced_delay_0_1_i_valid);

            if (SR_SE_coalesced_delay_0_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_1_r_data0 <= $unsigned(coalesced_delay_0_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_1_i_valid = SE_coalesced_delay_0_0_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_1_backStall = SR_SE_coalesced_delay_0_1_r_valid | ~ (SR_SE_coalesced_delay_0_1_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_1_V = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_valid : SR_SE_coalesced_delay_0_1_i_valid;

    assign SR_SE_coalesced_delay_0_1_D0 = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_data0 : coalesced_delay_0_0_q;

    // SE_coalesced_delay_0_0(STALLENABLE,105)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SR_SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,93)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed4 & SE_stall_entry_or3);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x(BLACKBOX,50)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c3_exit_0_tpl@5
    // out out_c3_exit_1_tpl@5
    zfp_decode_i_sfc_s_c3_in_if_end9_s_c3_enter_zfp_decode18 thei_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V4),
        .in_c3_eni3_0_tpl(GND_q),
        .in_c3_eni3_1_tpl(bubble_select_stall_entry_m),
        .in_c3_eni3_2_tpl(bubble_select_stall_entry_g),
        .in_c3_eni3_3_tpl(bubble_select_stall_entry_j),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_o_stall(i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_o_valid),
        .out_c3_exit_0_tpl(),
        .out_c3_exit_1_tpl(i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_c3_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x(STALLENABLE,102)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid) | SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_consumed1 = (~ (SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_backStall) & SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid) | SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_StallValid = SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_backStall & SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_toReg0 = SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_StallValid & SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_toReg1 = SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_StallValid & SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_or0 = SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_consumed1 & SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_or0);
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_backStall = SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_V0 = SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_V1 = SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid = i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_o_valid;

    // SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x(STALLENABLE,100)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid) | SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_consumed1 = (~ (SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_backStall) & SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid) | SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_StallValid = SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_backStall & SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_toReg0 = SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_StallValid & SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_toReg1 = SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_StallValid & SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_or0 = SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_consumed1 & SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_or0);
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_backStall = SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_V0 = SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_V1 = SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid = i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_o_valid;

    // SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x(STALLENABLE,98)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_consumed1 = (~ (SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_backStall) & SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid = i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_o_valid;

    // SE_stall_exit(STALLENABLE,94)
    // Valid signal propagation
    assign SE_stall_exit_V0 = SE_stall_exit_wireValid;
    // Backward Stall generation
    assign SE_stall_exit_backStall = in_stall_in | ~ (SE_stall_exit_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_exit_and0 = SE_coalesced_delay_0_4_V4;
    assign SE_stall_exit_and1 = SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_V0 & SE_stall_exit_and0;
    assign SE_stall_exit_and2 = SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_V0 & SE_stall_exit_and1;
    assign SE_stall_exit_and3 = SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_V0 & SE_stall_exit_and2;
    assign SE_stall_exit_wireValid = SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_V0 & SE_stall_exit_and3;

    // SE_out_i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21(STALLENABLE,92)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_wireValid = i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_valid_out;

    // bubble_join_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x(BITJOIN,74)
    assign bubble_join_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_q = i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_c1_exit318_1_tpl;

    // bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x(BITSELECT,75)
    assign bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_q[63:0]);

    // i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21(BLACKBOX,20)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    zfp_decode_i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_0 thei_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21 (
        .in_c0_exe1029325(sel_for_coalesced_delay_0_c),
        .in_data_in(bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_b),
        .in_feedback_stall_in_16(in_feedback_stall_in_16),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_backStall),
        .in_valid_in(SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_V0),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x(STALLENABLE,131)
    // Valid signal propagation
    assign SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_V0 = SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_backStall = i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_stall_out | ~ (SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_and0 = SE_out_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_V1;
    assign SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_wireValid = SE_coalesced_delay_0_4_V3 & SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_and0;

    // SE_out_i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22(STALLENABLE,90)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_wireValid = i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_valid_out;

    // bubble_join_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x(BITJOIN,78)
    assign bubble_join_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_q = i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_c2_exit328_1_tpl;

    // bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x(BITSELECT,79)
    assign bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_q[63:0]);

    // i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22(BLACKBOX,19)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    zfp_decode_i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_0 thei_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22 (
        .in_c0_exe1029325(sel_for_coalesced_delay_0_c),
        .in_data_in(bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_b),
        .in_feedback_stall_in_17(in_feedback_stall_in_17),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_backStall),
        .in_valid_in(SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x(STALLENABLE,137)
    // Valid signal propagation
    assign SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_V0 = SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_backStall = i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_stall_out | ~ (SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_and0 = SE_out_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_V1;
    assign SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_wireValid = SE_coalesced_delay_0_4_V2 & SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_and0;

    // SE_out_i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23(STALLENABLE,86)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_wireValid = i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_valid_out;

    // bubble_join_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x(BITJOIN,82)
    assign bubble_join_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_q = i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_c3_exit_1_tpl;

    // bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x(BITSELECT,83)
    assign bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_q[63:0]);

    // i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23(BLACKBOX,17)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    zfp_decode_i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_0 thei_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23 (
        .in_c0_exe1029325(sel_for_coalesced_delay_0_c),
        .in_data_in(bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_b),
        .in_feedback_stall_in_18(in_feedback_stall_in_18),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_backStall),
        .in_valid_in(SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x(STALLENABLE,143)
    // Valid signal propagation
    assign SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_V0 = SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_backStall = i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_stall_out | ~ (SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_and0 = SE_out_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_V1;
    assign SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_wireValid = SE_coalesced_delay_0_4_V0 & SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_and0;

    // coalesced_delay_0_3(REG,60)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_3_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(SR_SE_coalesced_delay_0_3_D0);
        end
    end

    // SR_SE_coalesced_delay_0_4(STALLREG,148)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_4_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_4_r_data0 <= 34'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_4_r_valid <= SE_coalesced_delay_0_4_backStall & (SR_SE_coalesced_delay_0_4_r_valid | SR_SE_coalesced_delay_0_4_i_valid);

            if (SR_SE_coalesced_delay_0_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_4_r_data0 <= $unsigned(coalesced_delay_0_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_4_i_valid = SE_coalesced_delay_0_3_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_4_backStall = SR_SE_coalesced_delay_0_4_r_valid | ~ (SR_SE_coalesced_delay_0_4_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_4_V = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_valid : SR_SE_coalesced_delay_0_4_i_valid;

    assign SR_SE_coalesced_delay_0_4_D0 = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_data0 : coalesced_delay_0_3_q;

    // SE_coalesced_delay_0_4(STALLENABLE,109)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    assign SE_coalesced_delay_0_4_V1 = SE_coalesced_delay_0_4_R_v_1;
    assign SE_coalesced_delay_0_4_V2 = SE_coalesced_delay_0_4_R_v_2;
    assign SE_coalesced_delay_0_4_V3 = SE_coalesced_delay_0_4_R_v_3;
    assign SE_coalesced_delay_0_4_V4 = SE_coalesced_delay_0_4_R_v_4;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SE_bubble_select_i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_backStall & SE_coalesced_delay_0_4_R_v_0;
    assign SE_coalesced_delay_0_4_s_tv_1 = SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_backStall & SE_coalesced_delay_0_4_R_v_1;
    assign SE_coalesced_delay_0_4_s_tv_2 = SE_bubble_select_i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_backStall & SE_coalesced_delay_0_4_R_v_2;
    assign SE_coalesced_delay_0_4_s_tv_3 = SE_bubble_select_i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_backStall & SE_coalesced_delay_0_4_R_v_3;
    assign SE_coalesced_delay_0_4_s_tv_4 = SE_stall_exit_backStall & SE_coalesced_delay_0_4_R_v_4;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_or0 = SE_coalesced_delay_0_4_s_tv_0;
    assign SE_coalesced_delay_0_4_or1 = SE_coalesced_delay_0_4_s_tv_1 | SE_coalesced_delay_0_4_or0;
    assign SE_coalesced_delay_0_4_or2 = SE_coalesced_delay_0_4_s_tv_2 | SE_coalesced_delay_0_4_or1;
    assign SE_coalesced_delay_0_4_or3 = SE_coalesced_delay_0_4_s_tv_3 | SE_coalesced_delay_0_4_or2;
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_4 | SE_coalesced_delay_0_4_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SR_SE_coalesced_delay_0_4_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_4_R_v_1 <= 1'b0;
            SE_coalesced_delay_0_4_R_v_2 <= 1'b0;
            SE_coalesced_delay_0_4_R_v_3 <= 1'b0;
            SE_coalesced_delay_0_4_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_1 <= SE_coalesced_delay_0_4_R_v_1 & SE_coalesced_delay_0_4_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_1 <= SE_coalesced_delay_0_4_v_s_0;
            end

            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_2 <= SE_coalesced_delay_0_4_R_v_2 & SE_coalesced_delay_0_4_s_tv_2;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_2 <= SE_coalesced_delay_0_4_v_s_0;
            end

            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_3 <= SE_coalesced_delay_0_4_R_v_3 & SE_coalesced_delay_0_4_s_tv_3;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_3 <= SE_coalesced_delay_0_4_v_s_0;
            end

            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_4 <= SE_coalesced_delay_0_4_R_v_4 & SE_coalesced_delay_0_4_s_tv_4;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_4 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x(STALLENABLE,96)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_consumed1 = (~ (SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_backStall) & SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid = i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_o_valid;

    // SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x(STALLENABLE,125)
    // Valid signal propagation
    assign SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_V0 = SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_backStall = i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_stall_out | ~ (SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_and0 = SE_out_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_V1;
    assign SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_wireValid = SE_coalesced_delay_0_4_V1 & SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_and0;

    // SE_out_i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20(STALLENABLE,88)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_wireValid = i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x(BITJOIN,70)
    assign bubble_join_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_q = i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_c0_exit308_1_tpl;

    // bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x(BITSELECT,71)
    assign bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_q[63:0]);

    // coalesced_delay_0_4(REG,61)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_4_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(SR_SE_coalesced_delay_0_4_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,56)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_4_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_4_q[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_4_q[33:33]);

    // i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20(BLACKBOX,18)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    zfp_decode_i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_0 thei_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20 (
        .in_c0_exe1029325(sel_for_coalesced_delay_0_c),
        .in_data_in(bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_b),
        .in_feedback_stall_in_15(in_feedback_stall_in_15),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_backStall),
        .in_valid_in(SE_bubble_select_i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_V0),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_out_15_sync(GPOUT,5)
    assign out_feedback_out_15 = i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_feedback_out_15;

    // feedback_out_16_sync(GPOUT,6)
    assign out_feedback_out_16 = i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_feedback_out_16;

    // feedback_out_17_sync(GPOUT,7)
    assign out_feedback_out_17 = i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_feedback_out_17;

    // feedback_out_18_sync(GPOUT,8)
    assign out_feedback_out_18 = i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_feedback_out_18;

    // feedback_valid_out_15_sync(GPOUT,13)
    assign out_feedback_valid_out_15 = i_llvm_fpga_push_i64_ublock_sroa_12_0_push15_zfp_decode20_out_feedback_valid_out_15;

    // feedback_valid_out_16_sync(GPOUT,14)
    assign out_feedback_valid_out_16 = i_llvm_fpga_push_i64_ublock_sroa_9_0_push16_zfp_decode21_out_feedback_valid_out_16;

    // feedback_valid_out_17_sync(GPOUT,15)
    assign out_feedback_valid_out_17 = i_llvm_fpga_push_i64_ublock_sroa_6_0_push17_zfp_decode22_out_feedback_valid_out_17;

    // feedback_valid_out_18_sync(GPOUT,16)
    assign out_feedback_valid_out_18 = i_llvm_fpga_push_i64_ublock_sroa_0_0_push18_zfp_decode23_out_feedback_valid_out_18;

    // regfree_osync(GPOUT,37)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c3_in_if_end9_zfp_decodes_c3_enter_zfp_decode18_aunroll_x_out_intel_reserved_ffwd_1_0;

    // sync_out(GPOUT,41)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode13_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_0_sync_out_x(GPOUT,44)@5
    assign out_c0_exe729021 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe829123 = sel_for_coalesced_delay_0_b;
    assign out_valid_out = SE_stall_exit_V0;

    // dupName_1_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c1_in_if_end9_zfp_decodes_c1_enter313_zfp_decode8_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_2_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c0_in_if_end9_zfp_decodes_c0_enter303_zfp_decode3_aunroll_x_out_intel_reserved_ffwd_4_0;

    // rst_sync(RESETSYNC,149)
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
