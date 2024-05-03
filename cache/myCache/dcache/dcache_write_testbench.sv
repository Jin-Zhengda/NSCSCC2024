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



module dcache_testbench ();

reg clk,reset,valid,op,wr_rdy,rd_rdy,ret_valid;
reg[2:0]size;
reg[3:0]wstrb;
bus32_t virtual_addr,wdata;
bus256_t ret_data;


logic stall,rd_req,wr_req;
wire [2:0]rd_type;
wire [3:0]wr_wstrb;
bus32_t rdata,rd_addr,wr_addr;
bus256_t wr_data;


/*
logic[31:0] pc_get_data;
always_ff @( posedge clk ) begin
    if(!stall&&valid)pc_get_data<=inst;
    else pc_get_data<=pc_get_data;
end
*/



initial begin
    clk=1'b0;reset=1'b1;
    rd_rdy=1'b1;wr_rdy=1'b1;

    #20 begin reset=1'b0;end
    
    #900 $finish;
end

integer counter;
always_ff @( posedge clk ) begin
    if(reset)counter<=0;
    else counter<=counter+1;
end

always_ff @( posedge clk ) begin
    if(counter>2)valid<=1'b1;
    else valid<=1'b0;
end


always_ff @( posedge clk ) begin
    if(reset)virtual_addr<=32'b0;
    else if(virtual_addr>32'b0000_0000_0000_0000_0000_0000_0011_0000)virtual_addr<=32'b0;
    else if(!stall&&valid)virtual_addr<=virtual_addr+32'd4;
    else virtual_addr<=virtual_addr;
end


always_ff @( posedge clk ) begin
    if(reset)begin
        op<=1'b0;size<=3'b0;wstrb<=4'b0;wdata<=32'b0;
    end
    else if(op==1'b0&&virtual_addr>32'b0000_0000_0000_0000_0000_0000_0011_0000)begin
        op<=1'b1;size<=3'b010;wstrb<=4'b1111;wdata<=32'b0;
    end
    else if(op==1'b1&&virtual_addr>32'b0000_0000_0000_0000_0000_0000_0011_0000)begin
        op<=1'b0;size<=3'b0;wstrb<=4'b0;wdata<=32'b0;
    end
    else begin
        wdata<=wdata+1;
    end
end




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



dcache u_dcache(
    .clk(clk),
    .reset(reset),
    .valid(valid),
    .op(op),
    .size(size),
    .virtual_addr(virtual_addr),
    .wstrb(wstrb),
    .wdata(wdata),
    .stall(stall),
    .rdata(rdata),
    .rd_req(rd_req),
    .rd_type(rd_type),
    .rd_addr(rd_addr),
    .wr_req(wr_req),
    .wr_addr(wr_addr),
    .wr_wstrb(wr_wstrb),
    .wr_data(wr_data),
    .wr_rdy(wr_rdy),
    .rd_rdy(rd_rdy),
    .ret_valid(ret_valid),
    .ret_data(ret_data)

);


always #10 clk=~clk;
    
endmodule