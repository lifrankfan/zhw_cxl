
`timescale 1ns/1ps

module cal_delay_tb;

    // Signals
    logic clk;
    logic reset_n;
    logic m_axi_arvalid;
    logic m_axi_arready;
    logic m_axi_rvalid;
    logic m_axi_rready;
    logic m_axi_awvalid;
    logic m_axi_awready;
    logic m_axi_wready;
    logic m_axi_wvalid;
    logic m_axi_bvalid;
    logic m_axi_bready;    
    logic [63:0] test_case;
    logic [63:0] pre_test_case;
    logic [63:0] num_request;
    logic [11:0] rid;
    logic [11:0] bid;
    logic [11:0] arid;
    logic [11:0] awid;
    logic [63:0] result;
    logic [63:0] result_h;
    logic [63:0] addr_cnt;
    logic [63:0] data_cnt;
    logic [63:0] resp_cnt;   
    logic [63:0] id_cnt;
    logic [63:0] id_cnt_1;

    // Instantiate DUT
    cal_delay dut (
        .clk(clk),
        .reset_n(reset_n),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_arready(m_axi_arready),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_rready(m_axi_rready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_bready(m_axi_bready),    
        .test_case(test_case),
        .pre_test_case(pre_test_case),
        .num_request(num_request),
        .rid(rid),
        .bid(bid),
        .arid(arid),
        .awid(awid),
        .result(result),
        .result_h(result_h),
        .addr_cnt(addr_cnt),
        .data_cnt(data_cnt),
        .resp_cnt(resp_cnt),   
        .id_cnt(id_cnt),
        .id_cnt_1(id_cnt_1)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz
    end

    // Test Sequence
    initial begin
        // Initialize Inputs
        reset_n = 0;
        m_axi_arvalid = 0; m_axi_arready = 0;
        m_axi_rvalid = 0;  m_axi_rready = 0;
        m_axi_awvalid = 0; m_axi_awready = 0;
        m_axi_wready = 0;  m_axi_wvalid = 0;
        m_axi_bvalid = 0;  m_axi_bready = 0;
        test_case = 0;
        pre_test_case = 0;
        num_request = 10;
        rid = 0; bid = 0; arid = 0; awid = 0;

        // Reset
        #100;
        reset_n = 1;
        #20;

        // --- Test Case 20: ZFP Latency ---
        $display("Starting Test Case 20...");
        test_case = 64'd20;
        pre_test_case = 64'd0; // Simulator doesn't auto-update this like wrapper
        
        // Wait a few cycles
        #20;

        // 1. Host triggers reading (Start Counting)
        // psedu_read_write asserts arvalid
        m_axi_arvalid = 1;
        m_axi_arready = 1; // Slave ready
        
        #10; // One cycle pulse
        m_axi_arvalid = 0; // Handshake done
        m_axi_arready = 0;
        
        $display("Time %0t: Read Req Sent. Latency Counting Started.", $time);

        // 2. Simulate ZFP Processing Delay
        #500; 

        // 3. Simulate Write Responses (Result returning)
        // Need to send `num_request` responses
        m_axi_bready = 1;
        for (int i = 0; i < 10; i++) begin
            #20;
            m_axi_bvalid = 1;
            #10;
            m_axi_bvalid = 0;
        end
        m_axi_bready = 0;
        
        $display("Time %0t: All Write Resp Received.", $time);
        
        #50;
        
        // Check Result
        $display("Final Result (Latency): %0d cycles", result);
        
        if (result > 50 && result < 1000) 
            $display("PASS: Latency captured.");
        else
            $display("FAIL: Latency seems wrong.");

        $finish;
    end

endmodule
