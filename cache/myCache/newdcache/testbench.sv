module testbench ();

mem_dcache mem2dcache();
cache_inst_t dcache_inst;


reg clk,reset,wr_rdy,rd_rdy,ret_valid;
bus256_t ret_data;


logic rd_req,wr_req,data_bvalid_o;
wire [2:0]rd_type;
wire [3:0]wr_wstrb;
bus32_t rd_addr,wr_addr;
bus256_t wr_data;

logic dcache_uncache;

logic ducache_ren_i;
bus32_t ducache_araddr_i;
logic ducache_rvalid_o;
bus32_t ducache_rdata_o;

logic ducache_wen_i;
bus32_t ducache_wdata_i;
bus32_t ducache_awaddr_i;
logic[3:0]ducache_strb;//改了个名
logic ducache_bvalid_o;










initial begin
    clk=1'b0;reset=1'b1;
    rd_rdy=1'b1;wr_rdy=1'b1;

    #20 begin reset=1'b0;end
    
    #1100 $finish;
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
    else if(mem2dcache.addr_ok&&mem2dcache.valid)mem2dcache.virtual_addr<=mem2dcache.virtual_addr+32'd4;
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
    if(ret_valid==1'b1)ret_valid<=1'b0;
    else if(rd_req)begin
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


/*
always_ff @( posedge clk ) begin
    if(counter==10)dcache_uncache<=1'b1;
    else dcache_uncache<=1'b0;
end
*/
assign dcache_uncache=(mem2dcache.virtual_addr==32'h0000_0010)?1'b1:1'b0;

always_ff @( posedge clk ) begin
    if(ducache_ren_i)begin
        ducache_rvalid_o<=1'b1;
        ducache_rdata_o<=ducache_araddr_i;
    end
    else begin
        ducache_rvalid_o<=1'b0;
        ducache_rdata_o<=32'b0;
    end
end

always_ff @( posedge clk ) begin
    if(ducache_wen_i)ducache_bvalid_o<=1'b1;
    else ducache_bvalid_o<=1'b0;
end

always_ff @( posedge clk ) begin
    if(data_bvalid_o)data_bvalid_o<=1'b0;
    else if(wr_req)data_bvalid_o<=1'b1;
    
end


dcache_transaddr dcache2transaddr();

trans_addr u_trans_addr(
    .clk(clk),
    .dcache2transaddr(dcache2transaddr.slave)
);


dcache u_dcache(
    .clk(clk),
    .reset(reset),
    .mem2dcache(mem2dcache.slave),
    .dcache2transaddr(dcache2transaddr.master),
    .dcache_uncache(dcache_uncache),
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
    .ret_data(ret_data),
    .data_bvalid_o(data_bvalid_o),
    .ducache_ren_i(ducache_ren_i),
    .ducache_araddr_i(ducache_araddr_i),
    .ducache_rvalid_o(ducache_rvalid_o),
    .ducache_rdata_o(ducache_rdata_o),
    .ducache_wen_i(ducache_wen_i),
    .ducache_wdata_i(ducache_wdata_i),
    .ducache_awaddr_i(ducache_awaddr_i),
    .ducache_strb(ducache_strb),
    .ducache_bvalid_o(ducache_bvalid_o)
);


always #10 clk=~clk;
    
endmodule