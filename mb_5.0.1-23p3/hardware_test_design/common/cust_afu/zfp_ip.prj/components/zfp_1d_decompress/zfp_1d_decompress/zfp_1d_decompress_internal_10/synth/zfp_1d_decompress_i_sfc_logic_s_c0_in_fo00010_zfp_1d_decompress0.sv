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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond_cleanup15_i_zfp_1d_decompresss_c0_enter90_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:04:26 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c0_in_fo00010_zfp_1d_decompress0 (
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_c0_exi495_0_tpl,
    output wire [63:0] out_c0_exi495_1_tpl,
    output wire [63:0] out_c0_exi495_2_tpl,
    output wire [63:0] out_c0_exi495_3_tpl,
    output wire [63:0] out_c0_exi495_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress7,
    input wire [0:0] in_c0_eni6_0_tpl,
    input wire [31:0] in_c0_eni6_1_tpl,
    input wire [63:0] in_c0_eni6_2_tpl,
    input wire [63:0] in_c0_eni6_3_tpl,
    input wire [63:0] in_c0_eni6_4_tpl,
    input wire [63:0] in_c0_eni6_5_tpl,
    input wire [63:0] in_c0_eni6_6_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress10_zfp_1d_decompress16_out_intel_reserved_ffwd_6_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress11_zfp_1d_decompress17_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress8_zfp_1d_decompress14_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress9_zfp_1d_decompress15_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_spec_select31_zfp_1d_decompress10_s;
    reg [63:0] i_spec_select31_zfp_1d_decompress10_q;
    wire [0:0] i_spec_select32_zfp_1d_decompress12_s;
    reg [63:0] i_spec_select32_zfp_1d_decompress12_q;
    wire [0:0] i_spec_select33_zfp_1d_decompress13_s;
    reg [63:0] i_spec_select33_zfp_1d_decompress13_q;
    wire [0:0] i_unnamed_zfp_1d_decompress11_s;
    reg [63:0] i_unnamed_zfp_1d_decompress11_q;
    wire [0:0] i_unnamed_zfp_1d_decompress2_q;
    wire [0:0] i_unnamed_zfp_1d_decompress4_q;
    wire [0:0] i_unnamed_zfp_1d_decompress6_q;
    wire [0:0] i_unnamed_zfp_1d_decompress8_q;
    wire [31:0] c_i32_026_recast_x_q;
    wire [31:0] c_i32_125_recast_x_q;
    wire [31:0] c_i32_224_recast_x_q;
    wire [31:0] c_i32_323_recast_x_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,34)@0 + 1
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

    // c_i32_026_recast_x(CONSTANT,24)
    assign c_i32_026_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_unnamed_zfp_1d_decompress8(LOGICAL,17)@0
    assign i_unnamed_zfp_1d_decompress8_q = $unsigned(in_c0_eni6_1_tpl == c_i32_026_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select31_zfp_1d_decompress10(MUX,10)@0 + 1
    assign i_spec_select31_zfp_1d_decompress10_s = i_unnamed_zfp_1d_decompress8_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_spec_select31_zfp_1d_decompress10_s)
                1'b0 : i_spec_select31_zfp_1d_decompress10_q <= in_c0_eni6_3_tpl;
                1'b1 : i_spec_select31_zfp_1d_decompress10_q <= in_c0_eni6_2_tpl;
                default : i_spec_select31_zfp_1d_decompress10_q <= 64'b0;
            endcase
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress8_zfp_1d_decompress14(BLACKBOX,8)@1
    // out out_intel_reserved_ffwd_4_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00008_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress8_zfp_1d_decompress14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_spec_select31_zfp_1d_decompress10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress8_zfp_1d_decompress14_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,22)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress8_zfp_1d_decompress14_out_intel_reserved_ffwd_4_0;

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

    // c_i32_125_recast_x(CONSTANT,25)
    assign c_i32_125_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_zfp_1d_decompress6(LOGICAL,16)@0
    assign i_unnamed_zfp_1d_decompress6_q = $unsigned(in_c0_eni6_1_tpl == c_i32_125_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_zfp_1d_decompress11(MUX,13)@0 + 1
    assign i_unnamed_zfp_1d_decompress11_s = i_unnamed_zfp_1d_decompress6_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_unnamed_zfp_1d_decompress11_s)
                1'b0 : i_unnamed_zfp_1d_decompress11_q <= in_c0_eni6_4_tpl;
                1'b1 : i_unnamed_zfp_1d_decompress11_q <= in_c0_eni6_2_tpl;
                default : i_unnamed_zfp_1d_decompress11_q <= 64'b0;
            endcase
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress9_zfp_1d_decompress15(BLACKBOX,9)@1
    // out out_intel_reserved_ffwd_5_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00009_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress9_zfp_1d_decompress15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(i_unnamed_zfp_1d_decompress11_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress9_zfp_1d_decompress15_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress9_zfp_1d_decompress15_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg3(REG,36)@0 + 1
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

    // c_i32_224_recast_x(CONSTANT,26)
    assign c_i32_224_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_zfp_1d_decompress4(LOGICAL,15)@0
    assign i_unnamed_zfp_1d_decompress4_q = $unsigned(in_c0_eni6_1_tpl == c_i32_224_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select32_zfp_1d_decompress12(MUX,11)@0 + 1
    assign i_spec_select32_zfp_1d_decompress12_s = i_unnamed_zfp_1d_decompress4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_spec_select32_zfp_1d_decompress12_s)
                1'b0 : i_spec_select32_zfp_1d_decompress12_q <= in_c0_eni6_5_tpl;
                1'b1 : i_spec_select32_zfp_1d_decompress12_q <= in_c0_eni6_2_tpl;
                default : i_spec_select32_zfp_1d_decompress12_q <= 64'b0;
            endcase
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress10_zfp_1d_decompress16(BLACKBOX,6)@1
    // out out_intel_reserved_ffwd_6_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00000_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress10_zfp_1d_decompress16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(i_spec_select32_zfp_1d_decompress12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress10_zfp_1d_decompress16_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress10_zfp_1d_decompress16_out_intel_reserved_ffwd_6_0;

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

    // c_i32_323_recast_x(CONSTANT,27)
    assign c_i32_323_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_zfp_1d_decompress2(LOGICAL,14)@0
    assign i_unnamed_zfp_1d_decompress2_q = $unsigned(in_c0_eni6_1_tpl == c_i32_323_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select33_zfp_1d_decompress13(MUX,12)@0 + 1
    assign i_spec_select33_zfp_1d_decompress13_s = i_unnamed_zfp_1d_decompress2_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_spec_select33_zfp_1d_decompress13_s)
                1'b0 : i_spec_select33_zfp_1d_decompress13_q <= in_c0_eni6_6_tpl;
                1'b1 : i_spec_select33_zfp_1d_decompress13_q <= in_c0_eni6_2_tpl;
                default : i_spec_select33_zfp_1d_decompress13_q <= 64'b0;
            endcase
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress11_zfp_1d_decompress17(BLACKBOX,7)@1
    // out out_intel_reserved_ffwd_7_0@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00001_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress11_zfp_1d_decompress17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_spec_select33_zfp_1d_decompress13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress11_zfp_1d_decompress17_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_1d_decompress11_zfp_1d_decompress17_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg0(REG,33)@0 + 1
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

    // sync_out_aunroll_x(GPOUT,31)@1
    assign out_c0_exi495_0_tpl = GND_q;
    assign out_c0_exi495_1_tpl = i_spec_select31_zfp_1d_decompress10_q;
    assign out_c0_exi495_2_tpl = i_unnamed_zfp_1d_decompress11_q;
    assign out_c0_exi495_3_tpl = i_spec_select32_zfp_1d_decompress12_q;
    assign out_c0_exi495_4_tpl = i_spec_select33_zfp_1d_decompress13_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_1d_decompress7 = GND_q;

endmodule
