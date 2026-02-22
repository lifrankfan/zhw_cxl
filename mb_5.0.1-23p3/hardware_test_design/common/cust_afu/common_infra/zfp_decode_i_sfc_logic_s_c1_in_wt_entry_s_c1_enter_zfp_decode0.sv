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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_zfp_decodes_c1_enter_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_zfp_decode0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_decode0,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_09_q;
    wire [15:0] c_i16_110_q;
    wire [16:0] i_inc77_zfp_decode3_a;
    wire [16:0] i_inc77_zfp_decode3_b;
    logic [16:0] i_inc77_zfp_decode3_o;
    wire [16:0] i_inc77_zfp_decode3_q;
    wire [31:0] i_lim_ext_zfp_decode5_vt_join_q;
    wire [15:0] i_lim_ext_zfp_decode5_vt_select_15_b;
    wire [15:0] i_llvm_fpga_pop_i16_reorder_limiter_count_pop13_zfp_decode2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_reorder_limiter_count_pop13_zfp_decode2_out_feedback_stall_out_13;
    wire [15:0] i_llvm_fpga_push_i16_reorder_limiter_count_push13_zfp_decode4_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i16_reorder_limiter_count_push13_zfp_decode4_out_feedback_valid_out_13;
    wire [15:0] bgTrunc_i_inc77_zfp_decode3_sel_x_b;
    wire [31:0] i_lim_ext_zfp_decode5_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_sync_together15_aunroll_x_in_c1_eni1_1_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,19)@5 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // c_i16_09(CONSTANT,3)
    assign c_i16_09_q = $unsigned(16'b0000000000000000);

    // valid_fanout_reg1(REG,20)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,21)@5 + 1
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

    // c_i16_110(CONSTANT,4)
    assign c_i16_110_q = $unsigned(16'b0000000000000001);

    // i_inc77_zfp_decode3(ADD,7)@6
    assign i_inc77_zfp_decode3_a = {1'b0, i_llvm_fpga_pop_i16_reorder_limiter_count_pop13_zfp_decode2_out_data_out};
    assign i_inc77_zfp_decode3_b = {1'b0, c_i16_110_q};
    assign i_inc77_zfp_decode3_o = $unsigned(i_inc77_zfp_decode3_a) + $unsigned(i_inc77_zfp_decode3_b);
    assign i_inc77_zfp_decode3_q = i_inc77_zfp_decode3_o[16:0];

    // bgTrunc_i_inc77_zfp_decode3_sel_x(BITSELECT,15)@6
    assign bgTrunc_i_inc77_zfp_decode3_sel_x_b = i_inc77_zfp_decode3_q[15:0];

    // i_llvm_fpga_push_i16_reorder_limiter_count_push13_zfp_decode4(BLACKBOX,13)@6
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    zfp_decode_i_llvm_fpga_push_i16_reorder_limiter_count_push13_0 thei_llvm_fpga_push_i16_reorder_limiter_count_push13_zfp_decode4 (
        .in_data_in(bgTrunc_i_inc77_zfp_decode3_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i16_reorder_limiter_count_pop13_zfp_decode2_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i16_reorder_limiter_count_push13_zfp_decode4_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i16_reorder_limiter_count_push13_zfp_decode4_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together15_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,24)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together15_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i16_reorder_limiter_count_pop13_zfp_decode2(BLACKBOX,12)@6
    // out out_feedback_stall_out_13@20000000
    zfp_decode_i_llvm_fpga_pop_i16_reorder_limiter_count_pop13_0 thei_llvm_fpga_pop_i16_reorder_limiter_count_pop13_zfp_decode2 (
        .in_data_in(c_i16_09_q),
        .in_dir(redist0_sync_together15_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i16_reorder_limiter_count_push13_zfp_decode4_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i16_reorder_limiter_count_push13_zfp_decode4_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i16_reorder_limiter_count_pop13_zfp_decode2_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i16_reorder_limiter_count_pop13_zfp_decode2_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_lim_ext_zfp_decode5_sel_x(BITSELECT,16)@6
    assign i_lim_ext_zfp_decode5_sel_x_b = {16'b0000000000000000, i_llvm_fpga_pop_i16_reorder_limiter_count_pop13_zfp_decode2_out_data_out[15:0]};

    // i_lim_ext_zfp_decode5_vt_select_15(BITSELECT,11)@6
    assign i_lim_ext_zfp_decode5_vt_select_15_b = i_lim_ext_zfp_decode5_sel_x_b[15:0];

    // i_lim_ext_zfp_decode5_vt_join(BITJOIN,10)@6
    assign i_lim_ext_zfp_decode5_vt_join_q = {c_i16_09_q, i_lim_ext_zfp_decode5_vt_select_15_b};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,17)@6
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_lim_ext_zfp_decode5_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_decode0 = GND_q;

endmodule
