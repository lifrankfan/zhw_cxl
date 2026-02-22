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

// SystemVerilog created from zfp_decode_B6_branch
// Created for function/kernel zfp_decode
// SystemVerilog created on Fri Feb 13 18:08:25 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_decode_B6_branch (
    input wire [0:0] in_c0_exe10293,
    input wire [63:0] in_c0_exe11294,
    input wire [63:0] in_c0_exe12295,
    input wire [63:0] in_c0_exe1284,
    input wire [63:0] in_c0_exe13296,
    input wire [63:0] in_c0_exe14297,
    input wire [63:0] in_c0_exe2285,
    input wire [63:0] in_c0_exe3286,
    input wire [63:0] in_c0_exe4287,
    input wire [0:0] in_c0_exe6289,
    input wire [0:0] in_c0_exe7290,
    input wire [31:0] in_c0_exe8291,
    input wire [0:0] in_c0_exe9292,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10293,
    output wire [63:0] out_c0_exe11294,
    output wire [63:0] out_c0_exe12295,
    output wire [63:0] out_c0_exe1284,
    output wire [63:0] out_c0_exe13296,
    output wire [63:0] out_c0_exe14297,
    output wire [63:0] out_c0_exe2285,
    output wire [63:0] out_c0_exe3286,
    output wire [63:0] out_c0_exe4287,
    output wire [0:0] out_c0_exe7290,
    output wire [31:0] out_c0_exe8291,
    output wire [0:0] out_c0_exe9292,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe10293_reg_q;
    reg [63:0] c0_exe11294_reg_q;
    reg [63:0] c0_exe12295_reg_q;
    reg [63:0] c0_exe1284_reg_q;
    reg [63:0] c0_exe13296_reg_q;
    reg [63:0] c0_exe14297_reg_q;
    reg [63:0] c0_exe2285_reg_q;
    reg [63:0] c0_exe3286_reg_q;
    reg [63:0] c0_exe4287_reg_q;
    wire [0:0] c0_exe6289_cmp_q;
    reg [0:0] c0_exe7290_reg_q;
    reg [31:0] c0_exe8291_reg_q;
    reg [0:0] c0_exe9292_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;
    wire [0:0] zfp_decode_B6_branch_enable_q;
    wire [0:0] zfp_decode_B6_branch_enable_not_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,32)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe6289_cmp(LOGICAL,11)
    assign c0_exe6289_cmp_q = ~ (in_c0_exe6289);

    // valid_out_1_and(LOGICAL,55)
    assign valid_out_1_and_q = in_valid_in & c0_exe6289_cmp_q;

    // valid_1_reg(REG,53)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,34)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,36)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,31)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,54)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe6289;

    // valid_0_reg(REG,52)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,33)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,35)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // zfp_decode_B6_branch_enable(LOGICAL,56)
    assign zfp_decode_B6_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10293_reg(REG,2)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe10293_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe10293_reg_q <= in_c0_exe10293;
        end
    end

    // out_c0_exe10293(GPOUT,37)
    assign out_c0_exe10293 = c0_exe10293_reg_q;

    // c0_exe11294_reg(REG,3)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe11294_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe11294_reg_q <= in_c0_exe11294;
        end
    end

    // out_c0_exe11294(GPOUT,38)
    assign out_c0_exe11294 = c0_exe11294_reg_q;

    // c0_exe12295_reg(REG,4)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe12295_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe12295_reg_q <= in_c0_exe12295;
        end
    end

    // out_c0_exe12295(GPOUT,39)
    assign out_c0_exe12295 = c0_exe12295_reg_q;

    // c0_exe1284_reg(REG,5)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe1284_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe1284_reg_q <= in_c0_exe1284;
        end
    end

    // out_c0_exe1284(GPOUT,40)
    assign out_c0_exe1284 = c0_exe1284_reg_q;

    // c0_exe13296_reg(REG,6)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe13296_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe13296_reg_q <= in_c0_exe13296;
        end
    end

    // out_c0_exe13296(GPOUT,41)
    assign out_c0_exe13296 = c0_exe13296_reg_q;

    // c0_exe14297_reg(REG,7)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe14297_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe14297_reg_q <= in_c0_exe14297;
        end
    end

    // out_c0_exe14297(GPOUT,42)
    assign out_c0_exe14297 = c0_exe14297_reg_q;

    // c0_exe2285_reg(REG,8)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe2285_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe2285_reg_q <= in_c0_exe2285;
        end
    end

    // out_c0_exe2285(GPOUT,43)
    assign out_c0_exe2285 = c0_exe2285_reg_q;

    // c0_exe3286_reg(REG,9)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe3286_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe3286_reg_q <= in_c0_exe3286;
        end
    end

    // out_c0_exe3286(GPOUT,44)
    assign out_c0_exe3286 = c0_exe3286_reg_q;

    // c0_exe4287_reg(REG,10)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe4287_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe4287_reg_q <= in_c0_exe4287;
        end
    end

    // out_c0_exe4287(GPOUT,45)
    assign out_c0_exe4287 = c0_exe4287_reg_q;

    // c0_exe7290_reg(REG,12)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe7290_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe7290_reg_q <= in_c0_exe7290;
        end
    end

    // out_c0_exe7290(GPOUT,46)
    assign out_c0_exe7290 = c0_exe7290_reg_q;

    // c0_exe8291_reg(REG,13)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe8291_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe8291_reg_q <= in_c0_exe8291;
        end
    end

    // out_c0_exe8291(GPOUT,47)
    assign out_c0_exe8291 = c0_exe8291_reg_q;

    // c0_exe9292_reg(REG,14)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe9292_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_decode_B6_branch_enable_q == 1'b1)
        begin
            c0_exe9292_reg_q <= in_c0_exe9292;
        end
    end

    // out_c0_exe9292(GPOUT,48)
    assign out_c0_exe9292 = c0_exe9292_reg_q;

    // zfp_decode_B6_branch_enable_not(LOGICAL,57)
    assign zfp_decode_B6_branch_enable_not_q = ~ (zfp_decode_B6_branch_enable_q);

    // out_stall_out(GPOUT,49)
    assign out_stall_out = zfp_decode_B6_branch_enable_not_q;

    // out_valid_out_0(GPOUT,50)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,51)
    assign out_valid_out_1 = valid_1_reg_q;

    // rst_sync(RESETSYNC,58)
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
