	zfp_1d_decompress u0 (
		.clock            (_connected_to_clock_),            //   input,   width = 1,      clock.clk
		.resetn           (_connected_to_resetn_),           //   input,   width = 1,      reset.reset_n
		.in_stream_data   (_connected_to_in_stream_data_),   //   input,  width = 64,  in_stream.data
		.in_stream_ready  (_connected_to_in_stream_ready_),  //  output,   width = 1,           .ready
		.in_stream_valid  (_connected_to_in_stream_valid_),  //   input,   width = 1,           .valid
		.out_stream_data  (_connected_to_out_stream_data_),  //  output,  width = 64, out_stream.data
		.out_stream_ready (_connected_to_out_stream_ready_), //   input,   width = 1,           .ready
		.out_stream_valid (_connected_to_out_stream_valid_), //  output,   width = 1,           .valid
		.start            (_connected_to_start_),            //   input,   width = 1,       call.valid
		.busy             (_connected_to_busy_),             //  output,   width = 1,           .stall
		.done             (_connected_to_done_),             //  output,   width = 1,     return.valid
		.stall            (_connected_to_stall_)             //   input,   width = 1,           .stall
	);

