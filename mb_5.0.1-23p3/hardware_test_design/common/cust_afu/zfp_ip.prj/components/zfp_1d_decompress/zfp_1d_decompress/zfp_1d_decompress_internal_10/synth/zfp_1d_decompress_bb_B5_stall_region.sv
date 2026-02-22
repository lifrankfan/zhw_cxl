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

// SystemVerilog created from bb_zfp_1d_decompress_B5_stall_region
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_bb_B5_stall_region (
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
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe21331,
    input wire [31:0] in_c0_exe41352,
    input wire [31:0] in_c0_exe73,
    input wire [0:0] in_c0_exe84,
    input wire [0:0] in_c0_exe95,
    input wire [63:0] in_c1_exe1016,
    input wire [63:0] in_c1_exe11497,
    input wire [63:0] in_c1_exe21508,
    input wire [63:0] in_c1_exe31519,
    input wire [63:0] in_c1_exe410,
    input wire [63:0] in_c1_exe511,
    input wire [63:0] in_c1_exe612,
    input wire [63:0] in_c1_exe713,
    input wire [63:0] in_c1_exe814,
    input wire [63:0] in_c1_exe915,
    input wire [0:0] in_c2_exe11416,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_c0_exe84,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_valid_out;
    wire [63:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [63:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_1_tpl;
    wire [31:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_2_tpl;
    wire [63:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_3_tpl;
    wire [63:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_4_tpl;
    wire [63:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_5_tpl;
    wire [63:0] i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_6_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_0_1_q;
    reg [1:0] coalesced_delay_0_2_q;
    reg [1:0] coalesced_delay_0_3_q;
    reg [1:0] coalesced_delay_0_4_q;
    wire [707:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [63:0] bubble_select_stall_entry_h;
    wire [63:0] bubble_select_stall_entry_i;
    wire [63:0] bubble_select_stall_entry_j;
    wire [63:0] bubble_select_stall_entry_k;
    wire [63:0] bubble_select_stall_entry_l;
    wire [63:0] bubble_select_stall_entry_m;
    wire [63:0] bubble_select_stall_entry_n;
    wire [63:0] bubble_select_stall_entry_o;
    wire [63:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [351:0] bubble_join_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_g;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_backStall;
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
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg6;
    reg [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed6;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or5;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V5;
    wire [0:0] SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V6;
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
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    wire [0:0] SR_SE_coalesced_delay_0_2_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_2_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_2_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_2_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_2_V;
    wire [1:0] SR_SE_coalesced_delay_0_2_D0;
    wire [0:0] SR_SE_coalesced_delay_0_4_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_4_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_4_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_4_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_4_V;
    wire [1:0] SR_SE_coalesced_delay_0_4_D0;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_i_valid;
    reg [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_and0;
    reg [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data0;
    reg [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data1;
    reg [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data2;
    reg [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data3;
    reg [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data4;
    reg [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data5;
    reg [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data6;
    reg [31:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data7;
    reg [63:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data8;
    reg [63:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data9;
    reg [63:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data10;
    reg [63:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data11;
    reg [63:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data12;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_backStall;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D0;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D1;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D2;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D3;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D4;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D5;
    wire [0:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D6;
    wire [31:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D7;
    wire [63:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D8;
    wire [63:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D9;
    wire [63:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D10;
    wire [63:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D11;
    wire [63:0] SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D12;
    reg [0:0] rst_sync_rst_sclrn;


    // SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20(STALLENABLE,92)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_wireValid = i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_valid_out;

    // i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20(BLACKBOX,32)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    zfp_1d_decompress_i_llvm_fpga_push_i64_u0000_i_sroa_9_0_push14_0 thei_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20 (
        .in_c0_exe95(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D6),
        .in_data_in(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D12),
        .in_feedback_stall_in_14(in_feedback_stall_in_14),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V6),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19(STALLENABLE,90)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_wireValid = i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_valid_out;

    // i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19(BLACKBOX,31)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    zfp_1d_decompress_i_llvm_fpga_push_i64_u0000_i_sroa_6_0_push15_0 thei_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19 (
        .in_c0_exe95(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D5),
        .in_data_in(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D11),
        .in_feedback_stall_in_15(in_feedback_stall_in_15),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V5),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18(STALLENABLE,86)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_wireValid = i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_valid_out;

    // i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18(BLACKBOX,29)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    zfp_1d_decompress_i_llvm_fpga_push_i64_u0000_i_sroa_0_0_push16_0 thei_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18 (
        .in_c0_exe95(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D3),
        .in_data_in(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D9),
        .in_feedback_stall_in_16(in_feedback_stall_in_16),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V3),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16(STALLENABLE,84)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_wireValid = i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_valid_out;

    // i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16(BLACKBOX,28)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    zfp_1d_decompress_i_llvm_fpga_push_i64_bs_sroa_0_024_push18_0 thei_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16 (
        .in_c0_exe95(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D2),
        .in_data_in(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D8),
        .in_feedback_stall_in_18(in_feedback_stall_in_18),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V2),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17(STALLENABLE,82)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_wireValid = i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_valid_out;

    // i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17(BLACKBOX,27)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    zfp_1d_decompress_i_llvm_fpga_push_i32_bs_sroa_7_023_push19_0 thei_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17 (
        .in_c0_exe95(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D1),
        .in_data_in(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D7),
        .in_feedback_stall_in_19(in_feedback_stall_in_19),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V1),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x(STALLENABLE,96)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg5 <= '0;
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg6 <= SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed0 = (~ (in_stall_in) & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed1 = (~ (i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_stall_out) & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed2 = (~ (i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_stall_out) & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed3 = (~ (i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_stall_out) & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed4 = (~ (i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_stall_out) & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed5 = (~ (i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_stall_out) & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg5;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed6 = (~ (i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_stall_out) & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed5;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_toReg6 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or5 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or4;
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_consumed6 & SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_or5);
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg5);
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V6 = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_wireValid = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V;

    // SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21(STALLENABLE,88)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_wireValid = i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x(BITJOIN,76)
    assign bubble_join_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_q = {i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_6_tpl, i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_5_tpl, i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_4_tpl, i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_3_tpl, i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_2_tpl, i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_1_tpl};

    // bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x(BITSELECT,77)
    assign bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_q[159:96]);
    assign bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_q[223:160]);
    assign bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_q[287:224]);
    assign bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_q[351:288]);

    // SE_coalesced_delay_0_2(STALLENABLE,101)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SR_SE_coalesced_delay_0_2_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_backEN);
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

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0(STALLENABLE,80)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_wireValid = i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,71)
    assign bubble_join_stall_entry_q = {in_c2_exe11416, in_c1_exe915, in_c1_exe814, in_c1_exe713, in_c1_exe612, in_c1_exe511, in_c1_exe410, in_c1_exe31519, in_c1_exe21508, in_c1_exe11497, in_c1_exe1016, in_c0_exe95, in_c0_exe84, in_c0_exe73, in_c0_exe41352, in_c0_exe21331};

    // bubble_select_stall_entry(BITSELECT,72)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[194:131]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[258:195]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[322:259]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[386:323]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[450:387]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[514:451]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[578:515]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[642:579]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[706:643]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[707:707]);

    // i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0(BLACKBOX,26)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    zfp_1d_decompress_i_llvm_fpga_push_i1_memdep_phi_push20_0 thei_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0 (
        .in_c0_exe95(bubble_select_stall_entry_f),
        .in_data_in(bubble_select_stall_entry_q),
        .in_feedback_stall_in_20(in_feedback_stall_in_20),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_stall_entry(STALLENABLE,93)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_coalesced_delay_0_0(STALLENABLE,99)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
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

    // join_for_coalesced_delay_0(BITJOIN,63)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_f, bubble_select_stall_entry_e};

    // coalesced_delay_0_0(REG,65)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,66)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_1_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,100)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SR_SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
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

    // SR_SE_coalesced_delay_0_2(STALLREG,118)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_2_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_2_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_2_r_valid <= SE_coalesced_delay_0_2_backStall & (SR_SE_coalesced_delay_0_2_r_valid | SR_SE_coalesced_delay_0_2_i_valid);

            if (SR_SE_coalesced_delay_0_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_2_r_data0 <= $unsigned(coalesced_delay_0_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_2_i_valid = SE_coalesced_delay_0_1_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_2_backStall = SR_SE_coalesced_delay_0_2_r_valid | ~ (SR_SE_coalesced_delay_0_2_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_2_V = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_valid : SR_SE_coalesced_delay_0_2_i_valid;

    assign SR_SE_coalesced_delay_0_2_D0 = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_data0 : coalesced_delay_0_1_q;

    // coalesced_delay_0_2(REG,67)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_2_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(SR_SE_coalesced_delay_0_2_D0);
        end
    end

    // coalesced_delay_0_3(REG,68)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_3_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // SE_coalesced_delay_0_3(STALLENABLE,102)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SR_SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SE_coalesced_delay_0_2_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_v_s_0);
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

    // SR_SE_coalesced_delay_0_4(STALLREG,119)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_coalesced_delay_0_4_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_4_r_data0 <= 2'bxx;
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

    // coalesced_delay_0_4(REG,69)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_4_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(SR_SE_coalesced_delay_0_4_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,64)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_4_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_4_q[1:1]);

    // SE_coalesced_delay_0_4(STALLENABLE,103)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SR_SE_coalesced_delay_0_4_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
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

        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x(BLACKBOX,59)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c0_exit183_0_tpl@5
    // out out_c0_exit183_1_tpl@5
    // out out_c0_exit183_2_tpl@5
    // out out_c0_exit183_3_tpl@5
    // out out_c0_exit183_4_tpl@5
    // out out_c0_exit183_5_tpl@5
    // out out_c0_exit183_6_tpl@5
    zfp_1d_decompress_i_sfc_s_c0_in_if_end110000_zfp_1d_decompress14 thei_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x (
        .in_i_stall(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V2),
        .in_c0_eni13_0_tpl(GND_q),
        .in_c0_eni13_1_tpl(bubble_select_stall_entry_b),
        .in_c0_eni13_2_tpl(bubble_select_stall_entry_m),
        .in_c0_eni13_3_tpl(bubble_select_stall_entry_h),
        .in_c0_eni13_4_tpl(bubble_select_stall_entry_d),
        .in_c0_eni13_5_tpl(bubble_select_stall_entry_c),
        .in_c0_eni13_6_tpl(bubble_select_stall_entry_g),
        .in_c0_eni13_7_tpl(bubble_select_stall_entry_l),
        .in_c0_eni13_8_tpl(bubble_select_stall_entry_p),
        .in_c0_eni13_9_tpl(bubble_select_stall_entry_k),
        .in_c0_eni13_10_tpl(bubble_select_stall_entry_o),
        .in_c0_eni13_11_tpl(bubble_select_stall_entry_j),
        .in_c0_eni13_12_tpl(bubble_select_stall_entry_n),
        .in_c0_eni13_13_tpl(bubble_select_stall_entry_i),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_o_stall(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_o_valid),
        .out_c0_exit183_0_tpl(),
        .out_c0_exit183_1_tpl(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_1_tpl),
        .out_c0_exit183_2_tpl(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_2_tpl),
        .out_c0_exit183_3_tpl(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_3_tpl),
        .out_c0_exit183_4_tpl(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_4_tpl),
        .out_c0_exit183_5_tpl(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_5_tpl),
        .out_c0_exit183_6_tpl(i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_c0_exit183_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x(STALLREG,120)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid <= 1'b0;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data0 <= 1'bx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data1 <= 1'bx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data2 <= 1'bx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data3 <= 1'bx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data4 <= 1'bx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data5 <= 1'bx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data6 <= 1'bx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data7 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data8 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data9 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data10 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data11 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data12 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid <= SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_backStall & (SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid | SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_i_valid);

            if (SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data0 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data1 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data2 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data3 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data4 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data5 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data6 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data7 <= $unsigned(bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_c);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data8 <= $unsigned(bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_b);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data9 <= $unsigned(bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_d);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data10 <= $unsigned(bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_g);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data11 <= $unsigned(bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_e);
                SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data12 <= $unsigned(bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_f);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_and0 = i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_o_valid;
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_i_valid = SE_coalesced_delay_0_4_V0 & SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_and0;
    // Stall signal propagation
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_backStall = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid | ~ (SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_i_valid);

    // Valid
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid : SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_i_valid;

    // Data0
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D0 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data0 : sel_for_coalesced_delay_0_b;
    // Data1
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D1 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data1 : sel_for_coalesced_delay_0_c;
    // Data2
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D2 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data2 : sel_for_coalesced_delay_0_c;
    // Data3
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D3 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data3 : sel_for_coalesced_delay_0_c;
    // Data4
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D4 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data4 : sel_for_coalesced_delay_0_c;
    // Data5
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D5 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data5 : sel_for_coalesced_delay_0_c;
    // Data6
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D6 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data6 : sel_for_coalesced_delay_0_c;
    // Data7
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D7 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data7 : bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_c;
    // Data8
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D8 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data8 : bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_b;
    // Data9
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D9 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data9 : bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_d;
    // Data10
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D10 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data10 : bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_g;
    // Data11
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D11 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data11 : bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_e;
    // Data12
    assign SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D12 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_r_data12 : bubble_select_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_f;

    // i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21(BLACKBOX,30)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    zfp_1d_decompress_i_llvm_fpga_push_i64_u0000i_sroa_12_0_push13_0 thei_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21 (
        .in_c0_exe95(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D4),
        .in_data_in(SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D10),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V4),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_out_13_sync(GPOUT,5)
    assign out_feedback_out_13 = i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_feedback_out_13;

    // feedback_out_14_sync(GPOUT,6)
    assign out_feedback_out_14 = i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_feedback_out_14;

    // feedback_out_15_sync(GPOUT,7)
    assign out_feedback_out_15 = i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_feedback_out_15;

    // feedback_out_16_sync(GPOUT,8)
    assign out_feedback_out_16 = i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_feedback_out_16;

    // feedback_out_18_sync(GPOUT,9)
    assign out_feedback_out_18 = i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_feedback_out_18;

    // feedback_out_19_sync(GPOUT,10)
    assign out_feedback_out_19 = i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_feedback_out_19;

    // feedback_out_20_sync(GPOUT,11)
    assign out_feedback_out_20 = i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_feedback_out_20;

    // feedback_valid_out_13_sync(GPOUT,19)
    assign out_feedback_valid_out_13 = i_llvm_fpga_push_i64_ublock_i_sroa_12_0_push13_zfp_1d_decompress21_out_feedback_valid_out_13;

    // feedback_valid_out_14_sync(GPOUT,20)
    assign out_feedback_valid_out_14 = i_llvm_fpga_push_i64_ublock_i_sroa_9_0_push14_zfp_1d_decompress20_out_feedback_valid_out_14;

    // feedback_valid_out_15_sync(GPOUT,21)
    assign out_feedback_valid_out_15 = i_llvm_fpga_push_i64_ublock_i_sroa_6_0_push15_zfp_1d_decompress19_out_feedback_valid_out_15;

    // feedback_valid_out_16_sync(GPOUT,22)
    assign out_feedback_valid_out_16 = i_llvm_fpga_push_i64_ublock_i_sroa_0_0_push16_zfp_1d_decompress18_out_feedback_valid_out_16;

    // feedback_valid_out_18_sync(GPOUT,23)
    assign out_feedback_valid_out_18 = i_llvm_fpga_push_i64_bs_sroa_0_024_push18_zfp_1d_decompress16_out_feedback_valid_out_18;

    // feedback_valid_out_19_sync(GPOUT,24)
    assign out_feedback_valid_out_19 = i_llvm_fpga_push_i32_bs_sroa_7_023_push19_zfp_1d_decompress17_out_feedback_valid_out_19;

    // feedback_valid_out_20_sync(GPOUT,25)
    assign out_feedback_valid_out_20 = i_llvm_fpga_push_i1_memdep_phi_push20_zfp_1d_decompress0_out_feedback_valid_out_20;

    // regfree_osync(GPOUT,49)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_1_0;

    // sync_out(GPOUT,53)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,55)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_0_sync_out_x(GPOUT,56)@5
    assign out_c0_exe84 = SR_SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_D0;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,57)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_2_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress14_aunroll_x_out_intel_reserved_ffwd_4_0;

    // rst_sync(RESETSYNC,121)
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
