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

// SystemVerilog created from bb_zfp_uint_to_int_B4_stall_region
// Created for function/kernel zfp_uint_to_int
// SystemVerilog created on Fri Feb 13 18:08:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_uint_to_int_bb_B4_stall_region (
    input wire [0:0] in_iowr_bl_return_zfp_uint_to_int_i_fifoready,
    output wire [0:0] out_iowr_bl_return_zfp_uint_to_int_o_fifodata,
    output wire [0:0] out_iowr_bl_return_zfp_uint_to_int_o_fifovalid,
    output wire [0:0] out_feedback_almost_empty_out_1,
    output wire [0:0] out_feedback_data_out_1,
    output wire [0:0] out_feedback_empty_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_iowr_bl_return_zfp_uint_to_int_o_fifodata;
    wire [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_iowr_bl_return_zfp_uint_to_int_o_fifovalid;
    wire [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack;
    wire [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty;
    wire [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty;
    wire [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_stall;
    wire [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_empty_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_feedback_almost_empty_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_feedback_data_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_feedback_empty_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_valid_out;
    wire [0:0] bubble_join_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_q;
    wire [0:0] bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_b;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_temp_back_stall;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_V4;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V3;
    wire [0:0] merged_in_SE_stall_entry_V5;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_V0;
    wire [0:0] merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_V1;
    wire [0:0] merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_V2;
    wire [0:0] merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_temp_back_stall;
    reg [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_in_i_stall_reg0_q;
    reg [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_in_i_stall_reg1_q;
    reg [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack_reg1_q;
    reg [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack_reg0_q;
    reg [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty_reg1_q;
    reg [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty_reg0_q;
    reg [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty_reg1_q;
    reg [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty_reg0_q;
    reg [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid_reg1_q;
    reg [0:0] i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty_reg0(REG,49)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty_reg0_q <= $unsigned(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty);
        end
    end

    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty_reg1(REG,48)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty_reg1_q <= $unsigned(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty_reg0_q);
        end
    end

    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty_reg0(REG,51)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty_reg0_q <= $unsigned(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty);
        end
    end

    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty_reg1(REG,50)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty_reg1_q <= $unsigned(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_almost_empty_out_reg0(REG,57)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_almost_empty_out_reg1(REG,56)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_almost_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_empty_out_reg0(REG,59)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_empty_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_empty_out_reg1(REG,58)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_valid_out_reg0(REG,61)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_valid_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_valid_out_reg1(REG,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_valid_out_reg0_q);
        end
    end

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1(STALLENABLE,31)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_in_stall_in_reg0(REG,54)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_in_stall_in_reg0_q <= $unsigned(SE_out_i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_backStall);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_in_stall_in_reg1(REG,55)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_in_stall_in_reg0_q);
        end
    end

    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack_reg0(REG,47)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack_reg0_q <= $unsigned(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack);
        end
    end

    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack_reg1(REG,46)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack_reg1_q <= $unsigned(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack_reg0_q);
        end
    end

    // bubble_join_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0(BITJOIN,24)
    assign bubble_join_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_q = i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack_reg1_q;

    // bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0(BITSELECT,25)
    assign bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_b = $unsigned(bubble_join_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1(BLACKBOX,12)@24
    // in in_stall_in@20000000
    // out out_almost_empty_out@41
    // out out_data_out@41
    // out out_empty_out@41
    // out out_feedback_almost_empty_out_1@20000000
    // out out_feedback_data_out_1@20000000
    // out out_feedback_empty_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@41
    zfp_uint_to_int_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_V2),
        .in_data_in(bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_b),
        .in_empty_in(merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_V1),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_V0),
        .out_almost_empty_out(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_empty_out),
        .out_feedback_almost_empty_out_1(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_feedback_almost_empty_out_1),
        .out_feedback_data_out_1(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_feedback_data_out_1),
        .out_feedback_empty_out_1(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_feedback_empty_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid_reg0(REG,53)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid_reg0_q <= $unsigned(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid);
        end
    end

    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid_reg1(REG,52)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid_reg1_q <= $unsigned(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0(STALLENABLE,43)
    assign merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_backStall = i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_stall_out;
    assign merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_V0 = i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_V1 = i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty_reg1_q;
    assign merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_V2 = i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty_reg1_q;

    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_in_i_stall_reg0(REG,44)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_backStall);
        end
    end

    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_in_i_stall_reg1(REG,45)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_in_i_stall_reg1_q <= $unsigned(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_in_i_stall_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // stall_entry_frontAlmostEmpty_reg0(REG,69)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,67)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,66)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,65)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,64)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_stall_entry(STALLENABLE,42)
    // Desync
    assign merged_in_SE_stall_entry_temp_back_stall = in_stall_in | i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_stall;
    assign merged_in_SE_stall_entry_backStall = merged_in_SE_stall_entry_temp_back_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V4 = stall_entry_frontAlmostEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V1 = merged_in_SE_stall_entry_V0;
    assign merged_in_SE_stall_entry_V3 = merged_in_SE_stall_entry_V2;
    assign merged_in_SE_stall_entry_V5 = merged_in_SE_stall_entry_V4;

    // i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0(BLACKBOX,11)@0
    // in in_i_stall@20000000
    // out out_iowr_bl_return_zfp_uint_to_int_o_fifodata@20000000
    // out out_iowr_bl_return_zfp_uint_to_int_o_fifovalid@20000000
    // out out_o_ack@24
    // out out_o_almost_empty@24
    // out out_o_empty@24
    // out out_o_stall@20000000
    // out out_o_valid@24
    zfp_uint_to_int_i_iowr_bl_return_unnamed0000t13_zfp_uint_to_int0 thei_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0 (
        .in_almost_empty_in(merged_in_SE_stall_entry_V5),
        .in_empty_in(merged_in_SE_stall_entry_V3),
        .in_i_data(GND_q),
        .in_i_stall(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V1),
        .in_iowr_bl_return_zfp_uint_to_int_i_fifoready(in_iowr_bl_return_zfp_uint_to_int_i_fifoready),
        .out_iowr_bl_return_zfp_uint_to_int_o_fifodata(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_iowr_bl_return_zfp_uint_to_int_o_fifodata),
        .out_iowr_bl_return_zfp_uint_to_int_o_fifovalid(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_iowr_bl_return_zfp_uint_to_int_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_ack),
        .out_o_almost_empty(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_almost_empty),
        .out_o_empty(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_empty),
        .out_o_stall(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_stall),
        .out_o_valid(i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iowr_bl_return_zfp_uint_to_int_o_fifodata = i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_iowr_bl_return_zfp_uint_to_int_o_fifodata;
    assign out_iowr_bl_return_zfp_uint_to_int_o_fifovalid = i_iowr_bl_return_zfp_uint_to_int_unnamed_zfp_uint_to_int13_zfp_uint_to_int0_out_iowr_bl_return_zfp_uint_to_int_o_fifovalid;

    // feedback_almost_empty_out_1_sync(GPOUT,7)
    assign out_feedback_almost_empty_out_1 = i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_feedback_almost_empty_out_1;

    // feedback_data_out_1_sync(GPOUT,8)
    assign out_feedback_data_out_1 = i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_feedback_data_out_1;

    // feedback_empty_out_1_sync(GPOUT,9)
    assign out_feedback_empty_out_1 = i_llvm_fpga_push_token_i1_throttle_push_zfp_uint_to_int1_out_feedback_empty_out_1;

    // stall_entry_frontStall_reg0(REG,62)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,63)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,20)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_sync_out_x(GPOUT,22)@0
    assign out_almost_empty_out = merged_in_SE_stall_entry_V4;
    assign out_empty_out = merged_in_SE_stall_entry_V2;
    assign out_valid_out = merged_in_SE_stall_entry_V0;

    // rst_sync(RESETSYNC,70)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
