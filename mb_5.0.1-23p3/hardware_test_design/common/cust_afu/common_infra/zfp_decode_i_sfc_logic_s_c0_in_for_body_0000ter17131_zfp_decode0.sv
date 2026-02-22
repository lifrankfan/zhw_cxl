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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_zfp_decodes_c0_enter17131_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_logic_s_c0_in_for_body_0000ter17131_zfp_decode0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi8_0_tpl,
    output wire [0:0] out_c0_exi8_1_tpl,
    output wire [0:0] out_c0_exi8_2_tpl,
    output wire [31:0] out_c0_exi8_3_tpl,
    output wire [31:0] out_c0_exi8_4_tpl,
    output wire [31:0] out_c0_exi8_5_tpl,
    output wire [0:0] out_c0_exi8_6_tpl,
    output wire [31:0] out_c0_exi8_7_tpl,
    output wire [31:0] out_c0_exi8_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_decode0,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [31:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_133_q;
    wire [31:0] c_i32_6332_q;
    wire [6:0] c_i7_131_q;
    wire [6:0] c_i7_6229_q;
    wire [32:0] i_dec_zfp_decode11_a;
    wire [32:0] i_dec_zfp_decode11_b;
    logic [32:0] i_dec_zfp_decode11_o;
    wire [32:0] i_dec_zfp_decode11_q;
    wire [7:0] i_fpga_indvars_iv_next53_zfp_decode8_a;
    wire [7:0] i_fpga_indvars_iv_next53_zfp_decode8_b;
    logic [7:0] i_fpga_indvars_iv_next53_zfp_decode8_o;
    wire [7:0] i_fpga_indvars_iv_next53_zfp_decode8_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_k_058_pop19_zfp_decode10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_058_pop19_zfp_decode10_out_feedback_stall_out_19;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext82_pop23_zfp_decode13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext82_pop23_zfp_decode13_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter85_pop24_zfp_decode15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter85_pop24_zfp_decode15_out_feedback_stall_out_24;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv52_pop14_zfp_decode3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv52_pop14_zfp_decode3_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond75_zfp_decode7_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond75_zfp_decode7_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_k_058_push19_zfp_decode12_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_k_058_push19_zfp_decode12_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext82_push23_zfp_decode14_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext82_push23_zfp_decode14_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter85_push24_zfp_decode16_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter85_push24_zfp_decode16_out_feedback_valid_out_24;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv52_push14_zfp_decode9_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv52_push14_zfp_decode9_out_feedback_valid_out_14;
    wire [0:0] i_notexit76_zfp_decode6_q;
    wire [31:0] bgTrunc_i_dec_zfp_decode11_sel_x_b;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next53_zfp_decode8_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    wire [0:0] i_exitcond54_zfp_decode4_cmp_sign_q;
    reg [0:0] redist0_i_exitcond54_zfp_decode4_cmp_sign_q_1_q;
    reg [0:0] redist1_sync_together48_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [31:0] redist2_sync_together48_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [31:0] redist3_sync_together48_aunroll_x_in_c0_eni3_3_tpl_1_q;
    reg [0:0] redist4_i_notexit76_zfp_decode6_q_1_q;


    // c_i7_131(CONSTANT,19)
    assign c_i7_131_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next53_zfp_decode8(ADD,24)@1
    assign i_fpga_indvars_iv_next53_zfp_decode8_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv52_pop14_zfp_decode3_out_data_out};
    assign i_fpga_indvars_iv_next53_zfp_decode8_b = {1'b0, c_i7_131_q};
    assign i_fpga_indvars_iv_next53_zfp_decode8_o = $unsigned(i_fpga_indvars_iv_next53_zfp_decode8_a) + $unsigned(i_fpga_indvars_iv_next53_zfp_decode8_b);
    assign i_fpga_indvars_iv_next53_zfp_decode8_q = i_fpga_indvars_iv_next53_zfp_decode8_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next53_zfp_decode8_sel_x(BITSELECT,41)@1
    assign bgTrunc_i_fpga_indvars_iv_next53_zfp_decode8_sel_x_b = i_fpga_indvars_iv_next53_zfp_decode8_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv52_push14_zfp_decode9(BLACKBOX,34)@1
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    zfp_decode_i_llvm_fpga_push_i7_fpga_indvars_iv52_push14_0 thei_llvm_fpga_push_i7_fpga_indvars_iv52_push14_zfp_decode9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next53_zfp_decode8_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i7_fpga_indvars_iv52_pop14_zfp_decode3_out_feedback_stall_out_14),
        .in_notexit76(i_notexit76_zfp_decode6_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i7_fpga_indvars_iv52_push14_zfp_decode9_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i7_fpga_indvars_iv52_push14_zfp_decode9_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i7_6229(CONSTANT,20)
    assign c_i7_6229_q = $unsigned(7'b0111110);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv52_pop14_zfp_decode3(BLACKBOX,29)@1
    // out out_feedback_stall_out_14@20000000
    zfp_decode_i_llvm_fpga_pop_i7_fpga_indvars_iv52_pop14_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv52_pop14_zfp_decode3 (
        .in_data_in(c_i7_6229_q),
        .in_dir(in_c0_eni3_1_tpl),
        .in_feedback_in_14(i_llvm_fpga_push_i7_fpga_indvars_iv52_push14_zfp_decode9_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i7_fpga_indvars_iv52_push14_zfp_decode9_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv52_pop14_zfp_decode3_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i7_fpga_indvars_iv52_pop14_zfp_decode3_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond54_zfp_decode4_cmp_sign(LOGICAL,54)@1
    assign i_exitcond54_zfp_decode4_cmp_sign_q = $unsigned(i_llvm_fpga_pop_i7_fpga_indvars_iv52_pop14_zfp_decode3_out_data_out[6:6]);

    // i_notexit76_zfp_decode6(LOGICAL,35)@1
    assign i_notexit76_zfp_decode6_q = i_exitcond54_zfp_decode4_cmp_sign_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond75_zfp_decode7(BLACKBOX,30)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    zfp_decode_i_llvm_fpga_push_i1_notexitcond75_0 thei_llvm_fpga_push_i1_notexitcond75_zfp_decode7 (
        .in_data_in(i_notexit76_zfp_decode6_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond75_zfp_decode7_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond75_zfp_decode7_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going74_zfp_decode2(BLACKBOX,25)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_decode_i_llvm_fpga_pipeline_keep_going74_0 thei_llvm_fpga_pipeline_keep_going74_zfp_decode2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond75_zfp_decode7_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond75_zfp_decode7_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,21)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_zfp_decode2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,38)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going74_zfp_decode2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,45)@1 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together48_aunroll_x_in_c0_eni3_3_tpl_1(DELAY,59)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together48_aunroll_x_in_c0_eni3_3_tpl_1_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // redist2_sync_together48_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,58)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together48_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // redist1_sync_together48_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,57)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together48_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // valid_fanout_reg5(REG,50)@1 + 1
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

    // valid_fanout_reg6(REG,51)@1 + 1
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

    // i_llvm_fpga_push_i32_reorder_limiter_enter85_push24_zfp_decode16(BLACKBOX,33)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    zfp_decode_i_llvm_fpga_push_i32_reorder_limiter_enter85_push24_0 thei_llvm_fpga_push_i32_reorder_limiter_enter85_push24_zfp_decode16 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter85_pop24_zfp_decode15_out_data_out),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i32_reorder_limiter_enter85_pop24_zfp_decode15_out_feedback_stall_out_24),
        .in_notexit76(redist4_i_notexit76_zfp_decode6_q_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_reorder_limiter_enter85_push24_zfp_decode16_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_reorder_limiter_enter85_push24_zfp_decode16_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter85_pop24_zfp_decode15(BLACKBOX,28)@2
    // out out_feedback_stall_out_24@20000000
    zfp_decode_i_llvm_fpga_pop_i32_reorder_limiter_enter85_pop24_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter85_pop24_zfp_decode15 (
        .in_data_in(redist3_sync_together48_aunroll_x_in_c0_eni3_3_tpl_1_q),
        .in_dir(redist1_sync_together48_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_reorder_limiter_enter85_push24_zfp_decode16_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_reorder_limiter_enter85_push24_zfp_decode16_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter85_pop24_zfp_decode15_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i32_reorder_limiter_enter85_pop24_zfp_decode15_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,48)@1 + 1
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

    // valid_fanout_reg4(REG,49)@1 + 1
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

    // i_llvm_fpga_push_i32_lim_ext82_push23_zfp_decode14(BLACKBOX,32)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    zfp_decode_i_llvm_fpga_push_i32_lim_ext82_push23_0 thei_llvm_fpga_push_i32_lim_ext82_push23_zfp_decode14 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext82_pop23_zfp_decode13_out_data_out),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_lim_ext82_pop23_zfp_decode13_out_feedback_stall_out_23),
        .in_notexit76(redist4_i_notexit76_zfp_decode6_q_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_lim_ext82_push23_zfp_decode14_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_lim_ext82_push23_zfp_decode14_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext82_pop23_zfp_decode13(BLACKBOX,27)@2
    // out out_feedback_stall_out_23@20000000
    zfp_decode_i_llvm_fpga_pop_i32_lim_ext82_pop23_0 thei_llvm_fpga_pop_i32_lim_ext82_pop23_zfp_decode13 (
        .in_data_in(redist2_sync_together48_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist1_sync_together48_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_lim_ext82_push23_zfp_decode14_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_lim_ext82_push23_zfp_decode14_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext82_pop23_zfp_decode13_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_lim_ext82_pop23_zfp_decode13_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,46)@1 + 1
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

    // valid_fanout_reg2(REG,47)@1 + 1
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

    // c_i32_133(CONSTANT,17)
    assign c_i32_133_q = $unsigned(32'b11111111111111111111111111111111);

    // i_dec_zfp_decode11(ADD,22)@2
    assign i_dec_zfp_decode11_a = {1'b0, i_llvm_fpga_pop_i32_k_058_pop19_zfp_decode10_out_data_out};
    assign i_dec_zfp_decode11_b = {1'b0, c_i32_133_q};
    assign i_dec_zfp_decode11_o = $unsigned(i_dec_zfp_decode11_a) + $unsigned(i_dec_zfp_decode11_b);
    assign i_dec_zfp_decode11_q = i_dec_zfp_decode11_o[32:0];

    // bgTrunc_i_dec_zfp_decode11_sel_x(BITSELECT,40)@2
    assign bgTrunc_i_dec_zfp_decode11_sel_x_b = i_dec_zfp_decode11_q[31:0];

    // i_llvm_fpga_push_i32_k_058_push19_zfp_decode12(BLACKBOX,31)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    zfp_decode_i_llvm_fpga_push_i32_k_058_push19_0 thei_llvm_fpga_push_i32_k_058_push19_zfp_decode12 (
        .in_data_in(bgTrunc_i_dec_zfp_decode11_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_k_058_pop19_zfp_decode10_out_feedback_stall_out_19),
        .in_notexit76(redist4_i_notexit76_zfp_decode6_q_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_k_058_push19_zfp_decode12_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_k_058_push19_zfp_decode12_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_6332(CONSTANT,18)
    assign c_i32_6332_q = $unsigned(32'b00000000000000000000000000111111);

    // i_llvm_fpga_pop_i32_k_058_pop19_zfp_decode10(BLACKBOX,26)@2
    // out out_feedback_stall_out_19@20000000
    zfp_decode_i_llvm_fpga_pop_i32_k_058_pop19_0 thei_llvm_fpga_pop_i32_k_058_pop19_zfp_decode10 (
        .in_data_in(c_i32_6332_q),
        .in_dir(redist1_sync_together48_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_k_058_push19_zfp_decode12_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_k_058_push19_zfp_decode12_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_058_pop19_zfp_decode10_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_k_058_pop19_zfp_decode10_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_notexit76_zfp_decode6_q_1(DELAY,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_notexit76_zfp_decode6_q_1_q <= $unsigned(i_notexit76_zfp_decode6_q);
        end
    end

    // redist0_i_exitcond54_zfp_decode4_cmp_sign_q_1(DELAY,56)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond54_zfp_decode4_cmp_sign_q_1_q <= $unsigned(i_exitcond54_zfp_decode4_cmp_sign_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,43)@2
    assign out_c0_exi8_0_tpl = GND_q;
    assign out_c0_exi8_1_tpl = redist0_i_exitcond54_zfp_decode4_cmp_sign_q_1_q;
    assign out_c0_exi8_2_tpl = redist4_i_notexit76_zfp_decode6_q_1_q;
    assign out_c0_exi8_3_tpl = i_llvm_fpga_pop_i32_k_058_pop19_zfp_decode10_out_data_out;
    assign out_c0_exi8_4_tpl = i_llvm_fpga_pop_i32_lim_ext82_pop23_zfp_decode13_out_data_out;
    assign out_c0_exi8_5_tpl = i_llvm_fpga_pop_i32_reorder_limiter_enter85_pop24_zfp_decode15_out_data_out;
    assign out_c0_exi8_6_tpl = redist1_sync_together48_aunroll_x_in_c0_eni3_1_tpl_1_q;
    assign out_c0_exi8_7_tpl = redist2_sync_together48_aunroll_x_in_c0_eni3_2_tpl_1_q;
    assign out_c0_exi8_8_tpl = redist3_sync_together48_aunroll_x_in_c0_eni3_3_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_decode0 = GND_q;

endmodule
