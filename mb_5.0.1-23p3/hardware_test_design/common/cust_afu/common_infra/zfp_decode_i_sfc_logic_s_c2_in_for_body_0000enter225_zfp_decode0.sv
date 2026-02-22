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

// SystemVerilog created from i_sfc_logic_s_c2_in_for_body_i_zfp_decodes_c2_enter225_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_logic_s_c2_in_for_body_0000enter225_zfp_decode0 (
    output wire [0:0] out_c2_exi1227_0_tpl,
    output wire [0:0] out_c2_exi1227_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_decode0,
    input wire [0:0] in_c2_eni1224_0_tpl,
    input wire [63:0] in_c2_eni1224_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_toi1_intcast_zfp_decode2_sel_x_b;


    // i_toi1_intcast_zfp_decode2_sel_x(BITSELECT,5)@7
    assign i_toi1_intcast_zfp_decode2_sel_x_b = in_c2_eni1224_1_tpl[0:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@7
    assign out_c2_exi1227_0_tpl = GND_q;
    assign out_c2_exi1227_1_tpl = i_toi1_intcast_zfp_decode2_sel_x_b;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_zfp_decode0 = GND_q;

endmodule
