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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body_i_zfp_1d_decompresss_c1_enter_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c1_in_fo0000r_zfp_1d_decompress0 (
    output wire [0:0] out_c1_exi3_0_tpl,
    output wire [0:0] out_c1_exi3_1_tpl,
    output wire [0:0] out_c1_exi3_2_tpl,
    output wire [31:0] out_c1_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress1,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [31:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_111_q;
    wire [31:0] c_i32_6312_q;
    wire [32:0] i_bs_sroa_7_023_op_zfp_1d_decompress5_a;
    wire [32:0] i_bs_sroa_7_023_op_zfp_1d_decompress5_b;
    logic [32:0] i_bs_sroa_7_023_op_zfp_1d_decompress5_o;
    wire [32:0] i_bs_sroa_7_023_op_zfp_1d_decompress5_q;
    wire [0:0] i_cmp_i_i_xor_zfp_1d_decompress4_q;
    wire [0:0] i_cmp_i_i_zfp_1d_decompress2_q;
    wire [0:0] i_sub_i_i_zfp_1d_decompress6_s;
    reg [31:0] i_sub_i_i_zfp_1d_decompress6_q;
    wire [31:0] bgTrunc_i_bs_sroa_7_023_op_zfp_1d_decompress5_sel_x_b;
    wire [31:0] c_i32_09_recast_x_q;


    // c_i32_6312(CONSTANT,6)
    assign c_i32_6312_q = $unsigned(32'b00000000000000000000000000111111);

    // c_i32_111(CONSTANT,5)
    assign c_i32_111_q = $unsigned(32'b11111111111111111111111111111111);

    // i_bs_sroa_7_023_op_zfp_1d_decompress5(ADD,7)@7
    assign i_bs_sroa_7_023_op_zfp_1d_decompress5_a = {1'b0, in_c1_eni1_1_tpl};
    assign i_bs_sroa_7_023_op_zfp_1d_decompress5_b = {1'b0, c_i32_111_q};
    assign i_bs_sroa_7_023_op_zfp_1d_decompress5_o = $unsigned(i_bs_sroa_7_023_op_zfp_1d_decompress5_a) + $unsigned(i_bs_sroa_7_023_op_zfp_1d_decompress5_b);
    assign i_bs_sroa_7_023_op_zfp_1d_decompress5_q = i_bs_sroa_7_023_op_zfp_1d_decompress5_o[32:0];

    // bgTrunc_i_bs_sroa_7_023_op_zfp_1d_decompress5_sel_x(BITSELECT,13)@7
    assign bgTrunc_i_bs_sroa_7_023_op_zfp_1d_decompress5_sel_x_b = i_bs_sroa_7_023_op_zfp_1d_decompress5_q[31:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_sub_i_i_zfp_1d_decompress6(MUX,10)@7
    assign i_sub_i_i_zfp_1d_decompress6_s = i_cmp_i_i_zfp_1d_decompress2_q;
    always @(i_sub_i_i_zfp_1d_decompress6_s or bgTrunc_i_bs_sroa_7_023_op_zfp_1d_decompress5_sel_x_b or c_i32_6312_q)
    begin
        unique case (i_sub_i_i_zfp_1d_decompress6_s)
            1'b0 : i_sub_i_i_zfp_1d_decompress6_q = bgTrunc_i_bs_sroa_7_023_op_zfp_1d_decompress5_sel_x_b;
            1'b1 : i_sub_i_i_zfp_1d_decompress6_q = c_i32_6312_q;
            default : i_sub_i_i_zfp_1d_decompress6_q = 32'b0;
        endcase
    end

    // i_cmp_i_i_xor_zfp_1d_decompress4(LOGICAL,8)@7
    assign i_cmp_i_i_xor_zfp_1d_decompress4_q = i_cmp_i_i_zfp_1d_decompress2_q ^ VCC_q;

    // c_i32_09_recast_x(CONSTANT,14)
    assign c_i32_09_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp_i_i_zfp_1d_decompress2(LOGICAL,9)@7
    assign i_cmp_i_i_zfp_1d_decompress2_q = $unsigned(in_c1_eni1_1_tpl == c_i32_09_recast_x_q ? 1'b1 : 1'b0);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,15)@7
    assign out_c1_exi3_0_tpl = GND_q;
    assign out_c1_exi3_1_tpl = i_cmp_i_i_zfp_1d_decompress2_q;
    assign out_c1_exi3_2_tpl = i_cmp_i_i_xor_zfp_1d_decompress4_q;
    assign out_c1_exi3_3_tpl = i_sub_i_i_zfp_1d_decompress6_q;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_zfp_1d_decompress1 = GND_q;

endmodule
