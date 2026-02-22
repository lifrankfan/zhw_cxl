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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_llvm_fpga_sfc_exit_s_c0_out0000_exit283_zfp_decode0 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire [0:0] in_data_in_0_tpl,
    input wire [63:0] in_data_in_1_tpl,
    input wire [63:0] in_data_in_2_tpl,
    input wire [63:0] in_data_in_3_tpl,
    input wire [63:0] in_data_in_4_tpl,
    input wire [0:0] in_data_in_5_tpl,
    input wire [0:0] in_data_in_6_tpl,
    input wire [0:0] in_data_in_7_tpl,
    input wire [31:0] in_data_in_8_tpl,
    input wire [0:0] in_data_in_9_tpl,
    input wire [0:0] in_data_in_10_tpl,
    input wire [63:0] in_data_in_11_tpl,
    input wire [63:0] in_data_in_12_tpl,
    input wire [63:0] in_data_in_13_tpl,
    input wire [63:0] in_data_in_14_tpl,
    input wire [31:0] in_data_in_15_tpl,
    input wire [31:0] in_data_in_16_tpl,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_mask_valid,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out_0_tpl,
    output wire [63:0] out_data_out_1_tpl,
    output wire [63:0] out_data_out_2_tpl,
    output wire [63:0] out_data_out_3_tpl,
    output wire [63:0] out_data_out_4_tpl,
    output wire [0:0] out_data_out_5_tpl,
    output wire [0:0] out_data_out_6_tpl,
    output wire [0:0] out_data_out_7_tpl,
    output wire [31:0] out_data_out_8_tpl,
    output wire [0:0] out_data_out_9_tpl,
    output wire [0:0] out_data_out_10_tpl,
    output wire [63:0] out_data_out_11_tpl,
    output wire [63:0] out_data_out_12_tpl,
    output wire [63:0] out_data_out_13_tpl,
    output wire [63:0] out_data_out_14_tpl,
    output wire [31:0] out_data_out_15_tpl,
    output wire [31:0] out_data_out_16_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_full_detector_out_full;
    wire [0:0] masked_valid_q;
    wire [0:0] not_mask_valid_q;
    wire [0:0] not_stall_output_q;
    wire [0:0] output_accepted_and_q;
    wire [0:0] stall_out_or_q;
    wire [0:0] valid_and_masked_q;
    reg [0:0] valid_before_fifo_q;
    reg [0:0] before_fifo_0_x_q;
    reg [63:0] before_fifo_1_x_q;
    reg [63:0] before_fifo_2_x_q;
    reg [63:0] before_fifo_3_x_q;
    reg [63:0] before_fifo_4_x_q;
    reg [0:0] before_fifo_5_x_q;
    reg [0:0] before_fifo_6_x_q;
    reg [0:0] before_fifo_7_x_q;
    reg [31:0] before_fifo_8_x_q;
    reg [0:0] before_fifo_9_x_q;
    reg [0:0] before_fifo_10_x_q;
    reg [63:0] before_fifo_11_x_q;
    reg [63:0] before_fifo_12_x_q;
    reg [63:0] before_fifo_13_x_q;
    reg [63:0] before_fifo_14_x_q;
    reg [31:0] before_fifo_15_x_q;
    reg [31:0] before_fifo_16_x_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_1_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_2_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_3_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_5_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_8_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_9_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_10_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_11_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_12_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_13_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_16_tpl;


    // before_fifo_16_x(REG,30)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_16_x_q <= in_data_in_16_tpl;
        end
    end

    // before_fifo_15_x(REG,29)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_15_x_q <= in_data_in_15_tpl;
        end
    end

    // before_fifo_14_x(REG,28)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_14_x_q <= in_data_in_14_tpl;
        end
    end

    // before_fifo_13_x(REG,27)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_13_x_q <= in_data_in_13_tpl;
        end
    end

    // before_fifo_12_x(REG,26)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_12_x_q <= in_data_in_12_tpl;
        end
    end

    // before_fifo_11_x(REG,25)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_11_x_q <= in_data_in_11_tpl;
        end
    end

    // before_fifo_10_x(REG,24)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_10_x_q <= in_data_in_10_tpl;
        end
    end

    // before_fifo_9_x(REG,23)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_9_x_q <= in_data_in_9_tpl;
        end
    end

    // before_fifo_8_x(REG,22)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_8_x_q <= in_data_in_8_tpl;
        end
    end

    // before_fifo_7_x(REG,21)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_7_x_q <= in_data_in_7_tpl;
        end
    end

    // before_fifo_6_x(REG,20)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_6_x_q <= in_data_in_6_tpl;
        end
    end

    // before_fifo_5_x(REG,19)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_5_x_q <= in_data_in_5_tpl;
        end
    end

    // before_fifo_4_x(REG,18)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_4_x_q <= in_data_in_4_tpl;
        end
    end

    // before_fifo_3_x(REG,17)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_3_x_q <= in_data_in_3_tpl;
        end
    end

    // before_fifo_2_x(REG,16)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_2_x_q <= in_data_in_2_tpl;
        end
    end

    // before_fifo_1_x(REG,15)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_1_x_q <= in_data_in_1_tpl;
        end
    end

    // before_fifo_0_x(REG,14)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_0_x_q <= in_data_in_0_tpl;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_mask_valid(LOGICAL,6)
    assign not_mask_valid_q = ~ (in_mask_valid);

    // masked_valid(LOGICAL,5)
    assign masked_valid_q = in_valid_in & not_mask_valid_q;

    // valid_before_fifo(REG,13)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_before_fifo_q <= masked_valid_q;
        end
    end

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x(BLACKBOX,31)@20000000
    // out out_o_almost_full@20000003
    // out out_o_valid@20000003
    // out out_o_data_0_tpl@20000003
    // out out_o_data_1_tpl@20000003
    // out out_o_data_2_tpl@20000003
    // out out_o_data_3_tpl@20000003
    // out out_o_data_4_tpl@20000003
    // out out_o_data_5_tpl@20000003
    // out out_o_data_6_tpl@20000003
    // out out_o_data_7_tpl@20000003
    // out out_o_data_8_tpl@20000003
    // out out_o_data_9_tpl@20000003
    // out out_o_data_10_tpl@20000003
    // out out_o_data_11_tpl@20000003
    // out out_o_data_12_tpl@20000003
    // out out_o_data_13_tpl@20000003
    // out out_o_data_14_tpl@20000003
    // out out_o_data_15_tpl@20000003
    // out out_o_data_16_tpl@20000003
    zfp_decode_i_llvm_fpga_sfc_exit_s_c0_out0005fp_decode1_data_fifo thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x (
        .in_i_stall(in_stall_in),
        .in_i_valid(valid_before_fifo_q),
        .in_i_data_0_tpl(before_fifo_0_x_q),
        .in_i_data_1_tpl(before_fifo_1_x_q),
        .in_i_data_2_tpl(before_fifo_2_x_q),
        .in_i_data_3_tpl(before_fifo_3_x_q),
        .in_i_data_4_tpl(before_fifo_4_x_q),
        .in_i_data_5_tpl(before_fifo_5_x_q),
        .in_i_data_6_tpl(before_fifo_6_x_q),
        .in_i_data_7_tpl(before_fifo_7_x_q),
        .in_i_data_8_tpl(before_fifo_8_x_q),
        .in_i_data_9_tpl(before_fifo_9_x_q),
        .in_i_data_10_tpl(before_fifo_10_x_q),
        .in_i_data_11_tpl(before_fifo_11_x_q),
        .in_i_data_12_tpl(before_fifo_12_x_q),
        .in_i_data_13_tpl(before_fifo_13_x_q),
        .in_i_data_14_tpl(before_fifo_14_x_q),
        .in_i_data_15_tpl(before_fifo_15_x_q),
        .in_i_data_16_tpl(before_fifo_16_x_q),
        .out_o_almost_full(),
        .out_o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_16_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_and_masked(LOGICAL,12)
    assign valid_and_masked_q = in_mask_valid & in_valid_in;

    // not_stall_output(LOGICAL,7)
    assign not_stall_output_q = ~ (in_stall_in);

    // output_accepted_and(LOGICAL,8)
    assign output_accepted_and_q = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_valid & not_stall_output_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_full_detector(BLACKBOX,4)@20000000
    zfp_decode_i_llvm_fpga_sfc_exit_s_c0_out0005ecode1_full_detector thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_full_detector (
        .in_dec_pipelined_thread(GND_q),
        .in_decrement(output_accepted_and_q),
        .in_decrement2(valid_and_masked_q),
        .in_inc_pipelined_thread(GND_q),
        .in_increment(in_input_accepted),
        .out_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_full_detector_out_full),
        .out_throttle(),
        .clock(clock),
        .resetn(resetn)
    );

    // stall_out_or(LOGICAL,10)
    assign stall_out_or_q = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_full_detector_out_full | i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_stall;

    // sync_out(GPOUT,11)@20000000
    assign out_stall_entry = stall_out_or_q;

    // dupName_0_sync_out_aunroll_x(GPOUT,33)@11
    assign out_data_out_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_0_tpl;
    assign out_data_out_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_1_tpl;
    assign out_data_out_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_2_tpl;
    assign out_data_out_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_3_tpl;
    assign out_data_out_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_4_tpl;
    assign out_data_out_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_5_tpl;
    assign out_data_out_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_6_tpl;
    assign out_data_out_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_7_tpl;
    assign out_data_out_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_8_tpl;
    assign out_data_out_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_9_tpl;
    assign out_data_out_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_10_tpl;
    assign out_data_out_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_11_tpl;
    assign out_data_out_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_12_tpl;
    assign out_data_out_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_13_tpl;
    assign out_data_out_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_14_tpl;
    assign out_data_out_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_15_tpl;
    assign out_data_out_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_data_16_tpl;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_zfp_decodes_c0_exit283_zfp_decode1_data_fifo_aunroll_x_out_o_valid;

endmodule
