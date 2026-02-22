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

// SystemVerilog created from zfp_1d_decompress_B4_branch
// Created for function/kernel zfp_1d_decompress
// SystemVerilog created on Fri Feb 13 17:22:08 2026


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zfp_1d_decompress_B4_branch (
    input wire [0:0] in_c0_exe2133,
    input wire [31:0] in_c0_exe4135,
    input wire [0:0] in_c0_exe6,
    input wire [31:0] in_c0_exe7,
    input wire [0:0] in_c0_exe8,
    input wire [0:0] in_c0_exe9,
    input wire [63:0] in_c1_exe10,
    input wire [63:0] in_c1_exe1149,
    input wire [63:0] in_c1_exe2150,
    input wire [63:0] in_c1_exe3151,
    input wire [63:0] in_c1_exe4,
    input wire [63:0] in_c1_exe5,
    input wire [63:0] in_c1_exe6,
    input wire [63:0] in_c1_exe7,
    input wire [63:0] in_c1_exe8,
    input wire [63:0] in_c1_exe9,
    input wire [0:0] in_c2_exe1141,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe2133,
    output wire [31:0] out_c0_exe4135,
    output wire [31:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [63:0] out_c1_exe10,
    output wire [63:0] out_c1_exe1149,
    output wire [63:0] out_c1_exe2150,
    output wire [63:0] out_c1_exe3151,
    output wire [63:0] out_c1_exe4,
    output wire [63:0] out_c1_exe5,
    output wire [63:0] out_c1_exe6,
    output wire [63:0] out_c1_exe7,
    output wire [63:0] out_c1_exe8,
    output wire [63:0] out_c1_exe9,
    output wire [0:0] out_c2_exe1141,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe2133_reg_q;
    reg [31:0] c0_exe4135_reg_q;
    wire [0:0] c0_exe6_cmp_q;
    reg [31:0] c0_exe7_reg_q;
    reg [0:0] c0_exe8_reg_q;
    reg [0:0] c0_exe9_reg_q;
    reg [63:0] c1_exe10_reg_q;
    reg [63:0] c1_exe1149_reg_q;
    reg [63:0] c1_exe2150_reg_q;
    reg [63:0] c1_exe3151_reg_q;
    reg [63:0] c1_exe4_reg_q;
    reg [63:0] c1_exe5_reg_q;
    reg [63:0] c1_exe6_reg_q;
    reg [63:0] c1_exe7_reg_q;
    reg [63:0] c1_exe8_reg_q;
    reg [63:0] c1_exe9_reg_q;
    reg [0:0] c2_exe1141_reg_q;
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
    wire [0:0] zfp_1d_decompress_B4_branch_enable_q;
    wire [0:0] zfp_1d_decompress_B4_branch_enable_not_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,40)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe6_cmp(LOGICAL,4)
    assign c0_exe6_cmp_q = ~ (in_c0_exe6);

    // valid_out_1_and(LOGICAL,67)
    assign valid_out_1_and_q = in_valid_in & c0_exe6_cmp_q;

    // valid_1_reg(REG,65)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,42)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,44)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,39)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,66)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe6;

    // valid_0_reg(REG,64)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,41)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,43)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // zfp_1d_decompress_B4_branch_enable(LOGICAL,68)
    assign zfp_1d_decompress_B4_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe2133_reg(REG,2)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe2133_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c0_exe2133_reg_q <= in_c0_exe2133;
        end
    end

    // out_c0_exe2133(GPOUT,45)
    assign out_c0_exe2133 = c0_exe2133_reg_q;

    // c0_exe4135_reg(REG,3)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe4135_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c0_exe4135_reg_q <= in_c0_exe4135;
        end
    end

    // out_c0_exe4135(GPOUT,46)
    assign out_c0_exe4135 = c0_exe4135_reg_q;

    // c0_exe7_reg(REG,5)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe7_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c0_exe7_reg_q <= in_c0_exe7;
        end
    end

    // out_c0_exe7(GPOUT,47)
    assign out_c0_exe7 = c0_exe7_reg_q;

    // c0_exe8_reg(REG,6)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe8_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c0_exe8_reg_q <= in_c0_exe8;
        end
    end

    // out_c0_exe8(GPOUT,48)
    assign out_c0_exe8 = c0_exe8_reg_q;

    // c0_exe9_reg(REG,7)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe9_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c0_exe9_reg_q <= in_c0_exe9;
        end
    end

    // out_c0_exe9(GPOUT,49)
    assign out_c0_exe9 = c0_exe9_reg_q;

    // c1_exe10_reg(REG,8)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe10_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c1_exe10_reg_q <= in_c1_exe10;
        end
    end

    // out_c1_exe10(GPOUT,50)
    assign out_c1_exe10 = c1_exe10_reg_q;

    // c1_exe1149_reg(REG,9)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe1149_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c1_exe1149_reg_q <= in_c1_exe1149;
        end
    end

    // out_c1_exe1149(GPOUT,51)
    assign out_c1_exe1149 = c1_exe1149_reg_q;

    // c1_exe2150_reg(REG,10)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe2150_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c1_exe2150_reg_q <= in_c1_exe2150;
        end
    end

    // out_c1_exe2150(GPOUT,52)
    assign out_c1_exe2150 = c1_exe2150_reg_q;

    // c1_exe3151_reg(REG,11)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe3151_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c1_exe3151_reg_q <= in_c1_exe3151;
        end
    end

    // out_c1_exe3151(GPOUT,53)
    assign out_c1_exe3151 = c1_exe3151_reg_q;

    // c1_exe4_reg(REG,12)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe4_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c1_exe4_reg_q <= in_c1_exe4;
        end
    end

    // out_c1_exe4(GPOUT,54)
    assign out_c1_exe4 = c1_exe4_reg_q;

    // c1_exe5_reg(REG,13)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe5_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c1_exe5_reg_q <= in_c1_exe5;
        end
    end

    // out_c1_exe5(GPOUT,55)
    assign out_c1_exe5 = c1_exe5_reg_q;

    // c1_exe6_reg(REG,14)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe6_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c1_exe6_reg_q <= in_c1_exe6;
        end
    end

    // out_c1_exe6(GPOUT,56)
    assign out_c1_exe6 = c1_exe6_reg_q;

    // c1_exe7_reg(REG,15)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe7_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c1_exe7_reg_q <= in_c1_exe7;
        end
    end

    // out_c1_exe7(GPOUT,57)
    assign out_c1_exe7 = c1_exe7_reg_q;

    // c1_exe8_reg(REG,16)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe8_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c1_exe8_reg_q <= in_c1_exe8;
        end
    end

    // out_c1_exe8(GPOUT,58)
    assign out_c1_exe8 = c1_exe8_reg_q;

    // c1_exe9_reg(REG,17)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe9_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c1_exe9_reg_q <= in_c1_exe9;
        end
    end

    // out_c1_exe9(GPOUT,59)
    assign out_c1_exe9 = c1_exe9_reg_q;

    // c2_exe1141_reg(REG,18)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c2_exe1141_reg_q <= $unsigned(1'b0);
        end
        else if (zfp_1d_decompress_B4_branch_enable_q == 1'b1)
        begin
            c2_exe1141_reg_q <= in_c2_exe1141;
        end
    end

    // out_c2_exe1141(GPOUT,60)
    assign out_c2_exe1141 = c2_exe1141_reg_q;

    // zfp_1d_decompress_B4_branch_enable_not(LOGICAL,69)
    assign zfp_1d_decompress_B4_branch_enable_not_q = ~ (zfp_1d_decompress_B4_branch_enable_q);

    // out_stall_out(GPOUT,61)
    assign out_stall_out = zfp_1d_decompress_B4_branch_enable_not_q;

    // out_valid_out_0(GPOUT,62)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,63)
    assign out_valid_out_1 = valid_1_reg_q;

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
