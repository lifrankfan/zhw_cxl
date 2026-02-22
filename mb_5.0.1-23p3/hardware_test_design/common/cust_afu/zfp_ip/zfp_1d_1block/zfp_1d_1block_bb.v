module zfp_1d_1block (
		input  wire        clock,            //      clock.clk
		input  wire        resetn,           //      reset.reset_n
		input  wire [63:0] in_stream_data,   //  in_stream.data
		output wire        in_stream_ready,  //           .ready
		input  wire        in_stream_valid,  //           .valid
		output wire [63:0] out_stream_data,  // out_stream.data
		input  wire        out_stream_ready, //           .ready
		output wire        out_stream_valid, //           .valid
		input  wire        start,            //       call.valid
		output wire        busy,             //           .stall
		output wire        done,             //     return.valid
		input  wire        stall             //           .stall
	);
endmodule

