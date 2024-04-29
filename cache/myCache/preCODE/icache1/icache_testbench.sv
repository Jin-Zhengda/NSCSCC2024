`include "icache_types.sv"

`define ADDR_SIZE 32
`define DATA_SIZE 32


`define TAG_SIZE 20
`define INDEX_SIZE 8
`define OFFSET_SIZE 4
`define TAG_LOC 31:12
`define INDEX_LOC 11:4
`define OFFSET_LOC 3:0

`define BANK_NUM 8 
`define BANK_SIZE 32
`define SET_SIZE 256



module icache_testbench ();

reg clk,reset;

FRONT_ICACHE_SIGNALS front_icache_signals;
ICACHE_FRONT_SIGNALS icache_front_signals;
ICACHE_AXI_SIGNALS icache_axi_signals;
AXI_ICACHE_SIGNALS axi_icache_signals;
//EXE_ICACHE_SIGNALS exe_icache_signals;
ICACHE_STATES icache_states;




initial begin
    clk=1'b0;reset=1'b1;
    front_icache_signals.valid=1'b0;front_icache_signals.virtual_addr=`ADDR_SIZE'b0;front_icache_signals.tlb_excp_cancel_req=1'b0;
    axi_icache_signals.rd_rdy=1'b1;axi_icache_signals.ret_valid=1'b0;axi_icache_signals.ret_last=1'b0;axi_icache_signals.ret_data=`DATA_SIZE'b0;


    #20 begin reset=1'b0;end
    /*
    #10 begin 
        front_icache_signals.valid=1'b1;front_icache_signals.virtual_addr=`ADDR_SIZE'b11;
    end
    #400 begin 
        front_icache_signals.valid=1'b1;front_icache_signals.virtual_addr=`ADDR_SIZE'b11;
    end
    #40 begin 
        front_icache_signals.valid=1'b1;front_icache_signals.virtual_addr=`ADDR_SIZE'b11;
    end
    #40 begin 
        front_icache_signals.valid=1'b1;front_icache_signals.virtual_addr=`ADDR_SIZE'b11;
    end
    */
    #10 begin
        front_icache_signals.valid=1'b1;
    end
    
    #900 $finish;
end
/*
reg flag_cpu_en;
always_ff @(posedge clk) begin
    if(reset)flag_cpu_en<=1'b0;
    if(icache_front_signals.addr_ok)flag_cpu_en<=1'b1;
    else flag_cpu_en<=1'b0;
    if(flag_cpu_en)front_icache_signals.valid<=1'b0;
end
*/
/*
always_ff @( posedge clk ) begin
    if(icache_front_signals.addr_ok&&icache_states.icache_hit)front_icache_signals.valid<=1'b1;
    else if(front_icache_signals.valid==1'b1)begin
        if(icache_front_signals.data_ok)front_icache_signals.valid<=1'b0;
        else front_icache_signals.valid<=1'b1;
    end
end
*/

integer counter;
reg [`DATA_SIZE-1:0]data;
always_ff @(posedge clk) begin
    if(reset)data<=`DATA_SIZE'h00000000;
    else if(counter!=-1)begin
        data<=data+1;
    end
end

always_ff @( posedge clk ) begin
    if(reset)counter<=-1;
    else if(counter==7)counter<=-1;
    else if(icache_axi_signals.rd_req)counter<=counter+1;
    else if(counter!=-1)counter<=counter+1;
end

always_ff @( posedge clk ) begin
    if(reset)axi_icache_signals.ret_valid<=1'b0;
    else if(counter>=0&&counter<=7)begin
        axi_icache_signals.ret_valid<=1'b1;
    end
    else axi_icache_signals.ret_valid<=1'b0;
end

always_ff @( posedge clk ) begin
    if(reset)axi_icache_signals.ret_last<=1'b0;
    else if(counter==7)axi_icache_signals.ret_last<=1'b1;
    else axi_icache_signals.ret_last<=1'b0;
end

always_ff @( posedge clk ) begin
    if(reset)axi_icache_signals.ret_data<=`DATA_SIZE'b0;
    else axi_icache_signals.ret_data<=data;
end

always_ff @( posedge clk ) begin
    if(icache_front_signals.addr_ok)front_icache_signals.virtual_addr<=front_icache_signals.virtual_addr+4;
end


icache u_icache(
    .clk(clk),
    .reset(reset),
    .icache_front_signals(icache_front_signals),
    .front_icache_signals(front_icache_signals),
    .icache_axi_signals(icache_axi_signals),
    .axi_icache_signals(axi_icache_signals),
    .icache_states(icache_states)
);


always #10 clk=~clk;
    
endmodule