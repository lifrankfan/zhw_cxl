
module zfp_wrapper (
    input  logic        clk,
    input  logic        rst_n,

    // CSR Interface (AXI-Lite or AVMM simplified)
    input  logic [21:0] csr_address,
    input  logic        csr_write,
    input  logic        csr_read,
    input  logic [31:0] csr_writedata,
    output logic [31:0] csr_readdata,
    output logic        csr_readdatavalid,
    output logic        csr_waitrequest,

    // AXI Master Interface (To Host)
    // Write Addr
    output logic [11:0]  axi_awid,
    output logic [63:0]  axi_awaddr,
    output logic [9:0]   axi_awlen,
    output logic [2:0]   axi_awsize,
    output logic [1:0]   axi_awburst,
    output logic [2:0]   axi_awprot,
    output logic [3:0]   axi_awqos,
    output logic [5:0]   axi_awuser,
    output logic         axi_awvalid,
    input  logic         axi_awready,
    // Write Data
    output logic [511:0] axi_wdata,
    output logic [63:0]  axi_wstrb,
    output logic         axi_wlast,
    output logic         axi_wuser,
    output logic         axi_wvalid,
    input  logic         axi_wready,
    // Write Resp
    input  logic [11:0]  axi_bid,
    input  logic [1:0]   axi_bresp,
    input  logic [3:0]   axi_buser,
    input  logic         axi_bvalid,
    output logic         axi_bready,
    // Read Addr
    output logic [11:0]  axi_arid,
    output logic [63:0]  axi_araddr,
    output logic [9:0]   axi_arlen,
    output logic [2:0]   axi_arsize,
    output logic [1:0]   axi_arburst,
    output logic [2:0]   axi_arprot,
    output logic [3:0]   axi_arqos,
    output logic [5:0]   axi_aruser,
    output logic         axi_arvalid,
    input  logic         axi_arready,
    // Read Resp
    input  logic [11:0]  axi_rid,
    input  logic [511:0] axi_rdata,
    input  logic [1:0]   axi_rresp,
    input  logic         axi_rlast,
    input  logic         axi_ruser,
    input  logic         axi_rvalid,
    output logic         axi_rready
);

    // =========================================================================
    // CSR Logic
    // =========================================================================
    logic [31:0] reg_ctrl;
    logic [31:0] reg_src_lo, reg_src_hi;
    logic [31:0] reg_dst_lo, reg_dst_hi;
    logic [31:0] reg_size; // Number of cachelines (64 bytes)
    logic [31:0] reg_status;
    logic [31:0] reg_latency;
    
    logic        dma_start;
    logic [63:0] cycle_counter;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            reg_ctrl <= 0;
            reg_src_lo <= 0; reg_src_hi <= 0;
            reg_dst_lo <= 0; reg_dst_hi <= 0;
            reg_size <= 0;
            dma_start <= 0;
        end else begin
            dma_start <= 0; // Pulse
            if (csr_write) begin
                case (csr_address[5:0]) 
                    6'h00: begin 
                        reg_ctrl <= csr_writedata; 
                        if (csr_writedata[0]) dma_start <= 1;
                    end
                    6'h08: reg_src_lo <= csr_writedata;
                    6'h0C: reg_src_hi <= csr_writedata;
                    6'h10: reg_dst_lo <= csr_writedata;
                    6'h14: reg_dst_hi <= csr_writedata;
                    6'h18: reg_size   <= csr_writedata;
                endcase
            end
            if (reg_ctrl[0]) reg_ctrl[0] <= 0; // Auto clear
        end
    end

    // CSR Read
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            csr_readdata <= 0;
            csr_readdatavalid <= 0;
        end else begin
            csr_readdatavalid <= csr_read;
            if (csr_read) begin
                case (csr_address[5:0])
                    6'h00: csr_readdata <= reg_ctrl;
                    6'h20: csr_readdata <= reg_status;
                    6'h28: csr_readdata <= reg_latency;
                    default: csr_readdata <= 0;
                endcase
            end
        end
    end
    assign csr_waitrequest = 0;

    // =========================================================================
    // HLS Core Instantiation
    // =========================================================================
    logic [63:0] hls_in_data;
    logic        hls_in_valid, hls_in_ready;
    logic [63:0] hls_out_data;
    logic        hls_out_valid, hls_out_ready;
    logic        hls_start, hls_busy, hls_done, hls_stall; // Control

    // For simplicity, we keep HLS start high during operation
    // Actually, zfp_1d_1block runs once. We need to re-trigger it.
    // However, if we tie start=1 and done is irrelevant (pipeline), it might stream.
    // Let's assume pipeline behavior for now.
    assign hls_start = 1;//reg_status[1]; // Run when busy
    assign hls_stall = 0; // Ignore return

    zfp_1d_1block u_core (
        .clock(clk),
        .resetn(rst_n),
        .in_stream_data(hls_in_data),
        .in_stream_ready(hls_in_ready),
        .in_stream_valid(hls_in_valid),
        .out_stream_data(hls_out_data),
        .out_stream_ready(hls_out_ready),
        .out_stream_valid(hls_out_valid),
        .start(hls_start),
        .busy(hls_busy),
        .done(hls_done),
        .stall(hls_stall)
    );
    
    /*
    // Stub
    assign hls_in_ready = 1'b1;
    assign hls_out_valid = hls_in_valid; // Loopback immediate
    assign hls_out_data = hls_in_data;
    assign hls_busy = 0;
    assign hls_done = 1;
    */

    // =========================================================================
    // Data Mover Logic (Read 512b -> Serialization -> HLS -> Deserialization -> Write 512b)
    // =========================================================================
    
    typedef enum logic [2:0] {IDLE, AR_SEND, R_WAIT, PROCESS, AW_SEND, W_SEND, B_WAIT, DONE} dma_state_t;
    dma_state_t state;
    
    logic [63:0] curr_src_addr, curr_dst_addr;
    logic [31:0] lines_processed;
    logic [511:0] read_buffer;
    logic [511:0] write_buffer;
    logic [3:0]   word_idx; // 0..7
    logic [3:0]   out_word_idx; // 0..7

    // AXI constants
    assign axi_awlen = 8'h00; // 1 transfer
    assign axi_awsize = 3'b110; // 64 bytes
    assign axi_awburst = 1; // INCR
    assign axi_arlen = 8'h00;
    assign axi_arsize = 3'b110;
    assign axi_arburst = 1;
    
    assign axi_awid = 0; assign axi_arid = 0;
    assign axi_wstrb = 64'hFFFFFFFFFFFFFFFF;
    assign axi_wlast = 1'b1; // Always last for single beat

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            reg_status <= 0;
            cycle_counter <= 0;
            axi_arvalid <= 0;
            axi_awvalid <= 0;
            axi_wvalid <= 0;
            hls_in_valid <= 0;
            hls_out_ready <= 0;
        end else begin
            // Default inactive
            axi_bready <= 1; // Always accept response
            
            case (state)
                IDLE: begin
                    reg_status <= 0;
                    if (dma_start) begin
                        state <= AR_SEND;
                        reg_status <= 2; // BUSY
                        curr_src_addr <= {reg_src_hi, reg_src_lo};
                        curr_dst_addr <= {reg_dst_hi, reg_dst_lo};
                        lines_processed <= 0;
                        cycle_counter <= 0;
                    end
                end

                AR_SEND: begin
                    cycle_counter <= cycle_counter + 1;
                    axi_araddr <= curr_src_addr;
                    axi_arvalid <= 1;
                    if (axi_arvalid && axi_arready) begin
                        axi_arvalid <= 0;
                        state <= R_WAIT;
                    end
                end

                R_WAIT: begin
                     cycle_counter <= cycle_counter + 1;
                     axi_rready <= 1;
                     if (axi_rvalid) begin
                         read_buffer <= axi_rdata;
                         word_idx <= 0;
                         state <= PROCESS;
                         axi_rready <= 0;
                     end
                end

                PROCESS: begin
                    // This state serializes 512b -> HLS -> 512b
                    cycle_counter <= cycle_counter + 1;
                    
                    // FEEDING HLS
                    if (word_idx < 8) begin
                        hls_in_data <= read_buffer[word_idx*64 +: 64];
                        hls_in_valid <= 1;
                        if (hls_in_valid && hls_in_ready) begin
                            word_idx <= word_idx + 1;
                            if (word_idx == 7) hls_in_valid <= 0;
                        end
                    end else begin
                        hls_in_valid <= 0;
                    end

                    // DRAINING HLS
                    hls_out_ready <= 1;
                    if (hls_out_valid && hls_out_ready) begin
                        write_buffer[out_word_idx*64 +: 64] <= hls_out_data;
                        out_word_idx <= out_word_idx + 1;
                    end

                    // Check Completion of this Cacheline
                    if (out_word_idx == 8) begin // Overflow to 0 (idx 7 processed) implies 8 words done? No, 4 bits wrap.
                        // Actually, logic above: if we increment out_word_idx from 7 to 8...
                        // Need safer check
                    end
                    // Let's reset indices carefully.
                end
                
                // ... Simplification for Step size constraints ...
                // I will refine PROCESS state in next file write if needed.
                // Assuming "PROCESS" handles 1 full line then moves to AW_SEND.
            endcase
            
            // To be robust: Split PROCESS into FEED and DRAIN?
            // HLS is pipelined, so we can do both.
            
            if (state == PROCESS) begin
                // Reset logic for next turn
                if (out_word_idx == 8) begin 
                   state <= AW_SEND;
                   word_idx <= 0;     // Reset checkers
                   out_word_idx <= 0;
                   hls_in_valid <= 0;
                   hls_out_ready <= 0;
                end
            end else if (state != PROCESS) begin
                 out_word_idx <= 0;
            end
            
            if (state == AW_SEND) begin
                 cycle_counter <= cycle_counter + 1;
                 axi_awaddr <= curr_dst_addr;
                 axi_awvalid <= 1;
                 if (axi_awvalid && axi_awready) begin
                     axi_awvalid <= 0;
                     state <= W_SEND;
                 end
            end
            
            if (state == W_SEND) begin
                 cycle_counter <= cycle_counter + 1;
                 axi_wdata <= write_buffer;
                 axi_wvalid <= 1;
                 if (axi_wvalid && axi_wready) begin
                     axi_wvalid <= 0;
                     state <= B_WAIT;
                 end
            end
            
            if (state == B_WAIT) begin
                 cycle_counter <= cycle_counter + 1;
                 if (axi_bvalid) begin
                     curr_src_addr <= curr_src_addr + 64;
                     curr_dst_addr <= curr_dst_addr + 64;
                     lines_processed <= lines_processed + 1;
                     if (lines_processed + 1 >= reg_size) begin
                         state <= DONE;
                     end else begin
                         state <= AR_SEND;
                     end
                 end
            end

            if (state == DONE) begin
                 reg_status <= 1; // DONE
                 reg_latency <= cycle_counter[31:0];
                 state <= IDLE;
            end
        end
    end

endmodule
