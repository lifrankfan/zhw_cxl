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

// SystemVerilog created from bb_zfp_inv_lift_B4_stall_region
// Created for function/kernel zfp_inv_lift
// SystemVerilog created on Fri Feb 13 18:09:03 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_inv_lift_bb_B4_stall_region (
    input wire [0:0] in_iowr_bl_out_stream_i_fifoready,
    output wire [63:0] out_iowr_bl_out_stream_o_fifodata,
    output wire [0:0] out_iowr_bl_out_stream_o_fifovalid,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe340,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_iowr_bl_out_stream_o_fifodata;
    wire [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_iowr_bl_out_stream_o_fifovalid;
    wire [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty;
    wire [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty;
    wire [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_stall;
    wire [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_i_empty;
    wire coalesced_delay_0_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_almost_empty;
    wire coalesced_delay_0_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_o_empty;
    wire coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_almost_empty;
    wire coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    wire [65:0] bubble_join_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_d;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V4;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V3;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V5;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_stall_exit_backStall;
    wire [0:0] merged_in_SE_stall_exit_V0;
    wire [0:0] merged_in_SE_stall_exit_V1;
    wire [0:0] merged_in_SE_stall_exit_V2;
    wire [0:0] merged_in_SE_stall_exit_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_stall_exit_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_stall_exit_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_stall_exit_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_stall_exit_temp_back_stall;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_stall_exit_V0_sync_valid_reg0_q;
    reg [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_in_i_stall_reg0_q;
    reg [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_in_i_stall_reg1_q;
    reg [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty_reg1_q;
    reg [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty_reg0_q;
    reg [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty_reg1_q;
    reg [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty_reg0_q;
    reg [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_valid_reg1_q;
    reg [0:0] i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_valid_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg0_q;
    reg [1:0] coalesced_delay_0_fifo_o_data_reg1_q;
    reg [1:0] coalesced_delay_0_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // join_for_coalesced_delay_0(BITJOIN,27)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_b};

    // coalesced_delay_0_fifo_i_stall_reg0(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_stall_exit_backStall);
        end
    end

    // coalesced_delay_0_fifo_i_stall_reg1(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg1_q <= $unsigned(coalesced_delay_0_fifo_i_stall_reg0_q);
        end
    end

    // coalesced_delay_0_fifo(STALLFIFO,29)
    assign coalesced_delay_0_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V0;
    assign coalesced_delay_0_fifo_i_stall = coalesced_delay_0_fifo_i_stall_reg1_q;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V2;
    assign coalesced_delay_0_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V4;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_empty[0] = coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_almost_empty[0] = coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(42),
        .WIDTH(2),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .o_empty(coalesced_delay_0_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_fifo_o_almost_empty_reg0(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty);
        end
    end

    // coalesced_delay_0_fifo_o_almost_empty_reg1(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty_reg0(REG,73)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty_reg0_q <= $unsigned(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty);
        end
    end

    // i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty_reg1(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty_reg1_q <= $unsigned(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg0(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_empty);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg1(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_empty_reg0_q);
        end
    end

    // i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty_reg0(REG,75)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty_reg0_q <= $unsigned(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty);
        end
    end

    // i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty_reg1(REG,74)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty_reg1_q <= $unsigned(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg0(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_valid);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg1(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_valid_reg0_q);
        end
    end

    // i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_valid_reg0(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_valid_reg0_q <= $unsigned(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_valid);
        end
    end

    // i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_valid_reg1(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_valid_reg1_q <= $unsigned(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_stall_exit(STALLENABLE,62)
    // Sync
    assign merged_in_SE_stall_exit_temp_back_stall = in_stall_in;
    assign merged_in_SE_stall_exit_can_fast_read = ~ ((i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty_reg1_q | coalesced_delay_0_fifo_o_almost_empty_reg1_q));
    assign merged_in_SE_stall_exit_can_slow_read = ~ ((i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty_reg1_q | coalesced_delay_0_fifo_o_empty_reg1_q));
    assign merged_in_SE_stall_exit_backStall = ~ (merged_in_SE_stall_exit_forced_read);
    assign merged_in_SE_stall_exit_no_space_for_result = merged_in_SE_stall_exit_temp_back_stall;
    assign merged_in_SE_stall_exit_V0 = merged_in_SE_stall_exit_forced_read;
    assign merged_in_SE_stall_exit_V1 = $unsigned(1'b0);
    assign merged_in_SE_stall_exit_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_stall_exit_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_stall_exit_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_stall_exit_no_space_for_result[0];
    assign merged_in_SE_stall_exit_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_stall_exit (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_in_i_stall_reg0(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_in_i_stall_reg0_q <= $unsigned(merged_in_SE_stall_exit_backStall);
        end
    end

    // i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_in_i_stall_reg1(REG,71)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_in_i_stall_reg1_q <= $unsigned(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_in_i_stall_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_in_i_stall_reg0(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_in_i_stall_reg1(REG,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,85)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,84)
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

    // stall_entry_frontEmpty_reg0(REG,83)
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

    // stall_entry_frontEmpty_reg1(REG,82)
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

    // stall_entry_frontValid_reg0(REG,81)
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

    // stall_entry_frontValid_reg1(REG,80)
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

    // merged_in_SE_stall_entry(STALLENABLE,60)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x(BLACKBOX,23)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@46
    // out out_empty_out@46
    // out out_o_stall@20000000
    // out out_o_valid@46
    // out out_profile_loop_o_valid@46
    // out out_c0_exit37_0_tpl@46
    // out out_c0_exit37_1_tpl@46
    // out out_c0_exit37_2_tpl@46
    // out out_c0_exit37_3_tpl@46
    zfp_inv_lift_i_sfc_s_c0_in_for_body5_s_c0_enter323_zfp_inv_lift1 thei_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_c0_eni131_0_tpl(GND_q),
        .in_c0_eni131_1_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit37_0_tpl(),
        .out_c0_exit37_1_tpl(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl),
        .out_c0_exit37_2_tpl(),
        .out_c0_exit37_3_tpl(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl_reg0(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl_reg1(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl_reg0(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl_reg1(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg0(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg1(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x(BITJOIN,33)
    assign bubble_join_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_q = {i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_3_tpl_reg1_q, i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_c0_exit37_1_tpl_reg1_q, i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_profile_loop_o_valid_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x(BITSELECT,34)
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_q[65:65]);

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg0(REG,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg1(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out_reg0(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out_reg1(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid_reg0(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid_reg1(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x(STALLENABLE,61)
    // Desync
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_temp_back_stall = coalesced_delay_0_fifo_o_stall | i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_backStall = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V0 = i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V2 = i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V4 = i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_out_almost_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V1 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V3 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V2;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V5 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V4;

    // i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3(BLACKBOX,8)@46
    // in in_i_stall@20000000
    // out out_iowr_bl_out_stream_o_fifodata@20000000
    // out out_iowr_bl_out_stream_o_fifovalid@20000000
    // out out_o_ack@70
    // out out_o_almost_empty@70
    // out out_o_empty@70
    // out out_o_stall@20000000
    // out out_o_valid@70
    zfp_inv_lift_i_iowr_bl_out_stream_unnamed_18_zfp_inv_lift0 thei_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V5),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V3),
        .in_i_data(bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_c),
        .in_i_stall(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body5_zfp_inv_lifts_c0_enter323_zfp_inv_lift1_aunroll_x_V1),
        .in_iowr_bl_out_stream_i_fifoready(in_iowr_bl_out_stream_i_fifoready),
        .out_iowr_bl_out_stream_o_fifodata(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_iowr_bl_out_stream_o_fifodata),
        .out_iowr_bl_out_stream_o_fifovalid(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_iowr_bl_out_stream_o_fifovalid),
        .out_o_ack(),
        .out_o_almost_empty(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_almost_empty),
        .out_o_empty(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_empty),
        .out_o_stall(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_stall),
        .out_o_valid(i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_iowr_bl_out_stream_o_fifodata = i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_iowr_bl_out_stream_o_fifodata;
    assign out_iowr_bl_out_stream_o_fifovalid = i_iowr_bl_out_stream_unnamed_zfp_inv_lift18_zfp_inv_lift3_out_iowr_bl_out_stream_o_fifovalid;

    // stall_entry_frontStall_reg0(REG,78)
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

    // stall_entry_frontStall_reg1(REG,79)
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

    // merged_in_SE_stall_exit_V0_sync_valid_reg0(REG,69)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_stall_exit_V0);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg1(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg2(REG,67)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg3(REG,66)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg4(REG,65)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg5(REG,64)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_stall_exit_V0_sync_valid_reg6(REG,63)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_stall_exit_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_stall_exit_V0_sync_valid_reg5_q);
        end
    end

    // coalesced_delay_0_fifo_o_data_reg0(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_data);
        end
    end

    // coalesced_delay_0_fifo_o_data_reg1(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,36)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,37)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,28)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,22)@70
    assign out_almost_empty_out = merged_in_SE_stall_exit_V2;
    assign out_c0_exe340 = sel_for_coalesced_delay_0_c;
    assign out_empty_out = merged_in_SE_stall_exit_V1;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_0_b;
    assign out_valid_out = merged_in_SE_stall_exit_V0_sync_valid_reg6_q;

    // rst_sync(RESETSYNC,110)
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
