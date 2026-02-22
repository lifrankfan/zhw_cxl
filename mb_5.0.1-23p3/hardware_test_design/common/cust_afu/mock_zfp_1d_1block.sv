
`timescale 1ns/1ps

module mock_zfp_1d_1block (
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

    // Internal state
    enum logic [2:0] {IDLE, READ, PROCESS, WRITE} state;
    
    logic [63:0] input_buffer [0:7]; // 4 doubles = 32 bytes? No, ZFP 1d 1block inputs 4 doubles (64-bit each).
    // The wrapper logic pushes 4 words for Block 1, then 4 words for Block 2?
    // Wrapper `STATE_ZFP_PUSH_1` loop runs 4 times (0..3). `in_stream_data` is 64-bit.
    // So 4 * 64-bit inputs.
    
    int word_cnt;
    int process_cnt;
    
    // Output data (Mock compressed data)
    logic [63:0] mock_output;

    always_ff @(posedge clock or negedge resetn) begin
        if (!resetn) begin
            state <= IDLE;
            in_stream_ready <= 0;
            out_stream_valid <= 0;
            out_stream_data <= 0;
            busy <= 0;
            done <= 0;
            word_cnt <= 0;
            process_cnt <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        state <= READ;
                        busy <= 1;
                        word_cnt <= 0;
                        in_stream_ready <= 1;
                    end
                end
                
                READ: begin
                    if (in_stream_valid && in_stream_ready) begin
                        input_buffer[word_cnt] <= in_stream_data;
                        word_cnt <= word_cnt + 1;
                        if (word_cnt == 3) begin // 4th word (0..3) received
                             in_stream_ready <= 0;
                             state <= PROCESS;
                             process_cnt <= 0;
                        end
                    end
                end
                
                PROCESS: begin
                    // Simulate latency
                    process_cnt <= process_cnt + 1;
                    if (process_cnt > 20) begin // 20 cycles latency
                        state <= WRITE;
                        // Generate mock output (e.g., sum of inputs or fixed pattern)
                        // ZFP compression reduces size. Let's output 1 word (64-bit) for 4 inputs?
                        // Wrapper logic:
                        // `STATE_ZFP_PUSH_1`: collects `zfp_out_data` into `wdata_buf`.
                        // It seems wrapper expects STREAMING output.
                        // "If zfp_out_valid -> shift into wdata_buf".
                        // Wrapper just waits for `zfp_done`.
                        
                        out_stream_valid <= 1;
                        out_stream_data <= 64'hCAFEBABECAFEBABE; // Mock Data
                    end
                end
                
                WRITE: begin
                   if (out_stream_valid && out_stream_ready) begin
                       out_stream_valid <= 0;
                       done <= 1;
                       busy <= 0;
                       state <= IDLE;
                   end
                end
            endcase
        end
    end

endmodule
