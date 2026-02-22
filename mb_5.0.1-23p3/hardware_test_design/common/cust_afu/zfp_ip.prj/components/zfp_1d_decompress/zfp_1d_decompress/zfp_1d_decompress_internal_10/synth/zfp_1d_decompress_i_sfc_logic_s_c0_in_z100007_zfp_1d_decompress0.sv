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

// SystemVerilog created from i_sfc_logic_s_c0_in_z12decode_blockr15bitstreamreaderpljji_exit_zfp_1d_decompresss_c0_enter137_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:04:26 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c0_in_z100007_zfp_1d_decompress0 (
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_10_0,
    input wire [0:0] in_i_valid,
    output wire [63:0] out_intel_reserved_ffwd_11_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress19_0_tpl,
    output wire [0:0] out_unnamed_zfp_1d_decompress7,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [64:0] i_add10_i_zfp_1d_decompress17_a;
    wire [64:0] i_add10_i_zfp_1d_decompress17_b;
    logic [64:0] i_add10_i_zfp_1d_decompress17_o;
    wire [64:0] i_add10_i_zfp_1d_decompress17_q;
    wire [64:0] i_add11_i_zfp_1d_decompress18_a;
    wire [64:0] i_add11_i_zfp_1d_decompress18_b;
    logic [64:0] i_add11_i_zfp_1d_decompress18_o;
    wire [64:0] i_add11_i_zfp_1d_decompress18_q;
    wire [64:0] i_add5_i_zfp_1d_decompress8_a;
    wire [64:0] i_add5_i_zfp_1d_decompress8_b;
    logic [64:0] i_add5_i_zfp_1d_decompress8_o;
    wire [64:0] i_add5_i_zfp_1d_decompress8_q;
    wire [64:0] i_add6_i_zfp_1d_decompress11_a;
    wire [64:0] i_add6_i_zfp_1d_decompress11_b;
    logic [64:0] i_add6_i_zfp_1d_decompress11_o;
    wire [64:0] i_add6_i_zfp_1d_decompress11_q;
    wire [64:0] i_add_i_zfp_1d_decompress4_a;
    wire [64:0] i_add_i_zfp_1d_decompress4_b;
    logic [64:0] i_add_i_zfp_1d_decompress4_o;
    wire [64:0] i_add_i_zfp_1d_decompress4_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_spec_select3123_zfp_1d_decompress14_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_spec_select3124_zfp_1d_decompress9_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_spec_select3225_zfp_1d_decompress10_out_dest_data_out_6_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_spec_select3326_zfp_1d_decompress1_out_dest_data_out_7_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_spec_select3327_zfp_1d_decompress6_out_dest_data_out_7_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_unnamed_zfp_1d_decompress14_zfp_1d_decompress3_out_dest_data_out_5_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress15_zfp_1d_decompress23_out_intel_reserved_ffwd_8_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress16_zfp_1d_decompress24_out_intel_reserved_ffwd_9_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress17_zfp_1d_decompress25_out_intel_reserved_ffwd_10_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress18_zfp_1d_decompress26_out_intel_reserved_ffwd_11_0;
    wire [63:0] i_shl12_i_zfp_1d_decompress19_vt_join_q;
    wire [62:0] i_shl12_i_zfp_1d_decompress19_vt_select_63_b;
    wire [63:0] i_shl14_i_zfp_1d_decompress21_vt_join_q;
    wire [62:0] i_shl14_i_zfp_1d_decompress21_vt_select_63_b;
    wire [63:0] i_shl8_i_zfp_1d_decompress15_vt_join_q;
    wire [62:0] i_shl8_i_zfp_1d_decompress15_vt_select_63_b;
    wire [63:0] i_shl_i_zfp_1d_decompress12_vt_join_q;
    wire [62:0] i_shl_i_zfp_1d_decompress12_vt_select_63_b;
    wire [64:0] i_sub13_i_zfp_1d_decompress20_a;
    wire [64:0] i_sub13_i_zfp_1d_decompress20_b;
    logic [64:0] i_sub13_i_zfp_1d_decompress20_o;
    wire [64:0] i_sub13_i_zfp_1d_decompress20_q;
    wire [64:0] i_sub15_i_zfp_1d_decompress22_a;
    wire [64:0] i_sub15_i_zfp_1d_decompress22_b;
    logic [64:0] i_sub15_i_zfp_1d_decompress22_o;
    wire [64:0] i_sub15_i_zfp_1d_decompress22_q;
    wire [64:0] i_sub7_i_zfp_1d_decompress13_a;
    wire [64:0] i_sub7_i_zfp_1d_decompress13_b;
    logic [64:0] i_sub7_i_zfp_1d_decompress13_o;
    wire [64:0] i_sub7_i_zfp_1d_decompress13_q;
    wire [64:0] i_sub9_i_zfp_1d_decompress16_a;
    wire [64:0] i_sub9_i_zfp_1d_decompress16_b;
    logic [64:0] i_sub9_i_zfp_1d_decompress16_o;
    wire [64:0] i_sub9_i_zfp_1d_decompress16_q;
    wire [64:0] i_sub_i_zfp_1d_decompress7_a;
    wire [64:0] i_sub_i_zfp_1d_decompress7_b;
    logic [64:0] i_sub_i_zfp_1d_decompress7_o;
    wire [64:0] i_sub_i_zfp_1d_decompress7_q;
    wire [63:0] bgTrunc_i_add10_i_zfp_1d_decompress17_sel_x_b;
    wire [63:0] bgTrunc_i_add11_i_zfp_1d_decompress18_sel_x_b;
    wire [63:0] bgTrunc_i_add5_i_zfp_1d_decompress8_sel_x_b;
    wire [63:0] bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b;
    wire [63:0] bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b;
    wire [63:0] bgTrunc_i_sub13_i_zfp_1d_decompress20_sel_x_b;
    wire [63:0] bgTrunc_i_sub15_i_zfp_1d_decompress22_sel_x_b;
    wire [63:0] bgTrunc_i_sub7_i_zfp_1d_decompress13_sel_x_b;
    wire [63:0] bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x_b;
    wire [63:0] bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid135_i_shl12_i_zfp_1d_decompress0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid135_i_shl12_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid136_i_shl12_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] leftShiftStage0_uid138_i_shl12_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid138_i_shl12_i_zfp_1d_decompress0_shift_x_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid143_i_shl14_i_zfp_1d_decompress0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid143_i_shl14_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid144_i_shl14_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] leftShiftStage0_uid146_i_shl14_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid146_i_shl14_i_zfp_1d_decompress0_shift_x_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid151_i_shl8_i_zfp_1d_decompress0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid151_i_shl8_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid152_i_shl8_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] leftShiftStage0_uid154_i_shl8_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid154_i_shl8_i_zfp_1d_decompress0_shift_x_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid159_i_shl_i_zfp_1d_decompress0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid159_i_shl_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid160_i_shl_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] leftShiftStage0_uid162_i_shl_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] leftShiftStage0_uid162_i_shl_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] xMSB_uid164_i_shr4_i_zfp_1d_decompress0_shift_x_b;
    wire [62:0] rightShiftStage0Idx1Rng1_uid166_i_shr4_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid167_i_shr4_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid169_i_shr4_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage0_uid169_i_shr4_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] xMSB_uid171_i_shr_i_zfp_1d_decompress0_shift_x_b;
    wire [62:0] rightShiftStage0Idx1Rng1_uid173_i_shr_i_zfp_1d_decompress0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid174_i_shr_i_zfp_1d_decompress0_shift_x_q;
    wire [0:0] rightShiftStage0_uid176_i_shr_i_zfp_1d_decompress0_shift_x_s;
    reg [63:0] rightShiftStage0_uid176_i_shr_i_zfp_1d_decompress0_shift_x_q;
    reg [63:0] redist0_bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x_b_1_q;
    reg [63:0] redist1_bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x_b_1_q;
    reg [63:0] redist2_bgTrunc_i_sub7_i_zfp_1d_decompress13_sel_x_b_1_q;
    reg [63:0] redist3_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_1_q;
    reg [63:0] redist4_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_2_q;
    reg [63:0] redist5_bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b_1_q;
    reg [63:0] redist6_bgTrunc_i_add5_i_zfp_1d_decompress8_sel_x_b_1_q;
    reg [63:0] redist7_bgTrunc_i_add11_i_zfp_1d_decompress18_sel_x_b_1_q;
    reg [63:0] redist8_bgTrunc_i_add10_i_zfp_1d_decompress17_sel_x_b_1_q;
    reg [0:0] redist9_sync_together44_in_i_valid_1_q;
    reg [0:0] redist10_sync_together44_in_i_valid_2_q;
    reg [0:0] redist11_sync_together44_in_i_valid_3_q;
    reg [0:0] redist12_sync_together44_in_i_valid_4_q;
    reg [0:0] redist13_sync_together44_in_i_valid_5_q;
    reg [62:0] redist14_i_shl_i_zfp_1d_decompress12_vt_select_63_b_1_q;
    reg [62:0] redist15_i_shl14_i_zfp_1d_decompress21_vt_select_63_b_1_q;
    reg [62:0] redist16_i_shl12_i_zfp_1d_decompress19_vt_select_63_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist9_sync_together44_in_i_valid_1(DELAY,186)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist9_sync_together44_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist9_sync_together44_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist10_sync_together44_in_i_valid_2(DELAY,187)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together44_in_i_valid_2_q <= $unsigned(redist9_sync_together44_in_i_valid_1_q);
        end
    end

    // redist11_sync_together44_in_i_valid_3(DELAY,188)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist11_sync_together44_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist11_sync_together44_in_i_valid_3_q <= $unsigned(redist10_sync_together44_in_i_valid_2_q);
        end
    end

    // redist12_sync_together44_in_i_valid_4(DELAY,189)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together44_in_i_valid_4_q <= $unsigned(redist11_sync_together44_in_i_valid_3_q);
        end
    end

    // redist13_sync_together44_in_i_valid_5(DELAY,190)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist13_sync_together44_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist13_sync_together44_in_i_valid_5_q <= $unsigned(redist12_sync_together44_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg9(REG,113)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist13_sync_together44_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg4(REG,108)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist10_sync_together44_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_spec_select3124_zfp_1d_decompress9(BLACKBOX,29)@3
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_i64_spec_select3124_0 thei_llvm_fpga_ffwd_dest_i64_spec_select3124_zfp_1d_decompress9 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i64_spec_select3124_zfp_1d_decompress9_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,109)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist10_sync_together44_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_spec_select3225_zfp_1d_decompress10(BLACKBOX,30)@3
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_i64_spec_select3225_0 thei_llvm_fpga_ffwd_dest_i64_spec_select3225_zfp_1d_decompress10 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i64_spec_select3225_zfp_1d_decompress10_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add6_i_zfp_1d_decompress11(ADD,26)@3
    assign i_add6_i_zfp_1d_decompress11_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_spec_select3225_zfp_1d_decompress10_out_dest_data_out_6_0};
    assign i_add6_i_zfp_1d_decompress11_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_spec_select3124_zfp_1d_decompress9_out_dest_data_out_4_0};
    assign i_add6_i_zfp_1d_decompress11_o = $unsigned(i_add6_i_zfp_1d_decompress11_a) + $unsigned(i_add6_i_zfp_1d_decompress11_b);
    assign i_add6_i_zfp_1d_decompress11_q = i_add6_i_zfp_1d_decompress11_o[64:0];

    // bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x(BITSELECT,65)@3
    assign bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b = i_add6_i_zfp_1d_decompress11_q[63:0];

    // redist5_bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b_1(DELAY,182)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b_1_q <= $unsigned(bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b);
        end
    end

    // leftShiftStage0Idx1Rng1_uid151_i_shl8_i_zfp_1d_decompress0_shift_x(BITSELECT,150)@4
    assign leftShiftStage0Idx1Rng1_uid151_i_shl8_i_zfp_1d_decompress0_shift_x_in = i_llvm_fpga_ffwd_dest_i64_spec_select3123_zfp_1d_decompress14_out_dest_data_out_4_0[62:0];
    assign leftShiftStage0Idx1Rng1_uid151_i_shl8_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng1_uid151_i_shl8_i_zfp_1d_decompress0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid152_i_shl8_i_zfp_1d_decompress0_shift_x(BITJOIN,151)@4
    assign leftShiftStage0Idx1_uid152_i_shl8_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng1_uid151_i_shl8_i_zfp_1d_decompress0_shift_x_b, GND_q};

    // valid_fanout_reg6(REG,110)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist11_sync_together44_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_spec_select3123_zfp_1d_decompress14(BLACKBOX,28)@4
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_i64_spec_select3123_0 thei_llvm_fpga_ffwd_dest_i64_spec_select3123_zfp_1d_decompress14 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i64_spec_select3123_zfp_1d_decompress14_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid154_i_shl8_i_zfp_1d_decompress0_shift_x(MUX,153)@4
    assign leftShiftStage0_uid154_i_shl8_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid154_i_shl8_i_zfp_1d_decompress0_shift_x_s or i_llvm_fpga_ffwd_dest_i64_spec_select3123_zfp_1d_decompress14_out_dest_data_out_4_0 or leftShiftStage0Idx1_uid152_i_shl8_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid154_i_shl8_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : leftShiftStage0_uid154_i_shl8_i_zfp_1d_decompress0_shift_x_q = i_llvm_fpga_ffwd_dest_i64_spec_select3123_zfp_1d_decompress14_out_dest_data_out_4_0;
            1'b1 : leftShiftStage0_uid154_i_shl8_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid152_i_shl8_i_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid154_i_shl8_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_shl8_i_zfp_1d_decompress15_vt_select_63(BITSELECT,46)@4
    assign i_shl8_i_zfp_1d_decompress15_vt_select_63_b = leftShiftStage0_uid154_i_shl8_i_zfp_1d_decompress0_shift_x_q[63:1];

    // i_shl8_i_zfp_1d_decompress15_vt_join(BITJOIN,45)@4
    assign i_shl8_i_zfp_1d_decompress15_vt_join_q = {i_shl8_i_zfp_1d_decompress15_vt_select_63_b, GND_q};

    // i_sub9_i_zfp_1d_decompress16(SUB,53)@4
    assign i_sub9_i_zfp_1d_decompress16_a = {1'b0, i_shl8_i_zfp_1d_decompress15_vt_join_q};
    assign i_sub9_i_zfp_1d_decompress16_b = {1'b0, redist5_bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b_1_q};
    assign i_sub9_i_zfp_1d_decompress16_o = $unsigned(i_sub9_i_zfp_1d_decompress16_a) - $unsigned(i_sub9_i_zfp_1d_decompress16_b);
    assign i_sub9_i_zfp_1d_decompress16_q = i_sub9_i_zfp_1d_decompress16_o[64:0];

    // bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x(BITSELECT,70)@4
    assign bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x_b = $unsigned(i_sub9_i_zfp_1d_decompress16_q[63:0]);

    // redist1_bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x_b_1(DELAY,178)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x_b);
        end
    end

    // valid_fanout_reg2(REG,106)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_unnamed_zfp_1d_decompress14_zfp_1d_decompress3(BLACKBOX,33)@1
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_00004_zfp_1d_decompress0 thei_llvm_fpga_ffwd_dest_i64_unnamed_zfp_1d_decompress14_zfp_1d_decompress3 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i64_unnamed_zfp_1d_decompress14_zfp_1d_decompress3_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // xMSB_uid171_i_shr_i_zfp_1d_decompress0_shift_x(BITSELECT,170)@1
    assign xMSB_uid171_i_shr_i_zfp_1d_decompress0_shift_x_b = $unsigned(i_llvm_fpga_ffwd_dest_i64_spec_select3326_zfp_1d_decompress1_out_dest_data_out_7_0[63:63]);

    // rightShiftStage0Idx1Rng1_uid173_i_shr_i_zfp_1d_decompress0_shift_x(BITSELECT,172)@1
    assign rightShiftStage0Idx1Rng1_uid173_i_shr_i_zfp_1d_decompress0_shift_x_b = $unsigned(i_llvm_fpga_ffwd_dest_i64_spec_select3326_zfp_1d_decompress1_out_dest_data_out_7_0[63:1]);

    // rightShiftStage0Idx1_uid174_i_shr_i_zfp_1d_decompress0_shift_x(BITJOIN,173)@1
    assign rightShiftStage0Idx1_uid174_i_shr_i_zfp_1d_decompress0_shift_x_q = {xMSB_uid171_i_shr_i_zfp_1d_decompress0_shift_x_b, rightShiftStage0Idx1Rng1_uid173_i_shr_i_zfp_1d_decompress0_shift_x_b};

    // valid_fanout_reg1(REG,105)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_spec_select3326_zfp_1d_decompress1(BLACKBOX,31)@1
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_i64_spec_select3326_0 thei_llvm_fpga_ffwd_dest_i64_spec_select3326_zfp_1d_decompress1 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i64_spec_select3326_zfp_1d_decompress1_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid176_i_shr_i_zfp_1d_decompress0_shift_x(MUX,175)@1
    assign rightShiftStage0_uid176_i_shr_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid176_i_shr_i_zfp_1d_decompress0_shift_x_s or i_llvm_fpga_ffwd_dest_i64_spec_select3326_zfp_1d_decompress1_out_dest_data_out_7_0 or rightShiftStage0Idx1_uid174_i_shr_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid176_i_shr_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid176_i_shr_i_zfp_1d_decompress0_shift_x_q = i_llvm_fpga_ffwd_dest_i64_spec_select3326_zfp_1d_decompress1_out_dest_data_out_7_0;
            1'b1 : rightShiftStage0_uid176_i_shr_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid174_i_shr_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid176_i_shr_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_add_i_zfp_1d_decompress4(ADD,27)@1
    assign i_add_i_zfp_1d_decompress4_a = {1'b0, rightShiftStage0_uid176_i_shr_i_zfp_1d_decompress0_shift_x_q};
    assign i_add_i_zfp_1d_decompress4_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_unnamed_zfp_1d_decompress14_zfp_1d_decompress3_out_dest_data_out_5_0};
    assign i_add_i_zfp_1d_decompress4_o = $unsigned(i_add_i_zfp_1d_decompress4_a) + $unsigned(i_add_i_zfp_1d_decompress4_b);
    assign i_add_i_zfp_1d_decompress4_q = i_add_i_zfp_1d_decompress4_o[64:0];

    // bgTrunc_i_add_i_zfp_1d_decompress4_sel_x(BITSELECT,66)@1
    assign bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b = i_add_i_zfp_1d_decompress4_q[63:0];

    // redist3_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_1(DELAY,180)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b);
        end
    end

    // redist4_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_2(DELAY,181)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_2_q <= $unsigned(redist3_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_1_q);
        end
    end

    // xMSB_uid164_i_shr4_i_zfp_1d_decompress0_shift_x(BITSELECT,163)@2
    assign xMSB_uid164_i_shr4_i_zfp_1d_decompress0_shift_x_b = $unsigned(redist3_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_1_q[63:63]);

    // rightShiftStage0Idx1Rng1_uid166_i_shr4_i_zfp_1d_decompress0_shift_x(BITSELECT,165)@2
    assign rightShiftStage0Idx1Rng1_uid166_i_shr4_i_zfp_1d_decompress0_shift_x_b = $unsigned(redist3_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_1_q[63:1]);

    // rightShiftStage0Idx1_uid167_i_shr4_i_zfp_1d_decompress0_shift_x(BITJOIN,166)@2
    assign rightShiftStage0Idx1_uid167_i_shr4_i_zfp_1d_decompress0_shift_x_q = {xMSB_uid164_i_shr4_i_zfp_1d_decompress0_shift_x_b, rightShiftStage0Idx1Rng1_uid166_i_shr4_i_zfp_1d_decompress0_shift_x_b};

    // rightShiftStage0_uid169_i_shr4_i_zfp_1d_decompress0_shift_x(MUX,168)@2
    assign rightShiftStage0_uid169_i_shr4_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid169_i_shr4_i_zfp_1d_decompress0_shift_x_s or redist3_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_1_q or rightShiftStage0Idx1_uid167_i_shr4_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid169_i_shr4_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : rightShiftStage0_uid169_i_shr4_i_zfp_1d_decompress0_shift_x_q = redist3_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_1_q;
            1'b1 : rightShiftStage0_uid169_i_shr4_i_zfp_1d_decompress0_shift_x_q = rightShiftStage0Idx1_uid167_i_shr4_i_zfp_1d_decompress0_shift_x_q;
            default : rightShiftStage0_uid169_i_shr4_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // valid_fanout_reg3(REG,107)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist9_sync_together44_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_spec_select3327_zfp_1d_decompress6(BLACKBOX,32)@2
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_i64_spec_select3327_0 thei_llvm_fpga_ffwd_dest_i64_spec_select3327_zfp_1d_decompress6 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i64_spec_select3327_zfp_1d_decompress6_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub_i_zfp_1d_decompress7(SUB,54)@2
    assign i_sub_i_zfp_1d_decompress7_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_spec_select3327_zfp_1d_decompress6_out_dest_data_out_7_0};
    assign i_sub_i_zfp_1d_decompress7_b = {1'b0, rightShiftStage0_uid169_i_shr4_i_zfp_1d_decompress0_shift_x_q};
    assign i_sub_i_zfp_1d_decompress7_o = $unsigned(i_sub_i_zfp_1d_decompress7_a) - $unsigned(i_sub_i_zfp_1d_decompress7_b);
    assign i_sub_i_zfp_1d_decompress7_q = i_sub_i_zfp_1d_decompress7_o[64:0];

    // bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x(BITSELECT,71)@2
    assign bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x_b = $unsigned(i_sub_i_zfp_1d_decompress7_q[63:0]);

    // redist0_bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x_b_1(DELAY,177)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x_b);
        end
    end

    // i_add5_i_zfp_1d_decompress8(ADD,25)@3
    assign i_add5_i_zfp_1d_decompress8_a = {1'b0, redist0_bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x_b_1_q};
    assign i_add5_i_zfp_1d_decompress8_b = {1'b0, redist4_bgTrunc_i_add_i_zfp_1d_decompress4_sel_x_b_2_q};
    assign i_add5_i_zfp_1d_decompress8_o = $unsigned(i_add5_i_zfp_1d_decompress8_a) + $unsigned(i_add5_i_zfp_1d_decompress8_b);
    assign i_add5_i_zfp_1d_decompress8_q = i_add5_i_zfp_1d_decompress8_o[64:0];

    // bgTrunc_i_add5_i_zfp_1d_decompress8_sel_x(BITSELECT,64)@3
    assign bgTrunc_i_add5_i_zfp_1d_decompress8_sel_x_b = i_add5_i_zfp_1d_decompress8_q[63:0];

    // redist6_bgTrunc_i_add5_i_zfp_1d_decompress8_sel_x_b_1(DELAY,183)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_bgTrunc_i_add5_i_zfp_1d_decompress8_sel_x_b_1_q <= $unsigned(bgTrunc_i_add5_i_zfp_1d_decompress8_sel_x_b);
        end
    end

    // leftShiftStage0Idx1Rng1_uid159_i_shl_i_zfp_1d_decompress0_shift_x(BITSELECT,158)@3
    assign leftShiftStage0Idx1Rng1_uid159_i_shl_i_zfp_1d_decompress0_shift_x_in = redist0_bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x_b_1_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid159_i_shl_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng1_uid159_i_shl_i_zfp_1d_decompress0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid160_i_shl_i_zfp_1d_decompress0_shift_x(BITJOIN,159)@3
    assign leftShiftStage0Idx1_uid160_i_shl_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng1_uid159_i_shl_i_zfp_1d_decompress0_shift_x_b, GND_q};

    // leftShiftStage0_uid162_i_shl_i_zfp_1d_decompress0_shift_x(MUX,161)@3
    assign leftShiftStage0_uid162_i_shl_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid162_i_shl_i_zfp_1d_decompress0_shift_x_s or redist0_bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x_b_1_q or leftShiftStage0Idx1_uid160_i_shl_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid162_i_shl_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : leftShiftStage0_uid162_i_shl_i_zfp_1d_decompress0_shift_x_q = redist0_bgTrunc_i_sub_i_zfp_1d_decompress7_sel_x_b_1_q;
            1'b1 : leftShiftStage0_uid162_i_shl_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid160_i_shl_i_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid162_i_shl_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_shl_i_zfp_1d_decompress12_vt_select_63(BITSELECT,49)@3
    assign i_shl_i_zfp_1d_decompress12_vt_select_63_b = leftShiftStage0_uid162_i_shl_i_zfp_1d_decompress0_shift_x_q[63:1];

    // redist14_i_shl_i_zfp_1d_decompress12_vt_select_63_b_1(DELAY,191)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_shl_i_zfp_1d_decompress12_vt_select_63_b_1_q <= $unsigned(i_shl_i_zfp_1d_decompress12_vt_select_63_b);
        end
    end

    // i_shl_i_zfp_1d_decompress12_vt_join(BITJOIN,48)@4
    assign i_shl_i_zfp_1d_decompress12_vt_join_q = {redist14_i_shl_i_zfp_1d_decompress12_vt_select_63_b_1_q, GND_q};

    // i_sub7_i_zfp_1d_decompress13(SUB,52)@4
    assign i_sub7_i_zfp_1d_decompress13_a = {1'b0, i_shl_i_zfp_1d_decompress12_vt_join_q};
    assign i_sub7_i_zfp_1d_decompress13_b = {1'b0, redist6_bgTrunc_i_add5_i_zfp_1d_decompress8_sel_x_b_1_q};
    assign i_sub7_i_zfp_1d_decompress13_o = $unsigned(i_sub7_i_zfp_1d_decompress13_a) - $unsigned(i_sub7_i_zfp_1d_decompress13_b);
    assign i_sub7_i_zfp_1d_decompress13_q = i_sub7_i_zfp_1d_decompress13_o[64:0];

    // bgTrunc_i_sub7_i_zfp_1d_decompress13_sel_x(BITSELECT,69)@4
    assign bgTrunc_i_sub7_i_zfp_1d_decompress13_sel_x_b = $unsigned(i_sub7_i_zfp_1d_decompress13_q[63:0]);

    // redist2_bgTrunc_i_sub7_i_zfp_1d_decompress13_sel_x_b_1(DELAY,179)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_bgTrunc_i_sub7_i_zfp_1d_decompress13_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub7_i_zfp_1d_decompress13_sel_x_b);
        end
    end

    // i_add10_i_zfp_1d_decompress17(ADD,23)@5
    assign i_add10_i_zfp_1d_decompress17_a = {1'b0, redist2_bgTrunc_i_sub7_i_zfp_1d_decompress13_sel_x_b_1_q};
    assign i_add10_i_zfp_1d_decompress17_b = {1'b0, redist1_bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x_b_1_q};
    assign i_add10_i_zfp_1d_decompress17_o = $unsigned(i_add10_i_zfp_1d_decompress17_a) + $unsigned(i_add10_i_zfp_1d_decompress17_b);
    assign i_add10_i_zfp_1d_decompress17_q = i_add10_i_zfp_1d_decompress17_o[64:0];

    // bgTrunc_i_add10_i_zfp_1d_decompress17_sel_x(BITSELECT,62)@5
    assign bgTrunc_i_add10_i_zfp_1d_decompress17_sel_x_b = i_add10_i_zfp_1d_decompress17_q[63:0];

    // redist8_bgTrunc_i_add10_i_zfp_1d_decompress17_sel_x_b_1(DELAY,185)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_bgTrunc_i_add10_i_zfp_1d_decompress17_sel_x_b_1_q <= $unsigned(bgTrunc_i_add10_i_zfp_1d_decompress17_sel_x_b);
        end
    end

    // leftShiftStage0Idx1Rng1_uid135_i_shl12_i_zfp_1d_decompress0_shift_x(BITSELECT,134)@5
    assign leftShiftStage0Idx1Rng1_uid135_i_shl12_i_zfp_1d_decompress0_shift_x_in = redist1_bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x_b_1_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid135_i_shl12_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng1_uid135_i_shl12_i_zfp_1d_decompress0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid136_i_shl12_i_zfp_1d_decompress0_shift_x(BITJOIN,135)@5
    assign leftShiftStage0Idx1_uid136_i_shl12_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng1_uid135_i_shl12_i_zfp_1d_decompress0_shift_x_b, GND_q};

    // leftShiftStage0_uid138_i_shl12_i_zfp_1d_decompress0_shift_x(MUX,137)@5
    assign leftShiftStage0_uid138_i_shl12_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid138_i_shl12_i_zfp_1d_decompress0_shift_x_s or redist1_bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x_b_1_q or leftShiftStage0Idx1_uid136_i_shl12_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid138_i_shl12_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : leftShiftStage0_uid138_i_shl12_i_zfp_1d_decompress0_shift_x_q = redist1_bgTrunc_i_sub9_i_zfp_1d_decompress16_sel_x_b_1_q;
            1'b1 : leftShiftStage0_uid138_i_shl12_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid136_i_shl12_i_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid138_i_shl12_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_shl12_i_zfp_1d_decompress19_vt_select_63(BITSELECT,40)@5
    assign i_shl12_i_zfp_1d_decompress19_vt_select_63_b = leftShiftStage0_uid138_i_shl12_i_zfp_1d_decompress0_shift_x_q[63:1];

    // redist16_i_shl12_i_zfp_1d_decompress19_vt_select_63_b_1(DELAY,193)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_shl12_i_zfp_1d_decompress19_vt_select_63_b_1_q <= $unsigned(i_shl12_i_zfp_1d_decompress19_vt_select_63_b);
        end
    end

    // i_shl12_i_zfp_1d_decompress19_vt_join(BITJOIN,39)@6
    assign i_shl12_i_zfp_1d_decompress19_vt_join_q = {redist16_i_shl12_i_zfp_1d_decompress19_vt_select_63_b_1_q, GND_q};

    // i_sub13_i_zfp_1d_decompress20(SUB,50)@6
    assign i_sub13_i_zfp_1d_decompress20_a = {1'b0, i_shl12_i_zfp_1d_decompress19_vt_join_q};
    assign i_sub13_i_zfp_1d_decompress20_b = {1'b0, redist8_bgTrunc_i_add10_i_zfp_1d_decompress17_sel_x_b_1_q};
    assign i_sub13_i_zfp_1d_decompress20_o = $unsigned(i_sub13_i_zfp_1d_decompress20_a) - $unsigned(i_sub13_i_zfp_1d_decompress20_b);
    assign i_sub13_i_zfp_1d_decompress20_q = i_sub13_i_zfp_1d_decompress20_o[64:0];

    // bgTrunc_i_sub13_i_zfp_1d_decompress20_sel_x(BITSELECT,67)@6
    assign bgTrunc_i_sub13_i_zfp_1d_decompress20_sel_x_b = $unsigned(i_sub13_i_zfp_1d_decompress20_q[63:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress17_zfp_1d_decompress25(BLACKBOX,36)@6
    // out out_intel_reserved_ffwd_10_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00007_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress17_zfp_1d_decompress25 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(bgTrunc_i_sub13_i_zfp_1d_decompress20_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress17_zfp_1d_decompress25_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,59)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress17_zfp_1d_decompress25_out_intel_reserved_ffwd_10_0;

    // valid_fanout_reg10(REG,114)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist12_sync_together44_in_i_valid_4_q);
        end
    end

    // i_add11_i_zfp_1d_decompress18(ADD,24)@4
    assign i_add11_i_zfp_1d_decompress18_a = {1'b0, redist6_bgTrunc_i_add5_i_zfp_1d_decompress8_sel_x_b_1_q};
    assign i_add11_i_zfp_1d_decompress18_b = {1'b0, redist5_bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b_1_q};
    assign i_add11_i_zfp_1d_decompress18_o = $unsigned(i_add11_i_zfp_1d_decompress18_a) + $unsigned(i_add11_i_zfp_1d_decompress18_b);
    assign i_add11_i_zfp_1d_decompress18_q = i_add11_i_zfp_1d_decompress18_o[64:0];

    // bgTrunc_i_add11_i_zfp_1d_decompress18_sel_x(BITSELECT,63)@4
    assign bgTrunc_i_add11_i_zfp_1d_decompress18_sel_x_b = i_add11_i_zfp_1d_decompress18_q[63:0];

    // redist7_bgTrunc_i_add11_i_zfp_1d_decompress18_sel_x_b_1(DELAY,184)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_bgTrunc_i_add11_i_zfp_1d_decompress18_sel_x_b_1_q <= $unsigned(bgTrunc_i_add11_i_zfp_1d_decompress18_sel_x_b);
        end
    end

    // leftShiftStage0Idx1Rng1_uid143_i_shl14_i_zfp_1d_decompress0_shift_x(BITSELECT,142)@4
    assign leftShiftStage0Idx1Rng1_uid143_i_shl14_i_zfp_1d_decompress0_shift_x_in = redist5_bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b_1_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid143_i_shl14_i_zfp_1d_decompress0_shift_x_b = leftShiftStage0Idx1Rng1_uid143_i_shl14_i_zfp_1d_decompress0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid144_i_shl14_i_zfp_1d_decompress0_shift_x(BITJOIN,143)@4
    assign leftShiftStage0Idx1_uid144_i_shl14_i_zfp_1d_decompress0_shift_x_q = {leftShiftStage0Idx1Rng1_uid143_i_shl14_i_zfp_1d_decompress0_shift_x_b, GND_q};

    // leftShiftStage0_uid146_i_shl14_i_zfp_1d_decompress0_shift_x(MUX,145)@4
    assign leftShiftStage0_uid146_i_shl14_i_zfp_1d_decompress0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid146_i_shl14_i_zfp_1d_decompress0_shift_x_s or redist5_bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b_1_q or leftShiftStage0Idx1_uid144_i_shl14_i_zfp_1d_decompress0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid146_i_shl14_i_zfp_1d_decompress0_shift_x_s)
            1'b0 : leftShiftStage0_uid146_i_shl14_i_zfp_1d_decompress0_shift_x_q = redist5_bgTrunc_i_add6_i_zfp_1d_decompress11_sel_x_b_1_q;
            1'b1 : leftShiftStage0_uid146_i_shl14_i_zfp_1d_decompress0_shift_x_q = leftShiftStage0Idx1_uid144_i_shl14_i_zfp_1d_decompress0_shift_x_q;
            default : leftShiftStage0_uid146_i_shl14_i_zfp_1d_decompress0_shift_x_q = 64'b0;
        endcase
    end

    // i_shl14_i_zfp_1d_decompress21_vt_select_63(BITSELECT,43)@4
    assign i_shl14_i_zfp_1d_decompress21_vt_select_63_b = leftShiftStage0_uid146_i_shl14_i_zfp_1d_decompress0_shift_x_q[63:1];

    // redist15_i_shl14_i_zfp_1d_decompress21_vt_select_63_b_1(DELAY,192)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_shl14_i_zfp_1d_decompress21_vt_select_63_b_1_q <= $unsigned(i_shl14_i_zfp_1d_decompress21_vt_select_63_b);
        end
    end

    // i_shl14_i_zfp_1d_decompress21_vt_join(BITJOIN,42)@5
    assign i_shl14_i_zfp_1d_decompress21_vt_join_q = {redist15_i_shl14_i_zfp_1d_decompress21_vt_select_63_b_1_q, GND_q};

    // i_sub15_i_zfp_1d_decompress22(SUB,51)@5
    assign i_sub15_i_zfp_1d_decompress22_a = {1'b0, i_shl14_i_zfp_1d_decompress21_vt_join_q};
    assign i_sub15_i_zfp_1d_decompress22_b = {1'b0, redist7_bgTrunc_i_add11_i_zfp_1d_decompress18_sel_x_b_1_q};
    assign i_sub15_i_zfp_1d_decompress22_o = $unsigned(i_sub15_i_zfp_1d_decompress22_a) - $unsigned(i_sub15_i_zfp_1d_decompress22_b);
    assign i_sub15_i_zfp_1d_decompress22_q = i_sub15_i_zfp_1d_decompress22_o[64:0];

    // bgTrunc_i_sub15_i_zfp_1d_decompress22_sel_x(BITSELECT,68)@5
    assign bgTrunc_i_sub15_i_zfp_1d_decompress22_sel_x_b = $unsigned(i_sub15_i_zfp_1d_decompress22_q[63:0]);

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress18_zfp_1d_decompress26(BLACKBOX,37)@5
    // out out_intel_reserved_ffwd_11_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00018_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress18_zfp_1d_decompress26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(bgTrunc_i_sub15_i_zfp_1d_decompress22_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress18_zfp_1d_decompress26_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,72)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress18_zfp_1d_decompress26_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg7(REG,111)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist12_sync_together44_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress15_zfp_1d_decompress23(BLACKBOX,34)@5
    // out out_intel_reserved_ffwd_8_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00015_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress15_zfp_1d_decompress23 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(bgTrunc_i_add10_i_zfp_1d_decompress17_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress15_zfp_1d_decompress23_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,73)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress15_zfp_1d_decompress23_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg8(REG,112)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist12_sync_together44_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress16_zfp_1d_decompress24(BLACKBOX,35)@5
    // out out_intel_reserved_ffwd_9_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00006_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress16_zfp_1d_decompress24 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(redist7_bgTrunc_i_add11_i_zfp_1d_decompress18_sel_x_b_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress16_zfp_1d_decompress24_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,74)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress16_zfp_1d_decompress24_out_intel_reserved_ffwd_9_0;

    // valid_fanout_reg0(REG,104)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together44_in_i_valid_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,103)@6
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_1d_decompress19_0_tpl = GND_q;
    assign out_unnamed_zfp_1d_decompress7 = GND_q;

endmodule
