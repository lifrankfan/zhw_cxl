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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_zfp_uint_to_ints_c0_enter222_zfp_uint_to_int0
// Created for function/kernel zfp_uint_to_int
// SystemVerilog created on Fri Feb 13 18:08:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_uint_to_int_i_sfc_logic_s_c0_in_for_0000222_zfp_uint_to_int0 (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_zfp_uint_to_int_B3_current_iter_isspec,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [2:0] c_i3_133_q;
    wire [2:0] c_i3_231_q;
    wire [3:0] i_fpga_indvars_iv_next_zfp_uint_to_int14_a;
    wire [3:0] i_fpga_indvars_iv_next_zfp_uint_to_int14_b;
    logic [3:0] i_fpga_indvars_iv_next_zfp_uint_to_int14_o;
    wire [3:0] i_fpga_indvars_iv_next_zfp_uint_to_int14_q;
    wire [0:0] i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond13_zfp_uint_to_int13_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond13_zfp_uint_to_int13_out_feedback_valid_out_5;
    wire [0:0] i_notcmp10_zfp_uint_to_int12_q;
    wire [0:0] i_zfp_uint_to_int_b3_current_iter_isspec_zfp_uint_to_int5_q;
    wire [0:0] i_zfp_uint_to_int_b3_next_iter_isreal_zfp_uint_to_int7_q;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next_zfp_uint_to_int14_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x_s;
    reg [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid;
    wire i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall;
    wire i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b;
    wire [4:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_c_i5_03_x_q;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_valid;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_stall;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_o_data;
    wire [2:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond_zfp_uint_to_int10_cmp_nsign_q;
    reg [0:0] redist0_sync_together38_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist0_sync_together38_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist1_sync_together38_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist2_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q;
    reg [0:0] redist2_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_q;
    reg [0:0] redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_delay_0;
    reg [0:0] redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_delay_1;
    reg [0:0] redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_delay_2;
    reg [0:0] redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_q;
    reg [0:0] redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_0;
    reg [0:0] redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_1;
    reg [0:0] redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together38_aunroll_x_in_i_valid_2(DELAY,67)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together38_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist0_sync_together38_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together38_aunroll_x_in_i_valid_2_q <= redist0_sync_together38_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist1_sync_together38_aunroll_x_in_i_valid_3(DELAY,68)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together38_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together38_aunroll_x_in_i_valid_3_q <= $unsigned(redist0_sync_together38_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,55)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together38_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg6(REG,59)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together38_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i3_231(CONSTANT,19)
    assign c_i3_231_q = $unsigned(3'b010);

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_c_i5_03_x(CONSTANT,46)
    assign i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_c_i5_03_x_q = $unsigned(5'b00000);

    // c_i3_133(CONSTANT,18)
    assign c_i3_133_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next_zfp_uint_to_int14(ADD,21)@4
    assign i_fpga_indvars_iv_next_zfp_uint_to_int14_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x_q};
    assign i_fpga_indvars_iv_next_zfp_uint_to_int14_b = {1'b0, c_i3_133_q};
    assign i_fpga_indvars_iv_next_zfp_uint_to_int14_o = $unsigned(i_fpga_indvars_iv_next_zfp_uint_to_int14_a) + $unsigned(i_fpga_indvars_iv_next_zfp_uint_to_int14_b);
    assign i_fpga_indvars_iv_next_zfp_uint_to_int14_q = i_fpga_indvars_iv_next_zfp_uint_to_int14_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next_zfp_uint_to_int14_sel_x(BITSELECT,32)@4
    assign bgTrunc_i_fpga_indvars_iv_next_zfp_uint_to_int14_sel_x_b = i_fpga_indvars_iv_next_zfp_uint_to_int14_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_element_extension2_x(BITJOIN,47)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_element_extension2_x_q = {i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_c_i5_03_x_q, bgTrunc_i_fpga_indvars_iv_next_zfp_uint_to_int14_sel_x_b};

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x(LOGICAL,43)@1
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg8(REG,61)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2(DELAY,69)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q);
            redist2_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q <= redist2_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg7(REG,60)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist0_sync_together38_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x(FIFODELAY,48)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_stall = ~ (valid_fanout_reg8_q & i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q);
    assign i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_valid = valid_fanout_reg7_q & redist2_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_data = i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_element_extension2_x_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_valid[0];
    assign i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x (
        .i_valid(i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x(BITSELECT,50)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int1_x_o_data[2:0];

    // i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x(MUX,38)@4
    assign i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x_s = redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x_s or i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b or c_i3_231_q)
    begin
        unique case (i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x_q = i_llvm_fpga_push_i3_fpga_indvars_iv_push8_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x_q = c_i3_231_q;
            default : i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x_q = 3'b0;
        endcase
    end

    // i_exitcond_zfp_uint_to_int10_cmp_nsign(LOGICAL,66)@4
    assign i_exitcond_zfp_uint_to_int10_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop8_zfp_uint_to_int9_mux_x_q[2:2]));

    // i_llvm_fpga_push_i1_notexitcond13_zfp_uint_to_int13(BLACKBOX,25)@4
    // in in_empty_in@20000000
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    zfp_uint_to_int_i_llvm_fpga_push_i1_notexitcond13_0 thei_llvm_fpga_push_i1_notexitcond13_zfp_uint_to_int13 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_zfp_uint_to_int10_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond13_zfp_uint_to_int13_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond13_zfp_uint_to_int13_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2(BLACKBOX,22)@0
    // in in_stall_in@20000000
    zfp_uint_to_int_i_llvm_fpga_dummy_thread0001mmy_zfp_uint_to_int0 thei_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4(DELAY,71)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out);
            redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_1 <= redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_0;
            redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_2 <= redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_1;
            redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_q <= redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3(BLACKBOX,23)@0
    // in in_stall_in@20000000
    zfp_uint_to_int_i_llvm_fpga_forked_b3_forked_zfp_uint_to_int0 thei_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4(DELAY,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out);
            redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_delay_1 <= redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_delay_0;
            redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_delay_2 <= redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_delay_1;
            redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_q <= redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6(BLACKBOX,24)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_uint_to_int_i_llvm_fpga_pipeline_keep_going12_0 thei_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6 (
        .in_data_in(redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_q),
        .in_dummy_in(redist4_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b3_dummy_zfp_uint_to_int2_out_dummy_out_4_q),
        .in_forked_in(redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond13_zfp_uint_to_int13_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond13_zfp_uint_to_int13_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,30)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,34)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,35)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,36)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_pipeline_valid_out;

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x(CONSTANT,40)
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_zfp_uint_to_int_b3_next_iter_isreal_zfp_uint_to_int7(LOGICAL,28)@4
    assign i_zfp_uint_to_int_b3_next_iter_isreal_zfp_uint_to_int7_q = i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x_q & i_llvm_fpga_pipeline_keep_going12_zfp_uint_to_int6_out_data_out;

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x(BITJOIN,41)@4
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q = {i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x_q, i_zfp_uint_to_int_b3_next_iter_isreal_zfp_uint_to_int7_q};

    // valid_fanout_reg4(REG,57)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,56)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist0_sync_together38_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x(FIFODELAY,42)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid = valid_fanout_reg3_q & redist2_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_data = i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x (
        .i_valid(i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x(BITSELECT,44)@4
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x(MUX,37)@4
    assign i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x_s = redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x_s or i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x_q = i_llvm_fpga_push_i1_zfp_uint_to_int_b3_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x_q = 1'b0;
        endcase
    end

    // i_zfp_uint_to_int_b3_current_iter_isspec_zfp_uint_to_int5(LOGICAL,27)@4
    assign i_zfp_uint_to_int_b3_current_iter_isspec_zfp_uint_to_int5_q = i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b3_current_iter_isreal_zfp_uint_to_int4_mux_x_q ^ VCC_q;

    // valid_fanout_reg0(REG,53)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together38_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_notcmp10_zfp_uint_to_int12(LOGICAL,26)@4
    assign i_notcmp10_zfp_uint_to_int12_q = i_exitcond_zfp_uint_to_int10_cmp_nsign_q ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,51)@4
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = i_exitcond_zfp_uint_to_int10_cmp_nsign_q;
    assign out_c0_exi3_2_tpl = i_notcmp10_zfp_uint_to_int12_q;
    assign out_c0_exi3_3_tpl = redist3_i_llvm_fpga_forked_zfp_uint_to_int_b3_forked_zfp_uint_to_int3_out_buffer_out_4_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_zfp_uint_to_int_B3_current_iter_isspec = i_zfp_uint_to_int_b3_current_iter_isspec_zfp_uint_to_int5_q;

endmodule
