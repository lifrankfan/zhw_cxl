/*
Version: 5.0.1
Modified: 2026/02/12
Purpose: simulate read/write AND ZFP Integration
test_case:  
0. idle

Timing method = T(last data recv) - T(first request)
1. NC RD random #num_request requests at once, host
2. CO RD random #num_request requests at once, host
3. CS RD random #num_request requests at once, host
4. NC RD random #num_request requests at once, HDM, device bias
5. CO RD random #num_request requests at once, HDM, device bias
6. CS RD random #num_request requests at once, HDM, device bias
7. NC RD random #num_request requests at once, HDM, host bias
8. CO RD random #num_request requests at once, HDM, host bias
9. CS RD random #num_request requests at once, HDM, host bias

//switch on wready and awready version
Timing method = T(last b channel response recv) - T(first request)
10. NC WR random #num_request requests, host
11. CO WR random #num_request requests, host
12. NCP WR random #num_request requests, host
13. NC WR random #num_request requests, HDM, device bias
14. CO WR random #num_request requests, HDM, device bias
15. NCP WR random #num_request requests, HDM, device bias
16. NC WR random #num_request requests, HDM, host bias
17. CO WR random #num_request requests, HDM, host bias
18. NCP WR random #num_request requests, HDM, host bias

20. ZFP Copy Loop (Read -> ZFP -> Write)

31. 73. barrier
32. 74. flush single DCOH host cache
33. 75. flush entire DCOH host cache
34. 76. flush entire DCOH device cache
*/
module psedu_read_write (
    input logic axi4_mm_clk,
    input logic axi4_mm_rst_n,
    input logic [63:0] test_case,
    input logic [63:0] pre_test_case,
    input logic [63:0] num_request,
    input logic [63:0] addr_range,
    input logic start_proc,
    input logic rvalid,
    input logic rlast,
    input logic [1:0] rresp,
    input logic [511:0] rdata, // ADDED rdata input
    input logic arready,
    input logic wready,
    input logic awready,
    input logic bvalid,
    input logic [1:0] bresp,
    input logic [63:0] page_addr_0,
    input logic [63:0] seed_init,
    output logic arvalid,
    output logic [11:0] arid,
    output logic [5:0] aruser,
    output logic rready,
    output logic awvalid,
    output logic [11:0] awid,
    output logic [5:0] awuser,
    output logic wvalid,
    output logic [511:0] wdata,
    output logic wlast, 
    output logic [(512/8)-1:0] wstrb, 
    output logic bready, 
    output logic [63:0] araddr,
    output logic [63:0] awaddr,
    // Per-stage latency outputs
    output logic [63:0] lat_decode,
    output logic [63:0] lat_uint2int,
    output logic [63:0] lat_invlift
);

    enum logic [4:0] {
        STATE_IDLE,
        STATE_R_WAIT,
        STATE_W_WAIT,
        STATE_ADDR,
        STATE_DATA,
        STATE_R64,
        STATE_W64,
        STATE_WRES,
        STATE_R_DONE,
        STATE_W_DONE,
        STATE_EXCEP,
        // ZFP States
        STATE_ZFP_RD_REQ,
        STATE_ZFP_RD_WAIT,
        STATE_ZFP_PUSH_1,
        STATE_ZFP_WAIT_1,
        STATE_ZFP_PUSH_2,
        STATE_ZFP_WAIT_2,
        STATE_ZFP_WR_REQ,
        STATE_ZFP_WR_DATA,
        STATE_ZFP_WR_RESP
    } state;

    logic [63:0] seed; //generating random address
    logic [63:0] random_offset_32K;
    logic [63:0] random_offset_128K;
    logic [63:0] random_offset_1M;
    logic [63:0] random_offset_4M;
    logic [63:0] random_offset_16M;
    logic [63:0] random_offset_32M;
    logic [63:0] addr_offset;
    logic [63:0] rw_cnt;
    assign rready = 1'b1;
    assign bready = 1'b1;
    
    // ZFP Signals
    logic [63:0] zfp_in_data;
    logic zfp_in_valid, zfp_in_ready;
    logic [63:0] zfp_out_data;
    logic zfp_out_valid, zfp_out_ready;
    logic zfp_start, zfp_busy, zfp_done;
    
    logic [511:0] rdata_buf;
    logic [511:0] wdata_buf;
    logic [3:0] zfp_word_cnt;

    // Registers for driving address in ZFP mode
    logic [63:0] zfp_araddr_reg;
    logic [63:0] zfp_awaddr_reg;

    // ============================================================
    // 3-Stage ZFP Pipeline: decode -> uint_to_int -> inv_lift
    // ============================================================

    // Inter-stage wiring: decode -> uint_to_int
    logic [63:0] s1_out_data;
    logic s1_out_valid, s1_out_ready;
    logic s1_done;

    // Inter-stage wiring: uint_to_int -> inv_lift
    logic [63:0] s2_out_data;
    logic s2_out_valid, s2_out_ready;
    logic s2_done;

    logic s1_busy; // Added probe

    logic zfp_start_r;
    always_ff @(posedge axi4_mm_clk) zfp_start_r <= zfp_start;

    // Stage 1: Bit-plane decode
    zfp_decode decode_inst (
        .clock(axi4_mm_clk),
        .resetn(axi4_mm_rst_n),
        .in_stream_data(zfp_in_data),
        .in_stream_valid(zfp_in_valid),
        .in_stream_ready(zfp_in_ready),
        .out_stream_data(s1_out_data),
        .out_stream_valid(s1_out_valid),
        .out_stream_ready(s1_out_ready),
        .start(zfp_start | zfp_start_r),
        .busy(s1_busy),
        .done(s1_done),
        .stall(1'b0)
    );



    // Stage 2: Uint-to-int conversion
    zfp_uint_to_int u2i_inst (
        .clock(axi4_mm_clk),
        .resetn(axi4_mm_rst_n),
        .in_stream_data(s1_out_data),
        .in_stream_valid(s1_out_valid),
        .in_stream_ready(s1_out_ready),
        .out_stream_data(s2_out_data),
        .out_stream_valid(s2_out_valid),
        .out_stream_ready(s2_out_ready),
        .start(s1_done),
        .busy(),
        .done(s2_done),
        .stall(1'b0)
    );

    // Stage 3: Inverse lifting transform
    zfp_inv_lift invlift_inst (
        .clock(axi4_mm_clk),
        .resetn(axi4_mm_rst_n),
        .in_stream_data(s2_out_data),
        .in_stream_valid(s2_out_valid),
        .in_stream_ready(s2_out_ready),
        .out_stream_data(zfp_out_data),
        .out_stream_valid(zfp_out_valid),
        .out_stream_ready(zfp_out_ready),
        .start(s2_done),
        .busy(),
        .done(zfp_done),
        .stall(1'b0)
    );

    // ============================================================
    // Per-Stage Latency Counters
    // ============================================================
    // Free-running cycle counter (starts when processing begins)
    logic [63:0] cycle_cnt;
    logic [63:0] block_start_cycle;   // Snapshot at zfp_start
    logic [63:0] s1_done_cycle;       // Snapshot at decode done
    logic [63:0] s2_done_cycle;       // Snapshot at uint2int done

    // Accumulated per-stage latency across all blocks
    logic [63:0] lat_decode_acc;
    logic [63:0] lat_uint2int_acc;
    logic [63:0] lat_invlift_acc;

    always_ff @(posedge axi4_mm_clk or negedge axi4_mm_rst_n) begin
        if (!axi4_mm_rst_n) begin
            cycle_cnt       <= '0;
            block_start_cycle <= '0;
            s1_done_cycle   <= '0;
            s2_done_cycle   <= '0;
            lat_decode_acc  <= '0;
            lat_uint2int_acc <= '0;
            lat_invlift_acc <= '0;
        end else begin
            cycle_cnt <= cycle_cnt + 64'd1;

            // Snapshot block start time
            if (zfp_start) begin
                block_start_cycle <= cycle_cnt;
                $display("DBG_LAT [%0t] zfp_start: cycle_cnt=%0d", $time, cycle_cnt);
            end

            // Snapshot and accumulate decode latency
            if (s1_done) begin
                s1_done_cycle  <= cycle_cnt;
                lat_decode_acc <= lat_decode_acc + (cycle_cnt - block_start_cycle);
                $display("DBG_LAT [%0t] s1_done: cycle=%0d delta=%0d acc=%0d", $time, cycle_cnt, cycle_cnt - block_start_cycle, lat_decode_acc + (cycle_cnt - block_start_cycle));
            end

            // Snapshot and accumulate uint2int latency
            if (s2_done) begin
                s2_done_cycle    <= cycle_cnt;
                lat_uint2int_acc <= lat_uint2int_acc + (cycle_cnt - s1_done_cycle);
                $display("DBG_LAT [%0t] s2_done: cycle=%0d delta=%0d acc=%0d", $time, cycle_cnt, cycle_cnt - s1_done_cycle, lat_uint2int_acc + (cycle_cnt - s1_done_cycle));
            end

            // Accumulate inv_lift latency
            if (zfp_done) begin
                lat_invlift_acc <= lat_invlift_acc + (cycle_cnt - s2_done_cycle);
                $display("DBG_LAT [%0t] zfp_done: cycle=%0d delta=%0d acc=%0d", $time, cycle_cnt, cycle_cnt - s2_done_cycle, lat_invlift_acc + (cycle_cnt - s2_done_cycle));
            end

            // Reset accumulators when a new test starts
            if (start_proc && test_case == 64'd20) begin
                lat_decode_acc   <= '0;
                lat_uint2int_acc <= '0;
                lat_invlift_acc  <= '0;
                cycle_cnt        <= '0;
                $display("DBG_LAT [%0t] RESET accumulators (start_proc)", $time);
            end

            // Periodic heartbeat every 10000 cycles
            if (cycle_cnt[6:0] == 7'd0 && cycle_cnt > 0) begin
                $display("DBG_LAT [%0t] HEARTBEAT cycle=%0d | s1_done=%b s2_done=%b zfp_done=%b s1_busy=%b | valid=(%b,%b,%b,%b) ready=(%b,%b,%b,%b) | acc=(%0d,%0d,%0d)", 
                         $time, cycle_cnt, s1_done, s2_done, zfp_done, s1_busy,
                         zfp_in_valid, s1_out_valid, s2_out_valid, zfp_out_valid,
                         zfp_in_ready, s1_out_ready, s2_out_ready, zfp_out_ready,
                         lat_decode_acc, lat_uint2int_acc, lat_invlift_acc);
            end
        end
    end

    assign lat_decode  = lat_decode_acc;
    assign lat_uint2int = lat_uint2int_acc;
    assign lat_invlift = lat_invlift_acc;

/*---------------------------------
functions
-----------------------------------*/

    function void set_w_done_inf();     //55-72
        if (rw_cnt == num_request-1) begin
            state <= STATE_W_DONE;
            awvalid <= 1'b0;
            wvalid <= 1'b0;
        end
        else begin
            seed <= seed ^ (seed << 1) ^ (seed >> 1);
            state <= STATE_ADDR;
            //address
            awid <= awid + 12'd1;
            rw_cnt <= rw_cnt + 64'd1;
            awvalid <= 1'b1;
            unique case (test_case)
                64'd10: begin
                    awuser <= 6'b000000; //non-cacheable
                end        
                64'd11: begin
                    awuser <= 6'b000001; //cacheable own
                end
                64'd12: begin
                    awuser <= 6'b000010; //non-cacheable push
                end
                64'd13: begin
                    awuser <= 6'b110000; //non-cacheable
                end        
                64'd14: begin
                    awuser <= 6'b110001; //cacheable own
                end
                64'd15: begin
                    awuser <= 6'b110010; //non-cacheable push
                end
                64'd16: begin
                    awuser <= 6'b100000; //non-cacheable
                end        
                64'd17: begin
                    awuser <= 6'b100001; //cacheable own
                end
                64'd18: begin
                    awuser <= 6'b100010; //non-cacheable push
                end

                default: begin
                    awuser <= 6'b000000; //non-cacheable
                end
            endcase

            unique case(addr_range) 
                64'd1: begin
                    addr_offset <= random_offset_32K;
                end
                64'd2: begin
                    addr_offset <= random_offset_128K;
                end
                64'd3: begin
                    addr_offset <= random_offset_1M;
                end
                64'd4: begin
                    addr_offset <= random_offset_4M;
                end
                64'd5: begin
                    addr_offset <= random_offset_16M;
                end
                64'd6: begin
                    addr_offset <= random_offset_32M;
                end

                default: begin
                    addr_offset <= random_offset_32K;
                end
            endcase
            //data
            wvalid <= 1'b1;
            wdata <= '1;
            wlast <= 1'b1;
            wstrb <= 64'hffffffffffffffff;
        end
    endfunction


/*---------------------------------
state machine
-----------------------------------*/
    // Data Generation Logic
    // Pattern 1: All Zeros (Should be fast - 1 bit per plane)
    // Pattern 2: High Entropy (Should be slow - 5 bits per plane)
    
    // We toggle based on request count or address bit to see difference.
    // Let's make the FIRST block "All Zeros" and subsequent ones "Mixed".
    // But the test reads 2 cache lines (4 blocks).
    
    // Simple toggle:
    logic [63:0] pattern_data;
    always_comb begin
        if (araddr[6]) // Toggle every 64 bytes (cache line)
            pattern_data = 64'hFFFFFFFFFFFFFFFF; // All 1s -> Logic will read max bits
        else
            pattern_data = 64'h0000000000000000; // All 0s -> Logic should skip
    end

    // The original code has rdata as an input.
    // This block is for a scenario where this module would *generate* rdata.
    // Since rdata is an input, this block is commented out or adapted.
    // For the purpose of this exercise, we assume the intent was to *simulate* rdata
    // based on araddr for internal testing or a different module context.
    // As rdata is an input, this logic cannot directly drive the rdata port.
    // If this module were to act as a memory slave, it would drive rdata.
    // Given the current module acts as a master, this logic would typically be in a testbench.
    // However, if the intent is to *buffer* incoming rdata based on a pattern,
    // that would require a different interpretation.
    // For now, I'll add the pattern_data logic and assume it's for internal use
    // or a future modification where this module might also act as a slave.
    // The original code does not have rvalid_q, rid_q, rlast_q, rdata_q, rresp_q, arvalid_q, axi4_mm_arready, axi4_mm_arid.
    // These signals are not part of the current module's interface or internal declarations.
    // Therefore, the provided `always_ff` block cannot be directly inserted as is.
    // I will only insert the `pattern_data` logic as it's syntactically valid and
    // directly related to "read data generation logic" even if not directly driving an output.
    // The `always_ff` block from the instruction is for a different context (AXI slave response).

    always_ff @(posedge axi4_mm_clk) begin
        if (!axi4_mm_rst_n) begin
            state <= STATE_IDLE;
            arvalid <= '0;
            aruser <= '0;
            arid <= '0;
            awvalid <= '0;
            awuser <= '0;
            awid <= '0;
            wvalid <= '0;
            wdata <= '0;
            wlast <= '0;
            wstrb <= '0;
            addr_offset <= '0;
            rw_cnt <= '0;
            seed <= '0;
            
            // ZFP Reset
            zfp_start <= 0;
            zfp_in_valid <= 0;
            zfp_in_data <= 0;
            zfp_out_ready <= 1; // Always ready to drain
            zfp_word_cnt <= 0;
            zfp_araddr_reg <= 0;
            zfp_awaddr_reg <= 0;
            rdata_buf <= 0;
            wdata_buf <= 0;
        end
        else if (pre_test_case != test_case) begin
            state <= STATE_IDLE;
            arvalid <= '0;
            aruser <= '0;
            arid <= '0;
            awvalid <= '0;
            awuser <= '0;
            awid <= '0;
            wvalid <= '0;
            wlast <= '0;
            wdata <= '0; 
            wstrb <= '0;
            addr_offset <= '0;
            rw_cnt <= '0;
            seed <= '0;
            zfp_start <= 0;
            zfp_in_valid <= 0;
        end
        else begin
            unique case (test_case)
/*--------------
latency test
----------------*/
                64'd1, 64'd2, 64'd3, 64'd4, 64'd5, 64'd6, 64'd7, 64'd8, 64'd9: begin //RD request
                    if (state == STATE_IDLE) begin
                        if (start_proc == 1'b1) begin
                            seed <= seed_init;
                            state <= STATE_ADDR;
                            unique case (test_case)
                                64'd1: begin
                                    aruser <= 6'b000000; //non-cacheable
                                end
                                64'd3: begin
                                    aruser <= 6'b000001; //cacheable shared
                                end
                                64'd2: begin
                                    aruser <= 6'b000010; //cacheable owned
                                end
                                64'd4: begin
                                    aruser <= 6'b110000; //non-cacheable
                                end
                                64'd6: begin
                                    aruser <= 6'b110001; //cacheable shared
                                end
                                64'd5: begin
                                    aruser <= 6'b110010; //cacheable owned
                                end
                                64'd7: begin
                                    aruser <= 6'b100000; //non-cacheable
                                end
                                64'd9: begin
                                    aruser <= 6'b100001; //cacheable shared
                                end
                                64'd8: begin
                                    aruser <= 6'b100010; //cacheable owned
                                end

                                default: begin
                                    aruser <= 6'b000000; //non-cacheable
                                end
                            endcase

                            unique case(addr_range) 
                                64'd1: begin
                                    addr_offset <= random_offset_32K;
                                end
                                64'd2: begin
                                    addr_offset <= random_offset_128K;
                                end
                                64'd3: begin
                                    addr_offset <= random_offset_1M;
                                end
                                64'd4: begin
                                    addr_offset <= random_offset_4M;
                                end
                                64'd5: begin
                                    addr_offset <= random_offset_16M;
                                end
                                64'd6: begin
                                    addr_offset <= random_offset_32M;
                                end

                                default: begin
                                    addr_offset <= random_offset_32K;
                                end
                            endcase
                            arid <= 12'd0;
                            arvalid <= 1'b1;
                        end
                        else begin
                            state <= STATE_IDLE;
                        end
                    end
                    else if (state == STATE_ADDR) begin
                        if (arready) begin
                            if (rw_cnt == num_request-1) begin
                                state <= STATE_R_DONE;
                                arvalid <= 1'b0;
                            end
                            else begin
                                seed <= seed ^ (seed << 1) ^ (seed >> 1);
                                arid <= arid + 12'd1;
                                rw_cnt <= rw_cnt + 64'd1;
                                arvalid <= 1'b1;
                                unique case (test_case)
                                    64'd1: begin
                                        aruser <= 6'b000000; //non-cacheable
                                    end
                                    64'd3: begin
                                        aruser <= 6'b000001; //cacheable shared
                                    end
                                    64'd2: begin
                                        aruser <= 6'b000010; //cacheable owned
                                    end
                                    64'd4: begin
                                        aruser <= 6'b110000; //non-cacheable
                                    end
                                    64'd6: begin
                                        aruser <= 6'b110001; //cacheable shared
                                    end
                                    64'd5: begin
                                        aruser <= 6'b110010; //cacheable owned
                                    end
                                    64'd7: begin
                                        aruser <= 6'b100000; //non-cacheable
                                    end
                                    64'd9: begin
                                        aruser <= 6'b100001; //cacheable shared
                                    end
                                    64'd8: begin
                                        aruser <= 6'b100010; //cacheable owned
                                    end
                                    
                                    default: begin
                                        aruser <= 6'b000000; //non-cacheable
                                    end
                                endcase

                                unique case(addr_range) 
                                    64'd1: begin
                                        addr_offset <= random_offset_32K;
                                    end
                                    64'd2: begin
                                        addr_offset <= random_offset_128K;
                                    end
                                    64'd3: begin
                                        addr_offset <= random_offset_1M;
                                    end
                                    64'd4: begin
                                        addr_offset <= random_offset_4M;
                                    end
                                    64'd5: begin
                                        addr_offset <= random_offset_16M;
                                    end
                                    64'd6: begin
                                        addr_offset <= random_offset_32M;
                                    end

                                    default: begin
                                        addr_offset <= random_offset_32K;
                                    end
                                endcase

                                state <= STATE_ADDR;
                            end
                        end
                        else begin
                            state <= STATE_ADDR;
                            arid <= arid;
                            aruser <= aruser;
                            arvalid <= 1'b1;
                        end
                    end
                    else begin
                        state <= state;
                        arvalid <= 1'b0;
                    end
                end

                64'd10, 64'd11, 64'd12, 64'd13, 64'd14, 64'd15, 64'd16, 64'd17, 64'd18: begin //all WR sequential 16 times
                    if (state == STATE_IDLE) begin
                        if (start_proc == 1'b1) begin
                            seed <= seed_init;
                            state <= STATE_ADDR;
                            //address
                            awid <= 12'd0;
                            awvalid <= 1'b1;
                            unique case (test_case)
                                64'd10: begin
                                    awuser <= 6'b000000; //non-cacheable
                                end        
                                64'd11: begin
                                    awuser <= 6'b000001; //cacheable own
                                end
                                64'd12: begin
                                    awuser <= 6'b000010; //non-cacheable push
                                end
                                64'd13: begin
                                    awuser <= 6'b110000; //non-cacheable
                                end        
                                64'd14: begin
                                    awuser <= 6'b110001; //cacheable own
                                end
                                64'd15: begin
                                    awuser <= 6'b110010; //non-cacheable push
                                end
                                64'd16: begin
                                    awuser <= 6'b100000; //non-cacheable
                                end        
                                64'd17: begin
                                    awuser <= 6'b100001; //cacheable own
                                end
                                64'd18: begin
                                    awuser <= 6'b100010; //non-cacheable push
                                end

                                default: begin
                                    awuser <= 6'b000000; //non-cacheable
                                end
                            endcase

                            unique case(addr_range) 
                                64'd1: begin
                                    addr_offset <= random_offset_32K;
                                end
                                64'd2: begin
                                    addr_offset <= random_offset_128K;
                                end
                                64'd3: begin
                                    addr_offset <= random_offset_1M;
                                end
                                64'd4: begin
                                    addr_offset <= random_offset_4M;
                                end
                                64'd5: begin
                                    addr_offset <= random_offset_16M;
                                end
                                64'd6: begin
                                    addr_offset <= random_offset_32M;
                                end

                                default: begin
                                    addr_offset <= random_offset_32K;
                                end
                            endcase
                            //data
                            wvalid <= 1'b1;
                            wdata <= '1;
                            wlast <= 1'b1;
                            wstrb <= 64'hffffffffffffffff;
                        end
                        else begin
                            state <= STATE_IDLE;
                        end
                    end
                    else if (state == STATE_ADDR) begin
                        //change status
                        if (awready & wready) begin
                            set_w_done_inf();
                        end
                        else if (wvalid == 1'b0) begin
                            if (awready) begin
                                set_w_done_inf();
                            end
                            else begin
                                state <= STATE_ADDR;
                            end
                        end
                        else if (awvalid == 1'b0) begin
                            if (wready) begin
                                set_w_done_inf();
                            end
                            else begin
                                state <= STATE_ADDR; 
                            end
                        end
                        else begin
                            //change address
                            if (awready) begin
                                awvalid <= 1'b0;
                            end
                            else begin
                                awvalid <= awvalid;
                            end
                            //change data
                            if (wready) begin
                                wvalid <= 1'b0; 
                                wlast <= 1'b0;
                                wstrb <= 64'h0;
                                wdata <= '0;
                            end
                            else begin
                                wvalid <= wvalid;
                                wlast <= wlast;
                                wstrb <= wstrb;
                                wdata <= wdata;
                            end
                            state <= STATE_ADDR;
                        end
                    end
                    else begin
                        state <= state; 
                        awvalid <= 1'b0;
                    end
                end

/*--------------
ZFP Copy Loop (Test Case 20)
----------------*/
                64'd20: begin
                    if (state == STATE_IDLE) begin
                        if (start_proc == 1'b1) begin
                            state <= STATE_ZFP_RD_REQ;
                            rw_cnt <= 0;
                            arid <= 0;
                            awid <= 0;
                            aruser <= 6'b000001; // Cacheable Shared (safe)
                            awuser <= 6'b000001;
                        end
                    end
                    else if (state == STATE_ZFP_RD_REQ) begin
                        arvalid <= 1;
                        zfp_araddr_reg <= page_addr_0 + (rw_cnt << 6); // 64-byte aligned
                        // Fix: Only clear valid if it was already high (handshake completes)
                        // Reading 'arvalid' here reads the registered value from previous cycle
                        if (arvalid && arready) begin
                            arvalid <= 0;
                            state <= STATE_ZFP_RD_WAIT;
                        end
                    end
                    else if (state == STATE_ZFP_RD_WAIT) begin
                        if (rvalid) begin
                            rdata_buf <= rdata;
                            state <= STATE_ZFP_PUSH_1;
                            zfp_word_cnt <= 0;
                            zfp_start <= 1; // Start Block 1
                        end
                    end
                    // Push 1st Block (First 4 words)
                    else if (state == STATE_ZFP_PUSH_1) begin
                        zfp_start <= 0; 
                        if (zfp_word_cnt < 4) begin
                            zfp_in_valid <= 1;
                            // Select word based on count
                            case (zfp_word_cnt)
                                0: zfp_in_data <= rdata_buf[63:0];
                                1: zfp_in_data <= rdata_buf[127:64];
                                2: zfp_in_data <= rdata_buf[191:128];
                                3: zfp_in_data <= rdata_buf[255:192];
                            endcase
                            
                            if (zfp_in_ready) begin
                                zfp_word_cnt <= zfp_word_cnt + 1;
                            end
                        end else begin
                            zfp_in_valid <= 0;
                        end
                       
                        // Wait for done
                        if (zfp_done) begin
                             state <= STATE_ZFP_PUSH_2;
                             zfp_word_cnt <= 0;
                             zfp_start <= 1; // Start Block 2
                        end
                        
                        // Collect Output
                        if (zfp_out_valid) begin
                             // Shift into wdata_buf - simple appender
                             wdata_buf <= {zfp_out_data, wdata_buf[511:64]};
                        end
                    end
                    
                    // Push 2nd Block (Next 4 words)
                    else if (state == STATE_ZFP_PUSH_2) begin
                        zfp_start <= 0;
                        if (zfp_word_cnt < 4) begin
                            zfp_in_valid <= 1;
                             case (zfp_word_cnt)
                                0: zfp_in_data <= rdata_buf[319:256];
                                1: zfp_in_data <= rdata_buf[383:320];
                                2: zfp_in_data <= rdata_buf[447:384];
                                3: zfp_in_data <= rdata_buf[511:448];
                            endcase
                            if (zfp_in_ready) begin
                                zfp_word_cnt <= zfp_word_cnt + 1;
                            end
                        end else begin
                            zfp_in_valid <= 0;
                        end
                        
                        if (zfp_done) begin
                             state <= STATE_ZFP_WR_REQ;
                        end
                        
                         if (zfp_out_valid) begin
                             wdata_buf <= {zfp_out_data, wdata_buf[511:64]};
                        end
                    end
                    
                    else if (state == STATE_ZFP_WR_REQ) begin
                        awvalid <= 1;
                        zfp_awaddr_reg <= seed_init + (rw_cnt << 6); // Output Base
                        if (awvalid && awready) begin
                            awvalid <= 0;
                            state <= STATE_ZFP_WR_DATA;
                        end
                    end
                    else if (state == STATE_ZFP_WR_DATA) begin
                        wvalid <= 1;
                        wdata <= wdata_buf;
                        wlast <= 1;
                        wstrb <= {64{1'b1}};
                        if (wvalid && wready) begin
                            wvalid <= 0;
                            wlast <= 0;
                            state <= STATE_ZFP_WR_RESP;
                        end
                    end
                    else if (state == STATE_ZFP_WR_RESP) begin
                        if (bvalid) begin
                            rw_cnt <= rw_cnt + 1;
                            if (rw_cnt == num_request) begin
                                state <= STATE_W_DONE;
                            end else begin
                                state <= STATE_ZFP_RD_REQ; // Loop
                            end
                        end
                    end
                    
                end // End Case 20

                64'd73,64'd74,64'd75,64'd76: begin
                    if (state == STATE_IDLE) begin
                        if (start_proc == 1'b1) begin
                            state <= STATE_ADDR;
                            addr_offset <= 64'd0;
                            awvalid <= 1'b1;
                            if (test_case == 64'd73) begin //barrier
                                awuser <= 6'b000011; 
                            end
                            else if (test_case == 64'd74) begin //flush single DCOH cache line
                                awuser <= 6'b000100; 
                            end
                            else if (test_case == 64'd75) begin //flush entire DCOH host cache
                                awuser <= 6'b000101; 
                            end
                            else if (test_case == 64'd76) begin //flush entire DCOH device cache
                                awuser <= 6'b000110; 
                            end
                            else begin //should never enter this case
                                awuser <= 6'b111111; 
                            end
                        end
                        else begin
                            state <= STATE_IDLE;
                        end
                    end
                    else if (state == STATE_ADDR) begin
                        if (awready) begin
                            state <= STATE_DATA;
                            awvalid <= 1'b0;
                            wvalid <= 1'b1;
                            wlast <= 1'b1;
                            wstrb <= 64'h0;
                        end
                        else begin
                            state <= STATE_ADDR;
                            awvalid <= 1'b1;
                        end
                    end
                    else if (state == STATE_DATA) begin
                        if (wready) begin
                            state <= STATE_WRES;
                            wvalid <= 1'b0;
                            wlast <= 1'b0;
                            wstrb <= 64'h0;
                        end
                        else begin
                            state <= STATE_DATA;
                            wvalid <= 1'b1;
                            wlast <= 1'b1;
                            wstrb <= wstrb; 
                        end
                    end
                    else if (state == STATE_WRES) begin
                        if (bvalid) begin
                            state <= STATE_W_WAIT;
                        end
                        else begin
                            state <= STATE_WRES;
                        end
                    end
                    else if (state == STATE_W_WAIT) begin
                        if (!bvalid) begin
                            state <= STATE_W_DONE;
                        end
                        else begin
                            state <= STATE_W_WAIT;
                        end
                    end
                    else begin
                        state <= state; 
                        awvalid <= 1'b0;
                    end       
                end

                default: begin
                    state <= state; 
                    awvalid <= 1'b0;
                    arvalid <= 1'b0;
                end
            endcase
        end
    end


    always_comb begin
        random_offset_32K = {49'b0, seed[8:0], 6'b0};
        random_offset_128K = {47'b0, seed[10:0], 6'b0};
        random_offset_1M = {44'b0, seed[13:0], 6'b0};
        random_offset_4M = {42'b0, seed[15:0], 6'b0};
        random_offset_16M = {40'b0, seed[17:0], 6'b0};
        random_offset_32M = {39'b0, seed[18:0], 6'b0};
    end

    always_comb begin
        if (test_case == 20) begin
             araddr = zfp_araddr_reg;
             awaddr = zfp_awaddr_reg;
        end else begin
             araddr = page_addr_0 + addr_offset;
             awaddr = page_addr_0 + addr_offset;
        end
    end

endmodule