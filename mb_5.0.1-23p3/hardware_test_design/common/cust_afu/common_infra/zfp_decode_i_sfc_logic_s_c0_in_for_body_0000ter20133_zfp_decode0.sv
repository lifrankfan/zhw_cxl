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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_i_zfp_decodes_c0_enter20133_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_logic_s_c0_in_for_body_0000ter20133_zfp_decode0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi18_0_tpl,
    output wire [0:0] out_c0_exi18_1_tpl,
    output wire [0:0] out_c0_exi18_2_tpl,
    output wire [0:0] out_c0_exi18_3_tpl,
    output wire [31:0] out_c0_exi18_4_tpl,
    output wire [0:0] out_c0_exi18_5_tpl,
    output wire [0:0] out_c0_exi18_6_tpl,
    output wire [0:0] out_c0_exi18_7_tpl,
    output wire [31:0] out_c0_exi18_8_tpl,
    output wire [31:0] out_c0_exi18_9_tpl,
    output wire [0:0] out_c0_exi18_10_tpl,
    output wire [31:0] out_c0_exi18_11_tpl,
    output wire [0:0] out_c0_exi18_12_tpl,
    output wire [0:0] out_c0_exi18_13_tpl,
    output wire [31:0] out_c0_exi18_14_tpl,
    output wire [0:0] out_c0_exi18_15_tpl,
    output wire [31:0] out_c0_exi18_16_tpl,
    output wire [31:0] out_c0_exi18_17_tpl,
    output wire [63:0] out_c0_exi18_18_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_decode0,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [31:0] in_c0_eni13_1_tpl,
    input wire [0:0] in_c0_eni13_2_tpl,
    input wire [0:0] in_c0_eni13_3_tpl,
    input wire [0:0] in_c0_eni13_4_tpl,
    input wire [31:0] in_c0_eni13_5_tpl,
    input wire [31:0] in_c0_eni13_6_tpl,
    input wire [0:0] in_c0_eni13_7_tpl,
    input wire [0:0] in_c0_eni13_8_tpl,
    input wire [0:0] in_c0_eni13_9_tpl,
    input wire [31:0] in_c0_eni13_10_tpl,
    input wire [31:0] in_c0_eni13_11_tpl,
    input wire [31:0] in_c0_eni13_12_tpl,
    input wire [63:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_164_q;
    wire [31:0] c_i32_6365_q;
    wire [2:0] c_i3_168_q;
    wire [2:0] c_i3_266_q;
    wire [32:0] i_bs_sroa_7_351_op_zfp_decode9_a;
    wire [32:0] i_bs_sroa_7_351_op_zfp_decode9_b;
    logic [32:0] i_bs_sroa_7_351_op_zfp_decode9_o;
    wire [32:0] i_bs_sroa_7_351_op_zfp_decode9_q;
    wire [0:0] i_cmp2_i_xor_zfp_decode6_q;
    wire [0:0] i_cmp2_i_zfp_decode4_q;
    wire [3:0] i_fpga_indvars_iv_next_zfp_decode14_a;
    wire [3:0] i_fpga_indvars_iv_next_zfp_decode14_b;
    logic [3:0] i_fpga_indvars_iv_next_zfp_decode14_o;
    wire [3:0] i_fpga_indvars_iv_next_zfp_decode14_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond5495_pop38_zfp_decode31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond5495_pop38_zfp_decode31_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i1_forked8190_pop33_zfp_decode27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked8190_pop33_zfp_decode27_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_pop_i1_notexit7697_pop39_zfp_decode33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notexit7697_pop39_zfp_decode33_out_feedback_stall_out_39;
    wire [0:0] i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_feedback_stall_out_37;
    wire [0:0] i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_feedback_stall_out_35;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop27_zfp_decode11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop27_zfp_decode11_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_push_i1_exitcond5495_push38_zfp_decode32_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_exitcond5495_push38_zfp_decode32_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_forked8190_push33_zfp_decode28_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i1_forked8190_push33_zfp_decode28_out_feedback_valid_out_33;
    wire [0:0] i_llvm_fpga_push_i1_notexit7697_push39_zfp_decode34_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i1_notexit7697_push39_zfp_decode34_out_feedback_valid_out_39;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond71_zfp_decode22_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond71_zfp_decode22_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_push37_zfp_decode17_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i1_push37_zfp_decode17_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i1_tobool_i3493_push36_zfp_decode18_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_tobool_i3493_push36_zfp_decode18_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_i32_bs_sroa_7_351_push30_zfp_decode19_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_bs_sroa_7_351_push30_zfp_decode19_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_k_058_pop1999_push40_zfp_decode36_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i32_k_058_pop1999_push40_zfp_decode36_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext83_push31_zfp_decode24_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext83_push31_zfp_decode24_out_feedback_valid_out_31;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter86_push32_zfp_decode26_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter86_push32_zfp_decode26_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_i32_sub_i3092_push35_zfp_decode30_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_sub_i3092_push35_zfp_decode30_out_feedback_valid_out_35;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push27_zfp_decode20_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push27_zfp_decode20_out_feedback_valid_out_27;
    wire [0:0] i_notcmp68_zfp_decode21_q;
    wire [0:0] i_sub_i_zfp_decode10_s;
    reg [31:0] i_sub_i_zfp_decode10_q;
    wire [0:0] i_tobool_i34_phi_decision14_or_zfp_decode8_q;
    wire [0:0] i_unnamed_zfp_decode16_q;
    wire [31:0] bgTrunc_i_bs_sroa_7_351_op_zfp_decode9_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next_zfp_decode14_sel_x_b;
    wire [31:0] c_i32_063_recast_x_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    wire [0:0] i_exitcond_zfp_decode12_cmp_nsign_q;
    reg [31:0] redist0_sync_together97_aunroll_x_in_c0_eni13_1_tpl_1_q;
    reg [0:0] redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q;
    reg [0:0] redist2_sync_together97_aunroll_x_in_c0_eni13_2_tpl_2_q;
    reg [0:0] redist3_sync_together97_aunroll_x_in_c0_eni13_3_tpl_1_q;
    reg [0:0] redist4_sync_together97_aunroll_x_in_c0_eni13_4_tpl_1_q;
    reg [31:0] redist5_sync_together97_aunroll_x_in_c0_eni13_5_tpl_1_q;
    reg [31:0] redist6_sync_together97_aunroll_x_in_c0_eni13_6_tpl_1_q;
    reg [0:0] redist7_sync_together97_aunroll_x_in_c0_eni13_7_tpl_2_q;
    reg [0:0] redist7_sync_together97_aunroll_x_in_c0_eni13_7_tpl_2_delay_0;
    reg [0:0] redist8_sync_together97_aunroll_x_in_c0_eni13_8_tpl_2_q;
    reg [0:0] redist8_sync_together97_aunroll_x_in_c0_eni13_8_tpl_2_delay_0;
    reg [0:0] redist9_sync_together97_aunroll_x_in_c0_eni13_9_tpl_2_q;
    reg [0:0] redist9_sync_together97_aunroll_x_in_c0_eni13_9_tpl_2_delay_0;
    reg [31:0] redist10_sync_together97_aunroll_x_in_c0_eni13_10_tpl_1_q;
    reg [31:0] redist11_sync_together97_aunroll_x_in_c0_eni13_11_tpl_2_q;
    reg [31:0] redist11_sync_together97_aunroll_x_in_c0_eni13_11_tpl_2_delay_0;
    reg [31:0] redist12_sync_together97_aunroll_x_in_c0_eni13_12_tpl_2_q;
    reg [31:0] redist12_sync_together97_aunroll_x_in_c0_eni13_12_tpl_2_delay_0;
    reg [63:0] redist13_sync_together97_aunroll_x_in_c0_eni13_13_tpl_2_q;
    reg [63:0] redist13_sync_together97_aunroll_x_in_c0_eni13_13_tpl_2_delay_0;
    reg [0:0] redist14_sync_together97_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist15_i_unnamed_zfp_decode16_q_1_q;
    reg [31:0] redist16_i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_data_out_1_q;
    reg [31:0] redist17_i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_data_out_1_q;
    reg [31:0] redist18_i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_data_out_1_q;
    reg [31:0] redist19_i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_data_out_1_q;
    reg [31:0] redist20_i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_data_out_1_q;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_data_out_1_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_data_out_1_q;


    // redist14_sync_together97_aunroll_x_in_i_valid_1(DELAY,117)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist14_sync_together97_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist14_sync_together97_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_push37_zfp_decode17(BLACKBOX,57)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    zfp_decode_i_llvm_fpga_push_i1_push37_0 thei_llvm_fpga_push_i1_push37_zfp_decode17 (
        .in_data_in(i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_data_out),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(i_unnamed_zfp_decode16_q),
        .in_valid_in(redist14_sync_together97_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i1_push37_zfp_decode17_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i1_push37_zfp_decode17_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1(DELAY,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q <= $unsigned(in_c0_eni13_2_tpl);
        end
    end

    // redist4_sync_together97_aunroll_x_in_c0_eni13_4_tpl_1(DELAY,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni13_4_tpl_1_q <= $unsigned(in_c0_eni13_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop37_zfp_decode15(BLACKBOX,45)@2
    // out out_feedback_stall_out_37@20000000
    zfp_decode_i_llvm_fpga_pop_i1_pop37_0 thei_llvm_fpga_pop_i1_pop37_zfp_decode15 (
        .in_data_in(redist4_sync_together97_aunroll_x_in_c0_eni13_4_tpl_1_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i1_push37_zfp_decode17_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i1_push37_zfp_decode17_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together97_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_168(CONSTANT,33)
    assign c_i3_168_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next_zfp_decode14(ADD,40)@2
    assign i_fpga_indvars_iv_next_zfp_decode14_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv_pop27_zfp_decode11_out_data_out};
    assign i_fpga_indvars_iv_next_zfp_decode14_b = {1'b0, c_i3_168_q};
    assign i_fpga_indvars_iv_next_zfp_decode14_o = $unsigned(i_fpga_indvars_iv_next_zfp_decode14_a) + $unsigned(i_fpga_indvars_iv_next_zfp_decode14_b);
    assign i_fpga_indvars_iv_next_zfp_decode14_q = i_fpga_indvars_iv_next_zfp_decode14_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next_zfp_decode14_sel_x(BITSELECT,75)@2
    assign bgTrunc_i_fpga_indvars_iv_next_zfp_decode14_sel_x_b = i_fpga_indvars_iv_next_zfp_decode14_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push27_zfp_decode20(BLACKBOX,64)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    zfp_decode_i_llvm_fpga_push_i3_fpga_indvars_iv_push27_0 thei_llvm_fpga_push_i3_fpga_indvars_iv_push27_zfp_decode20 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_zfp_decode14_sel_x_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop27_zfp_decode11_out_feedback_stall_out_27),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(i_unnamed_zfp_decode16_q),
        .in_valid_in(redist14_sync_together97_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i3_fpga_indvars_iv_push27_zfp_decode20_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i3_fpga_indvars_iv_push27_zfp_decode20_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_266(CONSTANT,34)
    assign c_i3_266_q = $unsigned(3'b010);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv_pop27_zfp_decode11(BLACKBOX,52)@2
    // out out_feedback_stall_out_27@20000000
    zfp_decode_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop27_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv_pop27_zfp_decode11 (
        .in_data_in(c_i3_266_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i3_fpga_indvars_iv_push27_zfp_decode20_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i3_fpga_indvars_iv_push27_zfp_decode20_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together97_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop27_zfp_decode11_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop27_zfp_decode11_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_zfp_decode12_cmp_nsign(LOGICAL,102)@2
    assign i_exitcond_zfp_decode12_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv_pop27_zfp_decode11_out_data_out[2:2]));

    // i_unnamed_zfp_decode16(LOGICAL,68)@2
    assign i_unnamed_zfp_decode16_q = i_exitcond_zfp_decode12_cmp_nsign_q & i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_data_out;

    // i_llvm_fpga_push_i1_notexitcond71_zfp_decode22(BLACKBOX,56)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    zfp_decode_i_llvm_fpga_push_i1_notexitcond71_0 thei_llvm_fpga_push_i1_notexitcond71_zfp_decode22 (
        .in_data_in(i_unnamed_zfp_decode16_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together97_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond71_zfp_decode22_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond71_zfp_decode22_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going70_zfp_decode2(BLACKBOX,41)@2
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_decode_i_llvm_fpga_pipeline_keep_going70_0 thei_llvm_fpga_pipeline_keep_going70_zfp_decode2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond71_zfp_decode22_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond71_zfp_decode22_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together97_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,35)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_zfp_decode2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,72)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going70_zfp_decode2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,80)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist13_sync_together97_aunroll_x_in_c0_eni13_13_tpl_2(DELAY,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together97_aunroll_x_in_c0_eni13_13_tpl_2_delay_0 <= $unsigned(in_c0_eni13_13_tpl);
            redist13_sync_together97_aunroll_x_in_c0_eni13_13_tpl_2_q <= redist13_sync_together97_aunroll_x_in_c0_eni13_13_tpl_2_delay_0;
        end
    end

    // redist12_sync_together97_aunroll_x_in_c0_eni13_12_tpl_2(DELAY,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together97_aunroll_x_in_c0_eni13_12_tpl_2_delay_0 <= $unsigned(in_c0_eni13_12_tpl);
            redist12_sync_together97_aunroll_x_in_c0_eni13_12_tpl_2_q <= redist12_sync_together97_aunroll_x_in_c0_eni13_12_tpl_2_delay_0;
        end
    end

    // redist11_sync_together97_aunroll_x_in_c0_eni13_11_tpl_2(DELAY,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together97_aunroll_x_in_c0_eni13_11_tpl_2_delay_0 <= $unsigned(in_c0_eni13_11_tpl);
            redist11_sync_together97_aunroll_x_in_c0_eni13_11_tpl_2_q <= redist11_sync_together97_aunroll_x_in_c0_eni13_11_tpl_2_delay_0;
        end
    end

    // redist2_sync_together97_aunroll_x_in_c0_eni13_2_tpl_2(DELAY,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together97_aunroll_x_in_c0_eni13_2_tpl_2_q <= $unsigned(redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q);
        end
    end

    // valid_fanout_reg17(REG,97)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,98)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_k_058_pop1999_push40_zfp_decode36(BLACKBOX,60)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    zfp_decode_i_llvm_fpga_push_i32_k_058_pop1999_push40_0 thei_llvm_fpga_push_i32_k_058_pop1999_push40_zfp_decode36 (
        .in_data_in(i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_data_out),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_feedback_stall_out_40),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(i_unnamed_zfp_decode16_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i32_k_058_pop1999_push40_zfp_decode36_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i32_k_058_pop1999_push40_zfp_decode36_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together97_aunroll_x_in_c0_eni13_10_tpl_1(DELAY,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together97_aunroll_x_in_c0_eni13_10_tpl_1_q <= $unsigned(in_c0_eni13_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35(BLACKBOX,48)@2
    // out out_feedback_stall_out_40@20000000
    zfp_decode_i_llvm_fpga_pop_i32_k_058_pop1999_pop40_0 thei_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35 (
        .in_data_in(redist10_sync_together97_aunroll_x_in_c0_eni13_10_tpl_1_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i32_k_058_pop1999_push40_zfp_decode36_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i32_k_058_pop1999_push40_zfp_decode36_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_data_out_1(DELAY,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_data_out);
        end
    end

    // valid_fanout_reg15(REG,95)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg16(REG,96)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notexit7697_push39_zfp_decode34(BLACKBOX,55)@3
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    zfp_decode_i_llvm_fpga_push_i1_notexit7697_push39_0 thei_llvm_fpga_push_i1_notexit7697_push39_zfp_decode34 (
        .in_data_in(i_llvm_fpga_pop_i1_notexit7697_pop39_zfp_decode33_out_data_out),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i1_notexit7697_pop39_zfp_decode33_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(redist15_i_unnamed_zfp_decode16_q_1_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i1_notexit7697_push39_zfp_decode34_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i1_notexit7697_push39_zfp_decode34_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together97_aunroll_x_in_c0_eni13_9_tpl_2(DELAY,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together97_aunroll_x_in_c0_eni13_9_tpl_2_delay_0 <= $unsigned(in_c0_eni13_9_tpl);
            redist9_sync_together97_aunroll_x_in_c0_eni13_9_tpl_2_q <= redist9_sync_together97_aunroll_x_in_c0_eni13_9_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_notexit7697_pop39_zfp_decode33(BLACKBOX,44)@3
    // out out_feedback_stall_out_39@20000000
    zfp_decode_i_llvm_fpga_pop_i1_notexit7697_pop39_0 thei_llvm_fpga_pop_i1_notexit7697_pop39_zfp_decode33 (
        .in_data_in(redist9_sync_together97_aunroll_x_in_c0_eni13_9_tpl_2_q),
        .in_dir(redist2_sync_together97_aunroll_x_in_c0_eni13_2_tpl_2_q),
        .in_feedback_in_39(i_llvm_fpga_push_i1_notexit7697_push39_zfp_decode34_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i1_notexit7697_push39_zfp_decode34_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_notexit7697_pop39_zfp_decode33_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i1_notexit7697_pop39_zfp_decode33_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,93)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,94)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond5495_push38_zfp_decode32(BLACKBOX,53)@3
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    zfp_decode_i_llvm_fpga_push_i1_exitcond5495_push38_0 thei_llvm_fpga_push_i1_exitcond5495_push38_zfp_decode32 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond5495_pop38_zfp_decode31_out_data_out),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_exitcond5495_pop38_zfp_decode31_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(redist15_i_unnamed_zfp_decode16_q_1_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_exitcond5495_push38_zfp_decode32_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_exitcond5495_push38_zfp_decode32_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together97_aunroll_x_in_c0_eni13_8_tpl_2(DELAY,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together97_aunroll_x_in_c0_eni13_8_tpl_2_delay_0 <= $unsigned(in_c0_eni13_8_tpl);
            redist8_sync_together97_aunroll_x_in_c0_eni13_8_tpl_2_q <= redist8_sync_together97_aunroll_x_in_c0_eni13_8_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond5495_pop38_zfp_decode31(BLACKBOX,42)@3
    // out out_feedback_stall_out_38@20000000
    zfp_decode_i_llvm_fpga_pop_i1_exitcond5495_pop38_0 thei_llvm_fpga_pop_i1_exitcond5495_pop38_zfp_decode31 (
        .in_data_in(redist8_sync_together97_aunroll_x_in_c0_eni13_8_tpl_2_q),
        .in_dir(redist2_sync_together97_aunroll_x_in_c0_eni13_2_tpl_2_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_exitcond5495_push38_zfp_decode32_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_exitcond5495_push38_zfp_decode32_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond5495_pop38_zfp_decode31_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_exitcond5495_pop38_zfp_decode31_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,91)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,92)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_sub_i3092_push35_zfp_decode30(BLACKBOX,63)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    zfp_decode_i_llvm_fpga_push_i32_sub_i3092_push35_0 thei_llvm_fpga_push_i32_sub_i3092_push35_zfp_decode30 (
        .in_data_in(i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_data_out),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(i_unnamed_zfp_decode16_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_sub_i3092_push35_zfp_decode30_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_sub_i3092_push35_zfp_decode30_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together97_aunroll_x_in_c0_eni13_1_tpl_1(DELAY,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together97_aunroll_x_in_c0_eni13_1_tpl_1_q <= $unsigned(in_c0_eni13_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29(BLACKBOX,51)@2
    // out out_feedback_stall_out_35@20000000
    zfp_decode_i_llvm_fpga_pop_i32_sub_i3092_pop35_0 thei_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29 (
        .in_data_in(redist0_sync_together97_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_sub_i3092_push35_zfp_decode30_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_sub_i3092_push35_zfp_decode30_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_data_out_1(DELAY,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_data_out);
        end
    end

    // valid_fanout_reg9(REG,89)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg10(REG,90)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_forked8190_push33_zfp_decode28(BLACKBOX,54)@3
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    zfp_decode_i_llvm_fpga_push_i1_forked8190_push33_0 thei_llvm_fpga_push_i1_forked8190_push33_zfp_decode28 (
        .in_data_in(i_llvm_fpga_pop_i1_forked8190_pop33_zfp_decode27_out_data_out),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i1_forked8190_pop33_zfp_decode27_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(redist15_i_unnamed_zfp_decode16_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i1_forked8190_push33_zfp_decode28_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i1_forked8190_push33_zfp_decode28_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together97_aunroll_x_in_c0_eni13_7_tpl_2(DELAY,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together97_aunroll_x_in_c0_eni13_7_tpl_2_delay_0 <= $unsigned(in_c0_eni13_7_tpl);
            redist7_sync_together97_aunroll_x_in_c0_eni13_7_tpl_2_q <= redist7_sync_together97_aunroll_x_in_c0_eni13_7_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_forked8190_pop33_zfp_decode27(BLACKBOX,43)@3
    // out out_feedback_stall_out_33@20000000
    zfp_decode_i_llvm_fpga_pop_i1_forked8190_pop33_0 thei_llvm_fpga_pop_i1_forked8190_pop33_zfp_decode27 (
        .in_data_in(redist7_sync_together97_aunroll_x_in_c0_eni13_7_tpl_2_q),
        .in_dir(redist2_sync_together97_aunroll_x_in_c0_eni13_2_tpl_2_q),
        .in_feedback_in_33(i_llvm_fpga_push_i1_forked8190_push33_zfp_decode28_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i1_forked8190_push33_zfp_decode28_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked8190_pop33_zfp_decode27_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i1_forked8190_pop33_zfp_decode27_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,87)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,88)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter86_push32_zfp_decode26(BLACKBOX,62)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    zfp_decode_i_llvm_fpga_push_i32_reorder_limiter_enter86_push32_0 thei_llvm_fpga_push_i32_reorder_limiter_enter86_push32_zfp_decode26 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_data_out),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(i_unnamed_zfp_decode16_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i32_reorder_limiter_enter86_push32_zfp_decode26_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i32_reorder_limiter_enter86_push32_zfp_decode26_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together97_aunroll_x_in_c0_eni13_6_tpl_1(DELAY,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together97_aunroll_x_in_c0_eni13_6_tpl_1_q <= $unsigned(in_c0_eni13_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25(BLACKBOX,50)@2
    // out out_feedback_stall_out_32@20000000
    zfp_decode_i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25 (
        .in_data_in(redist6_sync_together97_aunroll_x_in_c0_eni13_6_tpl_1_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i32_reorder_limiter_enter86_push32_zfp_decode26_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i32_reorder_limiter_enter86_push32_zfp_decode26_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_data_out_1(DELAY,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_data_out);
        end
    end

    // valid_fanout_reg5(REG,85)@1 + 1
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

    // valid_fanout_reg6(REG,86)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext83_push31_zfp_decode24(BLACKBOX,61)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    zfp_decode_i_llvm_fpga_push_i32_lim_ext83_push31_0 thei_llvm_fpga_push_i32_lim_ext83_push31_zfp_decode24 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_data_out),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(i_unnamed_zfp_decode16_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_lim_ext83_push31_zfp_decode24_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_lim_ext83_push31_zfp_decode24_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together97_aunroll_x_in_c0_eni13_5_tpl_1(DELAY,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together97_aunroll_x_in_c0_eni13_5_tpl_1_q <= $unsigned(in_c0_eni13_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23(BLACKBOX,49)@2
    // out out_feedback_stall_out_31@20000000
    zfp_decode_i_llvm_fpga_pop_i32_lim_ext83_pop31_0 thei_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23 (
        .in_data_in(redist5_sync_together97_aunroll_x_in_c0_eni13_5_tpl_1_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i32_lim_ext83_push31_zfp_decode24_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_lim_ext83_push31_zfp_decode24_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_data_out_1(DELAY,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_data_out);
        end
    end

    // i_notcmp68_zfp_decode21(LOGICAL,65)@3
    assign i_notcmp68_zfp_decode21_q = redist15_i_unnamed_zfp_decode16_q_1_q ^ VCC_q;

    // redist15_i_unnamed_zfp_decode16_q_1(DELAY,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_unnamed_zfp_decode16_q_1_q <= $unsigned(i_unnamed_zfp_decode16_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_data_out_1(DELAY,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_data_out);
        end
    end

    // c_i32_6365(CONSTANT,32)
    assign c_i32_6365_q = $unsigned(32'b00000000000000000000000000111111);

    // c_i32_164(CONSTANT,31)
    assign c_i32_164_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg1(REG,81)@1 + 1
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

    // valid_fanout_reg4(REG,84)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist14_sync_together97_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_bs_sroa_7_351_push30_zfp_decode19(BLACKBOX,59)@3
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    zfp_decode_i_llvm_fpga_push_i32_bs_sroa_7_351_push30_0 thei_llvm_fpga_push_i32_bs_sroa_7_351_push30_zfp_decode19 (
        .in_data_in(i_sub_i_zfp_decode10_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(redist15_i_unnamed_zfp_decode16_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_bs_sroa_7_351_push30_zfp_decode19_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_bs_sroa_7_351_push30_zfp_decode19_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3(BLACKBOX,47)@2
    // out out_feedback_stall_out_30@20000000
    zfp_decode_i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_0 thei_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3 (
        .in_data_in(redist0_sync_together97_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_bs_sroa_7_351_push30_zfp_decode19_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_bs_sroa_7_351_push30_zfp_decode19_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_data_out_1(DELAY,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_data_out);
        end
    end

    // i_bs_sroa_7_351_op_zfp_decode9(ADD,36)@3
    assign i_bs_sroa_7_351_op_zfp_decode9_a = {1'b0, redist20_i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_data_out_1_q};
    assign i_bs_sroa_7_351_op_zfp_decode9_b = {1'b0, c_i32_164_q};
    assign i_bs_sroa_7_351_op_zfp_decode9_o = $unsigned(i_bs_sroa_7_351_op_zfp_decode9_a) + $unsigned(i_bs_sroa_7_351_op_zfp_decode9_b);
    assign i_bs_sroa_7_351_op_zfp_decode9_q = i_bs_sroa_7_351_op_zfp_decode9_o[32:0];

    // bgTrunc_i_bs_sroa_7_351_op_zfp_decode9_sel_x(BITSELECT,74)@3
    assign bgTrunc_i_bs_sroa_7_351_op_zfp_decode9_sel_x_b = i_bs_sroa_7_351_op_zfp_decode9_q[31:0];

    // i_sub_i_zfp_decode10(MUX,66)@3
    assign i_sub_i_zfp_decode10_s = i_cmp2_i_zfp_decode4_q;
    always @(i_sub_i_zfp_decode10_s or bgTrunc_i_bs_sroa_7_351_op_zfp_decode9_sel_x_b or c_i32_6365_q)
    begin
        unique case (i_sub_i_zfp_decode10_s)
            1'b0 : i_sub_i_zfp_decode10_q = bgTrunc_i_bs_sroa_7_351_op_zfp_decode9_sel_x_b;
            1'b1 : i_sub_i_zfp_decode10_q = c_i32_6365_q;
            default : i_sub_i_zfp_decode10_q = 32'b0;
        endcase
    end

    // i_cmp2_i_xor_zfp_decode6(LOGICAL,37)@3
    assign i_cmp2_i_xor_zfp_decode6_q = i_cmp2_i_zfp_decode4_q ^ VCC_q;

    // i_tobool_i34_phi_decision14_or_zfp_decode8(LOGICAL,67)@3
    assign i_tobool_i34_phi_decision14_or_zfp_decode8_q = redist21_i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_data_out_1_q | i_cmp2_i_xor_zfp_decode6_q;

    // valid_fanout_reg2(REG,82)@1 + 1
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

    // valid_fanout_reg3(REG,83)@1 + 1
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

    // i_llvm_fpga_push_i1_tobool_i3493_push36_zfp_decode18(BLACKBOX,58)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    zfp_decode_i_llvm_fpga_push_i1_tobool_i3493_push36_0 thei_llvm_fpga_push_i1_tobool_i3493_push36_zfp_decode18 (
        .in_data_in(i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_data_out),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_unnamed_zfp_decode16(i_unnamed_zfp_decode16_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_tobool_i3493_push36_zfp_decode18_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_tobool_i3493_push36_zfp_decode18_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together97_aunroll_x_in_c0_eni13_3_tpl_1(DELAY,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together97_aunroll_x_in_c0_eni13_3_tpl_1_q <= $unsigned(in_c0_eni13_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7(BLACKBOX,46)@2
    // out out_feedback_stall_out_36@20000000
    zfp_decode_i_llvm_fpga_pop_i1_tobool_i3493_pop36_0 thei_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7 (
        .in_data_in(redist3_sync_together97_aunroll_x_in_c0_eni13_3_tpl_1_q),
        .in_dir(redist1_sync_together97_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_tobool_i3493_push36_zfp_decode18_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_tobool_i3493_push36_zfp_decode18_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_data_out_1(DELAY,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_data_out);
        end
    end

    // c_i32_063_recast_x(CONSTANT,76)
    assign c_i32_063_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp2_i_zfp_decode4(LOGICAL,38)@3
    assign i_cmp2_i_zfp_decode4_q = $unsigned(redist20_i_llvm_fpga_pop_i32_bs_sroa_7_351_pop30_zfp_decode3_out_data_out_1_q == c_i32_063_recast_x_q ? 1'b1 : 1'b0);

    // sync_out_aunroll_x(GPOUT,78)@3
    assign out_c0_exi18_0_tpl = GND_q;
    assign out_c0_exi18_1_tpl = i_cmp2_i_zfp_decode4_q;
    assign out_c0_exi18_2_tpl = redist21_i_llvm_fpga_pop_i1_tobool_i3493_pop36_zfp_decode7_out_data_out_1_q;
    assign out_c0_exi18_3_tpl = i_tobool_i34_phi_decision14_or_zfp_decode8_q;
    assign out_c0_exi18_4_tpl = i_sub_i_zfp_decode10_q;
    assign out_c0_exi18_5_tpl = redist22_i_llvm_fpga_pop_i1_pop37_zfp_decode15_out_data_out_1_q;
    assign out_c0_exi18_6_tpl = redist15_i_unnamed_zfp_decode16_q_1_q;
    assign out_c0_exi18_7_tpl = i_notcmp68_zfp_decode21_q;
    assign out_c0_exi18_8_tpl = redist18_i_llvm_fpga_pop_i32_lim_ext83_pop31_zfp_decode23_out_data_out_1_q;
    assign out_c0_exi18_9_tpl = redist17_i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop32_zfp_decode25_out_data_out_1_q;
    assign out_c0_exi18_10_tpl = i_llvm_fpga_pop_i1_forked8190_pop33_zfp_decode27_out_data_out;
    assign out_c0_exi18_11_tpl = redist16_i_llvm_fpga_pop_i32_sub_i3092_pop35_zfp_decode29_out_data_out_1_q;
    assign out_c0_exi18_12_tpl = i_llvm_fpga_pop_i1_exitcond5495_pop38_zfp_decode31_out_data_out;
    assign out_c0_exi18_13_tpl = i_llvm_fpga_pop_i1_notexit7697_pop39_zfp_decode33_out_data_out;
    assign out_c0_exi18_14_tpl = redist19_i_llvm_fpga_pop_i32_k_058_pop1999_pop40_zfp_decode35_out_data_out_1_q;
    assign out_c0_exi18_15_tpl = redist2_sync_together97_aunroll_x_in_c0_eni13_2_tpl_2_q;
    assign out_c0_exi18_16_tpl = redist11_sync_together97_aunroll_x_in_c0_eni13_11_tpl_2_q;
    assign out_c0_exi18_17_tpl = redist12_sync_together97_aunroll_x_in_c0_eni13_12_tpl_2_q;
    assign out_c0_exi18_18_tpl = redist13_sync_together97_aunroll_x_in_c0_eni13_13_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_decode0 = GND_q;

endmodule
