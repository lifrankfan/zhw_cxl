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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body_zfp_1d_1blocks_c1_enter_zfp_1d_1block0
// Created for function/kernel zfp_1d_1block
// SystemVerilog created on Tue Feb  3 21:17:23 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_1block_i_sfc_logic_s_c1_in_for_bo0000enter_zfp_1d_1block0 (
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_1block15_0_tpl,
    output wire [0:0] out_unnamed_zfp_1d_1block9,
    input wire [0:0] in_c1_eni3_0_tpl,
    input wire [0:0] in_c1_eni3_1_tpl,
    input wire [63:0] in_c1_eni3_2_tpl,
    input wire [0:0] in_c1_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_054_q;
    wire [31:0] c_i32_157_q;
    wire [63:0] c_i64_undef58_q;
    wire [32:0] i_inc_zfp_1d_1block19_a;
    wire [32:0] i_inc_zfp_1d_1block19_b;
    logic [32:0] i_inc_zfp_1d_1block19_o;
    wire [32:0] i_inc_zfp_1d_1block19_q;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block11_zfp_1d_1block25_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block12_zfp_1d_1block26_out_intel_reserved_ffwd_5_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block13_zfp_1d_1block27_out_intel_reserved_ffwd_6_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block14_zfp_1d_1block28_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_spec_select21_zfp_1d_1block16_s;
    reg [63:0] i_spec_select21_zfp_1d_1block16_q;
    wire [0:0] i_spec_select22_zfp_1d_1block18_s;
    reg [63:0] i_spec_select22_zfp_1d_1block18_q;
    wire [0:0] i_spec_select_zfp_1d_1block12_s;
    reg [63:0] i_spec_select_zfp_1d_1block12_q;
    wire [0:0] i_unnamed_zfp_1d_1block14_s;
    reg [63:0] i_unnamed_zfp_1d_1block14_q;
    wire [0:0] i_unnamed_zfp_1d_1block3_qi;
    reg [0:0] i_unnamed_zfp_1d_1block3_q;
    wire [0:0] i_unnamed_zfp_1d_1block5_qi;
    reg [0:0] i_unnamed_zfp_1d_1block5_q;
    wire [0:0] i_unnamed_zfp_1d_1block7_qi;
    reg [0:0] i_unnamed_zfp_1d_1block7_q;
    wire [0:0] i_unnamed_zfp_1d_1block9_qi;
    reg [0:0] i_unnamed_zfp_1d_1block9_q;
    wire [31:0] bgTrunc_i_inc_zfp_1d_1block19_sel_x_b;
    wire [31:0] c_i32_256_recast_x_q;
    wire [31:0] c_i32_355_recast_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x_q;
    wire [0:0] i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_valid;
    wire i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_stall;
    wire i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_valid;
    wire i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_stall;
    wire i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_valid;
    wire i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_stall;
    wire i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_valid;
    wire i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_stall;
    wire i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    reg [0:0] redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_q;
    reg [0:0] redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_delay_0;
    reg [0:0] redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_delay_1;
    reg [0:0] redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_delay_2;
    reg [0:0] redist1_sync_together59_aunroll_x_in_c1_eni3_1_tpl_5_q;
    reg [63:0] redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_q;
    reg [63:0] redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_delay_0;
    reg [63:0] redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_delay_1;
    reg [0:0] redist3_sync_together59_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_sync_together59_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist5_sync_together59_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist6_sync_together59_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist7_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_1_q;
    reg [0:0] redist8_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_2_q;
    reg [0:0] redist9_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_3_q;
    reg [63:0] redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_inputreg0_q;
    reg [63:0] redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together59_aunroll_x_in_i_valid_1(DELAY,103)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together59_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together59_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist4_sync_together59_aunroll_x_in_i_valid_2(DELAY,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together59_aunroll_x_in_i_valid_2_q <= $unsigned(redist3_sync_together59_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_sync_together59_aunroll_x_in_i_valid_3(DELAY,105)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_together59_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist5_sync_together59_aunroll_x_in_i_valid_3_q <= $unsigned(redist4_sync_together59_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist6_sync_together59_aunroll_x_in_i_valid_4(DELAY,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together59_aunroll_x_in_i_valid_4_q <= $unsigned(redist5_sync_together59_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg16(REG,95)@63 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist6_sync_together59_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_inputreg0(DELAY,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_inputreg0_q <= $unsigned(in_c1_eni3_2_tpl);
        end
    end

    // redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5(DELAY,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_delay_0 <= $unsigned(redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_inputreg0_q);
            redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_delay_1 <= redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_delay_0;
            redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_q <= redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_delay_1;
        end
    end

    // redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0(DELAY,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0_q <= $unsigned(redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_q);
        end
    end

    // c_i64_undef58(CONSTANT,29)
    assign c_i64_undef58_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x(LOGICAL,63)@60
    assign i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q = ~ (GND_q);

    // redist7_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_1(DELAY,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_1_q <= $unsigned(i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q);
        end
    end

    // valid_fanout_reg9(REG,88)@60 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together59_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist8_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_2(DELAY,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_2_q <= $unsigned(redist7_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_1_q);
        end
    end

    // redist9_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_3(DELAY,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_3_q <= $unsigned(redist8_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg8(REG,87)@62 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist5_sync_together59_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x(FIFODELAY,65)@61 + 1
    // in i_valid@63
    // in i_write_pred@63
    // in i_data@64
    // out o_data@64
    assign i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_stall = ~ (valid_fanout_reg9_q & redist7_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_valid = valid_fanout_reg8_q & redist9_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_data = i_spec_select_zfp_1d_1block12_q;
    assign i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
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
    ) thei_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x (
        .i_valid(i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_i_stall_bitsignaltemp),
        .i_data(i_spec_select_zfp_1d_1block12_q),
        .o_data(i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4(DELAY,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_delay_0 <= $unsigned(in_c1_eni3_1_tpl);
            redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_delay_1 <= redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_delay_0;
            redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_delay_2 <= redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_delay_1;
            redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_q <= redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_delay_2;
        end
    end

    // redist1_sync_together59_aunroll_x_in_c1_eni3_1_tpl_5(DELAY,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together59_aunroll_x_in_c1_eni3_1_tpl_5_q <= $unsigned(redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_q);
        end
    end

    // i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x(MUX,58)@64
    assign i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x_s = redist1_sync_together59_aunroll_x_in_c1_eni3_1_tpl_5_q;
    always @(i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x_s or i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_o_data or c_i64_undef58_q)
    begin
        unique case (i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x_q = i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_0_0_push12_zfp_1d_1block1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x_q = c_i64_undef58_q;
            default : i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x_q = 64'b0;
        endcase
    end

    // c_i32_054(CONSTANT,27)
    assign c_i32_054_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_157(CONSTANT,28)
    assign c_i32_157_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_zfp_1d_1block19(ADD,30)@63
    assign i_inc_zfp_1d_1block19_a = {1'b0, i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_q};
    assign i_inc_zfp_1d_1block19_b = {1'b0, c_i32_157_q};
    assign i_inc_zfp_1d_1block19_o = $unsigned(i_inc_zfp_1d_1block19_a) + $unsigned(i_inc_zfp_1d_1block19_b);
    assign i_inc_zfp_1d_1block19_q = i_inc_zfp_1d_1block19_o[32:0];

    // bgTrunc_i_inc_zfp_1d_1block19_sel_x(BITSELECT,49)@63
    assign bgTrunc_i_inc_zfp_1d_1block19_sel_x_b = i_inc_zfp_1d_1block19_q[31:0];

    // valid_fanout_reg7(REG,86)@59 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,85)@61 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist4_sync_together59_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x(FIFODELAY,62)@60 + 1
    // in i_valid@62
    // in i_write_pred@62
    // in i_data@63
    // out o_data@63
    assign i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_stall = ~ (valid_fanout_reg7_q & i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_valid = valid_fanout_reg6_q & redist8_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_data = bgTrunc_i_inc_zfp_1d_1block19_sel_x_b;
    assign i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x (
        .i_valid(i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_zfp_1d_1block19_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x(MUX,57)@63
    assign i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_s = redist0_sync_together59_aunroll_x_in_c1_eni3_1_tpl_4_q;
    always @(i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_s or i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_o_data or c_i32_054_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_q = i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_q = c_i32_054_q;
            default : i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_q = 32'b0;
        endcase
    end

    // i_unnamed_zfp_1d_1block9(LOGICAL,42)@63 + 1
    assign i_unnamed_zfp_1d_1block9_qi = $unsigned(i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_q == c_i32_054_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_1block9_delay ( .xin(i_unnamed_zfp_1d_1block9_qi), .xout(i_unnamed_zfp_1d_1block9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select_zfp_1d_1block12(MUX,37)@64
    assign i_spec_select_zfp_1d_1block12_s = i_unnamed_zfp_1d_1block9_q;
    always @(i_spec_select_zfp_1d_1block12_s or i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x_q or redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0_q)
    begin
        unique case (i_spec_select_zfp_1d_1block12_s)
            1'b0 : i_spec_select_zfp_1d_1block12_q = i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_0_0_pop12_zfp_1d_1block11_mux_x_q;
            1'b1 : i_spec_select_zfp_1d_1block12_q = redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0_q;
            default : i_spec_select_zfp_1d_1block12_q = 64'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block11_zfp_1d_1block25(BLACKBOX,31)@64
    // out out_intel_reserved_ffwd_4_0@20000000
    zfp_1d_1block_i_llvm_fpga_ffwd_source_i60000ed_11_zfp_1d_1block0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block11_zfp_1d_1block25 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_spec_select_zfp_1d_1block12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block11_zfp_1d_1block25_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,47)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block11_zfp_1d_1block25_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg17(REG,96)@63 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist6_sync_together59_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg11(REG,90)@60 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist3_sync_together59_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg10(REG,89)@62 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together59_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x(FIFODELAY,71)@61 + 1
    // in i_valid@63
    // in i_write_pred@63
    // in i_data@64
    // out o_data@64
    assign i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_stall = ~ (valid_fanout_reg11_q & redist7_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_valid = valid_fanout_reg10_q & redist9_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_data = i_unnamed_zfp_1d_1block14_q;
    assign i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
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
    ) thei_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x (
        .i_valid(i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_i_stall_bitsignaltemp),
        .i_data(i_unnamed_zfp_1d_1block14_q),
        .o_data(i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x(MUX,60)@64
    assign i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x_s = redist1_sync_together59_aunroll_x_in_c1_eni3_1_tpl_5_q;
    always @(i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x_s or i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_o_data or c_i64_undef58_q)
    begin
        unique case (i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x_q = i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_5_0_push11_zfp_1d_1block1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x_q = c_i64_undef58_q;
            default : i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x_q = 64'b0;
        endcase
    end

    // i_unnamed_zfp_1d_1block7(LOGICAL,41)@63 + 1
    assign i_unnamed_zfp_1d_1block7_qi = $unsigned(i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_q == c_i32_157_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_1block7_delay ( .xin(i_unnamed_zfp_1d_1block7_qi), .xout(i_unnamed_zfp_1d_1block7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_zfp_1d_1block14(MUX,38)@64
    assign i_unnamed_zfp_1d_1block14_s = i_unnamed_zfp_1d_1block7_q;
    always @(i_unnamed_zfp_1d_1block14_s or i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x_q or redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0_q)
    begin
        unique case (i_unnamed_zfp_1d_1block14_s)
            1'b0 : i_unnamed_zfp_1d_1block14_q = i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_5_0_pop11_zfp_1d_1block13_mux_x_q;
            1'b1 : i_unnamed_zfp_1d_1block14_q = redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0_q;
            default : i_unnamed_zfp_1d_1block14_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block12_zfp_1d_1block26(BLACKBOX,32)@64
    // out out_intel_reserved_ffwd_5_0@20000000
    zfp_1d_1block_i_llvm_fpga_ffwd_source_i60000ed_12_zfp_1d_1block0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block12_zfp_1d_1block26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(i_unnamed_zfp_1d_1block14_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block12_zfp_1d_1block26_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,54)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block12_zfp_1d_1block26_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg18(REG,97)@63 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist6_sync_together59_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg13(REG,92)@60 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist3_sync_together59_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg12(REG,91)@62 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist5_sync_together59_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x(FIFODELAY,74)@61 + 1
    // in i_valid@63
    // in i_write_pred@63
    // in i_data@64
    // out o_data@64
    assign i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_stall = ~ (valid_fanout_reg13_q & redist7_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_valid = valid_fanout_reg12_q & redist9_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_data = i_spec_select21_zfp_1d_1block16_q;
    assign i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
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
    ) thei_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x (
        .i_valid(i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_i_stall_bitsignaltemp),
        .i_data(i_spec_select21_zfp_1d_1block16_q),
        .o_data(i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x(MUX,61)@64
    assign i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x_s = redist1_sync_together59_aunroll_x_in_c1_eni3_1_tpl_5_q;
    always @(i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x_s or i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_o_data or c_i64_undef58_q)
    begin
        unique case (i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x_q = i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_9_0_push10_zfp_1d_1block1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x_q = c_i64_undef58_q;
            default : i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x_q = 64'b0;
        endcase
    end

    // c_i32_256_recast_x(CONSTANT,52)
    assign c_i32_256_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_zfp_1d_1block5(LOGICAL,40)@63 + 1
    assign i_unnamed_zfp_1d_1block5_qi = $unsigned(i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_q == c_i32_256_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_1block5_delay ( .xin(i_unnamed_zfp_1d_1block5_qi), .xout(i_unnamed_zfp_1d_1block5_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select21_zfp_1d_1block16(MUX,35)@64
    assign i_spec_select21_zfp_1d_1block16_s = i_unnamed_zfp_1d_1block5_q;
    always @(i_spec_select21_zfp_1d_1block16_s or i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x_q or redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0_q)
    begin
        unique case (i_spec_select21_zfp_1d_1block16_s)
            1'b0 : i_spec_select21_zfp_1d_1block16_q = i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_9_0_pop10_zfp_1d_1block15_mux_x_q;
            1'b1 : i_spec_select21_zfp_1d_1block16_q = redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0_q;
            default : i_spec_select21_zfp_1d_1block16_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block13_zfp_1d_1block27(BLACKBOX,33)@64
    // out out_intel_reserved_ffwd_6_0@20000000
    zfp_1d_1block_i_llvm_fpga_ffwd_source_i60000ed_13_zfp_1d_1block0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block13_zfp_1d_1block27 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(i_spec_select21_zfp_1d_1block16_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block13_zfp_1d_1block27_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,55)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block13_zfp_1d_1block27_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg19(REG,98)@63 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist6_sync_together59_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg15(REG,94)@60 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist3_sync_together59_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,93)@62 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist5_sync_together59_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x(FIFODELAY,68)@61 + 1
    // in i_valid@63
    // in i_write_pred@63
    // in i_data@64
    // out o_data@64
    assign i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_stall = ~ (valid_fanout_reg15_q & redist7_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_valid = valid_fanout_reg14_q & redist9_i_llvm_fpga_push_i32_i_010_push13_zfp_1d_1block0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_data = i_spec_select22_zfp_1d_1block18_q;
    assign i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
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
    ) thei_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x (
        .i_valid(i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_i_stall_bitsignaltemp),
        .i_data(i_spec_select22_zfp_1d_1block18_q),
        .o_data(i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x(MUX,59)@64
    assign i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x_s = redist1_sync_together59_aunroll_x_in_c1_eni3_1_tpl_5_q;
    always @(i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x_s or i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_o_data or c_i64_undef58_q)
    begin
        unique case (i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x_q = i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block0_i_llvm_fpga_push_i64_block_sroa_13_0_push9_zfp_1d_1block1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x_q = c_i64_undef58_q;
            default : i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x_q = 64'b0;
        endcase
    end

    // c_i32_355_recast_x(CONSTANT,53)
    assign c_i32_355_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_zfp_1d_1block3(LOGICAL,39)@63 + 1
    assign i_unnamed_zfp_1d_1block3_qi = $unsigned(i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block0_i_llvm_fpga_pop_i32_i_010_pop13_zfp_1d_1block2_mux_x_q == c_i32_355_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_zfp_1d_1block3_delay ( .xin(i_unnamed_zfp_1d_1block3_qi), .xout(i_unnamed_zfp_1d_1block3_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select22_zfp_1d_1block18(MUX,36)@64
    assign i_spec_select22_zfp_1d_1block18_s = i_unnamed_zfp_1d_1block3_q;
    always @(i_spec_select22_zfp_1d_1block18_s or i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x_q or redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0_q)
    begin
        unique case (i_spec_select22_zfp_1d_1block18_s)
            1'b0 : i_spec_select22_zfp_1d_1block18_q = i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block0_i_llvm_fpga_pop_i64_block_sroa_13_0_pop9_zfp_1d_1block17_mux_x_q;
            1'b1 : i_spec_select22_zfp_1d_1block18_q = redist2_sync_together59_aunroll_x_in_c1_eni3_2_tpl_5_outputreg0_q;
            default : i_spec_select22_zfp_1d_1block18_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block14_zfp_1d_1block28(BLACKBOX,34)@64
    // out out_intel_reserved_ffwd_7_0@20000000
    zfp_1d_1block_i_llvm_fpga_ffwd_source_i60000ed_14_zfp_1d_1block0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block14_zfp_1d_1block28 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_spec_select22_zfp_1d_1block18_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block14_zfp_1d_1block28_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_1block14_zfp_1d_1block28_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg0(REG,79)@63 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together59_aunroll_x_in_i_valid_4_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,77)@64
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_1d_1block15_0_tpl = GND_q;
    assign out_unnamed_zfp_1d_1block9 = GND_q;

endmodule
