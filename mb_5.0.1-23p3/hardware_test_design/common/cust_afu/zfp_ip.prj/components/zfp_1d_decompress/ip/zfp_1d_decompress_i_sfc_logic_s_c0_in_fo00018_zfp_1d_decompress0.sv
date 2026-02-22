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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_i_zfp_1d_decompresss_c0_enter12018_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c0_in_fo00018_zfp_1d_decompress0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [0:0] out_c0_exi4_1_tpl,
    output wire [0:0] out_c0_exi4_2_tpl,
    output wire [31:0] out_c0_exi4_3_tpl,
    output wire [0:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_125_q;
    wire [31:0] c_i32_6324_q;
    wire [6:0] c_i7_123_q;
    wire [6:0] c_i7_6221_q;
    wire [32:0] i_dec_i_zfp_1d_decompress11_a;
    wire [32:0] i_dec_i_zfp_1d_decompress11_b;
    logic [32:0] i_dec_i_zfp_1d_decompress11_o;
    wire [32:0] i_dec_i_zfp_1d_decompress11_q;
    wire [7:0] i_fpga_indvars_iv_next39_zfp_1d_decompress8_a;
    wire [7:0] i_fpga_indvars_iv_next39_zfp_1d_decompress8_b;
    logic [7:0] i_fpga_indvars_iv_next39_zfp_1d_decompress8_o;
    wire [7:0] i_fpga_indvars_iv_next39_zfp_1d_decompress8_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_k1_0_i25_pop17_zfp_1d_decompress10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k1_0_i25_pop17_zfp_1d_decompress10_out_feedback_stall_out_17;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv38_pop12_zfp_1d_decompress3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv38_pop12_zfp_1d_decompress3_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond73_zfp_1d_decompress7_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond73_zfp_1d_decompress7_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_k1_0_i25_push17_zfp_1d_decompress12_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_k1_0_i25_push17_zfp_1d_decompress12_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv38_push12_zfp_1d_decompress9_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv38_push12_zfp_1d_decompress9_out_feedback_valid_out_12;
    wire [0:0] i_notexit74_zfp_1d_decompress6_q;
    wire [31:0] bgTrunc_i_dec_i_zfp_1d_decompress11_sel_x_b;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next39_zfp_1d_decompress8_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    wire [0:0] i_exitcond40_zfp_1d_decompress4_cmp_sign_q;
    reg [0:0] redist0_i_exitcond40_zfp_1d_decompress4_cmp_sign_q_1_q;
    reg [0:0] redist1_sync_together36_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist2_i_notexit74_zfp_1d_decompress6_q_1_q;


    // c_i7_123(CONSTANT,15)
    assign c_i7_123_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next39_zfp_1d_decompress8(ADD,20)@1
    assign i_fpga_indvars_iv_next39_zfp_1d_decompress8_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv38_pop12_zfp_1d_decompress3_out_data_out};
    assign i_fpga_indvars_iv_next39_zfp_1d_decompress8_b = {1'b0, c_i7_123_q};
    assign i_fpga_indvars_iv_next39_zfp_1d_decompress8_o = $unsigned(i_fpga_indvars_iv_next39_zfp_1d_decompress8_a) + $unsigned(i_fpga_indvars_iv_next39_zfp_1d_decompress8_b);
    assign i_fpga_indvars_iv_next39_zfp_1d_decompress8_q = i_fpga_indvars_iv_next39_zfp_1d_decompress8_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next39_zfp_1d_decompress8_sel_x(BITSELECT,33)@1
    assign bgTrunc_i_fpga_indvars_iv_next39_zfp_1d_decompress8_sel_x_b = i_fpga_indvars_iv_next39_zfp_1d_decompress8_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv38_push12_zfp_1d_decompress9(BLACKBOX,26)@1
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i7_fpga_indvars_iv38_push12_0 thei_llvm_fpga_push_i7_fpga_indvars_iv38_push12_zfp_1d_decompress9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next39_zfp_1d_decompress8_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i7_fpga_indvars_iv38_pop12_zfp_1d_decompress3_out_feedback_stall_out_12),
        .in_notexit74(i_notexit74_zfp_1d_decompress6_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i7_fpga_indvars_iv38_push12_zfp_1d_decompress9_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i7_fpga_indvars_iv38_push12_zfp_1d_decompress9_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i7_6221(CONSTANT,16)
    assign c_i7_6221_q = $unsigned(7'b0111110);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv38_pop12_zfp_1d_decompress3(BLACKBOX,23)@1
    // out out_feedback_stall_out_12@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i7_fpga_indvars_iv38_pop12_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv38_pop12_zfp_1d_decompress3 (
        .in_data_in(c_i7_6221_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_12(i_llvm_fpga_push_i7_fpga_indvars_iv38_push12_zfp_1d_decompress9_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i7_fpga_indvars_iv38_push12_zfp_1d_decompress9_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv38_pop12_zfp_1d_decompress3_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i7_fpga_indvars_iv38_pop12_zfp_1d_decompress3_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond40_zfp_1d_decompress4_cmp_sign(LOGICAL,42)@1
    assign i_exitcond40_zfp_1d_decompress4_cmp_sign_q = $unsigned(i_llvm_fpga_pop_i7_fpga_indvars_iv38_pop12_zfp_1d_decompress3_out_data_out[6:6]);

    // i_notexit74_zfp_1d_decompress6(LOGICAL,27)@1
    assign i_notexit74_zfp_1d_decompress6_q = i_exitcond40_zfp_1d_decompress4_cmp_sign_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond73_zfp_1d_decompress7(BLACKBOX,24)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i1_notexitcond73_0 thei_llvm_fpga_push_i1_notexitcond73_zfp_1d_decompress7 (
        .in_data_in(i_notexit74_zfp_1d_decompress6_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond73_zfp_1d_decompress7_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond73_zfp_1d_decompress7_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2(BLACKBOX,21)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_1d_decompress_i_llvm_fpga_pipeline_keep_going72_0 thei_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond73_zfp_1d_decompress7_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond73_zfp_1d_decompress7_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,17)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,30)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going72_zfp_1d_decompress2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,37)@1 + 1
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

    // redist1_sync_together36_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,45)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together36_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // valid_fanout_reg1(REG,38)@1 + 1
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

    // valid_fanout_reg2(REG,39)@1 + 1
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

    // c_i32_125(CONSTANT,13)
    assign c_i32_125_q = $unsigned(32'b11111111111111111111111111111111);

    // i_dec_i_zfp_1d_decompress11(ADD,18)@2
    assign i_dec_i_zfp_1d_decompress11_a = {1'b0, i_llvm_fpga_pop_i32_k1_0_i25_pop17_zfp_1d_decompress10_out_data_out};
    assign i_dec_i_zfp_1d_decompress11_b = {1'b0, c_i32_125_q};
    assign i_dec_i_zfp_1d_decompress11_o = $unsigned(i_dec_i_zfp_1d_decompress11_a) + $unsigned(i_dec_i_zfp_1d_decompress11_b);
    assign i_dec_i_zfp_1d_decompress11_q = i_dec_i_zfp_1d_decompress11_o[32:0];

    // bgTrunc_i_dec_i_zfp_1d_decompress11_sel_x(BITSELECT,32)@2
    assign bgTrunc_i_dec_i_zfp_1d_decompress11_sel_x_b = i_dec_i_zfp_1d_decompress11_q[31:0];

    // i_llvm_fpga_push_i32_k1_0_i25_push17_zfp_1d_decompress12(BLACKBOX,25)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i32_k1_0_i25_push17_0 thei_llvm_fpga_push_i32_k1_0_i25_push17_zfp_1d_decompress12 (
        .in_data_in(bgTrunc_i_dec_i_zfp_1d_decompress11_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_k1_0_i25_pop17_zfp_1d_decompress10_out_feedback_stall_out_17),
        .in_notexit74(redist2_i_notexit74_zfp_1d_decompress6_q_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_k1_0_i25_push17_zfp_1d_decompress12_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_k1_0_i25_push17_zfp_1d_decompress12_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_6324(CONSTANT,14)
    assign c_i32_6324_q = $unsigned(32'b00000000000000000000000000111111);

    // i_llvm_fpga_pop_i32_k1_0_i25_pop17_zfp_1d_decompress10(BLACKBOX,22)@2
    // out out_feedback_stall_out_17@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i32_k1_0_i25_pop17_0 thei_llvm_fpga_pop_i32_k1_0_i25_pop17_zfp_1d_decompress10 (
        .in_data_in(c_i32_6324_q),
        .in_dir(redist1_sync_together36_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_k1_0_i25_push17_zfp_1d_decompress12_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_k1_0_i25_push17_zfp_1d_decompress12_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_k1_0_i25_pop17_zfp_1d_decompress10_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_k1_0_i25_pop17_zfp_1d_decompress10_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_notexit74_zfp_1d_decompress6_q_1(DELAY,46)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_notexit74_zfp_1d_decompress6_q_1_q <= $unsigned(i_notexit74_zfp_1d_decompress6_q);
        end
    end

    // redist0_i_exitcond40_zfp_1d_decompress4_cmp_sign_q_1(DELAY,44)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond40_zfp_1d_decompress4_cmp_sign_q_1_q <= $unsigned(i_exitcond40_zfp_1d_decompress4_cmp_sign_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,35)@2
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = redist0_i_exitcond40_zfp_1d_decompress4_cmp_sign_q_1_q;
    assign out_c0_exi4_2_tpl = redist2_i_notexit74_zfp_1d_decompress6_q_1_q;
    assign out_c0_exi4_3_tpl = i_llvm_fpga_pop_i32_k1_0_i25_pop17_zfp_1d_decompress10_out_data_out;
    assign out_c0_exi4_4_tpl = redist1_sync_together36_aunroll_x_in_c0_eni1_1_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_1d_decompress1 = GND_q;

endmodule
