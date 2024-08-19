module icache_testbench ();

reg clk,reset,ret_valid;
bus256_t ret_data;
pc_icache pc2icache();
icache_transaddr icache2transaddr();
integer counter;

logic rd_req;
bus32_t rd_addr;


logic iucache_ren_i;
bus32_t iucache_addr_i;
logic iucache_rvalid_o;
bus32_t iucache_rdata_o;

always_ff @( posedge clk ) begin
    if(iucache_rvalid_o)begin
        iucache_rvalid_o<=1'b0;
    end
    else if(iucache_ren_i)begin
        iucache_rvalid_o<=1'b1;
        iucache_rdata_o<={8'hff,iucache_addr_i[23:0]};
    end
    else begin
        iucache_rvalid_o<=1'b0;
        iucache_rdata_o<=32'hffffffff;
    end
end

logic pause_icache,branch_flush;
always_ff @( posedge clk ) begin
    if(counter==22||counter==7)pause_icache<=1'b0;
    else pause_icache<=1'b0;
end
always_ff @( posedge clk ) begin
    if(counter==16||counter==27)branch_flush<=1'b1;
    else branch_flush<=1'b0;
end




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


always_ff @( posedge clk ) begin
    if(reset)counter<=0;
    else counter<=counter+1;
end

/*
always_ff @( posedge clk ) begin
    if(counter>2)pc2icache.inst_en<=2'b11;
    else pc2icache.inst_en<=2'b0;
end
*/
assign pc2icache.inst_en=reset?2'b0:(pc2icache.uncache_en?2'b0:2'b11);


always_ff @( posedge clk ) begin
    if(reset)pc2icache.pc<=32'b0;
    else if(!pc2icache.stall&&(pc2icache.inst_en||pc2icache.uncache_en))begin
        if(pc2icache.pc==32'h24)pc2icache.pc<=32'h00800000;
        else pc2icache.pc<=pc2icache.pc+32'd4;
    end
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
    if(ret_valid)begin
        ret_valid<=1'b0;
    end
    else if(rd_req)begin
        ret_valid<=1'b1;
        ret_data<={base_addr+32'd28,base_addr+32'd24,base_addr+32'd20,base_addr+32'd16,base_addr+32'd12,base_addr+32'd8,base_addr+32'd4,base_addr};
    end
    else begin
        ret_valid<=1'b0;
        ret_data<=256'hffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff_ffffffff;
    end
end
/*
always_ff @( posedge clk ) begin
    if(counter==14)pc2icache.uncache_en<=1'b1;
    else pc2icache.uncache_en<=1'b0;
end
*/

assign pc2icache.uncache_en=reset?1'b0:(((pc2icache.pc==32'h0)||(pc2icache.pc==32'h8))?1'b1:1'b0);



icache u_icache(
    .clk(clk),
    .reset(reset),
    .pc2icache(pc2icache.slave),
    .icache2transaddr(icache2transaddr.master),
    .pause_icache(pause_icache),
    .branch_flush(branch_flush),
    .rd_req(rd_req),
    .rd_addr(rd_addr),
    .ret_valid(ret_valid),
    .ret_data(ret_data),
    .iucache_addr_i(iucache_addr_i),
    .iucache_rdata_o(iucache_rdata_o),
    .iucache_ren_i(iucache_ren_i),
    .iucache_rvalid_o(iucache_rvalid_o)
);
trans_addr u_trans_addr(
    .clk(clk),
    .icache2transaddr(icache2transaddr.slave)
);


always #10 clk=~clk;
    
endmodule