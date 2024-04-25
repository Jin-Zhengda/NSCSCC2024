`timescale 1ns / 1ps

// interface define
`define INSTRUCTION_DATA_SIZE 32
`define INSTRUCTION_ADDR_SIZE 32
`define PACKED_DATA_SIZE 256

//icache define
`define INDEX_SIZE 7
`define TAG_SIZE 20
`define OFFSET_SIZE 5
`define TAG_LOCATION 31:12
`define INDEX_LOCATION 11:5
`define OFFSET_LOCATION 4:0

`define SETSIZE 128
`define BANK_NUM 8
`define BANK_SIZE 32
`define TAGV_SIZE 32



module simple_dual_ram (
    input wire reset,
    input wire clk_read,
    input wire read_en,
    input wire[`INDEX_SIZE-1:0] read_addr,
    output reg [`INSTRUCTION_DATA_SIZE-1:0] read_data,
    input wire clk_write,
    input wire write_en,
    input wire[`INDEX_SIZE-1:0] write_addr,
    input wire[`INSTRUCTION_DATA_SIZE-1:0] write_data
);

reg [`INSTRUCTION_DATA_SIZE-1:0] ram[0:`SETSIZE-1];


integer i;
/*
always @(posedge clk_write) begin
    if(reset)begin
        for(i=0;i<`SETSIZE;i=i+1)begin
            ram[i]<=`INSTRUCTION_DATA_SIZE*'b0;
        end
    end
    if(write_en) begin
        ram[write_addr] <= write_data;
    end
end
*/
always @(*) begin
    if(reset)begin
        for(i=0;i<`SETSIZE;i=i+1)begin
            ram[i]=`INSTRUCTION_DATA_SIZE*'b0;
        end
    end
    else if(write_en)begin
        ram[write_addr] = write_data;
    end
end

always @(*) begin
    if(read_en) begin
        read_data = ram[read_addr];
    end
end
    

endmodule