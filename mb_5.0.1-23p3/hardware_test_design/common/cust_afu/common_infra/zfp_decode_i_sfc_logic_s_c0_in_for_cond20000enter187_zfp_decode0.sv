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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond2_preheader_zfp_decodes_c0_enter187_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_logic_s_c0_in_for_cond20000enter187_zfp_decode0 (
    output wire [0:0] out_c0_exi2192_0_tpl,
    output wire [63:0] out_c0_exi2192_1_tpl,
    output wire [31:0] out_c0_exi2192_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_decode0,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [63:0] in_c0_eni5_2_tpl,
    input wire [63:0] in_c0_eni5_3_tpl,
    input wire [31:0] in_c0_eni5_4_tpl,
    input wire [31:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_bs_sroa_0_6_select_zfp_decode2_s;
    reg [63:0] i_bs_sroa_0_6_select_zfp_decode2_q;
    wire [0:0] i_bs_sroa_7_6_select_zfp_decode3_s;
    reg [31:0] i_bs_sroa_7_6_select_zfp_decode3_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_bs_sroa_7_6_select_zfp_decode3(MUX,4)@0
    assign i_bs_sroa_7_6_select_zfp_decode3_s = in_c0_eni5_1_tpl;
    always @(i_bs_sroa_7_6_select_zfp_decode3_s or in_c0_eni5_5_tpl or in_c0_eni5_4_tpl)
    begin
        unique case (i_bs_sroa_7_6_select_zfp_decode3_s)
            1'b0 : i_bs_sroa_7_6_select_zfp_decode3_q = in_c0_eni5_5_tpl;
            1'b1 : i_bs_sroa_7_6_select_zfp_decode3_q = in_c0_eni5_4_tpl;
            default : i_bs_sroa_7_6_select_zfp_decode3_q = 32'b0;
        endcase
    end

    // i_bs_sroa_0_6_select_zfp_decode2(MUX,3)@0
    assign i_bs_sroa_0_6_select_zfp_decode2_s = in_c0_eni5_1_tpl;
    always @(i_bs_sroa_0_6_select_zfp_decode2_s or in_c0_eni5_3_tpl or in_c0_eni5_2_tpl)
    begin
        unique case (i_bs_sroa_0_6_select_zfp_decode2_s)
            1'b0 : i_bs_sroa_0_6_select_zfp_decode2_q = in_c0_eni5_3_tpl;
            1'b1 : i_bs_sroa_0_6_select_zfp_decode2_q = in_c0_eni5_2_tpl;
            default : i_bs_sroa_0_6_select_zfp_decode2_q = 64'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@0
    assign out_c0_exi2192_0_tpl = GND_q;
    assign out_c0_exi2192_1_tpl = i_bs_sroa_0_6_select_zfp_decode2_q;
    assign out_c0_exi2192_2_tpl = i_bs_sroa_7_6_select_zfp_decode3_q;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_zfp_decode0 = GND_q;

endmodule
