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

// SystemVerilog created from wait_pulse_extender_inst
// Created for function/kernel zfp_1d_1block
// SystemVerilog created on Tue Feb  3 21:17:23 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_1block_wait_pulse_extender_inst (
    output wire [0:0] out_o_sclrn,
    input wire clock,
    input wire resetn
    );

    wire [0:0] wait_pulse_extender_inst_o_sclrn;


    // wait_pulse_extender_inst(EXTIFACE,3)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .PIPE_DEPTH(0),
        .PULSE_EXTENSION(70),
        .USE_SYNCHRONIZER(0)
    ) thewait_pulse_extender_inst (
        .o_sclrn(wait_pulse_extender_inst_o_sclrn),
        .clk(clock),
        .i_resetn(resetn)
    );

    // out_o_sclrn(GPOUT,2)
    assign out_o_sclrn = wait_pulse_extender_inst_o_sclrn;

endmodule
