typedef logic[31:0] bus32_t;
typedef logic[255:0] bus256_t;

`define ADDR_SIZE 32
`define DATA_SIZE 32


`define TAG_SIZE 20
`define INDEX_SIZE 7
`define OFFSET_SIZE 5
`define TAG_LOC 31:12
`define INDEX_LOC 11:5
`define OFFSET_LOC 4:0

`define BANK_NUM 8 
`define BANK_SIZE 32
`define SET_SIZE 128
`define TAGV_SIZE 21



module icache_testbench ();

reg clk,reset,ret_valid;
bus256_t ret_data;
pc_icache pc2icache();

logic rd_req;
bus32_t rd_addr;

logic[31:0] pc_get_data;
always_ff @( posedge clk ) begin
    if(!pc2icache.stall&&pc2icache.inst_en)pc_get_data<=pc2icache.inst;
    else pc_get_data<=pc_get_data;
end





initial begin
    clk=1'b0;reset=1'b1;

    #20 begin reset=1'b0;end
    
    #900 $finish;
end

integer counter;
always_ff @( posedge clk ) begin
    if(reset)counter<=0;
    else counter<=counter+1;
end

always_ff @( posedge clk ) begin
    if(counter>2)pc2icache.inst_en<=1'b1;
    else pc2icache.inst_en<=1'b0;
end


always_ff @( posedge clk ) begin
    if(reset)pc2icache.pc<=32'b0;
    else if(!pc2icache.stall&&pc2icache.inst_en)pc2icache.pc<=pc2icache.pc+32'd4;
    else pc2icache.pc<=pc2icache.pc;
end
/*
reg[255:0]data;
always_ff @( posedge clk ) begin
    if(reset)data<=256'b0;
    else if(rd_req)data<=data+256'h00000008_00000007_00000006_00000005_00000004_00000003_00000002_00000001;
    else data<=data;
end
*/
wire[31:0] base_addr;
assign base_addr={rd_addr[31:3],3'b000};
always_ff @( posedge clk ) begin
    if(rd_req)begin
        ret_valid<=1'b1;
        ret_data<={base_addr+32'd28,base_addr+32'd24,base_addr+32'd20,base_addr+32'd16,base_addr+32'd12,base_addr+32'd8,base_addr+32'd4,base_addr};
    end
    else begin
        ret_valid<=1'b0;
        ret_data<=256'hffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff;
    end
end



always_ff @( posedge clk ) begin
    if(counter==13)pc2icache.front_is_valid<=1'b0;
    else if(counter==8)pc2icache.front_is_valid<=1'b0;
    else pc2icache.front_is_valid<=1'b1;
end

always_ff @( posedge clk ) begin
    pc2icache.front_is_exception<=counter;
    pc2icache.front_exception_cause<={6{counter}};
end



icache u_icache(
    .clk(clk),
    .reset(reset),
    .pc2icache(pc2icache),
    .rd_req(rd_req),
    .rd_addr(rd_addr),
    .ret_valid(ret_valid),
    .ret_data(ret_data)
);


always #10 clk=~clk;
    
endmodule