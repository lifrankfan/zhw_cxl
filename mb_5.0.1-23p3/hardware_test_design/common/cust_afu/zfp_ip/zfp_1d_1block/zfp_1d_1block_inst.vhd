	component zfp_1d_1block is
		port (
			clock            : in  std_logic                     := 'X';             -- clk
			resetn           : in  std_logic                     := 'X';             -- reset_n
			in_stream_data   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			in_stream_ready  : out std_logic;                                        -- ready
			in_stream_valid  : in  std_logic                     := 'X';             -- valid
			out_stream_data  : out std_logic_vector(63 downto 0);                    -- data
			out_stream_ready : in  std_logic                     := 'X';             -- ready
			out_stream_valid : out std_logic;                                        -- valid
			start            : in  std_logic                     := 'X';             -- valid
			busy             : out std_logic;                                        -- stall
			done             : out std_logic;                                        -- valid
			stall            : in  std_logic                     := 'X'              -- stall
		);
	end component zfp_1d_1block;

	u0 : component zfp_1d_1block
		port map (
			clock            => CONNECTED_TO_clock,            --      clock.clk
			resetn           => CONNECTED_TO_resetn,           --      reset.reset_n
			in_stream_data   => CONNECTED_TO_in_stream_data,   --  in_stream.data
			in_stream_ready  => CONNECTED_TO_in_stream_ready,  --           .ready
			in_stream_valid  => CONNECTED_TO_in_stream_valid,  --           .valid
			out_stream_data  => CONNECTED_TO_out_stream_data,  -- out_stream.data
			out_stream_ready => CONNECTED_TO_out_stream_ready, --           .ready
			out_stream_valid => CONNECTED_TO_out_stream_valid, --           .valid
			start            => CONNECTED_TO_start,            --       call.valid
			busy             => CONNECTED_TO_busy,             --           .stall
			done             => CONNECTED_TO_done,             --     return.valid
			stall            => CONNECTED_TO_stall             --           .stall
		);

