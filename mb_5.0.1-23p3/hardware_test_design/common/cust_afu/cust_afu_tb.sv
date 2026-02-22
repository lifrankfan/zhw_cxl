
`timescale 1ns/1ps

module cust_afu_tb;

    // Clock and Reset
    logic clk;
    logic rst_n;
    
    // CSR Interface
    logic [63:0] csr_writedata;
    logic        csr_read;
    logic        csr_write;
    logic [7:0]  csr_byteenable;
    logic [63:0] csr_readdata;
    logic        csr_readdatavalid;
    logic [21:0] csr_address;
    logic        csr_waitrequest;
    
    // AXI-MM Interface
    logic [11:0] awid, arid;
    logic [63:0] awaddr, araddr;
    logic [9:0]  awlen, arlen;
    logic [2:0]  awsize, arsize;
    logic [1:0]  awburst, arburst;
    logic        awvalid, arvalid;
    logic        awready, arready;
    logic [511:0] wdata, rdata;
    logic        wlast, rlast;
    logic        wvalid, rvalid;
    logic        wready, rready;
    logic [11:0] bid, rid;
    logic [1:0]  bresp, rresp;
    logic        bvalid, rvalid_in; // rvalid from slave
    logic        bready;
    
    // Test Signals
    logic [63:0] lat;
    logic [63:0] lat_s1, lat_s2, lat_s3;

    // Clock Gen
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    // Instantiate Device Under Test
    cust_afu_wrapper dut (
        .axi4_mm_clk(clk),
        .axi4_mm_rst_n(rst_n),
        
        // CSR
        .csr_avmm_clk(clk),
        .csr_avmm_rstn(rst_n),
        .csr_avmm_writedata(csr_writedata),
        .csr_avmm_read(csr_read),
        .csr_avmm_write(csr_write),
        .csr_avmm_byteenable(csr_byteenable),
        .csr_avmm_readdata(csr_readdata),
        .csr_avmm_readdatavalid(csr_readdatavalid),
        .csr_avmm_address(csr_address),
        .csr_avmm_waitrequest(csr_waitrequest),
        .csr_avmm_poison(1'b0),
        
        // AXI Master (DUT is Master)
        .awid(awid), .awaddr(awaddr), .awlen(awlen), .awsize(awsize), .awburst(awburst),
        .awvalid(awvalid), .awready(awready),
        .wdata(wdata), .wlast(wlast), .wvalid(wvalid), .wready(wready),
        .bid(bid), .bresp(bresp), .bvalid(bvalid), .bready(bready),
        .arid(arid), .araddr(araddr), .arlen(arlen), .arsize(arsize), .arburst(arburst),
        .arvalid(arvalid), .arready(arready),
        .rid(rid), .rdata(rdata), .rresp(rresp), .rlast(rlast), .rvalid(rvalid_in), .rready(rready),
        // unused outputs
        .awprot(), .awqos(), .awuser(), .awcache(), .awlock(), .awregion(), .awatop(), .wuser(), .wstrb(),
        .arprot(), .arqos(), .aruser(), .arcache(), .arlock(), .arregion()
    );

    // Mock Host Memory (Slave)
    // Load golden data from file
    logic [7:0] mem_data [0:65535]; // 64KB buffer
    initial begin
        integer fd, code;
        fd = $fopen("/fast-lab-share/lifan3/zfp/zhw/test/test_data/gold_results_data/nyx/NYX-4x4096_2D_rate_8.zfp", "rb");
        if (fd == 0) begin
            $display("ERROR: Could not open golden data file!");
            $finish;
        end
        code = $fread(mem_data, fd);
        $display("Loaded %0d bytes from golden data file", code);
        $fclose(fd);
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            arready <= 0;
            awready <= 0;
            wready <= 0;
            rvalid_in <= 0;
            bvalid <= 0;
        end else begin
            // Read Channel
            arready <= 1;
            if (arvalid && arready) begin
                fork
                    begin
                        automatic logic [63:0] addr = araddr;
                        automatic int offset = (addr > 64'hA0000000) ? (addr - 64'hA0000000) : 0;
                        
                        repeat(5) @(posedge clk);
                        rvalid_in <= 1;
                        
                        // Pack 64 bytes from file buffer into 512-bit word
                        rdata = {
                            mem_data[offset+63], mem_data[offset+62], mem_data[offset+61], mem_data[offset+60],
                            mem_data[offset+59], mem_data[offset+58], mem_data[offset+57], mem_data[offset+56],
                            mem_data[offset+55], mem_data[offset+54], mem_data[offset+53], mem_data[offset+52],
                            mem_data[offset+51], mem_data[offset+50], mem_data[offset+49], mem_data[offset+48],
                            mem_data[offset+47], mem_data[offset+46], mem_data[offset+45], mem_data[offset+44],
                            mem_data[offset+43], mem_data[offset+42], mem_data[offset+41], mem_data[offset+40],
                            mem_data[offset+39], mem_data[offset+38], mem_data[offset+37], mem_data[offset+36],
                            mem_data[offset+35], mem_data[offset+34], mem_data[offset+33], mem_data[offset+32],
                            mem_data[offset+31], mem_data[offset+30], mem_data[offset+29], mem_data[offset+28],
                            mem_data[offset+27], mem_data[offset+26], mem_data[offset+25], mem_data[offset+24],
                            mem_data[offset+23], mem_data[offset+22], mem_data[offset+21], mem_data[offset+20],
                            mem_data[offset+19], mem_data[offset+18], mem_data[offset+17], mem_data[offset+16],
                            mem_data[offset+15], mem_data[offset+14], mem_data[offset+13], mem_data[offset+12],
                            mem_data[offset+11], mem_data[offset+10], mem_data[offset+9],  mem_data[offset+8],
                            mem_data[offset+7],  mem_data[offset+6],  mem_data[offset+5],  mem_data[offset+4],
                            mem_data[offset+3],  mem_data[offset+2],  mem_data[offset+1],  mem_data[offset+0]
                        };
                            
                        rid <= arid;
                        rlast <= 1;
                        wait(rready);
                        @(posedge clk);
                        rvalid_in <= 0;
                    end
                join_none
            end
            
            // Write Channel
            awready <= 1;
            wready <= 1;
            
            if (wvalid && wready && wlast) begin
                fork
                    begin
                        repeat(2) @(posedge clk);
                        bvalid <= 1;
                        bid <= awid;
                        wait(bready);
                        @(posedge clk);
                        bvalid <= 0; 
                    end
                join_none
            end
        end
    end

    // CSR Master (Test Driver)
    task csr_wr(input [21:0] addr, input [63:0] data);
        @(posedge clk);
        csr_address = addr;
        csr_writedata = data;
        csr_write = 1;
        csr_byteenable = 8'hFF;
        wait(!csr_waitrequest);
        @(posedge clk);
        csr_write = 0;
        $display("CSR WRITE Addr:0x%x Data:0x%x", addr, data);
    endtask

    task csr_rd(input [21:0] addr, output [63:0] data);
        @(posedge clk);
        csr_address = addr;
        csr_read = 1;
        csr_byteenable = 8'hFF;
        wait(!csr_waitrequest);
        @(posedge clk);
        csr_read = 0;
        wait(csr_readdatavalid);
        data = csr_readdata;
        $display("CSR READ  Addr:0x%x Data:0x%x", addr, data);
    endtask

    // Main Test Sequence
    initial begin
        rst_n = 0;
        // Reset
        rst_n = 1'b0;
        #2000;
        rst_n = 1'b1;
        // Force unconnected port in zfp_decode to 0
        force dut.psedu_read_write_inst.decode_inst.zfp_decode_internal_inst.zfp_decode_internal.avst_iord_bl_call_zfp_decode_data = 1'b0;
        #2000;
        
        $display("--- Starting ZFP Per-Stage Latency Test ---");
        
        // 1. Configure Test Case 20 (ZFP)
        csr_wr(22'h0018, 64'd20); // CSR_TEST_CASE
        
        // 2. Configure Num Requests (256 cache lines = 16384 bytes / 64 bytes)
        // Full dataset: 16384 bytes / 64 bytes per cache line = 256 iterations
        // Each iteration processes 2 ZFP blocks (512 total)
        csr_wr(22'h0058, 64'd256);  // CSR_NUM_REQUEST = 256 cache lines
        
        // 3. Configure Dst Addr
        csr_wr(22'h0050, 64'hB0000000); // CSR_DST (mapped to seed_init)
        
        // 4. Start (Write Src Addr)
        csr_wr(22'h0008, 64'hA0000000); // CSR_SRC -> Triggers Start
        
        $display("--- ZFP Process Started ---");
        
        // Wait for Completion
        // #500000; 
        
        begin
            int timeout;
            for (timeout = 0; timeout < 2000000; timeout++) begin
                @(posedge clk);
                if (timeout % 1000 == 0) begin
                     $display("TB INFO: Timeout Counter: %0d", timeout);
                end
            end
        end
        
        // Read Overall Latency
        csr_rd(22'h0010, lat); // CSR_DELAY (from cal_delay)
        
        // Read Per-Stage Latencies
        csr_rd(22'h0068, lat_s1); // Decode (bit-plane)
        csr_rd(22'h0070, lat_s2); // Uint-to-Int
        csr_rd(22'h0078, lat_s3); // Inv Lift

        $display("");
        $display("============================================");
        $display("  ZFP Decompression Latency Report");
        $display("============================================");
        $display("  Overall (AXI):   %0d cycles", lat);
        $display("  ------------  Per-Stage Breakdown  ------");
        $display("  Decode:          %0d cycles", lat_s1);
        $display("  Uint-to-Int:     %0d cycles", lat_s2);
        $display("  Inv Lift:        %0d cycles", lat_s3);
        $display("  Stage Sum:       %0d cycles", lat_s1 + lat_s2 + lat_s3);
        $display("============================================");
        
        if (lat > 0) 
            $display("PASS: Latency Recorded");
        else 
            $display("FAIL: Latency is 0");
            
        $finish;
    end

endmodule
