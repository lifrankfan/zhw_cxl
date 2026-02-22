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

// SystemVerilog created from i_sfc_logic_s_c0_in_if_end11_i_zfp_1d_decompresss_c0_enter164_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c0_in_if00004_zfp_1d_decompress0 (
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_c0_exi6182_0_tpl,
    output wire [63:0] out_c0_exi6182_1_tpl,
    output wire [31:0] out_c0_exi6182_2_tpl,
    output wire [63:0] out_c0_exi6182_3_tpl,
    output wire [63:0] out_c0_exi6182_4_tpl,
    output wire [63:0] out_c0_exi6182_5_tpl,
    output wire [63:0] out_c0_exi6182_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress1,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [0:0] in_c0_eni13_1_tpl,
    input wire [63:0] in_c0_eni13_2_tpl,
    input wire [63:0] in_c0_eni13_3_tpl,
    input wire [31:0] in_c0_eni13_4_tpl,
    input wire [31:0] in_c0_eni13_5_tpl,
    input wire [63:0] in_c0_eni13_6_tpl,
    input wire [63:0] in_c0_eni13_7_tpl,
    input wire [63:0] in_c0_eni13_8_tpl,
    input wire [63:0] in_c0_eni13_9_tpl,
    input wire [63:0] in_c0_eni13_10_tpl,
    input wire [63:0] in_c0_eni13_11_tpl,
    input wire [63:0] in_c0_eni13_12_tpl,
    input wire [63:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_bs_sroa_0_6_select_zfp_1d_decompress2_s;
    reg [63:0] i_bs_sroa_0_6_select_zfp_1d_decompress2_q;
    wire [0:0] i_bs_sroa_7_6_select_zfp_1d_decompress3_s;
    reg [31:0] i_bs_sroa_7_6_select_zfp_1d_decompress3_q;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress10_zfp_1d_decompress9_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress11_zfp_1d_decompress10_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress12_zfp_1d_decompress11_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress9_zfp_1d_decompress8_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_ublock_i_sroa_0_4_select_zfp_1d_decompress4_s;
    reg [63:0] i_ublock_i_sroa_0_4_select_zfp_1d_decompress4_q;
    wire [0:0] i_ublock_i_sroa_12_3_select_zfp_1d_decompress7_s;
    reg [63:0] i_ublock_i_sroa_12_3_select_zfp_1d_decompress7_q;
    wire [0:0] i_ublock_i_sroa_6_4_select_zfp_1d_decompress5_s;
    reg [63:0] i_ublock_i_sroa_6_4_select_zfp_1d_decompress5_q;
    wire [0:0] i_ublock_i_sroa_9_4_select_zfp_1d_decompress6_s;
    reg [63:0] i_ublock_i_sroa_9_4_select_zfp_1d_decompress6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,24)@0 + 1
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

    // i_ublock_i_sroa_0_4_select_zfp_1d_decompress4(MUX,12)@0 + 1
    assign i_ublock_i_sroa_0_4_select_zfp_1d_decompress4_s = in_c0_eni13_1_tpl;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_ublock_i_sroa_0_4_select_zfp_1d_decompress4_s)
                1'b0 : i_ublock_i_sroa_0_4_select_zfp_1d_decompress4_q <= in_c0_eni13_7_tpl;
                1'b1 : i_ublock_i_sroa_0_4_select_zfp_1d_decompress4_q <= in_c0_eni13_6_tpl;
                default : i_ublock_i_sroa_0_4_select_zfp_1d_decompress4_q <= 64'b0;
            endcase
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress9_zfp_1d_decompress8(BLACKBOX,11)@1
    // out out_intel_reserved_ffwd_1_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00009_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress9_zfp_1d_decompress8 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_ublock_i_sroa_0_4_select_zfp_1d_decompress4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress9_zfp_1d_decompress8_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,16)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress9_zfp_1d_decompress8_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg2(REG,25)@0 + 1
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

    // i_ublock_i_sroa_6_4_select_zfp_1d_decompress5(MUX,14)@0 + 1
    assign i_ublock_i_sroa_6_4_select_zfp_1d_decompress5_s = in_c0_eni13_1_tpl;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_ublock_i_sroa_6_4_select_zfp_1d_decompress5_s)
                1'b0 : i_ublock_i_sroa_6_4_select_zfp_1d_decompress5_q <= in_c0_eni13_9_tpl;
                1'b1 : i_ublock_i_sroa_6_4_select_zfp_1d_decompress5_q <= in_c0_eni13_8_tpl;
                default : i_ublock_i_sroa_6_4_select_zfp_1d_decompress5_q <= 64'b0;
            endcase
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress10_zfp_1d_decompress9(BLACKBOX,8)@1
    // out out_intel_reserved_ffwd_2_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00000_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress10_zfp_1d_decompress9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_ublock_i_sroa_6_4_select_zfp_1d_decompress5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress10_zfp_1d_decompress9_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress10_zfp_1d_decompress9_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg3(REG,26)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_ublock_i_sroa_9_4_select_zfp_1d_decompress6(MUX,15)@0 + 1
    assign i_ublock_i_sroa_9_4_select_zfp_1d_decompress6_s = in_c0_eni13_1_tpl;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_ublock_i_sroa_9_4_select_zfp_1d_decompress6_s)
                1'b0 : i_ublock_i_sroa_9_4_select_zfp_1d_decompress6_q <= in_c0_eni13_11_tpl;
                1'b1 : i_ublock_i_sroa_9_4_select_zfp_1d_decompress6_q <= in_c0_eni13_10_tpl;
                default : i_ublock_i_sroa_9_4_select_zfp_1d_decompress6_q <= 64'b0;
            endcase
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress11_zfp_1d_decompress10(BLACKBOX,9)@1
    // out out_intel_reserved_ffwd_3_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00001_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress11_zfp_1d_decompress10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_ublock_i_sroa_9_4_select_zfp_1d_decompress6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress11_zfp_1d_decompress10_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress11_zfp_1d_decompress10_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg4(REG,27)@0 + 1
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

    // i_ublock_i_sroa_12_3_select_zfp_1d_decompress7(MUX,13)@0 + 1
    assign i_ublock_i_sroa_12_3_select_zfp_1d_decompress7_s = in_c0_eni13_1_tpl;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_ublock_i_sroa_12_3_select_zfp_1d_decompress7_s)
                1'b0 : i_ublock_i_sroa_12_3_select_zfp_1d_decompress7_q <= in_c0_eni13_13_tpl;
                1'b1 : i_ublock_i_sroa_12_3_select_zfp_1d_decompress7_q <= in_c0_eni13_12_tpl;
                default : i_ublock_i_sroa_12_3_select_zfp_1d_decompress7_q <= 64'b0;
            endcase
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress12_zfp_1d_decompress11(BLACKBOX,10)@1
    // out out_intel_reserved_ffwd_4_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00002_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress12_zfp_1d_decompress11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_ublock_i_sroa_12_3_select_zfp_1d_decompress7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress12_zfp_1d_decompress11_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress12_zfp_1d_decompress11_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg0(REG,23)@0 + 1
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

    // i_bs_sroa_7_6_select_zfp_1d_decompress3(MUX,7)@0 + 1
    assign i_bs_sroa_7_6_select_zfp_1d_decompress3_s = in_c0_eni13_1_tpl;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_bs_sroa_7_6_select_zfp_1d_decompress3_s)
                1'b0 : i_bs_sroa_7_6_select_zfp_1d_decompress3_q <= in_c0_eni13_5_tpl;
                1'b1 : i_bs_sroa_7_6_select_zfp_1d_decompress3_q <= in_c0_eni13_4_tpl;
                default : i_bs_sroa_7_6_select_zfp_1d_decompress3_q <= 32'b0;
            endcase
        end
    end

    // i_bs_sroa_0_6_select_zfp_1d_decompress2(MUX,6)@0 + 1
    assign i_bs_sroa_0_6_select_zfp_1d_decompress2_s = in_c0_eni13_1_tpl;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_bs_sroa_0_6_select_zfp_1d_decompress2_s)
                1'b0 : i_bs_sroa_0_6_select_zfp_1d_decompress2_q <= in_c0_eni13_3_tpl;
                1'b1 : i_bs_sroa_0_6_select_zfp_1d_decompress2_q <= in_c0_eni13_2_tpl;
                default : i_bs_sroa_0_6_select_zfp_1d_decompress2_q <= 64'b0;
            endcase
        end
    end

    // sync_out_aunroll_x(GPOUT,21)@1
    assign out_c0_exi6182_0_tpl = GND_q;
    assign out_c0_exi6182_1_tpl = i_bs_sroa_0_6_select_zfp_1d_decompress2_q;
    assign out_c0_exi6182_2_tpl = i_bs_sroa_7_6_select_zfp_1d_decompress3_q;
    assign out_c0_exi6182_3_tpl = i_ublock_i_sroa_0_4_select_zfp_1d_decompress4_q;
    assign out_c0_exi6182_4_tpl = i_ublock_i_sroa_6_4_select_zfp_1d_decompress5_q;
    assign out_c0_exi6182_5_tpl = i_ublock_i_sroa_9_4_select_zfp_1d_decompress6_q;
    assign out_c0_exi6182_6_tpl = i_ublock_i_sroa_12_3_select_zfp_1d_decompress7_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_1d_decompress1 = GND_q;

endmodule
