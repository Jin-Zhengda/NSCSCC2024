`include "define.v"

module regfile (
    input wire clk,
    input wire rst,
    input wire[5: 0] pause,

    // Write
    input wire write_en,
    input wire[`RegAddrWidth] write_addr,
    input wire[`RegWidth] write_data,
    
    // Read 1
    input wire read1_en,
    input wire[`RegAddrWidth] read1_addr,
    output reg[`RegWidth] read1_data,

    // Read 2
    input wire read2_en,
    input wire[`RegAddrWidth] read2_addr,
    output reg[`RegWidth] read2_data
);

    reg[`RegWidth] regs[0: 31];

    always @(posedge clk) begin 
        if (~rst) begin
            if (write_en && (write_addr != 5'b0)) begin
                regs[write_addr] <= write_data;
            end
        end    
    end

    always @(*) begin
        if (rst) begin
            read1_data = 32'b0;
        end
        else if (read1_addr == 5'b0) begin
            read1_data = 32'b0;
        end
        else if (read1_addr == write_addr && write_en && read1_en) begin
            read1_data = write_data;
        end
        else if (read1_en) begin
            read1_data = regs[read1_addr];
        end
        else begin
            read1_data = 32'b0;
        end
    end

    always @(*) begin
        if (rst) begin
            read2_data = 32'b0;
        end
        else if (read2_addr == 5'b0) begin
            read2_data = 32'b0;
        end
        else if (read2_addr == write_addr && write_en && read2_en) begin
            read2_data = write_data;
        end
        else if (read2_en) begin
            read2_data = regs[read2_addr];
        end
        else begin
            read2_data = 32'b0;
        end
    end

    
endmodule