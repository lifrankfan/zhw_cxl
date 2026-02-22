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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body5_zfp_uint_to_ints_c0_enter273_zfp_uint_to_int0
// Created for function/kernel zfp_uint_to_int
// SystemVerilog created on Fri Feb 13 18:08:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_uint_to_int_i_sfc_logic_s_c0_in_for_0000273_zfp_uint_to_int0 (
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_2_tpl,
    output wire [0:0] out_c0_exi331_0_tpl,
    output wire [63:0] out_c0_exi331_1_tpl,
    output wire [0:0] out_c0_exi331_2_tpl,
    output wire [0:0] out_c0_exi331_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_zfp_uint_to_int_B5_current_iter_isspec,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni126_0_tpl,
    input wire [0:0] in_c0_eni126_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_043_q;
    wire [31:0] c_i32_144_q;
    wire [31:0] c_i32_245_q;
    wire [31:0] c_i32_346_q;
    wire [2:0] c_i3_149_q;
    wire [2:0] c_i3_247_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [3:0] i_fpga_indvars_iv_next4_zfp_uint_to_int20_a;
    wire [3:0] i_fpga_indvars_iv_next4_zfp_uint_to_int20_b;
    logic [3:0] i_fpga_indvars_iv_next4_zfp_uint_to_int20_o;
    wire [3:0] i_fpga_indvars_iv_next4_zfp_uint_to_int20_q;
    wire [32:0] i_inc9_zfp_uint_to_int13_a;
    wire [32:0] i_inc9_zfp_uint_to_int13_b;
    logic [32:0] i_inc9_zfp_uint_to_int13_o;
    wire [32:0] i_inc9_zfp_uint_to_int13_q;
    reg [63:0] i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_stmt_zfp_uint_to_int12_q;
    wire [0:0] i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_spec_select7_zfp_uint_to_int10_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_zfp_uint_to_int19_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_zfp_uint_to_int19_out_feedback_valid_out_3;
    wire [0:0] i_notcmp_zfp_uint_to_int18_q;
    wire [0:0] i_zfp_uint_to_int_b5_current_iter_isspec_zfp_uint_to_int5_q;
    wire [0:0] i_zfp_uint_to_int_b5_next_iter_isreal_zfp_uint_to_int7_q;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next4_zfp_uint_to_int20_sel_x_b;
    wire [31:0] bgTrunc_i_inc9_zfp_uint_to_int13_sel_x_b;
    wire [0:0] dupName_0_comparator_x_qi;
    reg [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_qi;
    reg [0:0] dupName_1_comparator_x_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_0_tpl;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_2_tpl;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x_s;
    reg [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid;
    wire i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall;
    wire i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_valid;
    wire i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_stall;
    wire i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_c_i5_03_x_q;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_valid;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_stall;
    wire i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_o_data;
    wire [2:0] i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    wire [0:0] i_exitcond5_zfp_uint_to_int15_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond5_zfp_uint_to_int15_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together57_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist1_sync_together57_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist2_sync_together57_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together57_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist4_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q;
    reg [0:0] redist4_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist5_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_q_1_q;
    reg [0:0] redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_q;
    reg [0:0] redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_delay_0;
    reg [0:0] redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_delay_1;
    reg [0:0] redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_delay_2;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_q;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_0;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_1;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together57_aunroll_x_in_i_valid_2(DELAY,99)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together57_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together57_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together57_aunroll_x_in_i_valid_2_q <= redist1_sync_together57_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist2_sync_together57_aunroll_x_in_i_valid_3(DELAY,100)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together57_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together57_aunroll_x_in_i_valid_3_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,80)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together57_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg11(REG,89)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist2_sync_together57_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i3_247(CONSTANT,30)
    assign c_i3_247_q = $unsigned(3'b010);

    // i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_c_i5_03_x(CONSTANT,70)
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_c_i5_03_x_q = $unsigned(5'b00000);

    // c_i3_149(CONSTANT,29)
    assign c_i3_149_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next4_zfp_uint_to_int20(ADD,33)@4
    assign i_fpga_indvars_iv_next4_zfp_uint_to_int20_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x_q};
    assign i_fpga_indvars_iv_next4_zfp_uint_to_int20_b = {1'b0, c_i3_149_q};
    assign i_fpga_indvars_iv_next4_zfp_uint_to_int20_o = $unsigned(i_fpga_indvars_iv_next4_zfp_uint_to_int20_a) + $unsigned(i_fpga_indvars_iv_next4_zfp_uint_to_int20_b);
    assign i_fpga_indvars_iv_next4_zfp_uint_to_int20_q = i_fpga_indvars_iv_next4_zfp_uint_to_int20_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next4_zfp_uint_to_int20_sel_x(BITSELECT,48)@4
    assign bgTrunc_i_fpga_indvars_iv_next4_zfp_uint_to_int20_sel_x_b = i_fpga_indvars_iv_next4_zfp_uint_to_int20_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_element_extension2_x(BITJOIN,71)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_element_extension2_x_q = {i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_c_i5_03_x_q, bgTrunc_i_fpga_indvars_iv_next4_zfp_uint_to_int20_sel_x_b};

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x(LOGICAL,64)@1
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg13(REG,91)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // redist4_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2(DELAY,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q);
            redist4_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q <= redist4_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg12(REG,90)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x(FIFODELAY,72)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q);
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_valid = valid_fanout_reg12_q & redist4_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_data = i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_element_extension2_x_q;
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_valid[0];
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x (
        .i_valid(i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x(BITSELECT,74)@4
    assign i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int1_x_o_data[2:0];

    // i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x(MUX,59)@4
    assign i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x_s = redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x_s or i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b or c_i3_247_q)
    begin
        unique case (i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x_q = i_llvm_fpga_push_i3_fpga_indvars_iv3_push14_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x_q = c_i3_247_q;
            default : i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x_q = 3'b0;
        endcase
    end

    // i_exitcond5_zfp_uint_to_int15_cmp_nsign(LOGICAL,97)@4
    assign i_exitcond5_zfp_uint_to_int15_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int0_i_llvm_fpga_pop_i3_fpga_indvars_iv3_pop14_zfp_uint_to_int14_mux_x_q[2:2]));

    // i_llvm_fpga_push_i1_notexitcond_zfp_uint_to_int19(BLACKBOX,40)@4
    // in in_empty_in@20000000
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    zfp_uint_to_int_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_zfp_uint_to_int19 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond5_zfp_uint_to_int15_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_zfp_uint_to_int19_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_zfp_uint_to_int19_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2(BLACKBOX,36)@0
    // in in_stall_in@20000000
    zfp_uint_to_int_i_llvm_fpga_dummy_thread0002mmy_zfp_uint_to_int0 thei_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4(DELAY,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out);
            redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_1 <= redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_0;
            redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_2 <= redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_1;
            redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_q <= redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3(BLACKBOX,38)@0
    // in in_stall_in@20000000
    zfp_uint_to_int_i_llvm_fpga_forked_b5_forked_zfp_uint_to_int0 thei_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4(DELAY,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out);
            redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_delay_1 <= redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_delay_0;
            redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_delay_2 <= redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_delay_1;
            redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_q <= redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6(BLACKBOX,39)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    zfp_uint_to_int_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6 (
        .in_data_in(redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_q),
        .in_dummy_in(redist7_i_llvm_fpga_dummy_thread_zfp_uint_to_int_b5_dummy_zfp_uint_to_int2_out_dummy_out_4_q),
        .in_forked_in(redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_zfp_uint_to_int19_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_zfp_uint_to_int19_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,46)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,52)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,54)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,55)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_pipeline_valid_out;

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x(CONSTANT,61)
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_zfp_uint_to_int_b5_next_iter_isreal_zfp_uint_to_int7(LOGICAL,43)@4
    assign i_zfp_uint_to_int_b5_next_iter_isreal_zfp_uint_to_int7_q = i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_q & i_llvm_fpga_pipeline_keep_going_zfp_uint_to_int6_out_data_out;

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x(BITJOIN,62)@4
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q = {i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_c_i7_03_x_q, i_zfp_uint_to_int_b5_next_iter_isreal_zfp_uint_to_int7_q};

    // valid_fanout_reg4(REG,82)@0 + 1
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

    // valid_fanout_reg3(REG,81)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x(FIFODELAY,63)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid = valid_fanout_reg3_q & redist4_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_data = i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x (
        .i_valid(i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x(BITSELECT,65)@4
    assign i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x(MUX,57)@4
    assign i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_s = redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_s or i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_q = i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_q = 1'b0;
        endcase
    end

    // redist5_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_q_1(DELAY,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_q);
        end
    end

    // i_zfp_uint_to_int_b5_current_iter_isspec_zfp_uint_to_int5(LOGICAL,42)@5
    assign i_zfp_uint_to_int_b5_current_iter_isspec_zfp_uint_to_int5_q = redist5_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int0_i_llvm_fpga_pop_coalesce_i1_zfp_uint_to_int_b5_current_iter_isreal_zfp_uint_to_int4_mux_x_q_1_q ^ VCC_q;

    // redist3_sync_together57_aunroll_x_in_i_valid_4(DELAY,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together57_aunroll_x_in_i_valid_4_q <= $unsigned(redist2_sync_together57_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,78)@4 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together57_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_notcmp_zfp_uint_to_int18(LOGICAL,41)@5
    assign i_notcmp_zfp_uint_to_int18_q = redist0_i_exitcond5_zfp_uint_to_int15_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond5_zfp_uint_to_int15_cmp_nsign_q_1(DELAY,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond5_zfp_uint_to_int15_cmp_nsign_q_1_q <= $unsigned(i_exitcond5_zfp_uint_to_int15_cmp_nsign_q);
        end
    end

    // valid_fanout_reg6(REG,84)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together57_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_spec_select7_zfp_uint_to_int10(BLACKBOX,37)@5
    zfp_uint_to_int_i_llvm_fpga_ffwd_dest_i64_spec_select7_0 thei_llvm_fpga_ffwd_dest_i64_spec_select7_zfp_uint_to_int10 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i64_spec_select7_zfp_uint_to_int10_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_346(CONSTANT,28)
    assign c_i32_346_q = $unsigned(32'b00000000000000000000000000000011);

    // c_i32_043(CONSTANT,25)
    assign c_i32_043_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_144(CONSTANT,26)
    assign c_i32_144_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc9_zfp_uint_to_int13(ADD,34)@4
    assign i_inc9_zfp_uint_to_int13_a = {1'b0, i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_q};
    assign i_inc9_zfp_uint_to_int13_b = {1'b0, c_i32_144_q};
    assign i_inc9_zfp_uint_to_int13_o = $unsigned(i_inc9_zfp_uint_to_int13_a) + $unsigned(i_inc9_zfp_uint_to_int13_b);
    assign i_inc9_zfp_uint_to_int13_q = i_inc9_zfp_uint_to_int13_o[32:0];

    // bgTrunc_i_inc9_zfp_uint_to_int13_sel_x(BITSELECT,49)@4
    assign bgTrunc_i_inc9_zfp_uint_to_int13_sel_x_b = i_inc9_zfp_uint_to_int13_q[31:0];

    // valid_fanout_reg10(REG,88)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,87)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x(FIFODELAY,66)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_stall = ~ (valid_fanout_reg10_q & i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_valid = valid_fanout_reg9_q & redist4_i_llvm_fpga_push_i1_zfp_uint_to_int_b5_next_iter_isreal_push_zfp_uint_to_int0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_data = bgTrunc_i_inc9_zfp_uint_to_int13_sel_x_b;
    assign i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
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
    ) thei_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x (
        .i_valid(i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc9_zfp_uint_to_int13_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x(MUX,58)@4
    assign i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_s = redist6_i_llvm_fpga_forked_zfp_uint_to_int_b5_forked_zfp_uint_to_int3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_s or i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_o_data or c_i32_043_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_q = i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int0_i_llvm_fpga_push_i32_i1_09_push15_zfp_uint_to_int1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_q = c_i32_043_q;
            default : i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_q = 32'b0;
        endcase
    end

    // dupName_1_comparator_x(LOGICAL,53)@4 + 1
    assign dupName_1_comparator_x_qi = $unsigned(i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_q == c_i32_346_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_1_comparator_x_delay ( .xin(dupName_1_comparator_x_qi), .xout(dupName_1_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_245(CONSTANT,27)
    assign c_i32_245_q = $unsigned(32'b00000000000000000000000000000010);

    // dupName_0_comparator_x(LOGICAL,51)@4 + 1
    assign dupName_0_comparator_x_qi = $unsigned(i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_q == c_i32_245_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_0_comparator_x_delay ( .xin(dupName_0_comparator_x_qi), .xout(dupName_0_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,83)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist3_sync_together57_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x(BLACKBOX,56)@5
    zfp_uint_to_int_i_llvm_fpga_ffwd_dest_s_0000n26_zfp_uint_to_int0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_0_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .out_dest_data_out_0_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // comparator(LOGICAL,31)@4 + 1
    assign comparator_qi = $unsigned(i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int0_i_llvm_fpga_pop_i32_i1_09_pop15_zfp_uint_to_int11_mux_x_q == c_i32_144_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_stmt_zfp_uint_to_int12(SELECTOR,35)@5
    always @(comparator_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_0_tpl or dupName_0_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_1_tpl or dupName_1_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_2_tpl or i_llvm_fpga_ffwd_dest_i64_spec_select7_zfp_uint_to_int10_out_dest_data_out_1_0)
    begin
        i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_stmt_zfp_uint_to_int12_q = i_llvm_fpga_ffwd_dest_i64_spec_select7_zfp_uint_to_int10_out_dest_data_out_1_0;
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_stmt_zfp_uint_to_int12_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_2_tpl;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_stmt_zfp_uint_to_int12_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_1_tpl;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_stmt_zfp_uint_to_int12_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_assign26_zfp_uint_to_int9_aunroll_x_out_dest_data_out_0_0_0_tpl;
        end
    end

    // sync_out_aunroll_x(GPOUT,76)@5
    assign out_c0_exi331_0_tpl = GND_q;
    assign out_c0_exi331_1_tpl = i_llvm_fpga_case_i64_i32_v3i32_s_case_assign_struct_zfp_uint_to_int_fpgaunique_0s_case_stmt_zfp_uint_to_int12_q;
    assign out_c0_exi331_2_tpl = redist0_i_exitcond5_zfp_uint_to_int15_cmp_nsign_q_1_q;
    assign out_c0_exi331_3_tpl = i_notcmp_zfp_uint_to_int18_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_zfp_uint_to_int_B5_current_iter_isspec = i_zfp_uint_to_int_b5_current_iter_isspec_zfp_uint_to_int5_q;

endmodule
