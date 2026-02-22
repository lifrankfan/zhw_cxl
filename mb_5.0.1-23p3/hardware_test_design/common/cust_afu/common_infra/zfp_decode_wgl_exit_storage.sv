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

// SystemVerilog created from wgl_exit_storage
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_wgl_exit_storage (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_data_in,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    reg [31:0] wgl_exit_storage_data_reg_q;
    reg [0:0] wgl_exit_storage_valid_reg_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out(GPOUT,5)
    assign out_stall_out = GND_q;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // wgl_exit_storage_valid_reg(REG,8)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            wgl_exit_storage_valid_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            wgl_exit_storage_valid_reg_q <= in_valid_in;
        end
    end

    // wgl_exit_storage_data_reg(REG,7)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            wgl_exit_storage_data_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            wgl_exit_storage_data_reg_q <= in_data_in;
        end
    end

    // dupName_0_sync_out_x(GPOUT,9)@20000001
    assign out_data_out = wgl_exit_storage_data_reg_q;
    assign out_valid_out = wgl_exit_storage_valid_reg_q;

endmodule
