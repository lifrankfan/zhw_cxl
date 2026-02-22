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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body16_i_zfp_1d_decompresss_c1_enter128_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:04:26 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c1_in_fo00008_zfp_1d_decompress0 (
    output wire [0:0] out_c1_exi1134_0_tpl,
    output wire [63:0] out_c1_exi1134_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress7,
    input wire [0:0] in_c1_eni7_0_tpl,
    input wire [0:0] in_c1_eni7_1_tpl,
    input wire [0:0] in_c1_eni7_2_tpl,
    input wire [63:0] in_c1_eni7_3_tpl,
    input wire [31:0] in_c1_eni7_4_tpl,
    input wire [0:0] in_c1_eni7_5_tpl,
    input wire [0:0] in_c1_eni7_6_tpl,
    input wire [0:0] in_c1_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_020_q;
    wire [63:0] c_i64_121_q;
    wire [7:0] c_i8_211_q;
    wire [0:0] i_acl_2_zfp_1d_decompress3_s;
    reg [63:0] i_acl_2_zfp_1d_decompress3_q;
    wire [63:0] i_llvm_fpga_pop_i64_bs_sroa_0_115_pop29_zfp_1d_decompress2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_bs_sroa_0_115_pop29_zfp_1d_decompress2_out_feedback_stall_out_29;
    wire [63:0] i_llvm_fpga_pop_i64_val_0_i16_pop28_zfp_1d_decompress10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_val_0_i16_pop28_zfp_1d_decompress10_out_feedback_stall_out_28;
    wire [63:0] i_llvm_fpga_push_i64_bs_sroa_0_115_push29_zfp_1d_decompress14_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i64_bs_sroa_0_115_push29_zfp_1d_decompress14_out_feedback_valid_out_29;
    wire [63:0] i_llvm_fpga_push_i64_val_0_i16_push28_zfp_1d_decompress13_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i64_val_0_i16_push28_zfp_1d_decompress13_out_feedback_valid_out_28;
    wire [31:0] i_sh_prom_i_i_zfp_1d_decompress4_vt_const_63_q;
    wire [63:0] i_sh_prom_i_i_zfp_1d_decompress4_vt_join_q;
    wire [31:0] i_sh_prom_i_i_zfp_1d_decompress4_vt_select_31_b;
    wire [0:0] i_tobool_i_i_zfp_1d_decompress7_q;
    wire [63:0] i_unnamed_zfp_1d_decompress6_qi;
    reg [63:0] i_unnamed_zfp_1d_decompress6_q;
    wire [79:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a;
    wire [63:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_q;
    wire [6:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_c_i7_04_x_q;
    wire [79:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [7:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_element_extension3_x_q;
    wire [63:0] i_sh_prom_i_i_zfp_1d_decompress4_sel_x_b;
    wire [5:0] i_unnamed_zfp_1d_decompress0_shift_narrow_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid46_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid46_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid47_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage0Idx2Pad2_uid48_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [61:0] leftShiftStage0Idx2Rng2_uid49_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [61:0] leftShiftStage0Idx2Rng2_uid49_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid50_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [2:0] leftShiftStage0Idx3Pad3_uid51_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [60:0] leftShiftStage0Idx3Rng3_uid52_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [60:0] leftShiftStage0Idx3Rng3_uid52_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid53_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid56_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [59:0] leftShiftStage1Idx1Rng4_uid57_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [59:0] leftShiftStage1Idx1Rng4_uid57_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid58_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [7:0] leftShiftStage1Idx2Pad8_uid59_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [55:0] leftShiftStage1Idx2Rng8_uid60_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [55:0] leftShiftStage1Idx2Rng8_uid60_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx2_uid61_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid62_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [51:0] leftShiftStage1Idx3Rng12_uid63_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [51:0] leftShiftStage1Idx3Rng12_uid63_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx3_uid64_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Pad16_uid67_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [47:0] leftShiftStage2Idx1Rng16_uid68_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [47:0] leftShiftStage2Idx1Rng16_uid68_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx1_uid69_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [31:0] leftShiftStage2Idx2Rng32_uid71_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [31:0] leftShiftStage2Idx2Rng32_uid71_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx2_uid72_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [47:0] leftShiftStage2Idx3Pad48_uid73_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [15:0] leftShiftStage2Idx3Rng48_uid74_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [15:0] leftShiftStage2Idx3Rng48_uid74_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx3_uid75_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStageSel0Dto0_uid54_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid54_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto0_uid54_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    reg [0:0] redist0_sync_together29_aunroll_x_in_c1_eni7_1_tpl_1_q;
    reg [0:0] redist1_sync_together29_aunroll_x_in_c1_eni7_2_tpl_1_q;
    reg [63:0] redist2_sync_together29_aunroll_x_in_c1_eni7_3_tpl_1_q;
    reg [0:0] redist3_sync_together29_aunroll_x_in_c1_eni7_5_tpl_2_q;
    reg [0:0] redist3_sync_together29_aunroll_x_in_c1_eni7_5_tpl_2_delay_0;
    reg [0:0] redist4_sync_together29_aunroll_x_in_c1_eni7_6_tpl_2_q;
    reg [0:0] redist4_sync_together29_aunroll_x_in_c1_eni7_6_tpl_2_delay_0;
    reg [0:0] redist5_sync_together29_aunroll_x_in_c1_eni7_7_tpl_1_q;
    reg [0:0] redist6_sync_together29_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together29_aunroll_x_in_i_valid_1(DELAY,85)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist6_sync_together29_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist6_sync_together29_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,35)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together29_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i8_211(CONSTANT,8)
    assign c_i8_211_q = $unsigned(8'b00000010);

    // valid_fanout_reg2(REG,37)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist6_sync_together29_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg3(REG,38)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist6_sync_together29_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist4_sync_together29_aunroll_x_in_c1_eni7_6_tpl_2(DELAY,83)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together29_aunroll_x_in_c1_eni7_6_tpl_2_delay_0 <= $unsigned(in_c1_eni7_6_tpl);
            redist4_sync_together29_aunroll_x_in_c1_eni7_6_tpl_2_q <= redist4_sync_together29_aunroll_x_in_c1_eni7_6_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i64_val_0_i16_push28_zfp_1d_decompress13(BLACKBOX,13)@9
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_val_0_i16_push28_0 thei_llvm_fpga_push_i64_val_0_i16_push28_zfp_1d_decompress13 (
        .in_c1_ene6(redist4_sync_together29_aunroll_x_in_c1_eni7_6_tpl_2_q),
        .in_data_in(i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i64_val_0_i16_pop28_zfp_1d_decompress10_out_feedback_stall_out_28),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i64_val_0_i16_push28_zfp_1d_decompress13_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i64_val_0_i16_push28_zfp_1d_decompress13_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together29_aunroll_x_in_c1_eni7_5_tpl_2(DELAY,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together29_aunroll_x_in_c1_eni7_5_tpl_2_delay_0 <= $unsigned(in_c1_eni7_5_tpl);
            redist3_sync_together29_aunroll_x_in_c1_eni7_5_tpl_2_q <= redist3_sync_together29_aunroll_x_in_c1_eni7_5_tpl_2_delay_0;
        end
    end

    // c_i64_020(CONSTANT,6)
    assign c_i64_020_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_i64_val_0_i16_pop28_zfp_1d_decompress10(BLACKBOX,11)@9
    // out out_feedback_stall_out_28@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_val_0_i16_pop28_0 thei_llvm_fpga_pop_i64_val_0_i16_pop28_zfp_1d_decompress10 (
        .in_data_in(c_i64_020_q),
        .in_dir(redist3_sync_together29_aunroll_x_in_c1_eni7_5_tpl_2_q),
        .in_feedback_in_28(i_llvm_fpga_push_i64_val_0_i16_push28_zfp_1d_decompress13_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i64_val_0_i16_push28_zfp_1d_decompress13_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i64_val_0_i16_pop28_zfp_1d_decompress10_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i64_val_0_i16_pop28_zfp_1d_decompress10_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_c_i7_04_x(CONSTANT,24)
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_c_i7_04_x_q = $unsigned(7'b0000000);

    // redist2_sync_together29_aunroll_x_in_c1_eni7_3_tpl_1(DELAY,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together29_aunroll_x_in_c1_eni7_3_tpl_1_q <= $unsigned(in_c1_eni7_3_tpl);
        end
    end

    // valid_fanout_reg1(REG,36)@7 + 1
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

    // valid_fanout_reg4(REG,39)@7 + 1
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

    // redist5_sync_together29_aunroll_x_in_c1_eni7_7_tpl_1(DELAY,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together29_aunroll_x_in_c1_eni7_7_tpl_1_q <= $unsigned(in_c1_eni7_7_tpl);
        end
    end

    // i_llvm_fpga_push_i64_bs_sroa_0_115_push29_zfp_1d_decompress14(BLACKBOX,12)@8
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    zfp_1d_decompress_i_llvm_fpga_push_i64_bs_sroa_0_115_push29_0 thei_llvm_fpga_push_i64_bs_sroa_0_115_push29_zfp_1d_decompress14 (
        .in_c1_ene7(redist5_sync_together29_aunroll_x_in_c1_eni7_7_tpl_1_q),
        .in_data_in(i_acl_2_zfp_1d_decompress3_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i64_bs_sroa_0_115_pop29_zfp_1d_decompress2_out_feedback_stall_out_29),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i64_bs_sroa_0_115_push29_zfp_1d_decompress14_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i64_bs_sroa_0_115_push29_zfp_1d_decompress14_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together29_aunroll_x_in_c1_eni7_1_tpl_1(DELAY,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together29_aunroll_x_in_c1_eni7_1_tpl_1_q <= $unsigned(in_c1_eni7_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_bs_sroa_0_115_pop29_zfp_1d_decompress2(BLACKBOX,10)@8
    // out out_feedback_stall_out_29@20000000
    zfp_1d_decompress_i_llvm_fpga_pop_i64_bs_sroa_0_115_pop29_0 thei_llvm_fpga_pop_i64_bs_sroa_0_115_pop29_zfp_1d_decompress2 (
        .in_data_in(c_i64_020_q),
        .in_dir(redist0_sync_together29_aunroll_x_in_c1_eni7_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i64_bs_sroa_0_115_push29_zfp_1d_decompress14_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i64_bs_sroa_0_115_push29_zfp_1d_decompress14_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i64_bs_sroa_0_115_pop29_zfp_1d_decompress2_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i64_bs_sroa_0_115_pop29_zfp_1d_decompress2_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together29_aunroll_x_in_c1_eni7_2_tpl_1(DELAY,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together29_aunroll_x_in_c1_eni7_2_tpl_1_q <= $unsigned(in_c1_eni7_2_tpl);
        end
    end

    // i_acl_2_zfp_1d_decompress3(MUX,9)@8
    assign i_acl_2_zfp_1d_decompress3_s = redist1_sync_together29_aunroll_x_in_c1_eni7_2_tpl_1_q;
    always @(i_acl_2_zfp_1d_decompress3_s or i_llvm_fpga_pop_i64_bs_sroa_0_115_pop29_zfp_1d_decompress2_out_data_out or redist2_sync_together29_aunroll_x_in_c1_eni7_3_tpl_1_q)
    begin
        unique case (i_acl_2_zfp_1d_decompress3_s)
            1'b0 : i_acl_2_zfp_1d_decompress3_q = i_llvm_fpga_pop_i64_bs_sroa_0_115_pop29_zfp_1d_decompress2_out_data_out;
            1'b1 : i_acl_2_zfp_1d_decompress3_q = redist2_sync_together29_aunroll_x_in_c1_eni7_3_tpl_1_q;
            default : i_acl_2_zfp_1d_decompress3_q = 64'b0;
        endcase
    end

    // leftShiftStage2Idx3Rng48_uid74_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,73)@7
    assign leftShiftStage2Idx3Rng48_uid74_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_q[15:0];
    assign leftShiftStage2Idx3Rng48_uid74_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx3Rng48_uid74_i_unnamed_zfp_1d_decompress0_shift_x_in[15:0];

    // leftShiftStage2Idx3Pad48_uid73_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,72)
    assign leftShiftStage2Idx3Pad48_uid73_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage2Idx3_uid75_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,74)@7
    assign leftShiftStage2Idx3_uid75_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx3Rng48_uid74_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage2Idx3Pad48_uid73_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage2Idx2Rng32_uid71_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,70)@7
    assign leftShiftStage2Idx2Rng32_uid71_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_q[31:0];
    assign leftShiftStage2Idx2Rng32_uid71_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx2Rng32_uid71_i_unnamed_zfp_1d_decompress0_shift_x_in[31:0];

    // i_sh_prom_i_i_zfp_1d_decompress4_vt_const_63(CONSTANT,15)
    assign i_sh_prom_i_i_zfp_1d_decompress4_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage2Idx2_uid72_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,71)@7
    assign leftShiftStage2Idx2_uid72_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx2Rng32_uid71_i_unnamed_zfp_1d_decompress0_shift_x_b, i_sh_prom_i_i_zfp_1d_decompress4_vt_const_63_q};

    // leftShiftStage2Idx1Rng16_uid68_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,67)@7
    assign leftShiftStage2Idx1Rng16_uid68_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_q[47:0];
    assign leftShiftStage2Idx1Rng16_uid68_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx1Rng16_uid68_i_unnamed_zfp_1d_decompress0_shift_x_in[47:0];

    // leftShiftStage2Idx1Pad16_uid67_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,66)
    assign leftShiftStage2Idx1Pad16_uid67_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(16'b0000000000000000);

    // leftShiftStage2Idx1_uid69_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,68)@7
    assign leftShiftStage2Idx1_uid69_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx1Rng16_uid68_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage2Idx1Pad16_uid67_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid63_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,62)@7
    assign leftShiftStage1Idx3Rng12_uid63_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q[51:0];
    assign leftShiftStage1Idx3Rng12_uid63_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx3Rng12_uid63_i_unnamed_zfp_1d_decompress0_shift_x_in[51:0];

    // leftShiftStage1Idx3Pad12_uid62_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,61)
    assign leftShiftStage1Idx3Pad12_uid62_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid64_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,63)@7
    assign leftShiftStage1Idx3_uid64_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx3Rng12_uid63_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx3Pad12_uid62_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid60_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,59)@7
    assign leftShiftStage1Idx2Rng8_uid60_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q[55:0];
    assign leftShiftStage1Idx2Rng8_uid60_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx2Rng8_uid60_i_unnamed_zfp_1d_decompress0_shift_x_in[55:0];

    // leftShiftStage1Idx2Pad8_uid59_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,58)
    assign leftShiftStage1Idx2Pad8_uid59_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid61_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,60)@7
    assign leftShiftStage1Idx2_uid61_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx2Rng8_uid60_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx2Pad8_uid59_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx1Rng4_uid57_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,56)@7
    assign leftShiftStage1Idx1Rng4_uid57_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q[59:0];
    assign leftShiftStage1Idx1Rng4_uid57_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx1Rng4_uid57_i_unnamed_zfp_1d_decompress0_shift_x_in[59:0];

    // leftShiftStage1Idx1Pad4_uid56_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,55)
    assign leftShiftStage1Idx1Pad4_uid56_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid58_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,57)@7
    assign leftShiftStage1Idx1_uid58_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx1Rng4_uid57_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx1Pad4_uid56_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx3Rng3_uid52_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,51)
    assign leftShiftStage0Idx3Rng3_uid52_i_unnamed_zfp_1d_decompress0_shift_x_in = c_i64_121_q[60:0];
    assign leftShiftStage0Idx3Rng3_uid52_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx3Rng3_uid52_i_unnamed_zfp_1d_decompress0_shift_x_in[60:0];

    // leftShiftStage0Idx3Pad3_uid51_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,50)
    assign leftShiftStage0Idx3Pad3_uid51_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(3'b000);

    // leftShiftStage0Idx3_uid53_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,52)
    assign leftShiftStage0Idx3_uid53_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx3Rng3_uid52_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage0Idx3Pad3_uid51_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid49_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,48)
    assign leftShiftStage0Idx2Rng2_uid49_i_unnamed_zfp_1d_decompress0_shift_x_in = c_i64_121_q[61:0];
    assign leftShiftStage0Idx2Rng2_uid49_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx2Rng2_uid49_i_unnamed_zfp_1d_decompress0_shift_x_in[61:0];

    // leftShiftStage0Idx2Pad2_uid48_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,47)
    assign leftShiftStage0Idx2Pad2_uid48_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(2'b00);

    // leftShiftStage0Idx2_uid50_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,49)
    assign leftShiftStage0Idx2_uid50_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx2Rng2_uid49_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage0Idx2Pad2_uid48_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid46_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,45)
    assign leftShiftStage0Idx1Rng1_uid46_i_unnamed_zfp_1d_decompress0_shift_x_in = c_i64_121_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid46_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng1_uid46_i_unnamed_zfp_1d_decompress0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid47_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,46)
    assign leftShiftStage0Idx1_uid47_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng1_uid46_i_unnamed_zfp_1d_decompress0_shift_x_b, GND_q};

    // c_i64_121(CONSTANT,7)
    assign c_i64_121_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x(MUX,54)@7
    assign leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid54_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_s or c_i64_121_q or leftShiftStage0Idx1_uid47_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx2_uid50_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx3_uid53_i_unnamed_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q = c_i64_121_q;
            2'b01 : leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid47_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx2_uid50_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx3_uid53_i_unnamed_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x(MUX,65)@7
    assign leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid54_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    always @(leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_s or leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx1_uid58_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx2_uid61_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx3_uid64_i_unnamed_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b01 : leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx1_uid58_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx2_uid61_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx3_uid64_i_unnamed_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom_i_i_zfp_1d_decompress4_sel_x(BITSELECT,28)@7
    assign i_sh_prom_i_i_zfp_1d_decompress4_sel_x_b = {32'b00000000000000000000000000000000, in_c1_eni7_4_tpl[31:0]};

    // i_sh_prom_i_i_zfp_1d_decompress4_vt_select_31(BITSELECT,17)@7
    assign i_sh_prom_i_i_zfp_1d_decompress4_vt_select_31_b = i_sh_prom_i_i_zfp_1d_decompress4_sel_x_b[31:0];

    // i_sh_prom_i_i_zfp_1d_decompress4_vt_join(BITJOIN,16)@7
    assign i_sh_prom_i_i_zfp_1d_decompress4_vt_join_q = {i_sh_prom_i_i_zfp_1d_decompress4_vt_const_63_q, i_sh_prom_i_i_zfp_1d_decompress4_vt_select_31_b};

    // i_unnamed_zfp_1d_decompress0_shift_narrow_x(BITSELECT,31)@7
    assign i_unnamed_zfp_1d_decompress0_shift_narrow_x_b = i_sh_prom_i_i_zfp_1d_decompress4_vt_join_q[5:0];

    // leftShiftStageSel0Dto0_uid54_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select(BITSELECT,78)@7
    assign leftShiftStageSel0Dto0_uid54_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_b = i_unnamed_zfp_1d_decompress0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid54_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_c = i_unnamed_zfp_1d_decompress0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid54_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_d = i_unnamed_zfp_1d_decompress0_shift_narrow_x_b[5:4];

    // leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x(MUX,76)@7 + 1
    assign leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid54_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x_s)
                2'b00 : leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage1_uid66_i_unnamed_zfp_1d_decompress0_shift_x_q;
                2'b01 : leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx1_uid69_i_unnamed_zfp_1d_decompress0_shift_x_q;
                2'b10 : leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx2_uid72_i_unnamed_zfp_1d_decompress0_shift_x_q;
                2'b11 : leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx3_uid75_i_unnamed_zfp_1d_decompress0_shift_x_q;
                default : leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x_q <= 64'b0;
            endcase
        end
    end

    // i_unnamed_zfp_1d_decompress6(LOGICAL,19)@8 + 1
    assign i_unnamed_zfp_1d_decompress6_qi = leftShiftStage2_uid77_i_unnamed_zfp_1d_decompress0_shift_x_q & i_acl_2_zfp_1d_decompress3_q;
    dspba_delay_ver #( .width(64), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress6_delay ( .xin(i_unnamed_zfp_1d_decompress6_qi), .xout(i_unnamed_zfp_1d_decompress6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_tobool_i_i_zfp_1d_decompress7(LOGICAL,18)@9
    assign i_tobool_i_i_zfp_1d_decompress7_q = $unsigned(i_unnamed_zfp_1d_decompress6_q != c_i64_020_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_element_extension3_x(BITJOIN,26)@9
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_element_extension3_x_q = {i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_c_i7_04_x_q, i_tobool_i_i_zfp_1d_decompress7_q};

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,25)@9
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_211_q, i_llvm_fpga_pop_i64_val_0_i16_pop28_zfp_1d_decompress10_out_data_out, i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_element_extension3_x_q};

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x(CHOOSEBITS,23)@9
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[70:70], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[69:69], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[68:68], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[67:67], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[66:66], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[65:65], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[64:64], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[63:63], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[31:31], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[15:15], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_a[0:0]};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,33)@9
    assign out_c1_exi1134_0_tpl = GND_q;
    assign out_c1_exi1134_1_tpl = i_llvm_fpga_bit_shuffle_i64_s_s_in_for_body16_i_zfp_1d_decompress_fpgaunique_0s_v64i32_or_i_shuffle_zfp_1d_decompress0_NO_NAME_x_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_1d_decompress7 = GND_q;

endmodule
