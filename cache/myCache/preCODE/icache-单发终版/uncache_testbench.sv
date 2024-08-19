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
integer counter;
always_ff @( posedge clk ) begin
    if(reset)counter<=0;
    else counter<=counter+1;
end


logic icache_uncache;

logic iucache_ren_i;
bus32_t iucache_addr_i;
logic iucache_rvalid_o;
bus32_t iucache_rdata_o;

always_ff @( posedge clk ) begin
    if(counter==8)icache_uncache<=1'b1;
    else icache_uncache<=1'b0;
end

always_ff @( posedge clk ) begin
    if(iucache_ren_i)begin
        iucache_rvalid_o<=1'b1;
        iucache_rdata_o<=iucache_addr_i;
    end
    else begin
        iucache_rvalid_o<=1'b0;
        iucache_rdata_o<=32'b0;
    end
end



logic rd_req;
bus32_t rd_addr;
logic branch_flush;
ctrl_t ctrl;
logic[31:0] pc_get_data;
always_ff @( posedge clk ) begin
    if(!pc2icache.stall&&pc2icache.inst_en)pc_get_data<=pc2icache.inst;
    else pc_get_data<=pc_get_data;
end





initial begin
    clk=1'b0;reset=1'b1;ctrl.pause=8'b0;ctrl.exception_flush=1'b0;branch_flush=1'b0;

    #20 begin reset=1'b0;end
    
    #900 $finish;
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
assign base_addr={rd_addr[31:5],5'b00000};
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
    if(counter==15)pc2icache.front_is_valid<=1'b0;
    else if(counter==10)pc2icache.front_is_valid<=1'b0;
    else pc2icache.front_is_valid<=1'b1;
end

always_ff @( posedge clk ) begin
    pc2icache.front_is_exception<=counter;
    pc2icache.front_exception_cause<={6{counter}};
end



//cacop
logic             icacop_op_en   ;//使能信号
logic[ 1:0]       icacop_op_mode  ;//缓存操作的模式
bus32_t icacop_addr;
/*
always_ff @( posedge clk ) begin
    if(counter==8)begin
        icacop_op_en<=1'b1;
        icacop_op_mode<=2'b0;
        icacop_addr<=pc2icache.pc;
    end
    else if(counter==14)begin
        icacop_op_en<=1'b1;
        icacop_op_mode<=2'b1;
        icacop_addr<=pc2icache.pc;
    end
    else if(counter==16)begin
        icacop_op_en<=1'b1;
        icacop_op_mode<=2'd2;
        icacop_addr<=pc2icache.pc;
    end
    else begin
        icacop_op_en<=1'b0;
    end
end
*/
assign icacop_op_en=1'b0;





icache u_icache(
    .clk(clk),
    .reset(reset),
    .ctrl(ctrl),
    .branch_flush(branch_flush),
    .pc2icache(pc2icache),
    .icache_uncache(icache_uncache),
    .rd_req(rd_req),
    .rd_addr(rd_addr),
    .ret_valid(ret_valid),
    .ret_data(ret_data),
    .icacop_op_en(icacop_op_en),
    .icacop_op_mode(icacop_op_mode),
    .icacop_addr(icacop_addr),
    .iucache_ren_i(iucache_ren_i),
    .iucache_addr_i(iucache_addr_i),
    .iucache_rvalid_o(iucache_rvalid_o),
    .iucache_rdata_o(iucache_rdata_o)
);


always #10 clk=~clk;
    
endmodule