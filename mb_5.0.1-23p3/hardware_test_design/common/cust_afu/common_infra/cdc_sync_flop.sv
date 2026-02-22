module cdc_sync_flop #(
    parameter RESET_LEVEL = 0,
    parameter WIDTH = 1
)(
    input  logic clk,
    input  logic reset,
    input  logic [WIDTH-1:0] i_data,
    output logic [WIDTH-1:0] o_data
);
    logic [WIDTH-1:0] sync_r1;
    always_ff @(posedge clk or negedge reset) begin
        if (!reset) begin
            sync_r1 <= {WIDTH{RESET_LEVEL[0]}};
            o_data  <= {WIDTH{RESET_LEVEL[0]}};
        end else begin
            sync_r1 <= i_data;
            o_data  <= sync_r1;
        end
    end
endmodule
