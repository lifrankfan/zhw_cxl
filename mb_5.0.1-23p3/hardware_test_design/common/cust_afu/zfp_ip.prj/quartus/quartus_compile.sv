module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [63:0] zfp_1d_decompress_in_stream_data
	, output logic [0:0] zfp_1d_decompress_in_stream_ready
	, input logic [0:0] zfp_1d_decompress_in_stream_valid
	, output logic [63:0] zfp_1d_decompress_out_stream_data
	, input logic [0:0] zfp_1d_decompress_out_stream_ready
	, output logic [0:0] zfp_1d_decompress_out_stream_valid
	, input logic [0:0] zfp_1d_decompress_start
	, output logic [0:0] zfp_1d_decompress_busy
	, output logic [0:0] zfp_1d_decompress_done
	, input logic [0:0] zfp_1d_decompress_stall
	);

	logic [63:0] zfp_1d_decompress_in_stream_data_reg;
	logic [0:0] zfp_1d_decompress_in_stream_ready_reg;
	logic [0:0] zfp_1d_decompress_in_stream_valid_reg;
	logic [63:0] zfp_1d_decompress_out_stream_data_reg;
	logic [0:0] zfp_1d_decompress_out_stream_ready_reg;
	logic [0:0] zfp_1d_decompress_out_stream_valid_reg;
	logic [0:0] zfp_1d_decompress_start_reg;
	logic [0:0] zfp_1d_decompress_busy_reg;
	logic [0:0] zfp_1d_decompress_done_reg;
	logic [0:0] zfp_1d_decompress_stall_reg;


	always @(posedge clock) begin
		zfp_1d_decompress_in_stream_data_reg <= zfp_1d_decompress_in_stream_data;
		zfp_1d_decompress_in_stream_ready <= zfp_1d_decompress_in_stream_ready_reg;
		zfp_1d_decompress_in_stream_valid_reg <= zfp_1d_decompress_in_stream_valid;
		zfp_1d_decompress_out_stream_data <= zfp_1d_decompress_out_stream_data_reg;
		zfp_1d_decompress_out_stream_ready_reg <= zfp_1d_decompress_out_stream_ready;
		zfp_1d_decompress_out_stream_valid <= zfp_1d_decompress_out_stream_valid_reg;
		zfp_1d_decompress_start_reg <= zfp_1d_decompress_start;
		zfp_1d_decompress_busy <= zfp_1d_decompress_busy_reg;
		zfp_1d_decompress_done <= zfp_1d_decompress_done_reg;
		zfp_1d_decompress_stall_reg <= zfp_1d_decompress_stall;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	zfp_1d_decompress zfp_1d_decompress_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .in_stream_data(zfp_1d_decompress_in_stream_data_reg)
		, .in_stream_ready(zfp_1d_decompress_in_stream_ready_reg)
		, .in_stream_valid(zfp_1d_decompress_in_stream_valid_reg)
		, .out_stream_data(zfp_1d_decompress_out_stream_data_reg)
		, .out_stream_ready(zfp_1d_decompress_out_stream_ready_reg)
		, .out_stream_valid(zfp_1d_decompress_out_stream_valid_reg)
		, .start(zfp_1d_decompress_start_reg)
		, .busy(zfp_1d_decompress_busy_reg)
		, .done(zfp_1d_decompress_done_reg)
		, .stall(zfp_1d_decompress_stall_reg)
	);



endmodule
