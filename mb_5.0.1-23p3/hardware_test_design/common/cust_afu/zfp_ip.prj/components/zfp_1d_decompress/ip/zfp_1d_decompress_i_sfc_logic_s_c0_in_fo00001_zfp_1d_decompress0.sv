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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_i_zfp_1d_decompresss_c0_enter12521_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c0_in_fo00001_zfp_1d_decompress0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi16_0_tpl,
    output wire [0:0] out_c0_exi16_1_tpl,
    output wire [0:0] out_c0_exi16_2_tpl,
    output wire [0:0] out_c0_exi16_3_tpl,
    output wire [31:0] out_c0_exi16_4_tpl,
    output wire [0:0] out_c0_exi16_5_tpl,
    output wire [0:0] out_c0_exi16_6_tpl,
    output wire [31:0] out_c0_exi16_7_tpl,
    output wire [0:0] out_c0_exi16_8_tpl,
    output wire [0:0] out_c0_exi16_9_tpl,
    output wire [0:0] out_c0_exi16_10_tpl,
    output wire [63:0] out_c0_exi16_11_tpl,
    output wire [31:0] out_c0_exi16_12_tpl,
    output wire [63:0] out_c0_exi16_13_tpl,
    output wire [63:0] out_c0_exi16_14_tpl,
    output wire [63:0] out_c0_exi16_15_tpl,
    output wire [63:0] out_c0_exi16_16_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress1,
    input wire [0:0] in_c0_eni12_0_tpl,
    input wire [31:0] in_c0_eni12_1_tpl,
    input wire [0:0] in_c0_eni12_2_tpl,
    input wire [0:0] in_c0_eni12_3_tpl,
    input wire [0:0] in_c0_eni12_4_tpl,
    input wire [0:0] in_c0_eni12_5_tpl,
    input wire [0:0] in_c0_eni12_6_tpl,
    input wire [63:0] in_c0_eni12_7_tpl,
    input wire [31:0] in_c0_eni12_8_tpl,
    input wire [63:0] in_c0_eni12_9_tpl,
    input wire [63:0] in_c0_eni12_10_tpl,
    input wire [63:0] in_c0_eni12_11_tpl,
    input wire [63:0] in_c0_eni12_12_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_148_q;
    wire [31:0] c_i32_6349_q;
    wire [2:0] c_i3_152_q;
    wire [2:0] c_i3_250_q;
    wire [32:0] i_bs_sroa_7_319_op_zfp_1d_decompress9_a;
    wire [32:0] i_bs_sroa_7_319_op_zfp_1d_decompress9_b;
    logic [32:0] i_bs_sroa_7_319_op_zfp_1d_decompress9_o;
    wire [32:0] i_bs_sroa_7_319_op_zfp_1d_decompress9_q;
    wire [0:0] i_cmp_i20_i_xor_zfp_1d_decompress6_q;
    wire [0:0] i_cmp_i20_i_zfp_1d_decompress4_q;
    wire [3:0] i_fpga_indvars_iv_next_zfp_1d_decompress14_a;
    wire [3:0] i_fpga_indvars_iv_next_zfp_1d_decompress14_b;
    logic [3:0] i_fpga_indvars_iv_next_zfp_1d_decompress14_o;
    wire [3:0] i_fpga_indvars_iv_next_zfp_1d_decompress14_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond4085_pop42_zfp_1d_decompress25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond4085_pop42_zfp_1d_decompress25_out_feedback_stall_out_42;
    wire [0:0] i_llvm_fpga_pop_i1_notexit7486_pop43_zfp_1d_decompress27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notexit7486_pop43_zfp_1d_decompress27_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_pop_i1_pop41_zfp_1d_decompress15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop41_zfp_1d_decompress15_out_feedback_stall_out_41;
    wire [0:0] i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_feedback_stall_out_39;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop30_zfp_1d_decompress11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop30_zfp_1d_decompress11_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_push_i1_exitcond4085_push42_zfp_1d_decompress26_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i1_exitcond4085_push42_zfp_1d_decompress26_out_feedback_valid_out_42;
    wire [0:0] i_llvm_fpga_push_i1_notexit7486_push43_zfp_1d_decompress28_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i1_notexit7486_push43_zfp_1d_decompress28_out_feedback_valid_out_43;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond69_zfp_1d_decompress22_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond69_zfp_1d_decompress22_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_push41_zfp_1d_decompress17_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i1_push41_zfp_1d_decompress17_out_feedback_valid_out_41;
    wire [0:0] i_llvm_fpga_push_i1_tobool_i_i84_push40_zfp_1d_decompress18_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i1_tobool_i_i84_push40_zfp_1d_decompress18_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_i32_bs_sroa_7_319_push37_zfp_1d_decompress19_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_bs_sroa_7_319_push37_zfp_1d_decompress19_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_i32_sub_i_i83_push39_zfp_1d_decompress24_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_sub_i_i83_push39_zfp_1d_decompress24_out_feedback_valid_out_39;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push30_zfp_1d_decompress20_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push30_zfp_1d_decompress20_out_feedback_valid_out_30;
    wire [0:0] i_notcmp66_zfp_1d_decompress21_q;
    wire [0:0] i_sub_i29_i_zfp_1d_decompress10_s;
    reg [31:0] i_sub_i29_i_zfp_1d_decompress10_q;
    wire [0:0] i_tobool_i_i_phi_decision17_or_zfp_1d_decompress8_q;
    wire [0:0] i_unnamed_zfp_1d_decompress16_q;
    wire [31:0] bgTrunc_i_bs_sroa_7_319_op_zfp_1d_decompress9_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next_zfp_1d_decompress14_sel_x_b;
    wire [31:0] c_i32_047_recast_x_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    wire [0:0] i_exitcond_zfp_1d_decompress12_cmp_nsign_q;
    reg [31:0] redist0_sync_together73_aunroll_x_in_c0_eni12_1_tpl_1_q;
    reg [0:0] redist1_sync_together73_aunroll_x_in_c0_eni12_2_tpl_1_q;
    reg [0:0] redist2_sync_together73_aunroll_x_in_c0_eni12_2_tpl_2_q;
    reg [0:0] redist3_sync_together73_aunroll_x_in_c0_eni12_3_tpl_1_q;
    reg [0:0] redist4_sync_together73_aunroll_x_in_c0_eni12_4_tpl_1_q;
    reg [0:0] redist5_sync_together73_aunroll_x_in_c0_eni12_5_tpl_2_q;
    reg [0:0] redist5_sync_together73_aunroll_x_in_c0_eni12_5_tpl_2_delay_0;
    reg [0:0] redist6_sync_together73_aunroll_x_in_c0_eni12_6_tpl_2_q;
    reg [0:0] redist6_sync_together73_aunroll_x_in_c0_eni12_6_tpl_2_delay_0;
    reg [63:0] redist7_sync_together73_aunroll_x_in_c0_eni12_7_tpl_2_q;
    reg [63:0] redist7_sync_together73_aunroll_x_in_c0_eni12_7_tpl_2_delay_0;
    reg [31:0] redist8_sync_together73_aunroll_x_in_c0_eni12_8_tpl_2_q;
    reg [31:0] redist8_sync_together73_aunroll_x_in_c0_eni12_8_tpl_2_delay_0;
    reg [63:0] redist9_sync_together73_aunroll_x_in_c0_eni12_9_tpl_2_q;
    reg [63:0] redist9_sync_together73_aunroll_x_in_c0_eni12_9_tpl_2_delay_0;
    reg [63:0] redist10_sync_together73_aunroll_x_in_c0_eni12_10_tpl_2_q;
    reg [63:0] redist10_sync_together73_aunroll_x_in_c0_eni12_10_tpl_2_delay_0;
    reg [63:0] redist11_sync_together73_aunroll_x_in_c0_eni12_11_tpl_2_q;
    reg [63:0] redist11_sync_together73_aunroll_x_in_c0_eni12_11_tpl_2_delay_0;
    reg [63:0] redist12_sync_together73_aunroll_x_in_c0_eni12_12_tpl_2_q;
    reg [63:0] redist12_sync_together73_aunroll_x_in_c0_eni12_12_tpl_2_delay_0;
    reg [0:0] redist13_sync_together73_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist14_i_unnamed_zfp_1d_decompress16_q_1_q;
    reg [31:0] redist15_i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_data_out_1_q;
    reg [31:0] redist16_i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_data_out_1_q;


    // redist13_sync_together73_aunroll_x_in_i_valid_1(DELAY,92)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist13_sync_together73_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist13_sync_together73_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_push41_zfp_1d_decompress17(BLACKBOX,44)@2
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_push41_0 thei_llvm_fpga_push_i1_push41_zfp_1d_decompress17 (
        .in_data_in(i_llvm_fpga_pop_i1_pop41_zfp_1d_decompress15_out_data_out),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i1_pop41_zfp_1d_decompress15_out_feedback_stall_out_41),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_1d_decompress28(i_unnamed_zfp_1d_decompress16_q),
        .in_valid_in(redist13_sync_together73_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i1_push41_zfp_1d_decompress17_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i1_push41_zfp_1d_decompress17_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together73_aunroll_x_in_c0_eni12_2_tpl_1(DELAY,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together73_aunroll_x_in_c0_eni12_2_tpl_1_q <= $unsigned(in_c0_eni12_2_tpl);
        end
    end

    // redist4_sync_together73_aunroll_x_in_c0_eni12_4_tpl_1(DELAY,83)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together73_aunroll_x_in_c0_eni12_4_tpl_1_q <= $unsigned(in_c0_eni12_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop41_zfp_1d_decompress15(BLACKBOX,36)@2
    // out out_feedback_stall_out_41@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i1_pop41_0 thei_llvm_fpga_pop_i1_pop41_zfp_1d_decompress15 (
        .in_data_in(redist4_sync_together73_aunroll_x_in_c0_eni12_4_tpl_1_q),
        .in_dir(redist1_sync_together73_aunroll_x_in_c0_eni12_2_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i1_push41_zfp_1d_decompress17_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i1_push41_zfp_1d_decompress17_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together73_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop41_zfp_1d_decompress15_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i1_pop41_zfp_1d_decompress15_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_152(CONSTANT,25)
    assign c_i3_152_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next_zfp_1d_decompress14(ADD,32)@2
    assign i_fpga_indvars_iv_next_zfp_1d_decompress14_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv_pop30_zfp_1d_decompress11_out_data_out};
    assign i_fpga_indvars_iv_next_zfp_1d_decompress14_b = {1'b0, c_i3_152_q};
    assign i_fpga_indvars_iv_next_zfp_1d_decompress14_o = $unsigned(i_fpga_indvars_iv_next_zfp_1d_decompress14_a) + $unsigned(i_fpga_indvars_iv_next_zfp_1d_decompress14_b);
    assign i_fpga_indvars_iv_next_zfp_1d_decompress14_q = i_fpga_indvars_iv_next_zfp_1d_decompress14_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next_zfp_1d_decompress14_sel_x(BITSELECT,59)@2
    assign bgTrunc_i_fpga_indvars_iv_next_zfp_1d_decompress14_sel_x_b = i_fpga_indvars_iv_next_zfp_1d_decompress14_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push30_zfp_1d_decompress20(BLACKBOX,48)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i3_fpga_indvars_iv_push30_0 thei_llvm_fpga_push_i3_fpga_indvars_iv_push30_zfp_1d_decompress20 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_zfp_1d_decompress14_sel_x_b),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop30_zfp_1d_decompress11_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_1d_decompress28(i_unnamed_zfp_1d_decompress16_q),
        .in_valid_in(redist13_sync_together73_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i3_fpga_indvars_iv_push30_zfp_1d_decompress20_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i3_fpga_indvars_iv_push30_zfp_1d_decompress20_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_250(CONSTANT,26)
    assign c_i3_250_q = $unsigned(3'b010);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv_pop30_zfp_1d_decompress11(BLACKBOX,40)@2
    // out out_feedback_stall_out_30@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop30_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv_pop30_zfp_1d_decompress11 (
        .in_data_in(c_i3_250_q),
        .in_dir(redist1_sync_together73_aunroll_x_in_c0_eni12_2_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i3_fpga_indvars_iv_push30_zfp_1d_decompress20_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i3_fpga_indvars_iv_push30_zfp_1d_decompress20_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together73_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop30_zfp_1d_decompress11_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop30_zfp_1d_decompress11_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_zfp_1d_decompress12_cmp_nsign(LOGICAL,78)@2
    assign i_exitcond_zfp_1d_decompress12_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv_pop30_zfp_1d_decompress11_out_data_out[2:2]));

    // i_unnamed_zfp_1d_decompress16(LOGICAL,52)@2
    assign i_unnamed_zfp_1d_decompress16_q = i_exitcond_zfp_1d_decompress12_cmp_nsign_q & i_llvm_fpga_pop_i1_pop41_zfp_1d_decompress15_out_data_out;

    // i_llvm_fpga_push_i1_notexitcond69_zfp_1d_decompress22(BLACKBOX,43)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_notexitcond69_0 thei_llvm_fpga_push_i1_notexitcond69_zfp_1d_decompress22 (
        .in_data_in(i_unnamed_zfp_1d_decompress16_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together73_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond69_zfp_1d_decompress22_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond69_zfp_1d_decompress22_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2(BLACKBOX,33)@2
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going68_0 thei_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond69_zfp_1d_decompress22_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond69_zfp_1d_decompress22_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together73_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,27)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,56)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going68_zfp_1d_decompress2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,64)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist12_sync_together73_aunroll_x_in_c0_eni12_12_tpl_2(DELAY,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together73_aunroll_x_in_c0_eni12_12_tpl_2_delay_0 <= $unsigned(in_c0_eni12_12_tpl);
            redist12_sync_together73_aunroll_x_in_c0_eni12_12_tpl_2_q <= redist12_sync_together73_aunroll_x_in_c0_eni12_12_tpl_2_delay_0;
        end
    end

    // redist11_sync_together73_aunroll_x_in_c0_eni12_11_tpl_2(DELAY,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together73_aunroll_x_in_c0_eni12_11_tpl_2_delay_0 <= $unsigned(in_c0_eni12_11_tpl);
            redist11_sync_together73_aunroll_x_in_c0_eni12_11_tpl_2_q <= redist11_sync_together73_aunroll_x_in_c0_eni12_11_tpl_2_delay_0;
        end
    end

    // redist10_sync_together73_aunroll_x_in_c0_eni12_10_tpl_2(DELAY,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together73_aunroll_x_in_c0_eni12_10_tpl_2_delay_0 <= $unsigned(in_c0_eni12_10_tpl);
            redist10_sync_together73_aunroll_x_in_c0_eni12_10_tpl_2_q <= redist10_sync_together73_aunroll_x_in_c0_eni12_10_tpl_2_delay_0;
        end
    end

    // redist9_sync_together73_aunroll_x_in_c0_eni12_9_tpl_2(DELAY,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together73_aunroll_x_in_c0_eni12_9_tpl_2_delay_0 <= $unsigned(in_c0_eni12_9_tpl);
            redist9_sync_together73_aunroll_x_in_c0_eni12_9_tpl_2_q <= redist9_sync_together73_aunroll_x_in_c0_eni12_9_tpl_2_delay_0;
        end
    end

    // redist8_sync_together73_aunroll_x_in_c0_eni12_8_tpl_2(DELAY,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together73_aunroll_x_in_c0_eni12_8_tpl_2_delay_0 <= $unsigned(in_c0_eni12_8_tpl);
            redist8_sync_together73_aunroll_x_in_c0_eni12_8_tpl_2_q <= redist8_sync_together73_aunroll_x_in_c0_eni12_8_tpl_2_delay_0;
        end
    end

    // redist7_sync_together73_aunroll_x_in_c0_eni12_7_tpl_2(DELAY,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together73_aunroll_x_in_c0_eni12_7_tpl_2_delay_0 <= $unsigned(in_c0_eni12_7_tpl);
            redist7_sync_together73_aunroll_x_in_c0_eni12_7_tpl_2_q <= redist7_sync_together73_aunroll_x_in_c0_eni12_7_tpl_2_delay_0;
        end
    end

    // redist2_sync_together73_aunroll_x_in_c0_eni12_2_tpl_2(DELAY,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together73_aunroll_x_in_c0_eni12_2_tpl_2_q <= $unsigned(redist1_sync_together73_aunroll_x_in_c0_eni12_2_tpl_1_q);
        end
    end

    // valid_fanout_reg9(REG,73)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist13_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg10(REG,74)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist13_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notexit7486_push43_zfp_1d_decompress28(BLACKBOX,42)@3
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_notexit7486_push43_0 thei_llvm_fpga_push_i1_notexit7486_push43_zfp_1d_decompress28 (
        .in_data_in(i_llvm_fpga_pop_i1_notexit7486_pop43_zfp_1d_decompress27_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i1_notexit7486_pop43_zfp_1d_decompress27_out_feedback_stall_out_43),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_1d_decompress28(redist14_i_unnamed_zfp_1d_decompress16_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i1_notexit7486_push43_zfp_1d_decompress28_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i1_notexit7486_push43_zfp_1d_decompress28_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together73_aunroll_x_in_c0_eni12_6_tpl_2(DELAY,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together73_aunroll_x_in_c0_eni12_6_tpl_2_delay_0 <= $unsigned(in_c0_eni12_6_tpl);
            redist6_sync_together73_aunroll_x_in_c0_eni12_6_tpl_2_q <= redist6_sync_together73_aunroll_x_in_c0_eni12_6_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_notexit7486_pop43_zfp_1d_decompress27(BLACKBOX,35)@3
    // out out_feedback_stall_out_43@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i1_notexit7486_pop43_0 thei_llvm_fpga_pop_i1_notexit7486_pop43_zfp_1d_decompress27 (
        .in_data_in(redist6_sync_together73_aunroll_x_in_c0_eni12_6_tpl_2_q),
        .in_dir(redist2_sync_together73_aunroll_x_in_c0_eni12_2_tpl_2_q),
        .in_feedback_in_43(i_llvm_fpga_push_i1_notexit7486_push43_zfp_1d_decompress28_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i1_notexit7486_push43_zfp_1d_decompress28_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notexit7486_pop43_zfp_1d_decompress27_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i1_notexit7486_pop43_zfp_1d_decompress27_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,71)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist13_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg8(REG,72)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist13_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond4085_push42_zfp_1d_decompress26(BLACKBOX,41)@3
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_exitcond4085_push42_0 thei_llvm_fpga_push_i1_exitcond4085_push42_zfp_1d_decompress26 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond4085_pop42_zfp_1d_decompress25_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i1_exitcond4085_pop42_zfp_1d_decompress25_out_feedback_stall_out_42),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_1d_decompress28(redist14_i_unnamed_zfp_1d_decompress16_q_1_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i1_exitcond4085_push42_zfp_1d_decompress26_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i1_exitcond4085_push42_zfp_1d_decompress26_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together73_aunroll_x_in_c0_eni12_5_tpl_2(DELAY,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together73_aunroll_x_in_c0_eni12_5_tpl_2_delay_0 <= $unsigned(in_c0_eni12_5_tpl);
            redist5_sync_together73_aunroll_x_in_c0_eni12_5_tpl_2_q <= redist5_sync_together73_aunroll_x_in_c0_eni12_5_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond4085_pop42_zfp_1d_decompress25(BLACKBOX,34)@3
    // out out_feedback_stall_out_42@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i1_exitcond4085_pop42_0 thei_llvm_fpga_pop_i1_exitcond4085_pop42_zfp_1d_decompress25 (
        .in_data_in(redist5_sync_together73_aunroll_x_in_c0_eni12_5_tpl_2_q),
        .in_dir(redist2_sync_together73_aunroll_x_in_c0_eni12_2_tpl_2_q),
        .in_feedback_in_42(i_llvm_fpga_push_i1_exitcond4085_push42_zfp_1d_decompress26_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i1_exitcond4085_push42_zfp_1d_decompress26_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond4085_pop42_zfp_1d_decompress25_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i1_exitcond4085_pop42_zfp_1d_decompress25_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,69)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,70)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist13_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_sub_i_i83_push39_zfp_1d_decompress24(BLACKBOX,47)@3
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i32_sub_i_i83_push39_0 thei_llvm_fpga_push_i32_sub_i_i83_push39_zfp_1d_decompress24 (
        .in_data_in(redist15_i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_data_out_1_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_1d_decompress28(redist14_i_unnamed_zfp_1d_decompress16_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_sub_i_i83_push39_zfp_1d_decompress24_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_sub_i_i83_push39_zfp_1d_decompress24_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together73_aunroll_x_in_c0_eni12_1_tpl_1(DELAY,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together73_aunroll_x_in_c0_eni12_1_tpl_1_q <= $unsigned(in_c0_eni12_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23(BLACKBOX,39)@2
    // out out_feedback_stall_out_39@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i32_sub_i_i83_pop39_0 thei_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23 (
        .in_data_in(redist0_sync_together73_aunroll_x_in_c0_eni12_1_tpl_1_q),
        .in_dir(redist1_sync_together73_aunroll_x_in_c0_eni12_2_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_sub_i_i83_push39_zfp_1d_decompress24_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_sub_i_i83_push39_zfp_1d_decompress24_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_data_out_1(DELAY,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_data_out);
        end
    end

    // i_notcmp66_zfp_1d_decompress21(LOGICAL,49)@3
    assign i_notcmp66_zfp_1d_decompress21_q = redist14_i_unnamed_zfp_1d_decompress16_q_1_q ^ VCC_q;

    // redist14_i_unnamed_zfp_1d_decompress16_q_1(DELAY,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_unnamed_zfp_1d_decompress16_q_1_q <= $unsigned(i_unnamed_zfp_1d_decompress16_q);
        end
    end

    // c_i32_6349(CONSTANT,24)
    assign c_i32_6349_q = $unsigned(32'b00000000000000000000000000111111);

    // c_i32_148(CONSTANT,23)
    assign c_i32_148_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg1(REG,65)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,68)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist13_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_bs_sroa_7_319_push37_zfp_1d_decompress19(BLACKBOX,46)@3
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i32_bs_sroa_7_319_push37_0 thei_llvm_fpga_push_i32_bs_sroa_7_319_push37_zfp_1d_decompress19 (
        .in_data_in(i_sub_i29_i_zfp_1d_decompress10_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_1d_decompress28(redist14_i_unnamed_zfp_1d_decompress16_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_bs_sroa_7_319_push37_zfp_1d_decompress19_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_bs_sroa_7_319_push37_zfp_1d_decompress19_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3(BLACKBOX,38)@2
    // out out_feedback_stall_out_37@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_0 thei_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3 (
        .in_data_in(redist0_sync_together73_aunroll_x_in_c0_eni12_1_tpl_1_q),
        .in_dir(redist1_sync_together73_aunroll_x_in_c0_eni12_2_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i32_bs_sroa_7_319_push37_zfp_1d_decompress19_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_bs_sroa_7_319_push37_zfp_1d_decompress19_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_data_out_1(DELAY,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_data_out);
        end
    end

    // i_bs_sroa_7_319_op_zfp_1d_decompress9(ADD,28)@3
    assign i_bs_sroa_7_319_op_zfp_1d_decompress9_a = {1'b0, redist16_i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_data_out_1_q};
    assign i_bs_sroa_7_319_op_zfp_1d_decompress9_b = {1'b0, c_i32_148_q};
    assign i_bs_sroa_7_319_op_zfp_1d_decompress9_o = $unsigned(i_bs_sroa_7_319_op_zfp_1d_decompress9_a) + $unsigned(i_bs_sroa_7_319_op_zfp_1d_decompress9_b);
    assign i_bs_sroa_7_319_op_zfp_1d_decompress9_q = i_bs_sroa_7_319_op_zfp_1d_decompress9_o[32:0];

    // bgTrunc_i_bs_sroa_7_319_op_zfp_1d_decompress9_sel_x(BITSELECT,58)@3
    assign bgTrunc_i_bs_sroa_7_319_op_zfp_1d_decompress9_sel_x_b = i_bs_sroa_7_319_op_zfp_1d_decompress9_q[31:0];

    // i_sub_i29_i_zfp_1d_decompress10(MUX,50)@3
    assign i_sub_i29_i_zfp_1d_decompress10_s = i_cmp_i20_i_zfp_1d_decompress4_q;
    always @(i_sub_i29_i_zfp_1d_decompress10_s or bgTrunc_i_bs_sroa_7_319_op_zfp_1d_decompress9_sel_x_b or c_i32_6349_q)
    begin
        unique case (i_sub_i29_i_zfp_1d_decompress10_s)
            1'b0 : i_sub_i29_i_zfp_1d_decompress10_q = bgTrunc_i_bs_sroa_7_319_op_zfp_1d_decompress9_sel_x_b;
            1'b1 : i_sub_i29_i_zfp_1d_decompress10_q = c_i32_6349_q;
            default : i_sub_i29_i_zfp_1d_decompress10_q = 32'b0;
        endcase
    end

    // i_cmp_i20_i_xor_zfp_1d_decompress6(LOGICAL,29)@3
    assign i_cmp_i20_i_xor_zfp_1d_decompress6_q = i_cmp_i20_i_zfp_1d_decompress4_q ^ VCC_q;

    // i_tobool_i_i_phi_decision17_or_zfp_1d_decompress8(LOGICAL,51)@3
    assign i_tobool_i_i_phi_decision17_or_zfp_1d_decompress8_q = redist17_i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_data_out_1_q | i_cmp_i20_i_xor_zfp_1d_decompress6_q;

    // valid_fanout_reg2(REG,66)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,67)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_tobool_i_i84_push40_zfp_1d_decompress18(BLACKBOX,45)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_tobool_i_i84_push40_0 thei_llvm_fpga_push_i1_tobool_i_i84_push40_zfp_1d_decompress18 (
        .in_data_in(i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_data_out),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_feedback_stall_out_40),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_1d_decompress28(i_unnamed_zfp_1d_decompress16_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i1_tobool_i_i84_push40_zfp_1d_decompress18_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i1_tobool_i_i84_push40_zfp_1d_decompress18_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together73_aunroll_x_in_c0_eni12_3_tpl_1(DELAY,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together73_aunroll_x_in_c0_eni12_3_tpl_1_q <= $unsigned(in_c0_eni12_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7(BLACKBOX,37)@2
    // out out_feedback_stall_out_40@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i1_tobool_i_i84_pop40_0 thei_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7 (
        .in_data_in(redist3_sync_together73_aunroll_x_in_c0_eni12_3_tpl_1_q),
        .in_dir(redist1_sync_together73_aunroll_x_in_c0_eni12_2_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i1_tobool_i_i84_push40_zfp_1d_decompress18_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i1_tobool_i_i84_push40_zfp_1d_decompress18_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_data_out_1(DELAY,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_data_out);
        end
    end

    // c_i32_047_recast_x(CONSTANT,60)
    assign c_i32_047_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp_i20_i_zfp_1d_decompress4(LOGICAL,30)@3
    assign i_cmp_i20_i_zfp_1d_decompress4_q = $unsigned(redist16_i_llvm_fpga_pop_i32_bs_sroa_7_319_pop37_zfp_1d_decompress3_out_data_out_1_q == c_i32_047_recast_x_q ? 1'b1 : 1'b0);

    // sync_out_aunroll_x(GPOUT,62)@3
    assign out_c0_exi16_0_tpl = GND_q;
    assign out_c0_exi16_1_tpl = i_cmp_i20_i_zfp_1d_decompress4_q;
    assign out_c0_exi16_2_tpl = redist17_i_llvm_fpga_pop_i1_tobool_i_i84_pop40_zfp_1d_decompress7_out_data_out_1_q;
    assign out_c0_exi16_3_tpl = i_tobool_i_i_phi_decision17_or_zfp_1d_decompress8_q;
    assign out_c0_exi16_4_tpl = i_sub_i29_i_zfp_1d_decompress10_q;
    assign out_c0_exi16_5_tpl = redist14_i_unnamed_zfp_1d_decompress16_q_1_q;
    assign out_c0_exi16_6_tpl = i_notcmp66_zfp_1d_decompress21_q;
    assign out_c0_exi16_7_tpl = redist15_i_llvm_fpga_pop_i32_sub_i_i83_pop39_zfp_1d_decompress23_out_data_out_1_q;
    assign out_c0_exi16_8_tpl = i_llvm_fpga_pop_i1_exitcond4085_pop42_zfp_1d_decompress25_out_data_out;
    assign out_c0_exi16_9_tpl = i_llvm_fpga_pop_i1_notexit7486_pop43_zfp_1d_decompress27_out_data_out;
    assign out_c0_exi16_10_tpl = redist2_sync_together73_aunroll_x_in_c0_eni12_2_tpl_2_q;
    assign out_c0_exi16_11_tpl = redist7_sync_together73_aunroll_x_in_c0_eni12_7_tpl_2_q;
    assign out_c0_exi16_12_tpl = redist8_sync_together73_aunroll_x_in_c0_eni12_8_tpl_2_q;
    assign out_c0_exi16_13_tpl = redist9_sync_together73_aunroll_x_in_c0_eni12_9_tpl_2_q;
    assign out_c0_exi16_14_tpl = redist10_sync_together73_aunroll_x_in_c0_eni12_10_tpl_2_q;
    assign out_c0_exi16_15_tpl = redist11_sync_together73_aunroll_x_in_c0_eni12_11_tpl_2_q;
    assign out_c0_exi16_16_tpl = redist12_sync_together73_aunroll_x_in_c0_eni12_12_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_1d_decompress1 = GND_q;

endmodule
