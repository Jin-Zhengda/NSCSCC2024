module reg_lutram 
# (
    parameter DEPTH = 32,
    parameter WIDTH = 32
) (
    input logic clk,

    input wen,
    input [$clog2(DEPTH)-1:0] waddr,
    input [WIDTH-1:0] wdata,

    input [$clog2(DEPTH)-1:0] raddr,
    output [WIDTH-1:0] rdata
);

    (* ram_style = "distributed" *) reg [WIDTH-1:0] ram[0:DEPTH-1];

    `ifdef DIFF
    initial begin
        for (integer i = 0; i < 32; i++) begin
            ram[i] <= 32'b0;
        end
    end
    `endif

    always_ff @(posedge clk) begin
        if (wen) ram[waddr] <= wdata;
    end

    assign rdata = ram[raddr];

endmodule
