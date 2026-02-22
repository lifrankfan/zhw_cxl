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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift0
// Created for function/kernel zfp_inv_lift
// SystemVerilog created on Fri Feb 13 18:09:03 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_inv_lift_i_llvm_fpga_sfc_exit_s_c1_o00001_exit_zfp_inv_lift0 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire [0:0] in_mask_valid,
    input wire [0:0] in_data_in_0_tpl,
    input wire [0:0] in_dec_pipelined_thread,
    input wire [0:0] in_inc_pipelined_thread,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_data_out_0_tpl,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_full_detector_out_full;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_full_detector_out_throttle;
    wire [0:0] not_keep_going_q;
    wire [0:0] stall_out_or_q;
    reg [0:0] valid_before_fifo_q;
    reg [0:0] before_fifo_0_x_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_almost_empty;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_empty;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_data_0_tpl;


    // before_fifo_0_x(REG,9)
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

    // valid_before_fifo(REG,8)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_before_fifo_q <= in_valid_in;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x(BLACKBOX,10)@20000000
    // out out_o_almost_empty@20000030
    // out out_o_empty@20000030
    // out out_o_valid@20000030
    // out out_o_data_0_tpl@20000030
    zfp_inv_lift_i_llvm_fpga_sfc_exit_s_c1_o0000_inv_lift1_data_fifo thei_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(valid_before_fifo_q),
        .in_i_data_0_tpl(before_fifo_0_x_q),
        .out_o_almost_empty(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_almost_empty),
        .out_o_empty(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_empty),
        .out_o_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_keep_going(LOGICAL,4)
    assign not_keep_going_q = ~ (in_dec_pipelined_thread);

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_full_detector(BLACKBOX,3)@20000000
    zfp_inv_lift_i_llvm_fpga_sfc_exit_s_c1_o0000_lift1_full_detector thei_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_full_detector (
        .in_dec_pipelined_thread(not_keep_going_q),
        .in_decrement(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_valid),
        .in_inc_pipelined_thread(in_inc_pipelined_thread),
        .in_increment(in_input_accepted),
        .out_full(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_full_detector_out_full),
        .out_throttle(i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_full_detector_out_throttle),
        .clock(clock),
        .resetn(resetn)
    );

    // stall_out_or(LOGICAL,6)
    assign stall_out_or_q = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_full_detector_out_full | i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_stall | i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_full_detector_out_throttle;

    // sync_out(GPOUT,7)@20000000
    assign out_stall_entry = stall_out_or_q;

    // dupName_0_sync_out_aunroll_x(GPOUT,13)@95
    assign out_almost_empty_out = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_almost_empty;
    assign out_data_out_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_data_0_tpl;
    assign out_empty_out = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_empty;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c1_out_for_body_zfp_inv_lifts_c1_exit_zfp_inv_lift1_data_fifo_aunroll_x_out_o_valid;

endmodule
