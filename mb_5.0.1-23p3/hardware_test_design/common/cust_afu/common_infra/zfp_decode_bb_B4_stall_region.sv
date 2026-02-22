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

// SystemVerilog created from bb_zfp_decode_B4_stall_region
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_bb_B4_stall_region (
    input wire [63:0] in_feedback_in_15,
    input wire [63:0] in_feedback_in_16,
    input wire [63:0] in_feedback_in_17,
    input wire [63:0] in_feedback_in_18,
    output wire [63:0] out_feedback_out_20,
    output wire [31:0] out_feedback_out_21,
    output wire [0:0] out_feedback_out_22,
    input wire [0:0] in_feedback_stall_in_20,
    input wire [0:0] in_feedback_stall_in_21,
    input wire [0:0] in_feedback_stall_in_22,
    output wire [0:0] out_feedback_stall_out_15,
    output wire [0:0] out_feedback_stall_out_16,
    output wire [0:0] out_feedback_stall_out_17,
    output wire [0:0] out_feedback_stall_out_18,
    input wire [0:0] in_feedback_valid_in_15,
    input wire [0:0] in_feedback_valid_in_16,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [0:0] in_feedback_valid_in_18,
    output wire [0:0] out_feedback_valid_out_20,
    output wire [0:0] out_feedback_valid_out_21,
    output wire [0:0] out_feedback_valid_out_22,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe106,
    input wire [31:0] in_c0_exe117,
    input wire [0:0] in_c0_exe128,
    input wire [0:0] in_c0_exe139,
    input wire [31:0] in_c0_exe1410,
    input wire [31:0] in_c0_exe1611,
    input wire [31:0] in_c0_exe1712,
    input wire [0:0] in_c0_exe22171,
    input wire [31:0] in_c0_exe42192,
    input wire [0:0] in_c0_exe52203,
    input wire [31:0] in_c0_exe82234,
    input wire [31:0] in_c0_exe95,
    input wire [63:0] in_c1_exe123714,
    input wire [63:0] in_c1_exe223815,
    input wire [63:0] in_c1_exe323916,
    input wire [0:0] in_c2_exe122913,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe128,
    output wire [0:0] out_c0_exe139,
    output wire [31:0] out_c0_exe1410,
    output wire [31:0] out_c0_exe1611,
    output wire [31:0] out_c0_exe1712,
    output wire [0:0] out_c0_exe22171,
    output wire [0:0] out_c0_exe52203,
    output wire [31:0] out_c0_exe82234,
    output wire [31:0] out_c0_exe95,
    output wire [63:0] out_c1_exe223815,
    output wire [63:0] out_ublock_sroa_0_0_pop18,
    output wire [63:0] out_ublock_sroa_12_0_pop15,
    output wire [63:0] out_ublock_sroa_6_0_pop17,
    output wire [63:0] out_ublock_sroa_9_0_pop16,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] c_i64_014_q;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_c0_exit193_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_c0_exit193_2_tpl;
    wire [227:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    reg [0:0] redist2_stall_entry_o7_4_0_q;
    reg [0:0] redist2_stall_entry_o7_4_1_q;
    reg [0:0] redist2_stall_entry_o7_4_2_q;
    reg [227:0] coalesced_delay_0_0_q;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_b;
    wire [421:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [63:0] bubble_select_stall_entry_n;
    wire [63:0] bubble_select_stall_entry_o;
    wire [63:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [95:0] bubble_join_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_c;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_backStall;
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
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_toReg6;
    reg [0:0] SE_stall_entry_fromReg6;
    wire [0:0] SE_stall_entry_consumed6;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_or5;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_stall_entry_V6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_V1;
    reg [0:0] SE_redist2_stall_entry_o7_4_0_R_v_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_0_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_0_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_0_backEN;
    wire [0:0] SE_redist2_stall_entry_o7_4_0_backStall;
    wire [0:0] SE_redist2_stall_entry_o7_4_0_V0;
    reg [0:0] SE_redist2_stall_entry_o7_4_1_R_v_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_1_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_1_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_1_backEN;
    wire [0:0] SE_redist2_stall_entry_o7_4_1_backStall;
    wire [0:0] SE_redist2_stall_entry_o7_4_1_V0;
    reg [0:0] SE_redist2_stall_entry_o7_4_2_R_v_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_2_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_2_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o7_4_2_backEN;
    wire [0:0] SE_redist2_stall_entry_o7_4_2_backStall;
    wire [0:0] SE_redist2_stall_entry_o7_4_2_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_1;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_or0;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_coalesced_delay_0_0_V1;
    wire [0:0] SR_SE_redist2_stall_entry_o7_4_0_i_valid;
    reg [0:0] SR_SE_redist2_stall_entry_o7_4_0_r_valid;
    reg [0:0] SR_SE_redist2_stall_entry_o7_4_0_r_data0;
    wire [0:0] SR_SE_redist2_stall_entry_o7_4_0_backStall;
    wire [0:0] SR_SE_redist2_stall_entry_o7_4_0_V;
    wire [0:0] SR_SE_redist2_stall_entry_o7_4_0_D0;
    wire [0:0] SR_SE_redist2_stall_entry_o7_4_2_i_valid;
    reg [0:0] SR_SE_redist2_stall_entry_o7_4_2_r_valid;
    reg [0:0] SR_SE_redist2_stall_entry_o7_4_2_r_data0;
    wire [0:0] SR_SE_redist2_stall_entry_o7_4_2_backStall;
    wire [0:0] SR_SE_redist2_stall_entry_o7_4_2_V;
    wire [0:0] SR_SE_redist2_stall_entry_o7_4_2_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // SE_out_i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13(STALLENABLE,114)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_wireValid = i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_valid_out;

    // i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13(BLACKBOX,32)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    zfp_decode_i_llvm_fpga_push_i32_bs_sroa_7_056_push21_0 thei_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13 (
        .in_c0_exe139(redist2_stall_entry_o7_4_2_q),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_c),
        .in_feedback_stall_in_21(in_feedback_stall_in_21),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_redist2_stall_entry_o7_4_0(STALLENABLE,123)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o7_4_0_V0 = SE_redist2_stall_entry_o7_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o7_4_0_s_tv_0 = SE_redist2_stall_entry_o7_4_1_backStall & SE_redist2_stall_entry_o7_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o7_4_0_backEN = ~ (SE_redist2_stall_entry_o7_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o7_4_0_v_s_0 = SE_redist2_stall_entry_o7_4_0_backEN & SR_SE_redist2_stall_entry_o7_4_0_V;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o7_4_0_backStall = ~ (SE_redist2_stall_entry_o7_4_0_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist2_stall_entry_o7_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o7_4_0_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o7_4_0_R_v_0 <= SE_redist2_stall_entry_o7_4_0_R_v_0 & SE_redist2_stall_entry_o7_4_0_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o7_4_0_R_v_0 <= SE_redist2_stall_entry_o7_4_0_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,92)
    assign bubble_join_stall_entry_q = {in_c2_exe122913, in_c1_exe323916, in_c1_exe223815, in_c1_exe123714, in_c0_exe95, in_c0_exe82234, in_c0_exe52203, in_c0_exe42192, in_c0_exe22171, in_c0_exe1712, in_c0_exe1611, in_c0_exe1410, in_c0_exe139, in_c0_exe128, in_c0_exe117, in_c0_exe106};

    // bubble_select_stall_entry(BITSELECT,93)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[130:99]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[163:132]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[164:164]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[196:165]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[228:197]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[292:229]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[356:293]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[420:357]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[421:421]);

    // join_for_coalesced_delay_0(BITJOIN,69)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_k, bubble_select_stall_entry_i, bubble_select_stall_entry_e, bubble_select_stall_entry_d, bubble_select_stall_entry_m, bubble_select_stall_entry_l, bubble_select_stall_entry_h, bubble_select_stall_entry_g, bubble_select_stall_entry_f, bubble_select_stall_entry_o};

    // coalesced_delay_0_0(REG,74)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= $unsigned(228'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,70)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[127:96]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[159:128]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[191:160]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[223:192]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[224:224]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[225:225]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[226:226]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[227:227]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i64_014(CONSTANT,3)
    assign c_i64_014_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3(BLACKBOX,27)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    zfp_decode_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_0 thei_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3 (
        .in_data_in(c_i64_014_q),
        .in_dir(bubble_select_stall_entry_b),
        .in_feedback_in_18(in_feedback_in_18),
        .in_feedback_valid_in_18(in_feedback_valid_in_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    zfp_decode_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_0 thei_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0 (
        .in_data_in(c_i64_014_q),
        .in_dir(bubble_select_stall_entry_b),
        .in_feedback_in_15(in_feedback_in_15),
        .in_feedback_valid_in_15(in_feedback_valid_in_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2(BLACKBOX,29)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    zfp_decode_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_0 thei_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2 (
        .in_data_in(c_i64_014_q),
        .in_dir(bubble_select_stall_entry_b),
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1(BLACKBOX,30)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    zfp_decode_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_0 thei_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1 (
        .in_data_in(c_i64_014_q),
        .in_dir(bubble_select_stall_entry_b),
        .in_feedback_in_16(in_feedback_in_16),
        .in_feedback_valid_in_16(in_feedback_valid_in_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_data_out(i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1(STALLENABLE,110)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_V0 = SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and0 = i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and1 = i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_valid_out & SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and0;
    assign SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and2 = i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_valid_out & SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and1;
    assign SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and3 = i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_valid_out & SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and2;
    assign SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_and3;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11(STALLENABLE,112)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_wireValid = i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11(BLACKBOX,31)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    zfp_decode_i_llvm_fpga_push_i1_memdep_phi_push22_0 thei_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11 (
        .in_c0_exe139(bubble_select_stall_entry_e),
        .in_data_in(bubble_select_stall_entry_q),
        .in_feedback_stall_in_22(in_feedback_stall_in_22),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_stall_entry(STALLENABLE,117)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
            SE_stall_entry_fromReg6 <= '0;
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
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
            // Successor 6
            SE_stall_entry_fromReg6 <= SE_stall_entry_toReg6;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    assign SE_stall_entry_toReg6 = SE_stall_entry_StallValid & SE_stall_entry_consumed6;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_or5 = SE_stall_entry_consumed5 & SE_stall_entry_or4;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed6 & SE_stall_entry_or5);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    assign SE_stall_entry_V6 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg6);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_coalesced_delay_0_0(STALLENABLE,126)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_V1 = SE_coalesced_delay_0_0_R_v_1;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_backStall & SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_s_tv_1 = SR_SE_redist2_stall_entry_o7_4_0_backStall & SE_coalesced_delay_0_0_R_v_1;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_or0 = SE_coalesced_delay_0_0_s_tv_0;
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_1 | SE_coalesced_delay_0_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_1 <= 1'b0;
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

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_R_v_1 & SE_coalesced_delay_0_0_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SR_SE_redist2_stall_entry_o7_4_0(STALLREG,171)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist2_stall_entry_o7_4_0_r_valid <= 1'b0;
            SR_SE_redist2_stall_entry_o7_4_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_stall_entry_o7_4_0_r_valid <= SE_redist2_stall_entry_o7_4_0_backStall & (SR_SE_redist2_stall_entry_o7_4_0_r_valid | SR_SE_redist2_stall_entry_o7_4_0_i_valid);

            if (SR_SE_redist2_stall_entry_o7_4_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_stall_entry_o7_4_0_r_data0 <= $unsigned(sel_for_coalesced_delay_0_i);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_stall_entry_o7_4_0_i_valid = SE_coalesced_delay_0_0_V1;
    // Stall signal propagation
    assign SR_SE_redist2_stall_entry_o7_4_0_backStall = SR_SE_redist2_stall_entry_o7_4_0_r_valid | ~ (SR_SE_redist2_stall_entry_o7_4_0_i_valid);

    // Valid
    assign SR_SE_redist2_stall_entry_o7_4_0_V = SR_SE_redist2_stall_entry_o7_4_0_r_valid == 1'b1 ? SR_SE_redist2_stall_entry_o7_4_0_r_valid : SR_SE_redist2_stall_entry_o7_4_0_i_valid;

    assign SR_SE_redist2_stall_entry_o7_4_0_D0 = SR_SE_redist2_stall_entry_o7_4_0_r_valid == 1'b1 ? SR_SE_redist2_stall_entry_o7_4_0_r_data0 : sel_for_coalesced_delay_0_i;

    // redist2_stall_entry_o7_4_0(REG,71)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist2_stall_entry_o7_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_stall_entry_o7_4_0_backEN == 1'b1)
        begin
            redist2_stall_entry_o7_4_0_q <= $unsigned(SR_SE_redist2_stall_entry_o7_4_0_D0);
        end
    end

    // redist2_stall_entry_o7_4_1(REG,72)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist2_stall_entry_o7_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_stall_entry_o7_4_1_backEN == 1'b1)
        begin
            redist2_stall_entry_o7_4_1_q <= $unsigned(redist2_stall_entry_o7_4_0_q);
        end
    end

    // SE_redist2_stall_entry_o7_4_1(STALLENABLE,124)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o7_4_1_V0 = SE_redist2_stall_entry_o7_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o7_4_1_s_tv_0 = SR_SE_redist2_stall_entry_o7_4_2_backStall & SE_redist2_stall_entry_o7_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o7_4_1_backEN = ~ (SE_redist2_stall_entry_o7_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o7_4_1_v_s_0 = SE_redist2_stall_entry_o7_4_1_backEN & SE_redist2_stall_entry_o7_4_0_V0;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o7_4_1_backStall = ~ (SE_redist2_stall_entry_o7_4_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist2_stall_entry_o7_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o7_4_1_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o7_4_1_R_v_0 <= SE_redist2_stall_entry_o7_4_1_R_v_0 & SE_redist2_stall_entry_o7_4_1_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o7_4_1_R_v_0 <= SE_redist2_stall_entry_o7_4_1_v_s_0;
            end

        end
    end

    // SR_SE_redist2_stall_entry_o7_4_2(STALLREG,172)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist2_stall_entry_o7_4_2_r_valid <= 1'b0;
            SR_SE_redist2_stall_entry_o7_4_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_stall_entry_o7_4_2_r_valid <= SE_redist2_stall_entry_o7_4_2_backStall & (SR_SE_redist2_stall_entry_o7_4_2_r_valid | SR_SE_redist2_stall_entry_o7_4_2_i_valid);

            if (SR_SE_redist2_stall_entry_o7_4_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_stall_entry_o7_4_2_r_data0 <= $unsigned(redist2_stall_entry_o7_4_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_stall_entry_o7_4_2_i_valid = SE_redist2_stall_entry_o7_4_1_V0;
    // Stall signal propagation
    assign SR_SE_redist2_stall_entry_o7_4_2_backStall = SR_SE_redist2_stall_entry_o7_4_2_r_valid | ~ (SR_SE_redist2_stall_entry_o7_4_2_i_valid);

    // Valid
    assign SR_SE_redist2_stall_entry_o7_4_2_V = SR_SE_redist2_stall_entry_o7_4_2_r_valid == 1'b1 ? SR_SE_redist2_stall_entry_o7_4_2_r_valid : SR_SE_redist2_stall_entry_o7_4_2_i_valid;

    assign SR_SE_redist2_stall_entry_o7_4_2_D0 = SR_SE_redist2_stall_entry_o7_4_2_r_valid == 1'b1 ? SR_SE_redist2_stall_entry_o7_4_2_r_data0 : redist2_stall_entry_o7_4_1_q;

    // SE_redist2_stall_entry_o7_4_2(STALLENABLE,125)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o7_4_2_V0 = SE_redist2_stall_entry_o7_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o7_4_2_s_tv_0 = SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_backStall & SE_redist2_stall_entry_o7_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o7_4_2_backEN = ~ (SE_redist2_stall_entry_o7_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o7_4_2_v_s_0 = SE_redist2_stall_entry_o7_4_2_backEN & SR_SE_redist2_stall_entry_o7_4_2_V;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o7_4_2_backStall = ~ (SE_redist2_stall_entry_o7_4_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist2_stall_entry_o7_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o7_4_2_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o7_4_2_R_v_0 <= SE_redist2_stall_entry_o7_4_2_R_v_0 & SE_redist2_stall_entry_o7_4_2_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o7_4_2_R_v_0 <= SE_redist2_stall_entry_o7_4_2_v_s_0;
            end

        end
    end

    // i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x(BLACKBOX,56)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_c0_exit193_0_tpl@4
    // out out_c0_exit193_1_tpl@4
    // out out_c0_exit193_2_tpl@4
    zfp_decode_i_sfc_s_c0_in_for_cond2_prehe0000enter187_zfp_decode9 thei_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V6),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_stall_entry_i),
        .in_c0_eni5_2_tpl(bubble_select_stall_entry_p),
        .in_c0_eni5_3_tpl(bubble_select_stall_entry_n),
        .in_c0_eni5_4_tpl(bubble_select_stall_entry_c),
        .in_c0_eni5_5_tpl(bubble_select_stall_entry_j),
        .out_o_stall(i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_o_valid),
        .out_c0_exit193_0_tpl(),
        .out_c0_exit193_1_tpl(i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_c0_exit193_1_tpl),
        .out_c0_exit193_2_tpl(i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_c0_exit193_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x(STALLENABLE,120)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_consumed0 = (~ (i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_consumed1 = (~ (i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_and0 = i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_wireValid = SE_redist2_stall_entry_o7_4_2_V0 & SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_and0;

    // SE_out_i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12(STALLENABLE,116)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_wireValid = i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x(BITJOIN,101)
    assign bubble_join_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_q = {i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_c0_exit193_2_tpl, i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_out_c0_exit193_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x(BITSELECT,102)
    assign bubble_select_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_q[95:64]);

    // redist2_stall_entry_o7_4_2(REG,73)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist2_stall_entry_o7_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_stall_entry_o7_4_2_backEN == 1'b1)
        begin
            redist2_stall_entry_o7_4_2_q <= $unsigned(SR_SE_redist2_stall_entry_o7_4_2_D0);
        end
    end

    // i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12(BLACKBOX,33)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    zfp_decode_i_llvm_fpga_push_i64_bs_sroa_0_057_push20_0 thei_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12 (
        .in_c0_exe139(redist2_stall_entry_o7_4_2_q),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_b),
        .in_feedback_stall_in_20(in_feedback_stall_in_20),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode9_aunroll_x_V1),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_out_20_sync(GPOUT,10)
    assign out_feedback_out_20 = i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_feedback_out_20;

    // feedback_out_21_sync(GPOUT,11)
    assign out_feedback_out_21 = i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_feedback_out_21;

    // feedback_out_22_sync(GPOUT,12)
    assign out_feedback_out_22 = i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_feedback_out_22;

    // feedback_stall_out_15_sync(GPOUT,16)
    assign out_feedback_stall_out_15 = i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_feedback_stall_out_15;

    // feedback_stall_out_16_sync(GPOUT,17)
    assign out_feedback_stall_out_16 = i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_feedback_stall_out_16;

    // feedback_stall_out_17_sync(GPOUT,18)
    assign out_feedback_stall_out_17 = i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_feedback_stall_out_17;

    // feedback_stall_out_18_sync(GPOUT,19)
    assign out_feedback_stall_out_18 = i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_feedback_stall_out_18;

    // feedback_valid_out_20_sync(GPOUT,24)
    assign out_feedback_valid_out_20 = i_llvm_fpga_push_i64_bs_sroa_0_057_push20_zfp_decode12_out_feedback_valid_out_20;

    // feedback_valid_out_21_sync(GPOUT,25)
    assign out_feedback_valid_out_21 = i_llvm_fpga_push_i32_bs_sroa_7_056_push21_zfp_decode13_out_feedback_valid_out_21;

    // feedback_valid_out_22_sync(GPOUT,26)
    assign out_feedback_valid_out_22 = i_llvm_fpga_push_i1_memdep_phi_push22_zfp_decode11_out_feedback_valid_out_22;

    // sync_out(GPOUT,53)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1(BITJOIN,88)
    assign bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_q = i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1(BITSELECT,89)
    assign bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_q[63:0]);

    // bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2(BITJOIN,84)
    assign bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_q = i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2(BITSELECT,85)
    assign bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_q[63:0]);

    // bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0(BITJOIN,80)
    assign bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_q = i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0(BITSELECT,81)
    assign bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_q[63:0]);

    // bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3(BITJOIN,76)
    assign bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_q = i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3(BITSELECT,77)
    assign bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_q[63:0]);

    // dupName_0_sync_out_x(GPOUT,55)@1
    assign out_c0_exe128 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe139 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe1410 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe1611 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe1712 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe22171 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe52203 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe82234 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe95 = sel_for_coalesced_delay_0_g;
    assign out_c1_exe223815 = sel_for_coalesced_delay_0_b;
    assign out_ublock_sroa_0_0_pop18 = bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_0_0_pop18_zfp_decode3_b;
    assign out_ublock_sroa_12_0_pop15 = bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_12_0_pop15_zfp_decode0_b;
    assign out_ublock_sroa_6_0_pop17 = bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_6_0_pop17_zfp_decode2_b;
    assign out_ublock_sroa_9_0_pop16 = bubble_select_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i64_ublock_sroa_9_0_pop16_zfp_decode1_V0;

    // rst_sync(RESETSYNC,173)
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
