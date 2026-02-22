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

// SystemVerilog created from i_sfc_logic_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0
// Created for function/kernel zfp_uint_to_int
// SystemVerilog created on Fri Feb 13 18:08:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_uint_to_int_i_sfc_logic_s_c0_in_wt_e0000er1_zfp_uint_to_int0 (
    output wire [0:0] out_exiting_valid_out,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi1_0_tpl,
    output wire [0:0] out_c0_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_zfp_uint_to_int_B1_start_current_iter_isspec,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_dummy_thread_zfp_uint_to_int_b1_start_dummy_zfp_uint_to_int1_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_feedback_valid_out_7;
    wire [0:0] i_zfp_uint_to_int_b1_start_current_iter_isspec_zfp_uint_to_int4_q;
    wire [0:0] i_zfp_uint_to_int_b1_start_next_iter_isreal_zfp_uint_to_int6_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid;
    wire i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall;
    wire i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    reg [0:0] redist0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q;
    reg [0:0] redist0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist1_sync_together25_in_i_valid_2_q;
    reg [0:0] redist1_sync_together25_in_i_valid_2_delay_0;
    reg [0:0] redist2_sync_together25_in_i_valid_3_q;
    reg [0:0] redist3_i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out_3_q;
    reg [0:0] redist3_i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out_3_delay_0;
    reg [0:0] redist3_i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out_3_delay_1;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out_3_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out_3_delay_0;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out_3_delay_1;
    reg [0:0] redist5_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_1_q;
    reg [0:0] redist6_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_4_q;
    reg [0:0] redist6_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_4_delay_0;
    reg [0:0] redist6_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_4_delay_1;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b1_start_dummy_zfp_uint_to_int1_out_dummy_out_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg2(REG,35)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg5(REG,38)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8(BLACKBOX,16)@1
    // in in_empty_in@20000000
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    zfp_uint_to_int_i_llvm_fpga_push_i1_notexitcond17_0 thei_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8 (
        .in_almost_empty_in(GND_q),
        .in_data_in(VCC_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_zfp_uint_to_int_b1_start_dummy_zfp_uint_to_int1(BLACKBOX,13)@0
    // in in_stall_in@20000000
    zfp_uint_to_int_i_llvm_fpga_dummy_thread0000mmy_zfp_uint_to_int0 thei_llvm_fpga_dummy_thread_zfp_uint_to_int_b1_start_dummy_zfp_uint_to_int1 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_zfp_uint_to_int_b1_start_dummy_zfp_uint_to_int1_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b1_start_dummy_zfp_uint_to_int1_out_dummy_out_1(DELAY,47)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b1_start_dummy_zfp_uint_to_int1_out_dummy_out_1_q <= $unsigned(i_llvm_fpga_dummy_thread_zfp_uint_to_int_b1_start_dummy_zfp_uint_to_int1_out_dummy_out);
        end
    end

    // i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2(BLACKBOX,14)@0
    // in in_stall_in@20000000
    zfp_uint_to_int_i_llvm_fpga_forked_b1_st0000ked_zfp_uint_to_int0 thei_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_1(DELAY,45)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_1_q <= $unsigned(i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out);
        end
    end

    // i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5(BLACKBOX,15)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_uint_to_int_i_llvm_fpga_pipeline_keep_going16_0 thei_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5 (
        .in_data_in(redist5_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_1_q),
        .in_dummy_in(redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b1_start_dummy_zfp_uint_to_int1_out_dummy_out_1_q),
        .in_forked_in(redist5_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_1_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_feedback_valid_out_7),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,19)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,22)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,23)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,24)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_pipeline_valid_out;

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x(CONSTANT,27)
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x_q = $unsigned(7'b0000000);

    // redist4_i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out_3(DELAY,44)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out);
            redist4_i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out_3_delay_1 <= redist4_i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out_3_delay_0;
            redist4_i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out_3_q <= redist4_i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out_3_delay_1;
        end
    end

    // i_zfp_uint_to_int_b1_start_next_iter_isreal_zfp_uint_to_int6(LOGICAL,18)@4
    assign i_zfp_uint_to_int_b1_start_next_iter_isreal_zfp_uint_to_int6_q = i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x_q & redist4_i_llvm_fpga_pipeline_keep_going16_zfp_uint_to_int5_out_data_out_3_q;

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x(BITJOIN,28)@4
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q = {i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x_q, i_zfp_uint_to_int_b1_start_next_iter_isreal_zfp_uint_to_int6_q};

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x(LOGICAL,30)@1
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,37)@0 + 1
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

    // redist0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2(DELAY,40)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q);
            redist0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q <= redist0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_delay_0;
        end
    end

    // redist1_sync_together25_in_i_valid_2(DELAY,41)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together25_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together25_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together25_in_i_valid_2_q <= redist1_sync_together25_in_i_valid_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,36)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together25_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x(FIFODELAY,29)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid = valid_fanout_reg3_q & redist0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_data = i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x (
        .i_valid(i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x(BITSELECT,31)@4
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int1_x_o_data[0:0];

    // redist6_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_4(DELAY,46)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_4_delay_0 <= $unsigned(redist5_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_1_q);
            redist6_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_4_delay_1 <= redist6_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_4_delay_0;
            redist6_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_4_q <= redist6_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_4_delay_1;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x(MUX,25)@4
    assign i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x_s = redist6_i_llvm_fpga_forked_zfp_uint_to_int_b1_start_forked_zfp_uint_to_int2_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x_s or i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x_q = i_llvm_fpga_push_i1_zfp_uint_to_int_b1_start_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x_q = 1'b0;
        endcase
    end

    // i_zfp_uint_to_int_b1_start_current_iter_isspec_zfp_uint_to_int4(LOGICAL,17)@4
    assign i_zfp_uint_to_int_b1_start_current_iter_isspec_zfp_uint_to_int4_q = i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b1_start_current_iter_isreal_zfp_uint_to_int3_mux_x_q ^ VCC_q;

    // redist2_sync_together25_in_i_valid_3(DELAY,42)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together25_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together25_in_i_valid_3_q <= $unsigned(redist1_sync_together25_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg0(REG,33)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together25_in_i_valid_3_q);
        end
    end

    // redist3_i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out_3(DELAY,43)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out);
            redist3_i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out_3_delay_1 <= redist3_i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out_3_delay_0;
            redist3_i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out_3_q <= redist3_i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out_3_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,32)@4
    assign out_c0_exi1_0_tpl = GND_q;
    assign out_c0_exi1_1_tpl = redist3_i_llvm_fpga_push_i1_notexitcond17_zfp_uint_to_int8_out_data_out_3_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_zfp_uint_to_int_B1_start_current_iter_isspec = i_zfp_uint_to_int_b1_start_current_iter_isspec_zfp_uint_to_int4_q;

endmodule
