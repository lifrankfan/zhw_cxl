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

// SystemVerilog created from bb_zfp_uint_to_int_B1_start_stall_region
// Created for function/kernel zfp_uint_to_int
// SystemVerilog created on Fri Feb 13 18:08:45 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_uint_to_int_bb_B1_start_stall_region (
    input wire [0:0] in_iord_bl_call_zfp_uint_to_int_i_fifodata,
    input wire [0:0] in_iord_bl_call_zfp_uint_to_int_i_fifovalid,
    output wire [0:0] out_iord_bl_call_zfp_uint_to_int_o_fifoready,
    output wire [0:0] out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full,
    input wire [0:0] in_feedback_almost_empty_in_1,
    input wire [0:0] in_feedback_data_in_1,
    input wire [0:0] in_feedback_empty_in_1,
    output wire [0:0] out_feedback_stall_out_1,
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
    wire [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_iord_bl_call_zfp_uint_to_int_o_fifoready;
    wire [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty;
    wire [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty;
    wire [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_stall;
    wire [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_b;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_backStall;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_V0;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_V1;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_V2;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_V0;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_V1;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_V2;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_temp_back_stall;
    wire [0:0] merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_backStall;
    wire [0:0] merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_V0;
    wire [0:0] merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_V1;
    wire [0:0] merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_V2;
    wire [0:0] merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_temp_back_stall;
    reg [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_in_i_stall_reg0_q;
    reg [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_in_i_stall_reg1_q;
    reg [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty_reg1_q;
    reg [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty_reg0_q;
    reg [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty_reg1_q;
    reg [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty_reg0_q;
    reg [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid_reg1_q;
    reg [0:0] i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty_reg0(REG,58)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty_reg0_q <= $unsigned(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty);
        end
    end

    // i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty_reg1(REG,57)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty_reg1_q <= $unsigned(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty_reg0_q);
        end
    end

    // i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty_reg0(REG,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty_reg0_q <= $unsigned(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty);
        end
    end

    // i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty_reg1(REG,59)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty_reg1_q <= $unsigned(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty_reg0_q);
        end
    end

    // i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid_reg0(REG,62)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid_reg0_q <= $unsigned(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid);
        end
    end

    // i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid_reg1(REG,61)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid_reg1_q <= $unsigned(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2(STALLENABLE,54)
    assign merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_backStall = in_stall_in;
    assign merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_V0 = i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid_reg1_q;
    assign merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_V1 = i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty_reg1_q;
    assign merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_V2 = i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty_reg1_q;

    // i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_in_i_stall_reg0(REG,55)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_in_i_stall_reg0_q <= $unsigned(merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_backStall);
        end
    end

    // i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_in_i_stall_reg1(REG,56)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_in_i_stall_reg1_q <= $unsigned(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_in_i_stall_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_in_stall_in_reg0(REG,63)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_in_stall_in_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_backStall);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_in_stall_in_reg1(REG,64)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_in_stall_in_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_in_i_stall_reg0(REG,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_in_i_stall_reg1(REG,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,80)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,79)
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

    // stall_entry_frontEmpty_reg0(REG,78)
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

    // stall_entry_frontEmpty_reg1(REG,77)
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

    // stall_entry_frontValid_reg0(REG,76)
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

    // stall_entry_frontValid_reg1(REG,75)
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

    // merged_in_SE_stall_entry(STALLENABLE,51)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x(BLACKBOX,26)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@35
    // out out_empty_out@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_c0_exit_0_tpl@35
    // out out_c0_exit_1_tpl@35
    zfp_uint_to_int_i_sfc_s_c0_in_wt_entry_s0000er1_zfp_uint_to_int0 thei_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_unnamed_zfp_uint_to_int0_0_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out_reg0(REG,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out_reg1(REG,83)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out_reg0(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out_reg1(REG,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid_reg0(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid_reg1(REG,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x(STALLENABLE,52)
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_stall_out;
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_V0 = i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_V1 = i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_V2 = i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_out_almost_empty_out_reg1_q;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1(BLACKBOX,13)@35
    // in in_stall_in@20000000
    // out out_almost_empty_out@52
    // out out_data_out@52
    // out out_empty_out@52
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@52
    zfp_uint_to_int_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1 (
        .in_almost_empty_in(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_V2),
        .in_data_in(GND_q),
        .in_dir_in(GND_q),
        .in_empty_in(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_V1),
        .in_feedback_almost_empty_in_1(in_feedback_almost_empty_in_1),
        .in_feedback_data_in_1(in_feedback_data_in_1),
        .in_feedback_empty_in_1(in_feedback_empty_in_1),
        .in_stall_in(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_zfp_uint_to_ints_c0_enter1_zfp_uint_to_int0_aunroll_x_V0),
        .out_almost_empty_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out_reg0(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out_reg1(REG,67)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1(BITJOIN,29)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1(BITSELECT,30)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_q[0:0]);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out_reg0(REG,66)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out_reg1(REG,65)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out_reg0(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out_reg1(REG,69)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out_reg0(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out_reg1(REG,71)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1(STALLENABLE,53)
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_backStall = i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_V0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_valid_out_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_V1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_V2 = i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_almost_empty_out_reg1_q;

    // i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2(BLACKBOX,12)@52
    // in in_i_stall@20000000
    // out out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full@20000000
    // out out_iord_bl_call_zfp_uint_to_int_o_fifoready@20000000
    // out out_o_almost_empty@76
    // out out_o_data@76
    // out out_o_empty@76
    // out out_o_stall@20000000
    // out out_o_valid@76
    zfp_uint_to_int_i_iord_bl_call_unnamed_z0000nt1_zfp_uint_to_int0 thei_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_V2),
        .in_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_V1),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_b),
        .in_i_stall(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_V0),
        .in_iord_bl_call_zfp_uint_to_int_i_fifodata(in_iord_bl_call_zfp_uint_to_int_i_fifodata),
        .in_iord_bl_call_zfp_uint_to_int_i_fifovalid(in_iord_bl_call_zfp_uint_to_int_i_fifovalid),
        .out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full),
        .out_iord_bl_call_zfp_uint_to_int_o_fifoready(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_iord_bl_call_zfp_uint_to_int_o_fifoready),
        .out_o_almost_empty(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_almost_empty),
        .out_o_data(),
        .out_o_empty(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_empty),
        .out_o_stall(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_stall),
        .out_o_valid(i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_iord_bl_call_zfp_uint_to_int_o_fifoready = i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_iord_bl_call_zfp_uint_to_int_o_fifoready;
    assign out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full = i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_out_iord_bl_call_zfp_uint_to_int_o_fifoalmost_full;

    // feedback_stall_out_1_sync(GPOUT,11)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_zfp_uint_to_int1_out_feedback_stall_out_1;

    // stall_entry_frontStall_reg0(REG,73)
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

    // stall_entry_frontStall_reg1(REG,74)
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

    // sync_out(GPOUT,23)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_sync_out_x(GPOUT,25)@76
    assign out_almost_empty_out = merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_V2;
    assign out_empty_out = merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_V1;
    assign out_valid_out = merged_in_SE_out_i_iord_bl_call_zfp_uint_to_int_unnamed_zfp_uint_to_int1_zfp_uint_to_int2_V0;

    // rst_sync(RESETSYNC,89)
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
