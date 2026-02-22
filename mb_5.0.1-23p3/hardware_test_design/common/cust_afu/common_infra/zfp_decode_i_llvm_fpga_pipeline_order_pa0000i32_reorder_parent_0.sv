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

// SystemVerilog created from i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode0
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_i_llvm_fpga_pipeline_order_pa0000i32_reorder_parent_0 (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_exit_inner_loop,
    input wire [0:0] in_i_exit_outer_loop,
    input wire [31:0] in_i_outer_loop_token,
    input wire [0:0] in_i_predicate,
    input wire [0:0] in_i_start_inner_loop,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_exit_outer_loop,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_inner_loop;
    wire i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_inner_loop_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_outer_loop;
    wire i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_outer_loop_bitsignaltemp;
    wire [31:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_outer_loop_token;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_predicate;
    wire i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_stall;
    wire i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_start_inner_loop;
    wire i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_start_inner_loop_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_valid;
    wire i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_exit_outer_loop;
    wire i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_exit_outer_loop_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_stall;
    wire i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_valid;
    wire i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_valid_bitsignaltemp;


    // i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1(EXTIFACE,2)@4 + 3
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_inner_loop = in_i_exit_inner_loop;
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_outer_loop = in_i_exit_outer_loop;
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_outer_loop_token = in_i_outer_loop_token;
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_predicate = in_i_predicate;
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_stall = in_i_stall;
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_start_inner_loop = in_i_start_inner_loop;
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_valid = in_i_valid;
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_inner_loop_bitsignaltemp = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_inner_loop[0];
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_outer_loop_bitsignaltemp = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_outer_loop[0];
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_predicate_bitsignaltemp = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_predicate[0];
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_stall_bitsignaltemp = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_stall[0];
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_start_inner_loop_bitsignaltemp = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_start_inner_loop[0];
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_valid_bitsignaltemp = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_valid[0];
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_exit_outer_loop[0] = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_exit_outer_loop_bitsignaltemp;
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_stall[0] = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_stall_bitsignaltemp;
    assign i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_valid[0] = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_valid_bitsignaltemp;
    hld_loop_exit_reorder_counter #(
        .COUNTER_WIDTH(1),
        .PASSTHROUGH(0),
        .ASYNC_RESET(0),
        .NUM_TOKENS(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1 (
        .i_exit_inner_loop(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_inner_loop_bitsignaltemp),
        .i_exit_outer_loop(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_exit_outer_loop_bitsignaltemp),
        .i_outer_loop_token(in_i_outer_loop_token),
        .i_predicate(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_predicate_bitsignaltemp),
        .i_stall(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_stall_bitsignaltemp),
        .i_start_inner_loop(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_start_inner_loop_bitsignaltemp),
        .i_valid(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_i_valid_bitsignaltemp),
        .o_exit_outer_loop(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_exit_outer_loop_bitsignaltemp),
        .o_stall(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_valid_bitsignaltemp),
        .clk(clock),
        .i_resetn(resetn)
    );

    // sync_out(GPOUT,4)@7
    assign out_o_stall = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_stall;

    // dupName_0_sync_out_x(GPOUT,6)@7
    assign out_o_exit_outer_loop = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_exit_outer_loop;
    assign out_o_valid = i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_zfp_decode1_o_valid;

endmodule
