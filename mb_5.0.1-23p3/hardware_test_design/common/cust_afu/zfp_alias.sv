
`timescale 1ns/1ps

module zfp_1d_1block (
    input logic clock,
    input logic resetn,
    input logic [63:0] in_stream_data,
    input logic in_stream_valid,
    output logic in_stream_ready,
    output logic [63:0] out_stream_data,
    output logic out_stream_valid,
    input logic out_stream_ready,
    input logic start,
    output logic busy,
    output logic done,
    input logic stall
);

    mock_zfp_1d_1block inst (
        .clock(clock),
        .resetn(resetn),
        .in_stream_data(in_stream_data),
        .in_stream_valid(in_stream_valid),
        .in_stream_ready(in_stream_ready),
        .out_stream_data(out_stream_data),
        .out_stream_valid(out_stream_valid),
        .out_stream_ready(out_stream_ready),
        .start(start),
        .busy(busy),
        .done(done),
        .stall(stall)
    );

endmodule
