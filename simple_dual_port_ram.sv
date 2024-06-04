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

`define SETSIZE 256
`define BANK_NUM 8
`define BANK_SIZE 32
`define TAGV_SIZE 32



module simple_dual_port_ram (
    input wire reset,
    input wire clkb,
    input wire enb,
    input wire[`INDEX_SIZE-1:0] addrb,
    output reg [`INSTRUCTION_DATA_SIZE-1:0] doutb,
    input wire clka,
    input wire ena,
    input wire [3:0]wea,
    input wire[`INDEX_SIZE-1:0] addra,
    input wire[`INSTRUCTION_DATA_SIZE-1:0] dina
);

reg [`INSTRUCTION_DATA_SIZE*8-1:0] ram[0:`SETSIZE-1];


wire [31:0]write_mask;
assign write_mask={{8{wea[3]}},{8{wea[2]}},{8{wea[1]}},{8{wea[0]}}};

integer i;
always @(posedge clka) begin
    if(reset)begin
        ram <= '{default: 0};
    end
    else if(ena)begin
        ram[addra] <= (dina&write_mask)|(ram[addra]&~write_mask);
    end
end

always @(posedge clkb) begin
    if(enb) begin
        doutb <= ram[addrb];
    end
end
    

endmodule