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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body_i_zfp_decodes_c1_enter231_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_logic_s_c1_in_for_body_0000enter231_zfp_decode0 (
    output wire [0:0] out_c1_exi3235_0_tpl,
    output wire [63:0] out_c1_exi3235_1_tpl,
    output wire [63:0] out_c1_exi3235_2_tpl,
    output wire [63:0] out_c1_exi3235_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_decode0,
    input wire [0:0] in_c1_eni6_0_tpl,
    input wire [63:0] in_c1_eni6_1_tpl,
    input wire [0:0] in_c1_eni6_2_tpl,
    input wire [0:0] in_c1_eni6_3_tpl,
    input wire [63:0] in_c1_eni6_4_tpl,
    input wire [31:0] in_c1_eni6_5_tpl,
    input wire [0:0] in_c1_eni6_6_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_025_q;
    wire [63:0] c_i64_124_q;
    wire [7:0] c_i8_211_q;
    wire [0:0] i_acl_3_zfp_decode3_s;
    reg [63:0] i_acl_3_zfp_decode3_q;
    wire [63:0] i_llvm_fpga_pop_i64_acl_191_pop34_zfp_decode15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_acl_191_pop34_zfp_decode15_out_feedback_stall_out_34;
    wire [63:0] i_llvm_fpga_pop_i64_bs_sroa_0_352_pop29_zfp_decode2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_bs_sroa_0_352_pop29_zfp_decode2_out_feedback_stall_out_29;
    wire [63:0] i_llvm_fpga_pop_i64_result_0_i54_pop28_zfp_decode10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_result_0_i54_pop28_zfp_decode10_out_feedback_stall_out_28;
    wire [63:0] i_llvm_fpga_push_i64_acl_191_push34_zfp_decode16_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i64_acl_191_push34_zfp_decode16_out_feedback_valid_out_34;
    wire [63:0] i_llvm_fpga_push_i64_bs_sroa_0_352_push29_zfp_decode13_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i64_bs_sroa_0_352_push29_zfp_decode13_out_feedback_valid_out_29;
    wire [63:0] i_llvm_fpga_push_i64_result_0_i54_push28_zfp_decode14_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i64_result_0_i54_push28_zfp_decode14_out_feedback_valid_out_28;
    wire [31:0] i_sh_prom_i_zfp_decode4_vt_const_63_q;
    wire [63:0] i_sh_prom_i_zfp_decode4_vt_join_q;
    wire [31:0] i_sh_prom_i_zfp_decode4_vt_select_31_b;
    wire [0:0] i_tobool_i_zfp_decode7_q;
    wire [63:0] i_unnamed_zfp_decode6_qi;
    reg [63:0] i_unnamed_zfp_decode6_q;
    wire [79:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a;
    wire [63:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_q;
    wire [6:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_c_i7_04_x_q;
    wire [79:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_element_extension3_x_q;
    wire [63:0] i_sh_prom_i_zfp_decode4_sel_x_b;
    wire [5:0] dupName_0_i_unnamed_zfp_decode0_shift_narrow_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid52_dupName_0_i_unnamed_zfp_decode0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid52_dupName_0_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid53_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage0Idx2Pad2_uid54_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [61:0] leftShiftStage0Idx2Rng2_uid55_dupName_0_i_unnamed_zfp_decode0_shift_x_in;
    wire [61:0] leftShiftStage0Idx2Rng2_uid55_dupName_0_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid56_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [2:0] leftShiftStage0Idx3Pad3_uid57_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [60:0] leftShiftStage0Idx3Rng3_uid58_dupName_0_i_unnamed_zfp_decode0_shift_x_in;
    wire [60:0] leftShiftStage0Idx3Rng3_uid58_dupName_0_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid59_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_s;
    reg [63:0] leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid62_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [59:0] leftShiftStage1Idx1Rng4_uid63_dupName_0_i_unnamed_zfp_decode0_shift_x_in;
    wire [59:0] leftShiftStage1Idx1Rng4_uid63_dupName_0_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid64_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [7:0] leftShiftStage1Idx2Pad8_uid65_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [55:0] leftShiftStage1Idx2Rng8_uid66_dupName_0_i_unnamed_zfp_decode0_shift_x_in;
    wire [55:0] leftShiftStage1Idx2Rng8_uid66_dupName_0_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage1Idx2_uid67_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid68_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [51:0] leftShiftStage1Idx3Rng12_uid69_dupName_0_i_unnamed_zfp_decode0_shift_x_in;
    wire [51:0] leftShiftStage1Idx3Rng12_uid69_dupName_0_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage1Idx3_uid70_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_s;
    reg [63:0] leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Pad16_uid73_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [47:0] leftShiftStage2Idx1Rng16_uid74_dupName_0_i_unnamed_zfp_decode0_shift_x_in;
    wire [47:0] leftShiftStage2Idx1Rng16_uid74_dupName_0_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage2Idx1_uid75_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [31:0] leftShiftStage2Idx2Rng32_uid77_dupName_0_i_unnamed_zfp_decode0_shift_x_in;
    wire [31:0] leftShiftStage2Idx2Rng32_uid77_dupName_0_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage2Idx2_uid78_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [47:0] leftShiftStage2Idx3Pad48_uid79_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [15:0] leftShiftStage2Idx3Rng48_uid80_dupName_0_i_unnamed_zfp_decode0_shift_x_in;
    wire [15:0] leftShiftStage2Idx3Rng48_uid80_dupName_0_i_unnamed_zfp_decode0_shift_x_b;
    wire [63:0] leftShiftStage2Idx3_uid81_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x_s;
    reg [63:0] leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
    wire [1:0] leftShiftStageSel0Dto0_uid60_dupName_0_i_unnamed_zfp_decode0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid60_dupName_0_i_unnamed_zfp_decode0_shift_x_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto0_uid60_dupName_0_i_unnamed_zfp_decode0_shift_x_merged_bit_select_d;
    reg [63:0] redist0_sync_together35_aunroll_x_in_c1_eni6_1_tpl_1_q;
    reg [63:0] redist1_sync_together35_aunroll_x_in_c1_eni6_1_tpl_2_q;
    reg [0:0] redist2_sync_together35_aunroll_x_in_c1_eni6_2_tpl_1_q;
    reg [0:0] redist3_sync_together35_aunroll_x_in_c1_eni6_2_tpl_2_q;
    reg [0:0] redist4_sync_together35_aunroll_x_in_c1_eni6_3_tpl_1_q;
    reg [63:0] redist5_sync_together35_aunroll_x_in_c1_eni6_4_tpl_1_q;
    reg [0:0] redist6_sync_together35_aunroll_x_in_c1_eni6_6_tpl_2_q;
    reg [0:0] redist6_sync_together35_aunroll_x_in_c1_eni6_6_tpl_2_delay_0;
    reg [0:0] redist7_sync_together35_aunroll_x_in_i_valid_1_q;
    reg [63:0] redist8_i_acl_3_zfp_decode3_q_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together35_aunroll_x_in_i_valid_1(DELAY,92)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist7_sync_together35_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist7_sync_together35_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,39)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist7_sync_together35_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg5(REG,44)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist7_sync_together35_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg6(REG,45)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist7_sync_together35_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist6_sync_together35_aunroll_x_in_c1_eni6_6_tpl_2(DELAY,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together35_aunroll_x_in_c1_eni6_6_tpl_2_delay_0 <= $unsigned(in_c1_eni6_6_tpl);
            redist6_sync_together35_aunroll_x_in_c1_eni6_6_tpl_2_q <= redist6_sync_together35_aunroll_x_in_c1_eni6_6_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i64_acl_191_push34_zfp_decode16(BLACKBOX,15)@9
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    zfp_decode_i_llvm_fpga_push_i64_acl_191_push34_0 thei_llvm_fpga_push_i64_acl_191_push34_zfp_decode16 (
        .in_c1_ene6(redist6_sync_together35_aunroll_x_in_c1_eni6_6_tpl_2_q),
        .in_data_in(i_llvm_fpga_pop_i64_acl_191_pop34_zfp_decode15_out_data_out),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i64_acl_191_pop34_zfp_decode15_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i64_acl_191_push34_zfp_decode16_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i64_acl_191_push34_zfp_decode16_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together35_aunroll_x_in_c1_eni6_2_tpl_1(DELAY,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together35_aunroll_x_in_c1_eni6_2_tpl_1_q <= $unsigned(in_c1_eni6_2_tpl);
        end
    end

    // redist3_sync_together35_aunroll_x_in_c1_eni6_2_tpl_2(DELAY,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together35_aunroll_x_in_c1_eni6_2_tpl_2_q <= $unsigned(redist2_sync_together35_aunroll_x_in_c1_eni6_2_tpl_1_q);
        end
    end

    // redist0_sync_together35_aunroll_x_in_c1_eni6_1_tpl_1(DELAY,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together35_aunroll_x_in_c1_eni6_1_tpl_1_q <= $unsigned(in_c1_eni6_1_tpl);
        end
    end

    // redist1_sync_together35_aunroll_x_in_c1_eni6_1_tpl_2(DELAY,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together35_aunroll_x_in_c1_eni6_1_tpl_2_q <= $unsigned(redist0_sync_together35_aunroll_x_in_c1_eni6_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i64_acl_191_pop34_zfp_decode15(BLACKBOX,12)@9
    // out out_feedback_stall_out_34@20000000
    zfp_decode_i_llvm_fpga_pop_i64_acl_191_pop34_0 thei_llvm_fpga_pop_i64_acl_191_pop34_zfp_decode15 (
        .in_data_in(redist1_sync_together35_aunroll_x_in_c1_eni6_1_tpl_2_q),
        .in_dir(redist3_sync_together35_aunroll_x_in_c1_eni6_2_tpl_2_q),
        .in_feedback_in_34(i_llvm_fpga_push_i64_acl_191_push34_zfp_decode16_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i64_acl_191_push34_zfp_decode16_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_acl_191_pop34_zfp_decode15_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i64_acl_191_pop34_zfp_decode15_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_211(CONSTANT,10)
    assign c_i8_211_q = $unsigned(8'b00000010);

    // valid_fanout_reg2(REG,41)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist7_sync_together35_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg4(REG,43)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist7_sync_together35_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i64_result_0_i54_push28_zfp_decode14(BLACKBOX,17)@9
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    zfp_decode_i_llvm_fpga_push_i64_result_0_i54_push28_0 thei_llvm_fpga_push_i64_result_0_i54_push28_zfp_decode14 (
        .in_c1_ene6(redist6_sync_together35_aunroll_x_in_c1_eni6_6_tpl_2_q),
        .in_data_in(i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i64_result_0_i54_pop28_zfp_decode10_out_feedback_stall_out_28),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i64_result_0_i54_push28_zfp_decode14_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i64_result_0_i54_push28_zfp_decode14_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_025(CONSTANT,8)
    assign c_i64_025_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_i64_result_0_i54_pop28_zfp_decode10(BLACKBOX,14)@9
    // out out_feedback_stall_out_28@20000000
    zfp_decode_i_llvm_fpga_pop_i64_result_0_i54_pop28_0 thei_llvm_fpga_pop_i64_result_0_i54_pop28_zfp_decode10 (
        .in_data_in(c_i64_025_q),
        .in_dir(redist3_sync_together35_aunroll_x_in_c1_eni6_2_tpl_2_q),
        .in_feedback_in_28(i_llvm_fpga_push_i64_result_0_i54_push28_zfp_decode14_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i64_result_0_i54_push28_zfp_decode14_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i64_result_0_i54_pop28_zfp_decode10_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i64_result_0_i54_pop28_zfp_decode10_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_c_i7_04_x(CONSTANT,28)
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_c_i7_04_x_q = $unsigned(7'b0000000);

    // redist5_sync_together35_aunroll_x_in_c1_eni6_4_tpl_1(DELAY,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together35_aunroll_x_in_c1_eni6_4_tpl_1_q <= $unsigned(in_c1_eni6_4_tpl);
        end
    end

    // valid_fanout_reg1(REG,40)@7 + 1
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

    // valid_fanout_reg3(REG,42)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist7_sync_together35_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i64_bs_sroa_0_352_push29_zfp_decode13(BLACKBOX,16)@9
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    zfp_decode_i_llvm_fpga_push_i64_bs_sroa_0_352_push29_0 thei_llvm_fpga_push_i64_bs_sroa_0_352_push29_zfp_decode13 (
        .in_c1_ene6(redist6_sync_together35_aunroll_x_in_c1_eni6_6_tpl_2_q),
        .in_data_in(redist8_i_acl_3_zfp_decode3_q_1_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i64_bs_sroa_0_352_pop29_zfp_decode2_out_feedback_stall_out_29),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i64_bs_sroa_0_352_push29_zfp_decode13_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i64_bs_sroa_0_352_push29_zfp_decode13_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_bs_sroa_0_352_pop29_zfp_decode2(BLACKBOX,13)@8
    // out out_feedback_stall_out_29@20000000
    zfp_decode_i_llvm_fpga_pop_i64_bs_sroa_0_352_pop29_0 thei_llvm_fpga_pop_i64_bs_sroa_0_352_pop29_zfp_decode2 (
        .in_data_in(redist0_sync_together35_aunroll_x_in_c1_eni6_1_tpl_1_q),
        .in_dir(redist2_sync_together35_aunroll_x_in_c1_eni6_2_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i64_bs_sroa_0_352_push29_zfp_decode13_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i64_bs_sroa_0_352_push29_zfp_decode13_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i64_bs_sroa_0_352_pop29_zfp_decode2_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i64_bs_sroa_0_352_pop29_zfp_decode2_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together35_aunroll_x_in_c1_eni6_3_tpl_1(DELAY,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together35_aunroll_x_in_c1_eni6_3_tpl_1_q <= $unsigned(in_c1_eni6_3_tpl);
        end
    end

    // i_acl_3_zfp_decode3(MUX,11)@8
    assign i_acl_3_zfp_decode3_s = redist4_sync_together35_aunroll_x_in_c1_eni6_3_tpl_1_q;
    always @(i_acl_3_zfp_decode3_s or i_llvm_fpga_pop_i64_bs_sroa_0_352_pop29_zfp_decode2_out_data_out or redist5_sync_together35_aunroll_x_in_c1_eni6_4_tpl_1_q)
    begin
        unique case (i_acl_3_zfp_decode3_s)
            1'b0 : i_acl_3_zfp_decode3_q = i_llvm_fpga_pop_i64_bs_sroa_0_352_pop29_zfp_decode2_out_data_out;
            1'b1 : i_acl_3_zfp_decode3_q = redist5_sync_together35_aunroll_x_in_c1_eni6_4_tpl_1_q;
            default : i_acl_3_zfp_decode3_q = 64'b0;
        endcase
    end

    // leftShiftStage2Idx3Rng48_uid80_dupName_0_i_unnamed_zfp_decode0_shift_x(BITSELECT,79)@7
    assign leftShiftStage2Idx3Rng48_uid80_dupName_0_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_q[15:0];
    assign leftShiftStage2Idx3Rng48_uid80_dupName_0_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage2Idx3Rng48_uid80_dupName_0_i_unnamed_zfp_decode0_shift_x_in[15:0];

    // leftShiftStage2Idx3Pad48_uid79_dupName_0_i_unnamed_zfp_decode0_shift_x(CONSTANT,78)
    assign leftShiftStage2Idx3Pad48_uid79_dupName_0_i_unnamed_zfp_decode0_shift_x_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage2Idx3_uid81_dupName_0_i_unnamed_zfp_decode0_shift_x(BITJOIN,80)@7
    assign leftShiftStage2Idx3_uid81_dupName_0_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage2Idx3Rng48_uid80_dupName_0_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage2Idx3Pad48_uid79_dupName_0_i_unnamed_zfp_decode0_shift_x_q};

    // leftShiftStage2Idx2Rng32_uid77_dupName_0_i_unnamed_zfp_decode0_shift_x(BITSELECT,76)@7
    assign leftShiftStage2Idx2Rng32_uid77_dupName_0_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_q[31:0];
    assign leftShiftStage2Idx2Rng32_uid77_dupName_0_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage2Idx2Rng32_uid77_dupName_0_i_unnamed_zfp_decode0_shift_x_in[31:0];

    // i_sh_prom_i_zfp_decode4_vt_const_63(CONSTANT,19)
    assign i_sh_prom_i_zfp_decode4_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage2Idx2_uid78_dupName_0_i_unnamed_zfp_decode0_shift_x(BITJOIN,77)@7
    assign leftShiftStage2Idx2_uid78_dupName_0_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage2Idx2Rng32_uid77_dupName_0_i_unnamed_zfp_decode0_shift_x_b, i_sh_prom_i_zfp_decode4_vt_const_63_q};

    // leftShiftStage2Idx1Rng16_uid74_dupName_0_i_unnamed_zfp_decode0_shift_x(BITSELECT,73)@7
    assign leftShiftStage2Idx1Rng16_uid74_dupName_0_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_q[47:0];
    assign leftShiftStage2Idx1Rng16_uid74_dupName_0_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage2Idx1Rng16_uid74_dupName_0_i_unnamed_zfp_decode0_shift_x_in[47:0];

    // leftShiftStage2Idx1Pad16_uid73_dupName_0_i_unnamed_zfp_decode0_shift_x(CONSTANT,72)
    assign leftShiftStage2Idx1Pad16_uid73_dupName_0_i_unnamed_zfp_decode0_shift_x_q = $unsigned(16'b0000000000000000);

    // leftShiftStage2Idx1_uid75_dupName_0_i_unnamed_zfp_decode0_shift_x(BITJOIN,74)@7
    assign leftShiftStage2Idx1_uid75_dupName_0_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage2Idx1Rng16_uid74_dupName_0_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage2Idx1Pad16_uid73_dupName_0_i_unnamed_zfp_decode0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid69_dupName_0_i_unnamed_zfp_decode0_shift_x(BITSELECT,68)@7
    assign leftShiftStage1Idx3Rng12_uid69_dupName_0_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q[51:0];
    assign leftShiftStage1Idx3Rng12_uid69_dupName_0_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage1Idx3Rng12_uid69_dupName_0_i_unnamed_zfp_decode0_shift_x_in[51:0];

    // leftShiftStage1Idx3Pad12_uid68_dupName_0_i_unnamed_zfp_decode0_shift_x(CONSTANT,67)
    assign leftShiftStage1Idx3Pad12_uid68_dupName_0_i_unnamed_zfp_decode0_shift_x_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid70_dupName_0_i_unnamed_zfp_decode0_shift_x(BITJOIN,69)@7
    assign leftShiftStage1Idx3_uid70_dupName_0_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage1Idx3Rng12_uid69_dupName_0_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage1Idx3Pad12_uid68_dupName_0_i_unnamed_zfp_decode0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid66_dupName_0_i_unnamed_zfp_decode0_shift_x(BITSELECT,65)@7
    assign leftShiftStage1Idx2Rng8_uid66_dupName_0_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q[55:0];
    assign leftShiftStage1Idx2Rng8_uid66_dupName_0_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage1Idx2Rng8_uid66_dupName_0_i_unnamed_zfp_decode0_shift_x_in[55:0];

    // leftShiftStage1Idx2Pad8_uid65_dupName_0_i_unnamed_zfp_decode0_shift_x(CONSTANT,64)
    assign leftShiftStage1Idx2Pad8_uid65_dupName_0_i_unnamed_zfp_decode0_shift_x_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid67_dupName_0_i_unnamed_zfp_decode0_shift_x(BITJOIN,66)@7
    assign leftShiftStage1Idx2_uid67_dupName_0_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage1Idx2Rng8_uid66_dupName_0_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage1Idx2Pad8_uid65_dupName_0_i_unnamed_zfp_decode0_shift_x_q};

    // leftShiftStage1Idx1Rng4_uid63_dupName_0_i_unnamed_zfp_decode0_shift_x(BITSELECT,62)@7
    assign leftShiftStage1Idx1Rng4_uid63_dupName_0_i_unnamed_zfp_decode0_shift_x_in = leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q[59:0];
    assign leftShiftStage1Idx1Rng4_uid63_dupName_0_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage1Idx1Rng4_uid63_dupName_0_i_unnamed_zfp_decode0_shift_x_in[59:0];

    // leftShiftStage1Idx1Pad4_uid62_dupName_0_i_unnamed_zfp_decode0_shift_x(CONSTANT,61)
    assign leftShiftStage1Idx1Pad4_uid62_dupName_0_i_unnamed_zfp_decode0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid64_dupName_0_i_unnamed_zfp_decode0_shift_x(BITJOIN,63)@7
    assign leftShiftStage1Idx1_uid64_dupName_0_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage1Idx1Rng4_uid63_dupName_0_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage1Idx1Pad4_uid62_dupName_0_i_unnamed_zfp_decode0_shift_x_q};

    // leftShiftStage0Idx3Rng3_uid58_dupName_0_i_unnamed_zfp_decode0_shift_x(BITSELECT,57)
    assign leftShiftStage0Idx3Rng3_uid58_dupName_0_i_unnamed_zfp_decode0_shift_x_in = c_i64_124_q[60:0];
    assign leftShiftStage0Idx3Rng3_uid58_dupName_0_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage0Idx3Rng3_uid58_dupName_0_i_unnamed_zfp_decode0_shift_x_in[60:0];

    // leftShiftStage0Idx3Pad3_uid57_dupName_0_i_unnamed_zfp_decode0_shift_x(CONSTANT,56)
    assign leftShiftStage0Idx3Pad3_uid57_dupName_0_i_unnamed_zfp_decode0_shift_x_q = $unsigned(3'b000);

    // leftShiftStage0Idx3_uid59_dupName_0_i_unnamed_zfp_decode0_shift_x(BITJOIN,58)
    assign leftShiftStage0Idx3_uid59_dupName_0_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage0Idx3Rng3_uid58_dupName_0_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage0Idx3Pad3_uid57_dupName_0_i_unnamed_zfp_decode0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid55_dupName_0_i_unnamed_zfp_decode0_shift_x(BITSELECT,54)
    assign leftShiftStage0Idx2Rng2_uid55_dupName_0_i_unnamed_zfp_decode0_shift_x_in = c_i64_124_q[61:0];
    assign leftShiftStage0Idx2Rng2_uid55_dupName_0_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage0Idx2Rng2_uid55_dupName_0_i_unnamed_zfp_decode0_shift_x_in[61:0];

    // leftShiftStage0Idx2Pad2_uid54_dupName_0_i_unnamed_zfp_decode0_shift_x(CONSTANT,53)
    assign leftShiftStage0Idx2Pad2_uid54_dupName_0_i_unnamed_zfp_decode0_shift_x_q = $unsigned(2'b00);

    // leftShiftStage0Idx2_uid56_dupName_0_i_unnamed_zfp_decode0_shift_x(BITJOIN,55)
    assign leftShiftStage0Idx2_uid56_dupName_0_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage0Idx2Rng2_uid55_dupName_0_i_unnamed_zfp_decode0_shift_x_b, leftShiftStage0Idx2Pad2_uid54_dupName_0_i_unnamed_zfp_decode0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid52_dupName_0_i_unnamed_zfp_decode0_shift_x(BITSELECT,51)
    assign leftShiftStage0Idx1Rng1_uid52_dupName_0_i_unnamed_zfp_decode0_shift_x_in = c_i64_124_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid52_dupName_0_i_unnamed_zfp_decode0_shift_x_b = leftShiftStage0Idx1Rng1_uid52_dupName_0_i_unnamed_zfp_decode0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid53_dupName_0_i_unnamed_zfp_decode0_shift_x(BITJOIN,52)
    assign leftShiftStage0Idx1_uid53_dupName_0_i_unnamed_zfp_decode0_shift_x_q = {leftShiftStage0Idx1Rng1_uid52_dupName_0_i_unnamed_zfp_decode0_shift_x_b, GND_q};

    // c_i64_124(CONSTANT,9)
    assign c_i64_124_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x(MUX,60)@7
    assign leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_s = leftShiftStageSel0Dto0_uid60_dupName_0_i_unnamed_zfp_decode0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_s or c_i64_124_q or leftShiftStage0Idx1_uid53_dupName_0_i_unnamed_zfp_decode0_shift_x_q or leftShiftStage0Idx2_uid56_dupName_0_i_unnamed_zfp_decode0_shift_x_q or leftShiftStage0Idx3_uid59_dupName_0_i_unnamed_zfp_decode0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_s)
            2'b00 : leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q = c_i64_124_q;
            2'b01 : leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage0Idx1_uid53_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
            2'b10 : leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage0Idx2_uid56_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
            2'b11 : leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage0Idx3_uid59_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
            default : leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x(MUX,71)@7
    assign leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_s = leftShiftStageSel0Dto0_uid60_dupName_0_i_unnamed_zfp_decode0_shift_x_merged_bit_select_c;
    always @(leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_s or leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q or leftShiftStage1Idx1_uid64_dupName_0_i_unnamed_zfp_decode0_shift_x_q or leftShiftStage1Idx2_uid67_dupName_0_i_unnamed_zfp_decode0_shift_x_q or leftShiftStage1Idx3_uid70_dupName_0_i_unnamed_zfp_decode0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_s)
            2'b00 : leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage0_uid61_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
            2'b01 : leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage1Idx1_uid64_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
            2'b10 : leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage1Idx2_uid67_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
            2'b11 : leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_q = leftShiftStage1Idx3_uid70_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
            default : leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom_i_zfp_decode4_sel_x(BITSELECT,32)@7
    assign i_sh_prom_i_zfp_decode4_sel_x_b = {32'b00000000000000000000000000000000, in_c1_eni6_5_tpl[31:0]};

    // i_sh_prom_i_zfp_decode4_vt_select_31(BITSELECT,21)@7
    assign i_sh_prom_i_zfp_decode4_vt_select_31_b = i_sh_prom_i_zfp_decode4_sel_x_b[31:0];

    // i_sh_prom_i_zfp_decode4_vt_join(BITJOIN,20)@7
    assign i_sh_prom_i_zfp_decode4_vt_join_q = {i_sh_prom_i_zfp_decode4_vt_const_63_q, i_sh_prom_i_zfp_decode4_vt_select_31_b};

    // dupName_0_i_unnamed_zfp_decode0_shift_narrow_x(BITSELECT,37)@7
    assign dupName_0_i_unnamed_zfp_decode0_shift_narrow_x_b = i_sh_prom_i_zfp_decode4_vt_join_q[5:0];

    // leftShiftStageSel0Dto0_uid60_dupName_0_i_unnamed_zfp_decode0_shift_x_merged_bit_select(BITSELECT,84)@7
    assign leftShiftStageSel0Dto0_uid60_dupName_0_i_unnamed_zfp_decode0_shift_x_merged_bit_select_b = dupName_0_i_unnamed_zfp_decode0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid60_dupName_0_i_unnamed_zfp_decode0_shift_x_merged_bit_select_c = dupName_0_i_unnamed_zfp_decode0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid60_dupName_0_i_unnamed_zfp_decode0_shift_x_merged_bit_select_d = dupName_0_i_unnamed_zfp_decode0_shift_narrow_x_b[5:4];

    // leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x(MUX,82)@7 + 1
    assign leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x_s = leftShiftStageSel0Dto0_uid60_dupName_0_i_unnamed_zfp_decode0_shift_x_merged_bit_select_d;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x_s)
                2'b00 : leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x_q <= leftShiftStage1_uid72_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
                2'b01 : leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x_q <= leftShiftStage2Idx1_uid75_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
                2'b10 : leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x_q <= leftShiftStage2Idx2_uid78_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
                2'b11 : leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x_q <= leftShiftStage2Idx3_uid81_dupName_0_i_unnamed_zfp_decode0_shift_x_q;
                default : leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x_q <= 64'b0;
            endcase
        end
    end

    // i_unnamed_zfp_decode6(LOGICAL,23)@8 + 1
    assign i_unnamed_zfp_decode6_qi = leftShiftStage2_uid83_dupName_0_i_unnamed_zfp_decode0_shift_x_q & i_acl_3_zfp_decode3_q;
    dspba_delay_ver #( .width(64), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_decode6_delay ( .xin(i_unnamed_zfp_decode6_qi), .xout(i_unnamed_zfp_decode6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_tobool_i_zfp_decode7(LOGICAL,22)@9
    assign i_tobool_i_zfp_decode7_q = $unsigned(i_unnamed_zfp_decode6_q != c_i64_025_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_element_extension3_x(BITJOIN,30)@9
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_element_extension3_x_q = {i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_c_i7_04_x_q, i_tobool_i_zfp_decode7_q};

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,29)@9
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_211_q, i_llvm_fpga_pop_i64_result_0_i54_pop28_zfp_decode10_out_data_out, i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_element_extension3_x_q};

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x(CHOOSEBITS,27)@9
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[70:70], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[69:69], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[68:68], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[67:67], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[66:66], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[65:65], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[64:64], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[63:63], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[31:31], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[15:15], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_a[0:0]};

    // redist8_i_acl_3_zfp_decode3_q_1(DELAY,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_acl_3_zfp_decode3_q_1_q <= $unsigned(i_acl_3_zfp_decode3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,33)@9
    assign out_c1_exi3235_0_tpl = GND_q;
    assign out_c1_exi3235_1_tpl = redist8_i_acl_3_zfp_decode3_q_1_q;
    assign out_c1_exi3235_2_tpl = i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body_i_zfp_decode_fpgaunique_0s_v64i32_or_i_shuffle_zfp_decode0_NO_NAME_x_q;
    assign out_c1_exi3235_3_tpl = i_llvm_fpga_pop_i64_acl_191_pop34_zfp_decode15_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_decode0 = GND_q;

endmodule
