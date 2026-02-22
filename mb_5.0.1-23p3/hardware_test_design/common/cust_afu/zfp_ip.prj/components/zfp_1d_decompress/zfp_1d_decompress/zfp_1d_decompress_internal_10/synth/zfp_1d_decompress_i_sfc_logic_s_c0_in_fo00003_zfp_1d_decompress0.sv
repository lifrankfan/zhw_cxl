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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body16_i_zfp_1d_decompresss_c0_enter10713_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:04:26 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c0_in_fo00003_zfp_1d_decompress0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi15_0_tpl,
    output wire [0:0] out_c0_exi15_1_tpl,
    output wire [0:0] out_c0_exi15_2_tpl,
    output wire [0:0] out_c0_exi15_3_tpl,
    output wire [31:0] out_c0_exi15_4_tpl,
    output wire [0:0] out_c0_exi15_5_tpl,
    output wire [0:0] out_c0_exi15_6_tpl,
    output wire [0:0] out_c0_exi15_7_tpl,
    output wire [0:0] out_c0_exi15_8_tpl,
    output wire [63:0] out_c0_exi15_9_tpl,
    output wire [63:0] out_c0_exi15_10_tpl,
    output wire [63:0] out_c0_exi15_11_tpl,
    output wire [63:0] out_c0_exi15_12_tpl,
    output wire [0:0] out_c0_exi15_13_tpl,
    output wire [31:0] out_c0_exi15_14_tpl,
    output wire [0:0] out_c0_exi15_15_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress7,
    input wire [0:0] in_c0_eni9_0_tpl,
    input wire [0:0] in_c0_eni9_1_tpl,
    input wire [0:0] in_c0_eni9_2_tpl,
    input wire [0:0] in_c0_eni9_3_tpl,
    input wire [63:0] in_c0_eni9_4_tpl,
    input wire [63:0] in_c0_eni9_5_tpl,
    input wire [63:0] in_c0_eni9_6_tpl,
    input wire [63:0] in_c0_eni9_7_tpl,
    input wire [0:0] in_c0_eni9_8_tpl,
    input wire [31:0] in_c0_eni9_9_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_059_q;
    wire [31:0] c_i32_160_q;
    wire [31:0] c_i32_6361_q;
    wire [6:0] c_i7_164_q;
    wire [6:0] c_i7_6262_q;
    wire [32:0] i_bs_sroa_5_114_op_zfp_1d_decompress9_a;
    wire [32:0] i_bs_sroa_5_114_op_zfp_1d_decompress9_b;
    logic [32:0] i_bs_sroa_5_114_op_zfp_1d_decompress9_o;
    wire [32:0] i_bs_sroa_5_114_op_zfp_1d_decompress9_q;
    wire [0:0] i_cmp_i_i_xor_zfp_1d_decompress8_q;
    wire [0:0] i_cmp_i_i_zfp_1d_decompress6_q;
    wire [0:0] i_exitcond13_or_zfp_1d_decompress17_q;
    wire [0:0] i_forked50_and_zfp_1d_decompress3_q;
    wire [7:0] i_fpga_indvars_iv_next12_zfp_1d_decompress21_a;
    wire [7:0] i_fpga_indvars_iv_next12_zfp_1d_decompress21_b;
    logic [7:0] i_fpga_indvars_iv_next12_zfp_1d_decompress21_o;
    wire [7:0] i_fpga_indvars_iv_next12_zfp_1d_decompress21_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_pop_i1_forked53_pop31_zfp_1d_decompress2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked53_pop31_zfp_1d_decompress2_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_feedback_stall_out_38;
    wire [63:0] i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_feedback_stall_out_35;
    wire [63:0] i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_feedback_stall_out_33;
    wire [63:0] i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_feedback_stall_out_32;
    wire [63:0] i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_feedback_stall_out_34;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_zfp_1d_decompress11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_zfp_1d_decompress11_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1658_push36_zfp_1d_decompress16_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1658_push36_zfp_1d_decompress16_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_forked53_push31_zfp_1d_decompress14_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_forked53_push31_zfp_1d_decompress14_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3859_push37_zfp_1d_decompress32_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3859_push37_zfp_1d_decompress32_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond36_zfp_1d_decompress20_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond36_zfp_1d_decompress20_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_bs_sroa_5_114_push30_zfp_1d_decompress18_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_bs_sroa_5_114_push30_zfp_1d_decompress18_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_i8_0_i20_pop2360_push38_zfp_1d_decompress34_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i32_i8_0_i20_pop2360_push38_zfp_1d_decompress34_out_feedback_valid_out_38;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_0_2_replace_phi57_push35_zfp_1d_decompress30_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_0_2_replace_phi57_push35_zfp_1d_decompress30_out_feedback_valid_out_35;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_11_2_replace_phi55_push33_zfp_1d_decompress26_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_11_2_replace_phi55_push33_zfp_1d_decompress26_out_feedback_valid_out_33;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_16_2_replace_phi54_push32_zfp_1d_decompress24_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_16_2_replace_phi54_push32_zfp_1d_decompress24_out_feedback_valid_out_32;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_6_2_replace_phi56_push34_zfp_1d_decompress28_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_6_2_replace_phi56_push34_zfp_1d_decompress28_out_feedback_valid_out_34;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_zfp_1d_decompress22_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_zfp_1d_decompress22_out_feedback_valid_out_27;
    wire [0:0] i_notcmp33_zfp_1d_decompress19_q;
    wire [0:0] i_sub_i_i_zfp_1d_decompress10_s;
    reg [31:0] i_sub_i_i_zfp_1d_decompress10_q;
    wire [31:0] bgTrunc_i_bs_sroa_5_114_op_zfp_1d_decompress9_sel_x_b;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next12_zfp_1d_decompress21_sel_x_b;
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
    wire [0:0] i_exitcond13_zfp_1d_decompress12_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond13_zfp_1d_decompress12_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together91_aunroll_x_in_c0_eni9_1_tpl_1_q;
    reg [0:0] redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q;
    reg [0:0] redist3_sync_together91_aunroll_x_in_c0_eni9_2_tpl_2_q;
    reg [0:0] redist4_sync_together91_aunroll_x_in_c0_eni9_3_tpl_1_q;
    reg [63:0] redist5_sync_together91_aunroll_x_in_c0_eni9_4_tpl_1_q;
    reg [63:0] redist6_sync_together91_aunroll_x_in_c0_eni9_5_tpl_1_q;
    reg [63:0] redist7_sync_together91_aunroll_x_in_c0_eni9_6_tpl_1_q;
    reg [63:0] redist8_sync_together91_aunroll_x_in_c0_eni9_7_tpl_1_q;
    reg [0:0] redist9_sync_together91_aunroll_x_in_c0_eni9_8_tpl_1_q;
    reg [31:0] redist10_sync_together91_aunroll_x_in_c0_eni9_9_tpl_1_q;
    reg [0:0] redist11_sync_together91_aunroll_x_in_i_valid_1_q;
    reg [63:0] redist12_i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_data_out_1_q;
    reg [63:0] redist13_i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_data_out_1_q;
    reg [63:0] redist14_i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_data_out_1_q;
    reg [63:0] redist15_i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_data_out_1_q;
    reg [31:0] redist16_i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_data_out_1_q;
    reg [31:0] redist17_i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_data_out_1_q;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_data_out_1_q;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_data_out_1_q;
    reg [0:0] redist20_i_forked50_and_zfp_1d_decompress3_q_1_q;


    // redist11_sync_together91_aunroll_x_in_i_valid_1(DELAY,111)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist11_sync_together91_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist11_sync_together91_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // c_i7_164(CONSTANT,32)
    assign c_i7_164_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next12_zfp_1d_decompress21(ADD,41)@2
    assign i_fpga_indvars_iv_next12_zfp_1d_decompress21_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_zfp_1d_decompress11_out_data_out};
    assign i_fpga_indvars_iv_next12_zfp_1d_decompress21_b = {1'b0, c_i7_164_q};
    assign i_fpga_indvars_iv_next12_zfp_1d_decompress21_o = $unsigned(i_fpga_indvars_iv_next12_zfp_1d_decompress21_a) + $unsigned(i_fpga_indvars_iv_next12_zfp_1d_decompress21_b);
    assign i_fpga_indvars_iv_next12_zfp_1d_decompress21_q = i_fpga_indvars_iv_next12_zfp_1d_decompress21_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next12_zfp_1d_decompress21_sel_x(BITSELECT,72)@2
    assign bgTrunc_i_fpga_indvars_iv_next12_zfp_1d_decompress21_sel_x_b = i_fpga_indvars_iv_next12_zfp_1d_decompress21_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_zfp_1d_decompress22(BLACKBOX,63)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_0 thei_llvm_fpga_push_i7_fpga_indvars_iv11_push27_zfp_1d_decompress22 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_zfp_1d_decompress21_sel_x_b),
        .in_exitcond13(i_exitcond13_zfp_1d_decompress12_cmp_nsign_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_zfp_1d_decompress11_out_feedback_stall_out_27),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together91_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_zfp_1d_decompress22_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_zfp_1d_decompress22_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1(DELAY,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q <= $unsigned(in_c0_eni9_2_tpl);
        end
    end

    // c_i7_6262(CONSTANT,33)
    assign c_i7_6262_q = $unsigned(7'b0111110);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_zfp_1d_decompress11(BLACKBOX,52)@2
    // out out_feedback_stall_out_27@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_zfp_1d_decompress11 (
        .in_data_in(c_i7_6262_q),
        .in_dir(redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_zfp_1d_decompress22_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i7_fpga_indvars_iv11_push27_zfp_1d_decompress22_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together91_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_zfp_1d_decompress11_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_zfp_1d_decompress11_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond13_zfp_1d_decompress12_cmp_nsign(LOGICAL,99)@2
    assign i_exitcond13_zfp_1d_decompress12_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv11_pop27_zfp_1d_decompress11_out_data_out[6:6]));

    // i_llvm_fpga_push_i1_notexitcond36_zfp_1d_decompress20(BLACKBOX,56)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_notexitcond36_0 thei_llvm_fpga_push_i1_notexitcond36_zfp_1d_decompress20 (
        .in_data_in(i_exitcond13_zfp_1d_decompress12_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together91_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond36_zfp_1d_decompress20_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond36_zfp_1d_decompress20_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4(BLACKBOX,42)@2
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going35_0 thei_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond36_zfp_1d_decompress20_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond36_zfp_1d_decompress20_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together91_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,34)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,69)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going35_zfp_1d_decompress4_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,77)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist11_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist3_sync_together91_aunroll_x_in_c0_eni9_2_tpl_2(DELAY,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together91_aunroll_x_in_c0_eni9_2_tpl_2_q <= $unsigned(redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q);
        end
    end

    // valid_fanout_reg17(REG,94)@1 + 1
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

    // valid_fanout_reg18(REG,95)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist11_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_i8_0_i20_pop2360_push38_zfp_1d_decompress34(BLACKBOX,58)@3
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i32_i8_0_i20_pop2360_push38_0 thei_llvm_fpga_push_i32_i8_0_i20_pop2360_push38_zfp_1d_decompress34 (
        .in_data_in(redist16_i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_data_out_1_q),
        .in_exitcond13(redist0_i_exitcond13_zfp_1d_decompress12_cmp_nsign_q_1_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i32_i8_0_i20_pop2360_push38_zfp_1d_decompress34_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i32_i8_0_i20_pop2360_push38_zfp_1d_decompress34_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together91_aunroll_x_in_c0_eni9_9_tpl_1(DELAY,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together91_aunroll_x_in_c0_eni9_9_tpl_1_q <= $unsigned(in_c0_eni9_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33(BLACKBOX,47)@2
    // out out_feedback_stall_out_38@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_0 thei_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33 (
        .in_data_in(redist10_sync_together91_aunroll_x_in_c0_eni9_9_tpl_1_q),
        .in_dir(redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i32_i8_0_i20_pop2360_push38_zfp_1d_decompress34_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i32_i8_0_i20_pop2360_push38_zfp_1d_decompress34_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_data_out_1(DELAY,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_data_out);
        end
    end

    // valid_fanout_reg15(REG,92)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,93)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3859_push37_zfp_1d_decompress32(BLACKBOX,55)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_notcmp3859_push37_0 thei_llvm_fpga_push_i1_notcmp3859_push37_zfp_1d_decompress32 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_data_out),
        .in_exitcond13(i_exitcond13_zfp_1d_decompress12_cmp_nsign_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i1_notcmp3859_push37_zfp_1d_decompress32_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i1_notcmp3859_push37_zfp_1d_decompress32_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together91_aunroll_x_in_c0_eni9_8_tpl_1(DELAY,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together91_aunroll_x_in_c0_eni9_8_tpl_1_q <= $unsigned(in_c0_eni9_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31(BLACKBOX,45)@2
    // out out_feedback_stall_out_37@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i1_notcmp3859_pop37_0 thei_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31 (
        .in_data_in(redist9_sync_together91_aunroll_x_in_c0_eni9_8_tpl_1_q),
        .in_dir(redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i1_notcmp3859_push37_zfp_1d_decompress32_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i1_notcmp3859_push37_zfp_1d_decompress32_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_data_out_1(DELAY,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_data_out);
        end
    end

    // valid_fanout_reg13(REG,90)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,91)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_0_2_replace_phi57_push35_zfp_1d_decompress30(BLACKBOX,59)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_b0000place_phi57_push35_0 thei_llvm_fpga_push_i64_block_sroa_0_2_replace_phi57_push35_zfp_1d_decompress30 (
        .in_data_in(i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_data_out),
        .in_exitcond13(i_exitcond13_zfp_1d_decompress12_cmp_nsign_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i64_block_sroa_0_2_replace_phi57_push35_zfp_1d_decompress30_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i64_block_sroa_0_2_replace_phi57_push35_zfp_1d_decompress30_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together91_aunroll_x_in_c0_eni9_7_tpl_1(DELAY,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together91_aunroll_x_in_c0_eni9_7_tpl_1_q <= $unsigned(in_c0_eni9_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29(BLACKBOX,48)@2
    // out out_feedback_stall_out_35@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_bl0000eplace_phi57_pop35_0 thei_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29 (
        .in_data_in(redist8_sync_together91_aunroll_x_in_c0_eni9_7_tpl_1_q),
        .in_dir(redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i64_block_sroa_0_2_replace_phi57_push35_zfp_1d_decompress30_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i64_block_sroa_0_2_replace_phi57_push35_zfp_1d_decompress30_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_data_out_1(DELAY,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_data_out);
        end
    end

    // valid_fanout_reg11(REG,88)@1 + 1
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

    // valid_fanout_reg12(REG,89)@1 + 1
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

    // i_llvm_fpga_push_i64_block_sroa_6_2_replace_phi56_push34_zfp_1d_decompress28(BLACKBOX,62)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_b0000place_phi56_push34_0 thei_llvm_fpga_push_i64_block_sroa_6_2_replace_phi56_push34_zfp_1d_decompress28 (
        .in_data_in(i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_data_out),
        .in_exitcond13(i_exitcond13_zfp_1d_decompress12_cmp_nsign_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i64_block_sroa_6_2_replace_phi56_push34_zfp_1d_decompress28_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i64_block_sroa_6_2_replace_phi56_push34_zfp_1d_decompress28_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together91_aunroll_x_in_c0_eni9_6_tpl_1(DELAY,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together91_aunroll_x_in_c0_eni9_6_tpl_1_q <= $unsigned(in_c0_eni9_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27(BLACKBOX,51)@2
    // out out_feedback_stall_out_34@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_bl0000eplace_phi56_pop34_0 thei_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27 (
        .in_data_in(redist7_sync_together91_aunroll_x_in_c0_eni9_6_tpl_1_q),
        .in_dir(redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i64_block_sroa_6_2_replace_phi56_push34_zfp_1d_decompress28_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i64_block_sroa_6_2_replace_phi56_push34_zfp_1d_decompress28_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_data_out_1(DELAY,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_data_out);
        end
    end

    // valid_fanout_reg9(REG,86)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,87)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_11_2_replace_phi55_push33_zfp_1d_decompress26(BLACKBOX,60)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_b0000place_phi55_push33_0 thei_llvm_fpga_push_i64_block_sroa_11_2_replace_phi55_push33_zfp_1d_decompress26 (
        .in_data_in(i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_data_out),
        .in_exitcond13(i_exitcond13_zfp_1d_decompress12_cmp_nsign_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i64_block_sroa_11_2_replace_phi55_push33_zfp_1d_decompress26_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i64_block_sroa_11_2_replace_phi55_push33_zfp_1d_decompress26_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together91_aunroll_x_in_c0_eni9_5_tpl_1(DELAY,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together91_aunroll_x_in_c0_eni9_5_tpl_1_q <= $unsigned(in_c0_eni9_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25(BLACKBOX,49)@2
    // out out_feedback_stall_out_33@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_bl0000eplace_phi55_pop33_0 thei_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25 (
        .in_data_in(redist6_sync_together91_aunroll_x_in_c0_eni9_5_tpl_1_q),
        .in_dir(redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i64_block_sroa_11_2_replace_phi55_push33_zfp_1d_decompress26_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i64_block_sroa_11_2_replace_phi55_push33_zfp_1d_decompress26_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_data_out_1(DELAY,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_data_out);
        end
    end

    // valid_fanout_reg7(REG,84)@1 + 1
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

    // valid_fanout_reg8(REG,85)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist11_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_16_2_replace_phi54_push32_zfp_1d_decompress24(BLACKBOX,61)@3
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_b0000place_phi54_push32_0 thei_llvm_fpga_push_i64_block_sroa_16_2_replace_phi54_push32_zfp_1d_decompress24 (
        .in_data_in(redist13_i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_data_out_1_q),
        .in_exitcond13(redist0_i_exitcond13_zfp_1d_decompress12_cmp_nsign_q_1_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i64_block_sroa_16_2_replace_phi54_push32_zfp_1d_decompress24_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i64_block_sroa_16_2_replace_phi54_push32_zfp_1d_decompress24_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together91_aunroll_x_in_c0_eni9_4_tpl_1(DELAY,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together91_aunroll_x_in_c0_eni9_4_tpl_1_q <= $unsigned(in_c0_eni9_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23(BLACKBOX,50)@2
    // out out_feedback_stall_out_32@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_bl0000eplace_phi54_pop32_0 thei_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23 (
        .in_data_in(redist5_sync_together91_aunroll_x_in_c0_eni9_4_tpl_1_q),
        .in_dir(redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i64_block_sroa_16_2_replace_phi54_push32_zfp_1d_decompress24_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i64_block_sroa_16_2_replace_phi54_push32_zfp_1d_decompress24_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_data_out_1(DELAY,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_data_out);
        end
    end

    // i_notcmp33_zfp_1d_decompress19(LOGICAL,64)@3
    assign i_notcmp33_zfp_1d_decompress19_q = redist0_i_exitcond13_zfp_1d_decompress12_cmp_nsign_q_1_q ^ VCC_q;

    // i_exitcond13_or_zfp_1d_decompress17(LOGICAL,38)@3
    assign i_exitcond13_or_zfp_1d_decompress17_q = redist0_i_exitcond13_zfp_1d_decompress12_cmp_nsign_q_1_q | redist19_i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_data_out_1_q;

    // valid_fanout_reg4(REG,81)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,82)@1 + 1
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

    // i_llvm_fpga_push_i1_exitcond1658_push36_zfp_1d_decompress16(BLACKBOX,53)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_exitcond1658_push36_0 thei_llvm_fpga_push_i1_exitcond1658_push36_zfp_1d_decompress16 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_data_out),
        .in_exitcond13(i_exitcond13_zfp_1d_decompress12_cmp_nsign_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_exitcond1658_push36_zfp_1d_decompress16_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_exitcond1658_push36_zfp_1d_decompress16_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together91_aunroll_x_in_c0_eni9_3_tpl_1(DELAY,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together91_aunroll_x_in_c0_eni9_3_tpl_1_q <= $unsigned(in_c0_eni9_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15(BLACKBOX,43)@2
    // out out_feedback_stall_out_36@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i1_exitcond1658_pop36_0 thei_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15 (
        .in_data_in(redist4_sync_together91_aunroll_x_in_c0_eni9_3_tpl_1_q),
        .in_dir(redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_exitcond1658_push36_zfp_1d_decompress16_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_exitcond1658_push36_zfp_1d_decompress16_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_data_out_1(DELAY,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_data_out);
        end
    end

    // redist0_i_exitcond13_zfp_1d_decompress12_cmp_nsign_q_1(DELAY,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond13_zfp_1d_decompress12_cmp_nsign_q_1_q <= $unsigned(i_exitcond13_zfp_1d_decompress12_cmp_nsign_q);
        end
    end

    // c_i32_6361(CONSTANT,31)
    assign c_i32_6361_q = $unsigned(32'b00000000000000000000000000111111);

    // c_i32_160(CONSTANT,30)
    assign c_i32_160_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg2(REG,79)@1 + 1
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

    // valid_fanout_reg6(REG,83)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist11_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_bs_sroa_5_114_push30_zfp_1d_decompress18(BLACKBOX,57)@3
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i32_bs_sroa_5_114_push30_0 thei_llvm_fpga_push_i32_bs_sroa_5_114_push30_zfp_1d_decompress18 (
        .in_data_in(i_sub_i_i_zfp_1d_decompress10_q),
        .in_exitcond13_or(i_exitcond13_or_zfp_1d_decompress17_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_bs_sroa_5_114_push30_zfp_1d_decompress18_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_bs_sroa_5_114_push30_zfp_1d_decompress18_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,78)@1 + 1
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

    // valid_fanout_reg3(REG,80)@1 + 1
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

    // i_llvm_fpga_push_i1_forked53_push31_zfp_1d_decompress14(BLACKBOX,54)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_forked53_push31_0 thei_llvm_fpga_push_i1_forked53_push31_zfp_1d_decompress14 (
        .in_data_in(i_llvm_fpga_pop_i1_forked53_pop31_zfp_1d_decompress2_out_data_out),
        .in_exitcond13(i_exitcond13_zfp_1d_decompress12_cmp_nsign_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_forked53_pop31_zfp_1d_decompress2_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_forked53_push31_zfp_1d_decompress14_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_forked53_push31_zfp_1d_decompress14_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together91_aunroll_x_in_c0_eni9_1_tpl_1(DELAY,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together91_aunroll_x_in_c0_eni9_1_tpl_1_q <= $unsigned(in_c0_eni9_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked53_pop31_zfp_1d_decompress2(BLACKBOX,44)@2
    // out out_feedback_stall_out_31@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i1_forked53_pop31_0 thei_llvm_fpga_pop_i1_forked53_pop31_zfp_1d_decompress2 (
        .in_data_in(redist1_sync_together91_aunroll_x_in_c0_eni9_1_tpl_1_q),
        .in_dir(redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_forked53_push31_zfp_1d_decompress14_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_forked53_push31_zfp_1d_decompress14_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked53_pop31_zfp_1d_decompress2_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_forked53_pop31_zfp_1d_decompress2_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_forked50_and_zfp_1d_decompress3(LOGICAL,40)@2
    assign i_forked50_and_zfp_1d_decompress3_q = redist2_sync_together91_aunroll_x_in_c0_eni9_2_tpl_1_q & i_llvm_fpga_pop_i1_forked53_pop31_zfp_1d_decompress2_out_data_out;

    // c_i32_059(CONSTANT,29)
    assign c_i32_059_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5(BLACKBOX,46)@2
    // out out_feedback_stall_out_30@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_0 thei_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5 (
        .in_data_in(c_i32_059_q),
        .in_dir(i_forked50_and_zfp_1d_decompress3_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_bs_sroa_5_114_push30_zfp_1d_decompress18_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_bs_sroa_5_114_push30_zfp_1d_decompress18_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_data_out_1(DELAY,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_data_out);
        end
    end

    // i_bs_sroa_5_114_op_zfp_1d_decompress9(ADD,35)@3
    assign i_bs_sroa_5_114_op_zfp_1d_decompress9_a = {1'b0, redist17_i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_data_out_1_q};
    assign i_bs_sroa_5_114_op_zfp_1d_decompress9_b = {1'b0, c_i32_160_q};
    assign i_bs_sroa_5_114_op_zfp_1d_decompress9_o = $unsigned(i_bs_sroa_5_114_op_zfp_1d_decompress9_a) + $unsigned(i_bs_sroa_5_114_op_zfp_1d_decompress9_b);
    assign i_bs_sroa_5_114_op_zfp_1d_decompress9_q = i_bs_sroa_5_114_op_zfp_1d_decompress9_o[32:0];

    // bgTrunc_i_bs_sroa_5_114_op_zfp_1d_decompress9_sel_x(BITSELECT,71)@3
    assign bgTrunc_i_bs_sroa_5_114_op_zfp_1d_decompress9_sel_x_b = i_bs_sroa_5_114_op_zfp_1d_decompress9_q[31:0];

    // i_sub_i_i_zfp_1d_decompress10(MUX,65)@3
    assign i_sub_i_i_zfp_1d_decompress10_s = i_cmp_i_i_zfp_1d_decompress6_q;
    always @(i_sub_i_i_zfp_1d_decompress10_s or bgTrunc_i_bs_sroa_5_114_op_zfp_1d_decompress9_sel_x_b or c_i32_6361_q)
    begin
        unique case (i_sub_i_i_zfp_1d_decompress10_s)
            1'b0 : i_sub_i_i_zfp_1d_decompress10_q = bgTrunc_i_bs_sroa_5_114_op_zfp_1d_decompress9_sel_x_b;
            1'b1 : i_sub_i_i_zfp_1d_decompress10_q = c_i32_6361_q;
            default : i_sub_i_i_zfp_1d_decompress10_q = 32'b0;
        endcase
    end

    // i_cmp_i_i_xor_zfp_1d_decompress8(LOGICAL,36)@3
    assign i_cmp_i_i_xor_zfp_1d_decompress8_q = i_cmp_i_i_zfp_1d_decompress6_q ^ VCC_q;

    // i_cmp_i_i_zfp_1d_decompress6(LOGICAL,37)@3
    assign i_cmp_i_i_zfp_1d_decompress6_q = $unsigned(redist17_i_llvm_fpga_pop_i32_bs_sroa_5_114_pop30_zfp_1d_decompress5_out_data_out_1_q == c_i32_059_q ? 1'b1 : 1'b0);

    // redist20_i_forked50_and_zfp_1d_decompress3_q_1(DELAY,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_forked50_and_zfp_1d_decompress3_q_1_q <= $unsigned(i_forked50_and_zfp_1d_decompress3_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,75)@3
    assign out_c0_exi15_0_tpl = GND_q;
    assign out_c0_exi15_1_tpl = redist20_i_forked50_and_zfp_1d_decompress3_q_1_q;
    assign out_c0_exi15_2_tpl = i_cmp_i_i_zfp_1d_decompress6_q;
    assign out_c0_exi15_3_tpl = i_cmp_i_i_xor_zfp_1d_decompress8_q;
    assign out_c0_exi15_4_tpl = i_sub_i_i_zfp_1d_decompress10_q;
    assign out_c0_exi15_5_tpl = redist0_i_exitcond13_zfp_1d_decompress12_cmp_nsign_q_1_q;
    assign out_c0_exi15_6_tpl = redist19_i_llvm_fpga_pop_i1_exitcond1658_pop36_zfp_1d_decompress15_out_data_out_1_q;
    assign out_c0_exi15_7_tpl = i_exitcond13_or_zfp_1d_decompress17_q;
    assign out_c0_exi15_8_tpl = i_notcmp33_zfp_1d_decompress19_q;
    assign out_c0_exi15_9_tpl = redist13_i_llvm_fpga_pop_i64_block_sroa_16_2_replace_phi54_pop32_zfp_1d_decompress23_out_data_out_1_q;
    assign out_c0_exi15_10_tpl = redist14_i_llvm_fpga_pop_i64_block_sroa_11_2_replace_phi55_pop33_zfp_1d_decompress25_out_data_out_1_q;
    assign out_c0_exi15_11_tpl = redist12_i_llvm_fpga_pop_i64_block_sroa_6_2_replace_phi56_pop34_zfp_1d_decompress27_out_data_out_1_q;
    assign out_c0_exi15_12_tpl = redist15_i_llvm_fpga_pop_i64_block_sroa_0_2_replace_phi57_pop35_zfp_1d_decompress29_out_data_out_1_q;
    assign out_c0_exi15_13_tpl = redist18_i_llvm_fpga_pop_i1_notcmp3859_pop37_zfp_1d_decompress31_out_data_out_1_q;
    assign out_c0_exi15_14_tpl = redist16_i_llvm_fpga_pop_i32_i8_0_i20_pop2360_pop38_zfp_1d_decompress33_out_data_out_1_q;
    assign out_c0_exi15_15_tpl = redist3_sync_together91_aunroll_x_in_c0_eni9_2_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_1d_decompress7 = GND_q;

endmodule
