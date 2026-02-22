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

// SystemVerilog created from i_sfc_logic_s_c2_in_for_body_i_zfp_1d_decompresss_c2_enter_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c2_in_fo0000r_zfp_1d_decompress0 (
    output wire [0:0] out_c2_exi3_0_tpl,
    output wire [63:0] out_c2_exi3_1_tpl,
    output wire [0:0] out_c2_exi3_2_tpl,
    output wire [0:0] out_c2_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress1,
    input wire [0:0] in_c2_eni4_0_tpl,
    input wire [0:0] in_c2_eni4_1_tpl,
    input wire [63:0] in_c2_eni4_2_tpl,
    input wire [63:0] in_c2_eni4_3_tpl,
    input wire [31:0] in_c2_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_111_q;
    wire [0:0] i_acl_1_zfp_1d_decompress2_s;
    reg [63:0] i_acl_1_zfp_1d_decompress2_q;
    wire [31:0] i_sh_prom_i_i_zfp_1d_decompress3_vt_const_63_q;
    wire [63:0] i_sh_prom_i_i_zfp_1d_decompress3_vt_join_q;
    wire [31:0] i_sh_prom_i_i_zfp_1d_decompress3_vt_select_31_b;
    wire [0:0] i_tobool_i_i_zfp_1d_decompress6_q;
    wire [63:0] i_unnamed_zfp_1d_decompress5_qi;
    reg [63:0] i_unnamed_zfp_1d_decompress5_q;
    wire [0:0] i_unnamed_zfp_1d_decompress8_q;
    wire [63:0] c_i64_012_recast_x_q;
    wire [63:0] i_sh_prom_i_i_zfp_1d_decompress3_sel_x_b;
    wire [5:0] i_unnamed_zfp_1d_decompress0_shift_narrow_x_b;
    wire [62:0] leftShiftStage0Idx1Rng1_uid29_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid29_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid30_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage0Idx2Pad2_uid31_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [61:0] leftShiftStage0Idx2Rng2_uid32_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [61:0] leftShiftStage0Idx2Rng2_uid32_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid33_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [2:0] leftShiftStage0Idx3Pad3_uid34_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [60:0] leftShiftStage0Idx3Rng3_uid35_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [60:0] leftShiftStage0Idx3Rng3_uid35_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid36_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid39_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [59:0] leftShiftStage1Idx1Rng4_uid40_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [59:0] leftShiftStage1Idx1Rng4_uid40_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid41_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [7:0] leftShiftStage1Idx2Pad8_uid42_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [55:0] leftShiftStage1Idx2Rng8_uid43_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [55:0] leftShiftStage1Idx2Rng8_uid43_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx2_uid44_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid45_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [51:0] leftShiftStage1Idx3Rng12_uid46_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [51:0] leftShiftStage1Idx3Rng12_uid46_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage1Idx3_uid47_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Pad16_uid50_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [47:0] leftShiftStage2Idx1Rng16_uid51_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [47:0] leftShiftStage2Idx1Rng16_uid51_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx1_uid52_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [31:0] leftShiftStage2Idx2Rng32_uid54_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [31:0] leftShiftStage2Idx2Rng32_uid54_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx2_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [47:0] leftShiftStage2Idx3Pad48_uid56_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [15:0] leftShiftStage2Idx3Rng48_uid57_i_unnamed_zfp_1d_decompress0_shift_x_in;
    wire [15:0] leftShiftStage2Idx3Rng48_uid57_i_unnamed_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage2Idx3_uid58_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x_q;
    wire [1:0] leftShiftStageSel0Dto0_uid37_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid37_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto0_uid37_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    reg [0:0] redist0_sync_together15_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist0_sync_together15_aunroll_x_in_i_valid_2_delay_0;
    reg [63:0] redist1_i_acl_1_zfp_1d_decompress2_q_2_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together15_aunroll_x_in_i_valid_2(DELAY,62)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together15_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist0_sync_together15_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together15_aunroll_x_in_i_valid_2_q <= redist0_sync_together15_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // i_unnamed_zfp_1d_decompress8(LOGICAL,12)@13
    assign i_unnamed_zfp_1d_decompress8_q = i_tobool_i_i_zfp_1d_decompress6_q ^ VCC_q;

    // c_i64_012_recast_x(CONSTANT,15)
    assign c_i64_012_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_acl_1_zfp_1d_decompress2(MUX,5)@11 + 1
    assign i_acl_1_zfp_1d_decompress2_s = in_c2_eni4_1_tpl;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_acl_1_zfp_1d_decompress2_s)
                1'b0 : i_acl_1_zfp_1d_decompress2_q <= in_c2_eni4_3_tpl;
                1'b1 : i_acl_1_zfp_1d_decompress2_q <= in_c2_eni4_2_tpl;
                default : i_acl_1_zfp_1d_decompress2_q <= 64'b0;
            endcase
        end
    end

    // leftShiftStage2Idx3Rng48_uid57_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,56)@11
    assign leftShiftStage2Idx3Rng48_uid57_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_q[15:0];
    assign leftShiftStage2Idx3Rng48_uid57_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx3Rng48_uid57_i_unnamed_zfp_1d_decompress0_shift_x_in[15:0];

    // leftShiftStage2Idx3Pad48_uid56_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,55)
    assign leftShiftStage2Idx3Pad48_uid56_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage2Idx3_uid58_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,57)@11
    assign leftShiftStage2Idx3_uid58_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx3Rng48_uid57_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage2Idx3Pad48_uid56_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage2Idx2Rng32_uid54_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,53)@11
    assign leftShiftStage2Idx2Rng32_uid54_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_q[31:0];
    assign leftShiftStage2Idx2Rng32_uid54_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx2Rng32_uid54_i_unnamed_zfp_1d_decompress0_shift_x_in[31:0];

    // i_sh_prom_i_i_zfp_1d_decompress3_vt_const_63(CONSTANT,7)
    assign i_sh_prom_i_i_zfp_1d_decompress3_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage2Idx2_uid55_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,54)@11
    assign leftShiftStage2Idx2_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx2Rng32_uid54_i_unnamed_zfp_1d_decompress0_shift_x_b, i_sh_prom_i_i_zfp_1d_decompress3_vt_const_63_q};

    // leftShiftStage2Idx1Rng16_uid51_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,50)@11
    assign leftShiftStage2Idx1Rng16_uid51_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_q[47:0];
    assign leftShiftStage2Idx1Rng16_uid51_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage2Idx1Rng16_uid51_i_unnamed_zfp_1d_decompress0_shift_x_in[47:0];

    // leftShiftStage2Idx1Pad16_uid50_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,49)
    assign leftShiftStage2Idx1Pad16_uid50_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(16'b0000000000000000);

    // leftShiftStage2Idx1_uid52_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,51)@11
    assign leftShiftStage2Idx1_uid52_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage2Idx1Rng16_uid51_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage2Idx1Pad16_uid50_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid46_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,45)@11
    assign leftShiftStage1Idx3Rng12_uid46_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q[51:0];
    assign leftShiftStage1Idx3Rng12_uid46_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx3Rng12_uid46_i_unnamed_zfp_1d_decompress0_shift_x_in[51:0];

    // leftShiftStage1Idx3Pad12_uid45_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,44)
    assign leftShiftStage1Idx3Pad12_uid45_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid47_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,46)@11
    assign leftShiftStage1Idx3_uid47_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx3Rng12_uid46_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx3Pad12_uid45_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid43_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,42)@11
    assign leftShiftStage1Idx2Rng8_uid43_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q[55:0];
    assign leftShiftStage1Idx2Rng8_uid43_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx2Rng8_uid43_i_unnamed_zfp_1d_decompress0_shift_x_in[55:0];

    // leftShiftStage1Idx2Pad8_uid42_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,41)
    assign leftShiftStage1Idx2Pad8_uid42_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid44_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,43)@11
    assign leftShiftStage1Idx2_uid44_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx2Rng8_uid43_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx2Pad8_uid42_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage1Idx1Rng4_uid40_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,39)@11
    assign leftShiftStage1Idx1Rng4_uid40_i_unnamed_zfp_1d_decompress0_shift_x_in = leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q[59:0];
    assign leftShiftStage1Idx1Rng4_uid40_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage1Idx1Rng4_uid40_i_unnamed_zfp_1d_decompress0_shift_x_in[59:0];

    // leftShiftStage1Idx1Pad4_uid39_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,38)
    assign leftShiftStage1Idx1Pad4_uid39_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid41_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,40)@11
    assign leftShiftStage1Idx1_uid41_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage1Idx1Rng4_uid40_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage1Idx1Pad4_uid39_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx3Rng3_uid35_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,34)
    assign leftShiftStage0Idx3Rng3_uid35_i_unnamed_zfp_1d_decompress0_shift_x_in = c_i64_111_q[60:0];
    assign leftShiftStage0Idx3Rng3_uid35_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx3Rng3_uid35_i_unnamed_zfp_1d_decompress0_shift_x_in[60:0];

    // leftShiftStage0Idx3Pad3_uid34_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,33)
    assign leftShiftStage0Idx3Pad3_uid34_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(3'b000);

    // leftShiftStage0Idx3_uid36_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,35)
    assign leftShiftStage0Idx3_uid36_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx3Rng3_uid35_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage0Idx3Pad3_uid34_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid32_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,31)
    assign leftShiftStage0Idx2Rng2_uid32_i_unnamed_zfp_1d_decompress0_shift_x_in = c_i64_111_q[61:0];
    assign leftShiftStage0Idx2Rng2_uid32_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx2Rng2_uid32_i_unnamed_zfp_1d_decompress0_shift_x_in[61:0];

    // leftShiftStage0Idx2Pad2_uid31_i_unnamed_zfp_1d_decompress0_shift_x(CONSTANT,30)
    assign leftShiftStage0Idx2Pad2_uid31_i_unnamed_zfp_1d_decompress0_shift_x_q = $unsigned(2'b00);

    // leftShiftStage0Idx2_uid33_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,32)
    assign leftShiftStage0Idx2_uid33_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx2Rng2_uid32_i_unnamed_zfp_1d_decompress0_shift_x_b, leftShiftStage0Idx2Pad2_uid31_i_unnamed_zfp_1d_decompress0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid29_i_unnamed_zfp_1d_decompress0_shift_x(BITSELECT,28)
    assign leftShiftStage0Idx1Rng1_uid29_i_unnamed_zfp_1d_decompress0_shift_x_in = c_i64_111_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid29_i_unnamed_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng1_uid29_i_unnamed_zfp_1d_decompress0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid30_i_unnamed_zfp_1d_decompress0_shift_x(BITJOIN,29)
    assign leftShiftStage0Idx1_uid30_i_unnamed_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng1_uid29_i_unnamed_zfp_1d_decompress0_shift_x_b, GND_q};

    // c_i64_111(CONSTANT,4)
    assign c_i64_111_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x(MUX,37)@11
    assign leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid37_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_s or c_i64_111_q or leftShiftStage0Idx1_uid30_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx2_uid33_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage0Idx3_uid36_i_unnamed_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q = c_i64_111_q;
            2'b01 : leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid30_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx2_uid33_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx3_uid36_i_unnamed_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x(MUX,48)@11
    assign leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid37_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_c;
    always @(leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_s or leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx1_uid41_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx2_uid44_i_unnamed_zfp_1d_decompress0_shift_x_q or leftShiftStage1Idx3_uid47_i_unnamed_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_s)
            2'b00 : leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage0_uid38_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b01 : leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx1_uid41_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b10 : leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx2_uid44_i_unnamed_zfp_1d_decompress0_shift_x_q;
            2'b11 : leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_q = leftShiftStage1Idx3_uid47_i_unnamed_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom_i_i_zfp_1d_decompress3_sel_x(BITSELECT,16)@11
    assign i_sh_prom_i_i_zfp_1d_decompress3_sel_x_b = {32'b00000000000000000000000000000000, in_c2_eni4_4_tpl[31:0]};

    // i_sh_prom_i_i_zfp_1d_decompress3_vt_select_31(BITSELECT,9)@11
    assign i_sh_prom_i_i_zfp_1d_decompress3_vt_select_31_b = i_sh_prom_i_i_zfp_1d_decompress3_sel_x_b[31:0];

    // i_sh_prom_i_i_zfp_1d_decompress3_vt_join(BITJOIN,8)@11
    assign i_sh_prom_i_i_zfp_1d_decompress3_vt_join_q = {i_sh_prom_i_i_zfp_1d_decompress3_vt_const_63_q, i_sh_prom_i_i_zfp_1d_decompress3_vt_select_31_b};

    // i_unnamed_zfp_1d_decompress0_shift_narrow_x(BITSELECT,19)@11
    assign i_unnamed_zfp_1d_decompress0_shift_narrow_x_b = i_sh_prom_i_i_zfp_1d_decompress3_vt_join_q[5:0];

    // leftShiftStageSel0Dto0_uid37_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select(BITSELECT,61)@11
    assign leftShiftStageSel0Dto0_uid37_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_b = i_unnamed_zfp_1d_decompress0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid37_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_c = i_unnamed_zfp_1d_decompress0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid37_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_d = i_unnamed_zfp_1d_decompress0_shift_narrow_x_b[5:4];

    // leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x(MUX,59)@11 + 1
    assign leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x_s = leftShiftStageSel0Dto0_uid37_i_unnamed_zfp_1d_decompress0_shift_x_merged_bit_select_d;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x_s)
                2'b00 : leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage1_uid49_i_unnamed_zfp_1d_decompress0_shift_x_q;
                2'b01 : leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx1_uid52_i_unnamed_zfp_1d_decompress0_shift_x_q;
                2'b10 : leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx2_uid55_i_unnamed_zfp_1d_decompress0_shift_x_q;
                2'b11 : leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x_q <= leftShiftStage2Idx3_uid58_i_unnamed_zfp_1d_decompress0_shift_x_q;
                default : leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x_q <= 64'b0;
            endcase
        end
    end

    // i_unnamed_zfp_1d_decompress5(LOGICAL,11)@12 + 1
    assign i_unnamed_zfp_1d_decompress5_qi = leftShiftStage2_uid60_i_unnamed_zfp_1d_decompress0_shift_x_q & i_acl_1_zfp_1d_decompress2_q;
    dspba_delay_ver #( .width(64), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_decompress5_delay ( .xin(i_unnamed_zfp_1d_decompress5_qi), .xout(i_unnamed_zfp_1d_decompress5_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_tobool_i_i_zfp_1d_decompress6(LOGICAL,10)@13
    assign i_tobool_i_i_zfp_1d_decompress6_q = $unsigned(i_unnamed_zfp_1d_decompress5_q == c_i64_012_recast_x_q ? 1'b1 : 1'b0);

    // redist1_i_acl_1_zfp_1d_decompress2_q_2(DELAY,63)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_acl_1_zfp_1d_decompress2_q_2_q <= $unsigned(i_acl_1_zfp_1d_decompress2_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,21)@13
    assign out_c2_exi3_0_tpl = GND_q;
    assign out_c2_exi3_1_tpl = redist1_i_acl_1_zfp_1d_decompress2_q_2_q;
    assign out_c2_exi3_2_tpl = i_tobool_i_i_zfp_1d_decompress6_q;
    assign out_c2_exi3_3_tpl = i_unnamed_zfp_1d_decompress8_q;
    assign out_o_valid = redist0_sync_together15_aunroll_x_in_i_valid_2_q;
    assign out_unnamed_zfp_1d_decompress1 = GND_q;

endmodule
