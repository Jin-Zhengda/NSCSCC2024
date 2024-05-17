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

mem_dcache mem2dcache();
cache_inst_t dcache_inst;

logic stall;

reg clk,reset,wr_rdy,rd_rdy,ret_valid;
bus256_t ret_data;


logic rd_req,wr_req;
wire [2:0]rd_type;
wire [3:0]wr_wstrb;
bus32_t rd_addr,wr_addr;
bus256_t wr_data;


/*
logic[31:0] pc_get_data;
always_ff @( posedge clk ) begin
    if(!stall&&mem2dcache.valid)pc_get_data<=inst;
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
    if(counter>=9&&counter<=11)mem2dcache.valid<=1'b0;
    else if(counter>6)mem2dcache.valid<=1'b1;
    else mem2dcache.valid<=1'b0;
end


always_ff @( posedge clk ) begin
    if(reset)mem2dcache.virtual_addr<=32'b0;
    else if(mem2dcache.virtual_addr>32'b0000_0000_0000_0000_0000_0000_0011_0000)mem2dcache.virtual_addr<=32'b0;
    else if(!stall&&mem2dcache.valid)mem2dcache.virtual_addr<=mem2dcache.virtual_addr+32'd4;
    else mem2dcache.virtual_addr<=mem2dcache.virtual_addr;
end


always_ff @( posedge clk ) begin
    if(reset)begin
        mem2dcache.op<=1'b0;mem2dcache.size<=3'b0;mem2dcache.wstrb<=4'b0;mem2dcache.wdata<=32'b0;
    end
    else if(mem2dcache.op==1'b0&&mem2dcache.virtual_addr>32'b0000_0000_0000_0000_0000_0000_0011_0000)begin
        mem2dcache.op<=1'b1;mem2dcache.size<=3'b010;mem2dcache.wstrb<=4'b1111;mem2dcache.wdata<=32'b0;
    end
    else if(mem2dcache.op==1'b1&&mem2dcache.virtual_addr>32'b0000_0000_0000_0000_0000_0000_0011_0000)begin
        mem2dcache.op<=1'b0;mem2dcache.size<=3'b0;mem2dcache.wstrb<=4'b0;mem2dcache.wdata<=32'b0;
    end
    else begin
        mem2dcache.wdata<=mem2dcache.wdata+1;
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

always_ff @( posedge clk ) begin
    if(counter==7)begin
        //dcache_inst.is_cacop<=1'b1;
        //dcache_inst.cacop_code<=5'b00100;
    end
    else if(counter==12)begin
        //dcache_inst.is_cacop<=1'b1;
        //dcache_inst.cacop_code<=5'b00101;
    end
    else if(counter==1)begin
        dcache_inst.is_preld<=1'b1;
        dcache_inst.addr<=32'h0000_0000;
    end
    else begin
        dcache_inst.is_cacop<=1'b0;
        dcache_inst.cacop_code<=5'b00000;
        dcache_inst.is_preld<=1'b0;
        dcache_inst.hint<=1'b0;
        dcache_inst.addr<=32'b0;
    end
end



dcache u_dcache(
    .clk(clk),
    .reset(reset),
    .stall(stall),
    .mem2dcache(mem2dcache.slave),
    .dcache_inst(dcache_inst),
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