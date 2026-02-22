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

// SystemVerilog created from start_pulse
// Created for function/kernel zfp_1d_1block
// SystemVerilog created on Tue Feb  3 21:17:23 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_1block_start_pulse (
    input wire [0:0] in_i_stall,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] inner_and_q;
    wire [0:0] inner_or_q;
    wire [0:0] not_stall_q;
    wire [0:0] not_valid_reg_q;
    wire [0:0] outer_and_q;
    reg [0:0] start_pulse_out_reg_q;
    reg [0:0] start_pulse_valid_reg_q;


    // inner_or(LOGICAL,3)
    assign inner_or_q = start_pulse_valid_reg_q | inner_and_q;

    // start_pulse_valid_reg(REG,11)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            start_pulse_valid_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            start_pulse_valid_reg_q <= inner_or_q;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_valid_reg(LOGICAL,7)
    assign not_valid_reg_q = ~ (start_pulse_valid_reg_q);

    // not_stall(LOGICAL,6)
    assign not_stall_q = ~ (in_i_stall);

    // outer_and(LOGICAL,8)
    assign outer_and_q = in_i_valid & not_stall_q;

    // inner_and(LOGICAL,2)
    assign inner_and_q = outer_and_q & not_valid_reg_q;

    // start_pulse_out_reg(REG,10)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            start_pulse_out_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            start_pulse_out_reg_q <= inner_and_q;
        end
    end

    // out_o_valid(GPOUT,9)
    assign out_o_valid = start_pulse_out_reg_q;

endmodule
