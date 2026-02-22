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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body_zfp_decodes_c1_enter179_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_logic_s_c1_in_for_body_0000enter179_zfp_decode0 (
    output wire [0:0] out_c1_exi3_0_tpl,
    output wire [0:0] out_c1_exi3_1_tpl,
    output wire [0:0] out_c1_exi3_2_tpl,
    output wire [31:0] out_c1_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_decode0,
    input wire [0:0] in_c1_eni1178_0_tpl,
    input wire [31:0] in_c1_eni1178_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_111_q;
    wire [31:0] c_i32_6312_q;
    wire [32:0] i_bs_sroa_7_056_op_zfp_decode5_a;
    wire [32:0] i_bs_sroa_7_056_op_zfp_decode5_b;
    logic [32:0] i_bs_sroa_7_056_op_zfp_decode5_o;
    wire [32:0] i_bs_sroa_7_056_op_zfp_decode5_q;
    wire [0:0] i_cmp_i21_xor_zfp_decode4_q;
    wire [0:0] i_cmp_i21_zfp_decode2_q;
    wire [0:0] i_sub_i30_zfp_decode6_s;
    reg [31:0] i_sub_i30_zfp_decode6_q;
    wire [31:0] bgTrunc_i_bs_sroa_7_056_op_zfp_decode5_sel_x_b;
    wire [31:0] c_i32_09_recast_x_q;


    // c_i32_6312(CONSTANT,6)
    assign c_i32_6312_q = $unsigned(32'b00000000000000000000000000111111);

    // c_i32_111(CONSTANT,5)
    assign c_i32_111_q = $unsigned(32'b11111111111111111111111111111111);

    // i_bs_sroa_7_056_op_zfp_decode5(ADD,7)@7
    assign i_bs_sroa_7_056_op_zfp_decode5_a = {1'b0, in_c1_eni1178_1_tpl};
    assign i_bs_sroa_7_056_op_zfp_decode5_b = {1'b0, c_i32_111_q};
    assign i_bs_sroa_7_056_op_zfp_decode5_o = $unsigned(i_bs_sroa_7_056_op_zfp_decode5_a) + $unsigned(i_bs_sroa_7_056_op_zfp_decode5_b);
    assign i_bs_sroa_7_056_op_zfp_decode5_q = i_bs_sroa_7_056_op_zfp_decode5_o[32:0];

    // bgTrunc_i_bs_sroa_7_056_op_zfp_decode5_sel_x(BITSELECT,13)@7
    assign bgTrunc_i_bs_sroa_7_056_op_zfp_decode5_sel_x_b = i_bs_sroa_7_056_op_zfp_decode5_q[31:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_sub_i30_zfp_decode6(MUX,10)@7
    assign i_sub_i30_zfp_decode6_s = i_cmp_i21_zfp_decode2_q;
    always @(i_sub_i30_zfp_decode6_s or bgTrunc_i_bs_sroa_7_056_op_zfp_decode5_sel_x_b or c_i32_6312_q)
    begin
        unique case (i_sub_i30_zfp_decode6_s)
            1'b0 : i_sub_i30_zfp_decode6_q = bgTrunc_i_bs_sroa_7_056_op_zfp_decode5_sel_x_b;
            1'b1 : i_sub_i30_zfp_decode6_q = c_i32_6312_q;
            default : i_sub_i30_zfp_decode6_q = 32'b0;
        endcase
    end

    // i_cmp_i21_xor_zfp_decode4(LOGICAL,8)@7
    assign i_cmp_i21_xor_zfp_decode4_q = i_cmp_i21_zfp_decode2_q ^ VCC_q;

    // c_i32_09_recast_x(CONSTANT,14)
    assign c_i32_09_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp_i21_zfp_decode2(LOGICAL,9)@7
    assign i_cmp_i21_zfp_decode2_q = $unsigned(in_c1_eni1178_1_tpl == c_i32_09_recast_x_q ? 1'b1 : 1'b0);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,15)@7
    assign out_c1_exi3_0_tpl = GND_q;
    assign out_c1_exi3_1_tpl = i_cmp_i21_zfp_decode2_q;
    assign out_c1_exi3_2_tpl = i_cmp_i21_xor_zfp_decode4_q;
    assign out_c1_exi3_3_tpl = i_sub_i30_zfp_decode6_q;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_zfp_decode0 = GND_q;

endmodule
