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
    output logic [63:0] lat_invlift,
    output logic [63:0] lat_thru_decode,
    output logic [63:0] lat_thru_uint2int,
    output logic [63:0] lat_thru_invlift,
    output logic [63:0] block_count_out,
    // (reserved for future use)
    output logic [63:0] busy_decode,
    output logic [63:0] busy_uint2int,
    output logic [63:0] busy_invlift
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
    logic [63:0] rd_cnt, wr_cnt;
    assign rready = 1'b1;
    assign bready = 1'b1;
    
    // ZFP Signals (FP32: 32-bit data paths)
    logic [31:0] zfp_in_data_real;  // Registered data to decoder
    logic zfp_in_valid_real;        // Registered valid to decoder
    logic [31:0] zfp_out_data;
    logic zfp_out_valid, zfp_out_ready;
    logic zfp_busy, zfp_done;
    logic zfp_in_ready;

    logic [511:0] rdata_buf;
    logic [511:0] wdata_buf;
    logic [4:0] zfp_word_cnt; // tracks next word to PRESENT (0-16, 16=all done)
    logic [4:0] zfp_out_word_cnt; // max 16 for output
    // BUG FIX #18: Combinational mux for input data selection
    // Decouples word selection from NBA timing to prevent word loss during stalls.
    logic [31:0] zfp_in_data_mux;
    always_comb begin
        case (zfp_word_cnt[3:0])
             0: zfp_in_data_mux = rdata_buf[ 31:  0];
             1: zfp_in_data_mux = rdata_buf[ 63: 32];
             2: zfp_in_data_mux = rdata_buf[ 95: 64];
             3: zfp_in_data_mux = rdata_buf[127: 96];
             4: zfp_in_data_mux = rdata_buf[159:128];
             5: zfp_in_data_mux = rdata_buf[191:160];
             6: zfp_in_data_mux = rdata_buf[223:192];
             7: zfp_in_data_mux = rdata_buf[255:224];
             8: zfp_in_data_mux = rdata_buf[287:256];
             9: zfp_in_data_mux = rdata_buf[319:288];
            10: zfp_in_data_mux = rdata_buf[351:320];
            11: zfp_in_data_mux = rdata_buf[383:352];
            12: zfp_in_data_mux = rdata_buf[415:384];
            13: zfp_in_data_mux = rdata_buf[447:416];
            14: zfp_in_data_mux = rdata_buf[479:448];
            15: zfp_in_data_mux = rdata_buf[511:480];
        endcase
    end

    // Registers for driving address in ZFP mode
    logic [63:0] zfp_araddr_reg;
    logic [63:0] zfp_awaddr_reg;

    // ============================================================
    // ZHW SystemC Decoder (2D FP32) — generated by systemc-clang
    // Single module replaces the 3-stage HLS pipeline.
    // Uses valid/ready streaming, no start/busy/done signals.
    // ============================================================

    // ZHW output: split FP32 fields
    logic [22:0] zhw_out_frac;
    logic [7:0]  zhw_out_expo;
    logic [0:0]  zhw_out_sign;

    // Reconstruct 32-bit IEEE 754 FP32 from ZHW output
    assign zfp_out_data = {zhw_out_sign, zhw_out_expo, zhw_out_frac};

    // tlast: tie to 0 during streaming (ZHW uses internal block boundaries)
    logic zhw_tlast;
    assign zhw_tlast = 1'b0;

    decode_sc_module_1 zhw_decode_inst (
        .clk(axi4_mm_clk),
        .reset(axi4_mm_rst_n),        // ZHW uses active-low reset (RLEVEL=false)
        .minbits(16'd128),             // 2D FP32 rate=8: 8*16=128 bits/block
        .maxbits(16'd128),
        .maxprec(16'd32),              // FP32 precision
        .minexp(-16'sd149),            // 1 - 127 - 23 = -149
        .s_bits_data_tdata(zfp_in_data_mux),  // Combinational mux — no NBA lag
        .s_bits_data_tlast(zhw_tlast),
        .s_bits_valid(zfp_in_valid_real),
        .s_bits_ready(zfp_in_ready),
        .m_stream_data_frac(zhw_out_frac),
        .m_stream_data_expo(zhw_out_expo),
        .m_stream_data_sign(zhw_out_sign),
        .m_stream_valid(zfp_out_valid),
        .m_stream_ready(zfp_out_ready)
    );

    // No start/busy/done in ZHW — derive from streaming activity
    assign zfp_busy = (state != STATE_IDLE);
    assign zfp_done = 1'b0; // Not used; block counting via output handshakes

    // synthesis translate_off
    // Temporary debug: monitor ZHW I/O handshakes
    logic [31:0] dbg_in_cnt, dbg_out_cnt;
    always_ff @(posedge axi4_mm_clk or negedge axi4_mm_rst_n) begin
        if (!axi4_mm_rst_n) begin
            dbg_in_cnt <= 0;
            dbg_out_cnt <= 0;
        end else begin
            if (zfp_in_valid_real && zfp_in_ready) begin
                dbg_in_cnt <= dbg_in_cnt + 1;
                if (dbg_in_cnt < 20 || dbg_in_cnt % 100 == 0)
                    $display("ZHW_DBG [%0t] IN  #%0d: data=0x%08x ready=%b", $time, dbg_in_cnt, zfp_in_data_mux, zfp_in_ready);
            end
            if (zfp_out_valid && zfp_out_ready) begin
                dbg_out_cnt <= dbg_out_cnt + 1;
                if (dbg_out_cnt < 20 || dbg_out_cnt % 100 == 0)
                    $display("ZHW_DBG [%0t] OUT #%0d: sign=%b expo=%02x frac=%06x (fp32=0x%08x)",
                             $time, dbg_out_cnt, zhw_out_sign, zhw_out_expo, zhw_out_frac, zfp_out_data);
            end
            if (zfp_in_valid_real && !zfp_in_ready && dbg_in_cnt < 20)
                $display("ZHW_DBG [%0t] IN STALLED: valid=1 ready=0 in_cnt=%0d zfp_word_cnt=%0d data=0x%08x", $time, dbg_in_cnt, zfp_word_cnt, zfp_in_data_mux);
        end
    end
    // synthesis translate_on

    // ============================================================
    // ZHW Internal Handshake Signals (hierarchical references for sim)
    // These observe internal pipeline boundaries for profiling.
    // synthesis translate_off
    // Stage 1 boundary: decode_ints output (bitstream → unsigned ints)
    wire zhw_decode_ints_valid = zhw_decode_inst.c_i_m_valid_scclang_global_9;
    wire zhw_decode_ints_ready = zhw_decode_inst.c_i_m_ready_scclang_global_8;
    // Stage 2 boundary: decode_block output (unsigned → signed, includes inv_lift)
    wire zhw_decode_block_valid = zhw_decode_inst.c_l_m_valid_scclang_global_12;
    wire zhw_decode_block_ready = zhw_decode_inst.c_l_m_ready_scclang_global_11;
    // Stage 3 boundary: final output (m_stream)
    // — already visible as zfp_out_valid/zfp_out_ready

    // Pipeline debug dump — fires every 10us
    wire zhw_bp_valid = zhw_decode_inst.c_bp_scclang_global_15_valid;
    wire zhw_bp_ready = zhw_decode_inst.c_bp_scclang_global_15_ready;
    wire zhw_bc_valid = zhw_decode_inst.c_bc_scclang_global_14_valid;
    wire zhw_bc_ready = zhw_decode_inst.c_bc_scclang_global_14_ready;
    wire zhw_shdr_valid = zhw_decode_inst.c_shdr_scclang_global_16_valid;
    wire zhw_shdr_ready = zhw_decode_inst.c_shdr_scclang_global_16_ready;
    wire zhw_fhdr_valid = zhw_decode_inst.c_fhdr_scclang_global_17_valid;
    wire zhw_fhdr_ready = zhw_decode_inst.c_fhdr_scclang_global_17_ready;
    wire zhw_blk_start_valid = zhw_decode_inst.c_blk_start_scclang_global_18_valid;
    wire zhw_blk_start_ready = zhw_decode_inst.c_blk_start_scclang_global_18_ready;
    wire zhw_b_m_valid = zhw_decode_inst.c_b_m_valid_scclang_global_2;
    wire zhw_b_m_ready = zhw_decode_inst.c_b_m_ready_scclang_global_1;
    wire zhw_c_s_valid = zhw_decode_inst.c_c_s_valid_scclang_global_6;
    wire zhw_c_s_ready = zhw_decode_inst.c_c_s_ready_scclang_global_5;

    // Decode_stream internal probes
    wire zhw_csync = zhw_decode_inst.u_decode_stream.csync_scclang_global_4;
    wire zhw_skpbts = zhw_decode_inst.u_decode_stream.skpbts_scclang_global_6;
    wire zhw_bc0f = zhw_decode_inst.u_decode_stream.b_c_scclang_global_0_f[0];
    wire zhw_bc1f = zhw_decode_inst.u_decode_stream.b_c_scclang_global_0_f[1];
    wire zhw_bc2f = zhw_decode_inst.u_decode_stream.b_c_scclang_global_0_f[2];
    wire zhw_bfifo_m_valid = zhw_decode_inst.u_decode_stream.c_m_bfifo_scclang_global_8_valid;
    wire zhw_bfifo_m_ready = zhw_decode_inst.u_decode_stream.c_m_bfifo_scclang_global_8_ready;
    wire zhw_bfifo_s_valid = zhw_decode_inst.u_decode_stream.c_s_bfifo_scclang_global_7_valid;
    wire zhw_bfifo_s_ready = zhw_decode_inst.u_decode_stream.c_s_bfifo_scclang_global_7_ready;
    // inv_cast internal state probes
    wire [3:0] zhw_ic_count = zhw_decode_inst.u_inv_cast.count_scclang_global_1;
    wire zhw_ic_got_bhdr = zhw_decode_inst.u_inv_cast.got_bhdr_scclang_global_2;
    wire zhw_ic_got_blk  = zhw_decode_inst.u_inv_cast.got_blk_scclang_global_3;
    wire zhw_ic_csync    = zhw_decode_inst.u_inv_cast.c_sync_scclang_global_0;
    wire zhw_ic_zb       = zhw_decode_inst.u_inv_cast.zb_scclang_global_6;
    wire zhw_ic_s_valid  = zhw_decode_inst.c_c_s_valid_scclang_global_6;
    wire zhw_ic_s_ready  = zhw_decode_inst.c_c_s_ready_scclang_global_5;
    wire [7:0] zhw_ic_r_ex = zhw_decode_inst.u_inv_cast.r_ex_scclang_global_5;
    wire zhw_fhdr_data_zb  = zhw_decode_inst.c_fhdr_scclang_global_17_data_zb;
    wire [7:0] zhw_fhdr_data_exp = zhw_decode_inst.c_fhdr_scclang_global_17_data_exp;
    wire zhw_shdr_data_zb  = zhw_decode_inst.c_shdr_scclang_global_16_data_zb;
    wire [7:0] zhw_shdr_data_exp = zhw_decode_inst.c_shdr_scclang_global_16_data_exp;

    integer dbg_dump_cnt;
    always_ff @(posedge axi4_mm_clk or negedge axi4_mm_rst_n) begin
        if (!axi4_mm_rst_n) dbg_dump_cnt <= 0;
        else begin
            dbg_dump_cnt <= dbg_dump_cnt + 1;
            if (dbg_dump_cnt % 6500 == 0 && dbg_dump_cnt < 200000) begin // ~every 10us at 650MHz
                $display("ZHW_PIPE [%0t] blk_start v/r=%b/%b  bp v/r=%b/%b  bc v/r=%b/%b  shdr v/r=%b/%b  fhdr v/r=%b/%b",
                    $time, zhw_blk_start_valid, zhw_blk_start_ready,
                    zhw_bp_valid, zhw_bp_ready,
                    zhw_bc_valid, zhw_bc_ready,
                    zhw_shdr_valid, zhw_shdr_ready,
                    zhw_fhdr_valid, zhw_fhdr_ready);
                $display("ZHW_PIPE [%0t] di v/r=%b/%b  bb1 v/r=%b/%b  db v/r=%b/%b  bb2 v/r=%b/%b  out v/r=%b/%b",
                    $time, zhw_decode_ints_valid, zhw_decode_ints_ready,
                    zhw_b_m_valid, zhw_b_m_ready,
                    zhw_decode_block_valid, zhw_decode_block_ready,
                    zhw_c_s_valid, zhw_c_s_ready,
                    zfp_out_valid, zfp_out_ready);
                $display("ZHW_PIPE [%0t] csync=%b skpbts=%b b_c[0..2].f=%b%b%b  bfifo s_v/r=%b/%b m_v/r=%b/%b",
                    $time, zhw_csync, zhw_skpbts,
                    zhw_bc0f, zhw_bc1f, zhw_bc2f,
                    zhw_bfifo_s_valid, zhw_bfifo_s_ready,
                    zhw_bfifo_m_valid, zhw_bfifo_m_ready);
                $display("ZHW_PIPE [%0t] ic: count=%0d got_bhdr=%b got_blk=%b csync=%b  zb=%b r_ex=%02x s_v/r=%b/%b  fhdr_zb=%b fhdr_exp=%02x",
                    $time, zhw_ic_count, zhw_ic_got_bhdr, zhw_ic_got_blk, zhw_ic_csync,
                    zhw_ic_zb, zhw_ic_r_ex, zhw_ic_s_valid, zhw_ic_s_ready,
                    zhw_fhdr_data_zb, zhw_fhdr_data_exp);
            end
        end
    end
    // synthesis translate_on

    // ============================================================
    // Profiling Counters
    //
    // 1) First-block pipeline depth: measures transit latency of the
    //    very first block through each stage (no overlap issues).
    // 2) Inter-departure throughput: average cycles between consecutive
    //    block outputs at each stage boundary (steady-state throughput).
    // 3) Block count and overall cycle count.
    // ============================================================
    logic [63:0] cycle_cnt;
    logic [63:0] block_count;

    // First-block timestamps (captured once, never overwritten)
    logic [63:0] first_input_cycle;
    logic [63:0] first_decode_out_cycle;
    logic [63:0] first_u2i_out_cycle;
    logic [63:0] first_inv_out_cycle;
    logic first_input_seen;
    logic first_decode_out_seen;
    logic first_u2i_out_seen;
    logic first_inv_out_seen;

    // First-block pipeline depth (latched once)
    logic [63:0] lat_decode_first;     // first block: input → decode out
    logic [63:0] lat_uint2int_first;   // first block: decode out → u2i out
    logic [63:0] lat_invlift_first;    // first block: u2i out → inv out

    // Inter-departure throughput accumulators
    logic [63:0] last_exit_decode;
    logic [63:0] last_exit_u2i;
    logic [63:0] last_exit_inv;
    logic [63:0] lat_thru_decode_acc;
    logic [63:0] lat_thru_uint2int_acc;
    logic [63:0] lat_thru_invlift_acc;
    logic [63:0] decode_out_count;
    logic [63:0] u2i_out_count;

    // Per-block edge detectors for throughput counting
    // These track the FIRST handshake per block at each stage
    logic decode_out_captured;
    logic u2i_out_captured;

    // ZHW output counter: every 16 output handshakes = 1 block (2D: 4x4=16)
    logic [4:0] zhw_out_elem_cnt;  // counts 0..15 within a block
    logic zhw_block_done;           // pulses when 16th element is output

    always_ff @(posedge axi4_mm_clk or negedge axi4_mm_rst_n) begin
        if (!axi4_mm_rst_n) begin
            cycle_cnt              <= '0;
            block_count            <= '0;
            first_input_cycle      <= '0;
            first_decode_out_cycle <= '0;
            first_u2i_out_cycle    <= '0;
            first_inv_out_cycle    <= '0;
            first_input_seen       <= '0;
            first_decode_out_seen  <= '0;
            first_u2i_out_seen     <= '0;
            first_inv_out_seen     <= '0;
            lat_decode_first       <= '0;
            lat_uint2int_first     <= '0;
            lat_invlift_first      <= '0;
            last_exit_decode       <= '0;
            last_exit_u2i          <= '0;
            last_exit_inv          <= '0;
            lat_thru_decode_acc    <= '0;
            lat_thru_uint2int_acc  <= '0;
            lat_thru_invlift_acc   <= '0;
            decode_out_count       <= '0;
            u2i_out_count          <= '0;
            decode_out_captured    <= '0;
            u2i_out_captured       <= '0;
            zhw_out_elem_cnt       <= '0;
            zhw_block_done         <= '0;
        end else begin
            cycle_cnt <= cycle_cnt + 64'd1;
            zhw_block_done <= 1'b0; // default: no pulse

            // ---- ZHW output element counter (16 elements = 1 block) ----
            if (zfp_out_valid && zfp_out_ready) begin
                if (zhw_out_elem_cnt == 5'd15) begin
                    zhw_out_elem_cnt <= 5'd0;
                    zhw_block_done <= 1'b1; // pulse: block complete
                end else begin
                    zhw_out_elem_cnt <= zhw_out_elem_cnt + 5'd1;
                end
            end

            // ---- First block: capture input timestamp ----
            if (zfp_in_valid_real && zfp_in_ready && !first_input_seen) begin
                first_input_cycle <= cycle_cnt;
                first_input_seen  <= 1'b1;
                $display("DBG_LAT [%0t] first_block_input: cycle=%0d", $time, cycle_cnt);
            end

            // ---- Stage 1 boundary: decode_ints output (bitstream → unsigned ints) ----
            // synthesis translate_off
            if (zhw_decode_ints_valid && zhw_decode_ints_ready && !decode_out_captured) begin
                decode_out_captured <= 1'b1;
                decode_out_count <= decode_out_count + 64'd1;

                // First-block pipeline depth
                if (!first_decode_out_seen) begin
                    first_decode_out_cycle <= cycle_cnt;
                    first_decode_out_seen  <= 1'b1;
                    lat_decode_first <= cycle_cnt - first_input_cycle;
                    $display("DBG_LAT [%0t] first_block_decode_out: cycle=%0d depth=%0d",
                             $time, cycle_cnt, cycle_cnt - first_input_cycle);
                end

                // Throughput (inter-departure)
                if (decode_out_count > 0) begin
                    lat_thru_decode_acc <= lat_thru_decode_acc + (cycle_cnt - last_exit_decode);
                end
                last_exit_decode <= cycle_cnt;
            end
            // synthesis translate_on

            // ---- Stage 2 boundary: decode_block output (negabinary + inv_lift) ----
            // synthesis translate_off
            if (zhw_decode_block_valid && zhw_decode_block_ready && !u2i_out_captured) begin
                u2i_out_captured <= 1'b1;
                u2i_out_count <= u2i_out_count + 64'd1;

                // First-block pipeline depth
                if (!first_u2i_out_seen) begin
                    first_u2i_out_cycle <= cycle_cnt;
                    first_u2i_out_seen  <= 1'b1;
                    lat_uint2int_first <= cycle_cnt - first_decode_out_cycle;
                    $display("DBG_LAT [%0t] first_block_decode_block_out: cycle=%0d depth=%0d",
                             $time, cycle_cnt, cycle_cnt - first_decode_out_cycle);
                end

                // Throughput (inter-departure)
                if (u2i_out_count > 0) begin
                    lat_thru_uint2int_acc <= lat_thru_uint2int_acc + (cycle_cnt - last_exit_u2i);
                end
                last_exit_u2i <= cycle_cnt;

                // Release decode capture for next block
                decode_out_captured <= 1'b0;
            end
            // synthesis translate_on

            // ---- Stage 3 completion: inv_cast output (16th element = block done) ----
            if (zhw_block_done) begin
                block_count <= block_count + 64'd1;

                // First-block pipeline depth
                if (!first_inv_out_seen) begin
                    first_inv_out_cycle <= cycle_cnt;
                    first_inv_out_seen  <= 1'b1;
                    lat_invlift_first <= cycle_cnt - first_u2i_out_cycle;
                    $display("DBG_LAT [%0t] first_block_inv_cast_done: cycle=%0d depth=%0d",
                             $time, cycle_cnt, cycle_cnt - first_u2i_out_cycle);
                end

                // Throughput (inter-departure)
                if (block_count > 0) begin
                    lat_thru_invlift_acc <= lat_thru_invlift_acc + (cycle_cnt - last_exit_inv);
                end
                last_exit_inv <= cycle_cnt;

                // Release u2i capture for next block
                u2i_out_captured <= 1'b0;

                $display("RTL DBG [%0t] zhw_block_done: block=%0d", $time, block_count + 1);
            end

            // Reset on start
            if (start_proc && test_case == 64'd20) begin
                cycle_cnt              <= '0;
                block_count            <= '0;
                first_input_cycle      <= '0;
                first_decode_out_cycle <= '0;
                first_u2i_out_cycle    <= '0;
                first_inv_out_cycle    <= '0;
                first_input_seen       <= '0;
                first_decode_out_seen  <= '0;
                first_u2i_out_seen     <= '0;
                first_inv_out_seen     <= '0;
                lat_decode_first       <= '0;
                lat_uint2int_first     <= '0;
                lat_invlift_first      <= '0;
                last_exit_decode       <= '0;
                last_exit_u2i          <= '0;
                last_exit_inv          <= '0;
                lat_thru_decode_acc    <= '0;
                lat_thru_uint2int_acc  <= '0;
                lat_thru_invlift_acc   <= '0;
                decode_out_count       <= '0;
                u2i_out_count          <= '0;
                decode_out_captured    <= '0;
                u2i_out_captured       <= '0;
                zhw_out_elem_cnt       <= '0;
                zhw_block_done         <= '0;
                $display("RTL DBG [%0t] RESET profiling (start_proc)", $time);
            end
        end
    end

    assign lat_decode    = lat_decode_first;
    assign lat_uint2int  = lat_uint2int_first;
    assign lat_invlift   = lat_invlift_first;
    assign lat_thru_decode   = lat_thru_decode_acc;
    assign lat_thru_uint2int = lat_thru_uint2int_acc;
    assign lat_thru_invlift  = lat_thru_invlift_acc;
    assign block_count_out   = block_count;

    // ============================================================
    // Wall-Clock Busy Time Per Stage
    // Counts cycles where each stage's output valid & ready are
    // both high (i.e., the stage is actively transferring data).
    // These values will always be <= overall AXI cycle count.
    // ============================================================
    logic [63:0] busy_decode_acc;
    logic [63:0] busy_uint2int_acc;
    logic [63:0] busy_invlift_acc;

    always_ff @(posedge axi4_mm_clk or negedge axi4_mm_rst_n) begin
        if (!axi4_mm_rst_n) begin
            busy_decode_acc   <= '0;
            busy_uint2int_acc <= '0;
            busy_invlift_acc  <= '0;
        end else begin
            if (start_proc && test_case == 64'd20) begin
                busy_decode_acc   <= '0;
                busy_uint2int_acc <= '0;
                busy_invlift_acc  <= '0;
            end else begin
                // synthesis translate_off
                if (zhw_decode_ints_valid && zhw_decode_ints_ready)
                    busy_decode_acc <= busy_decode_acc + 64'd1;
                if (zhw_decode_block_valid && zhw_decode_block_ready)
                    busy_uint2int_acc <= busy_uint2int_acc + 64'd1;
                // synthesis translate_on
                if (zfp_out_valid && zfp_out_ready)
                    busy_invlift_acc <= busy_invlift_acc + 64'd1;
            end
        end
    end

    assign busy_decode   = busy_decode_acc;
    assign busy_uint2int = busy_uint2int_acc;
    assign busy_invlift  = busy_invlift_acc;

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
            rd_cnt <= '0;
            wr_cnt <= '0;
            seed <= '0;
            
            // ZFP Reset
            zfp_in_valid_real <= 0;
            zfp_in_data_real <= 0;
            zfp_out_ready <= 1; // Always ready to drain
            zfp_word_cnt <= 0;
            zfp_out_word_cnt <= 0;
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
            rd_cnt <= '0;
            wr_cnt <= '0;
            seed <= '0;
            zfp_in_valid_real <= 0;
            zfp_word_cnt <= 0;
            zfp_out_word_cnt <= 0;
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
                            // rd_cnt: index of input cache lines read
                            rd_cnt <= 0;
                            // wr_cnt: index of output cache lines written
                            wr_cnt <= 0;
                            zfp_word_cnt <= 16; // Force read on first cycle
                            zfp_out_word_cnt <= 0;
                            state <= STATE_ZFP_PUSH_1;
                            
                            arid <= 0;
                            awid <= 0;
                            aruser <= 6'b000001; // Cacheable Shared
                            awuser <= 6'b000001;
                        end
                    end
                    else if (state == STATE_ZFP_PUSH_1) begin
                        // 1. Push Input
                        // BUG FIX #18: NBA pipeline fix for valid/ready handshake.
                        // The case(zfp_word_cnt) selects data via NBA, appearing on wire one
                        // cycle later. If the case runs every cycle, a stall (ready=0) causes
                        // the data to be overwritten before the decoder accepts it. Fix:
                        // (a) Only run case when ready=1 (holds data stable during stalls)
                        // (b) Keep valid=1 when cnt=16 if word[15] not yet accepted
                        // (c) Don't transition to RD_REQ while last word is pending
                        // BUG FIX #18: Use combinational data mux (zfp_in_data_mux)
                        // driven by zfp_word_cnt. Counter advances only on acceptance.
                        // This eliminates the 1-cycle NBA lag that caused word loss during stalls.
                        if (zfp_word_cnt < 16) begin
                            zfp_in_valid_real <= 1;
                            if (zfp_in_valid_real && zfp_in_ready) begin
                                zfp_word_cnt <= zfp_word_cnt + 1;
                            end
                        end else begin
                            zfp_in_valid_real <= 0;
                        end

                        // 2. Pop Output
                        zfp_out_ready <= 1;
                        if (zfp_out_valid) begin
                             wdata_buf <= {zfp_out_data, wdata_buf[511:32]};
                             zfp_out_word_cnt <= zfp_out_word_cnt + 1;
                             if (wr_cnt < 2)
                               $display("CAPTURE [%0t] word_cnt=%0d data=0x%08x valid=%b ready=%b", $time, zfp_out_word_cnt, zfp_out_data, zfp_out_valid, zfp_out_ready);
                        end

                        // 3. State Transitions (Output triggers take precedence to avoid holding finished data)
                        if ((zfp_out_valid && zfp_out_word_cnt == 15) || (zfp_out_word_cnt == 16)) begin
                             state <= STATE_ZFP_WR_REQ;
                             zfp_out_ready <= 0;
                             if (wr_cnt < 2)
                               $display("TRANSITION [%0t] PUSH_1->WR_REQ word_cnt=%0d", $time, zfp_out_word_cnt);
                        end else if (zfp_word_cnt >= 16) begin
                             // All 16 input words accepted — fetch next cache line
                             state <= STATE_ZFP_RD_REQ;
                             zfp_out_ready <= 0;
                             if (wr_cnt < 2)
                               $display("TRANSITION [%0t] PUSH_1->RD_REQ word_cnt=%0d zfp_word_cnt=%0d", $time, zfp_out_word_cnt, zfp_word_cnt);
                        end
                    end
                    
                    else if (state == STATE_ZFP_RD_REQ) begin
                        zfp_in_valid_real <= 0;
                        zfp_out_ready <= 0; // Stall IP output while fetching input
                        arvalid <= 1;
                        zfp_araddr_reg <= page_addr_0 + (rd_cnt << 6); // 64-byte aligned
                        if (arvalid && arready) begin
                            arvalid <= 0;
                            state <= STATE_ZFP_RD_WAIT;
                        end
                    end
                    else if (state == STATE_ZFP_RD_WAIT) begin
                        if (rvalid) begin
                            rdata_buf <= rdata;
                            zfp_word_cnt <= 0;
                            rd_cnt <= rd_cnt + 1;
                            state <= STATE_ZFP_PUSH_1;
                        end
                    end
                    
                    else if (state == STATE_ZFP_WR_REQ) begin
                        // Keep input valid during WR if words remain (combinational data mux
                        // ensures correct data regardless of state). Counter advances on acceptance.
                        if (zfp_word_cnt < 16) begin
                            zfp_in_valid_real <= 1;
                            if (zfp_in_valid_real && zfp_in_ready)
                                zfp_word_cnt <= zfp_word_cnt + 1;
                        end else begin
                            zfp_in_valid_real <= 0;
                        end
                        zfp_out_ready <= 0; // Stall IP output while writing memory
                        awvalid <= 1;
                        zfp_awaddr_reg <= seed_init + (wr_cnt << 6); // Output Base
                        if (awvalid && awready) begin
                            awvalid <= 0;
                            state <= STATE_ZFP_WR_DATA;
                        end
                    end
                    else if (state == STATE_ZFP_WR_DATA) begin
                        // Keep feeding input during write (combinational data mux)
                        if (zfp_word_cnt < 16) begin
                            zfp_in_valid_real <= 1;
                            if (zfp_in_valid_real && zfp_in_ready)
                                zfp_word_cnt <= zfp_word_cnt + 1;
                        end else begin
                            zfp_in_valid_real <= 0;
                        end
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
                        // Keep feeding input during write response
                        if (zfp_word_cnt < 16) begin
                            zfp_in_valid_real <= 1;
                            if (zfp_in_valid_real && zfp_in_ready)
                                zfp_word_cnt <= zfp_word_cnt + 1;
                        end else begin
                            zfp_in_valid_real <= 0;
                        end
                        if (bvalid) begin
                            wr_cnt <= wr_cnt + 1;
                            zfp_out_word_cnt <= 0;
                            if (wr_cnt + 1 == num_request) begin
                                state <= STATE_W_DONE;
                            end else begin
                                state <= STATE_ZFP_PUSH_1; // Resume processing
                            end
                        end
                    end
                    else if (state == STATE_W_DONE) begin
                        // Let the IP drain any remaining items 
                        zfp_out_ready <= 1'b1;
                        if (start_proc == 1'b0) begin
                            state <= STATE_IDLE;
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