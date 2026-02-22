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

// SystemVerilog created from i_llvm_fpga_forked_zfp_inv_lift_b3_forked_zfp_inv_lift0
// Created for function/kernel zfp_inv_lift
// SystemVerilog created on Fri Feb 13 18:09:03 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_inv_lift_i_llvm_fpga_forked_b3_forked_zfp_inv_lift0 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_buffer_out,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [6:0] c_i7_03_q;
    wire [7:0] element_extension2_q;
    wire [7:0] i_llvm_fpga_forked_zfp_inv_lift_b3_forked_zfp_inv_lift1_buffer_in;
    wire [7:0] i_llvm_fpga_forked_zfp_inv_lift_b3_forked_zfp_inv_lift1_buffer_out;
    wire [0:0] adapt_scalar_trunc4_sel_x_b;


    // c_i7_03(CONSTANT,3)
    assign c_i7_03_q = $unsigned(7'b0000000);

    // element_extension2(BITJOIN,4)@0
    assign element_extension2_q = {c_i7_03_q, in_buffer_in};

    // i_llvm_fpga_forked_zfp_inv_lift_b3_forked_zfp_inv_lift1(EXTIFACE,5)@0
    assign i_llvm_fpga_forked_zfp_inv_lift_b3_forked_zfp_inv_lift1_buffer_in = element_extension2_q;
    acl_dspba_buffer #(
        .WIDTH(8)
    ) thei_llvm_fpga_forked_zfp_inv_lift_b3_forked_zfp_inv_lift1 (
        .buffer_in(element_extension2_q),
        .buffer_out(i_llvm_fpga_forked_zfp_inv_lift_b3_forked_zfp_inv_lift1_buffer_out)
    );

    // adapt_scalar_trunc4_sel_x(BITSELECT,9)@0
    assign adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_forked_zfp_inv_lift_b3_forked_zfp_inv_lift1_buffer_out[0:0];

    // sync_out(GPOUT,7)@0
    assign out_buffer_out = adapt_scalar_trunc4_sel_x_b;
    assign out_valid_out = in_valid_in;

endmodule
