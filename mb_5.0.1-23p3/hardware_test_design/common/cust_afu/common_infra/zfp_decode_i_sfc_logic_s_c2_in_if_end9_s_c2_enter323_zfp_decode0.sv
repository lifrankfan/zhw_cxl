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

// SystemVerilog created from i_sfc_logic_s_c2_in_if_end9_zfp_decodes_c2_enter323_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_sfc_logic_s_c2_in_if_end9_s_c2_enter323_zfp_decode0 (
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_c2_exi1327_0_tpl,
    output wire [63:0] out_c2_exi1327_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_decode0,
    input wire [0:0] in_c2_eni3322_0_tpl,
    input wire [0:0] in_c2_eni3322_1_tpl,
    input wire [63:0] in_c2_eni3322_2_tpl,
    input wire [63:0] in_c2_eni3322_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_zfp_decode12_zfp_decode3_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_ublock_sroa_6_4_select_zfp_decode2_s;
    reg [63:0] i_ublock_sroa_6_4_select_zfp_decode2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,10)@0 + 1
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

    // i_ublock_sroa_6_4_select_zfp_decode2(MUX,4)@0 + 1
    assign i_ublock_sroa_6_4_select_zfp_decode2_s = in_c2_eni3322_1_tpl;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_ublock_sroa_6_4_select_zfp_decode2_s)
                1'b0 : i_ublock_sroa_6_4_select_zfp_decode2_q <= in_c2_eni3322_3_tpl;
                1'b1 : i_ublock_sroa_6_4_select_zfp_decode2_q <= in_c2_eni3322_2_tpl;
                default : i_ublock_sroa_6_4_select_zfp_decode2_q <= 64'b0;
            endcase
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i64_unnamed_zfp_decode12_zfp_decode3(BLACKBOX,3)@1
    // out out_intel_reserved_ffwd_2_0@20000000
    zfp_decode_i_llvm_fpga_ffwd_source_i64_unnamed_12_zfp_decode0 thei_llvm_fpga_ffwd_source_i64_unnamed_zfp_decode12_zfp_decode3 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_ublock_sroa_6_4_select_zfp_decode2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i64_unnamed_zfp_decode12_zfp_decode3_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,5)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i64_unnamed_zfp_decode12_zfp_decode3_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg0(REG,9)@0 + 1
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

    // sync_out_aunroll_x(GPOUT,7)@1
    assign out_c2_exi1327_0_tpl = GND_q;
    assign out_c2_exi1327_1_tpl = i_ublock_sroa_6_4_select_zfp_decode2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_decode0 = GND_q;

endmodule
