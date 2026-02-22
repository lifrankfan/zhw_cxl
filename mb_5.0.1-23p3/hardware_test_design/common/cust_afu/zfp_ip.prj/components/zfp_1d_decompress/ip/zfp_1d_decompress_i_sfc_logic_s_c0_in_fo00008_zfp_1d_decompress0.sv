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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond15_i_preheader_zfp_1d_decompresss_c0_enter118_zfp_1d_decompress0
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_i_sfc_logic_s_c0_in_fo00008_zfp_1d_decompress0 (
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_i_valid,
    output wire [63:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zfp_1d_decompress1,
    output wire [0:0] out_unnamed_zfp_1d_decompress5_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_12_3_select51_zfp_1d_decompress4_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_6_4_select49_zfp_1d_decompress1_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_9_4_select50_zfp_1d_decompress3_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg3(REG,20)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_12_3_select51_zfp_1d_decompress4(BLACKBOX,6)@1
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_0000sroa_12_3_select51_0 thei_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_12_3_select51_zfp_1d_decompress4 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_12_3_select51_zfp_1d_decompress4_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,19)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_9_4_select50_zfp_1d_decompress3(BLACKBOX,8)@1
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_0000_sroa_9_4_select50_0 thei_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_9_4_select50_zfp_1d_decompress3 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_9_4_select50_zfp_1d_decompress3_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,18)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_6_4_select49_zfp_1d_decompress1(BLACKBOX,7)@1
    zfp_1d_decompress_i_llvm_fpga_ffwd_dest_0000_sroa_6_4_select49_0 thei_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_6_4_select49_zfp_1d_decompress1 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_6_4_select49_zfp_1d_decompress1_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,21)@0 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x(BLACKBOX,14)@1
    // out out_intel_reserved_ffwd_0_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_2_tpl@20000000
    zfp_1d_decompress_i_llvm_fpga_ffwd_sourc00004_zfp_1d_decompress0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .in_src_data_in_0_0_0_tpl(i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_6_4_select49_zfp_1d_decompress1_out_dest_data_out_2_0),
        .in_src_data_in_0_0_1_tpl(i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_9_4_select50_zfp_1d_decompress3_out_dest_data_out_3_0),
        .in_src_data_in_0_0_2_tpl(i_llvm_fpga_ffwd_dest_i64_ublock_i_sroa_12_3_select51_zfp_1d_decompress4_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .out_intel_reserved_ffwd_0_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync_aunroll_x(GPOUT,15)
    assign out_intel_reserved_ffwd_0_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    assign out_intel_reserved_ffwd_0_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    assign out_intel_reserved_ffwd_0_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_zfp_1d_decompress_fpgaunique_1s_unnamed_zfp_1d_decompress4_zfp_1d_decompress5_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;

    // valid_fanout_reg0(REG,17)@0 + 1
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

    // sync_out_aunroll_x(GPOUT,16)@1
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zfp_1d_decompress1 = GND_q;
    assign out_unnamed_zfp_1d_decompress5_0_tpl = GND_q;

endmodule
