    //back -> dcache
    typedef struct packed{
        logic       valid;//请求有效
        logic       op;//操作类型，读-0，写-1
        logic[2:0]  size;//数据大小，3’b000——字节，3’b001——半字，3’b010——字
        logic[31:0] virtual_addr;//虚拟地址
        logic       tlb_excp_cancel_req;
        logic[3:0]  wstrb;//写使能，1表示对应的8位数据需要写
        logic[31:0] wdata;//需要写的数据
    } BACK_DCACHE_SIGNALS;

    //dcache -> back
    typedef struct packed {
        logic       addr_ok;//该次请求的地址传输OK，读：地址被接收；写：地址和数据被接收
        logic       data_ok;//该次请求的数据传输OK，读：数据返回；写：数据写入完成
        logic[31:0] rdata;//读DCache的结果
        logic       cache_miss;//cache未命中
    } DCACHE_BACK_SIGNALS;


    //dcache -> axi
    typedef struct packed {
        logic       rd_req;//读请求有效
        logic[2:0]  rd_type;//3’b000——字节，3’b001——半字，3’b010——字，3’b100——Cache行。
        logic[31:0] rd_addr;//要读的数据所在的物理地址
        logic       wr_req;//写请求有效
        logic[2:0]  wr_type;//写的类型，3’b000——字节，3’b001——半字，3’b010——字，3'b100——一个cache路，32*4位
        logic[31:0] wr_addr;//要写的数据所在的物理地址
        logic[3:0]  wr_wstrb;//4位的写使能信号，决定4个8位中，每个8位是否要写入
        logic[256:0]wr_data;//8个32位的数据为1路
    } DCACHE_AXI_SIGNALS;
    //axi -> dcache
    typedef struct packed {
        logic       wr_rdy;//能接收写操作
        logic       rd_rdy;//能接收读操作
        logic       ret_valid;//返回数据信号有效
        logic       ret_last;//返回数据为最后一个
        logic[31:0] ret_data;//返回的数据
    } AXI_DCACHE_SIGNALS;


    //EXE -> dcache(暂不实现)
    typedef struct packed {
        logic       uncache_en;
        logic       dcacop_op_en;
        logic[1:0]  cacop_op_mode;
        logic[4:0]  preld_hint;
        logic       preld_en;
    } EXE_DCACHE_SIGNALS;

    //icache state
    typedef struct packed {
        logic       dcache_unbusy;//缓存不忙
        logic       cache_hit;//缓存命中
    } DCACHE_STATES;

module dcache_testbench ();

reg clk,reset;
BACK_DCACHE_SIGNALS back_dcache_signals;
DCACHE_BACK_SIGNALS dcache_back_signals;
DCACHE_AXI_SIGNALS dcache_axi_signals;
AXI_DCACHE_SIGNALS axi_dcache_signals;
DCACHE_STATES dcache_states;

initial begin
    clk=1'b0;reset=1'b1;

    back_dcache_signals.valid=1'b0;
    back_dcache_signals.op=1'b0;
    back_dcache_signals.size=3'b010;
    back_dcache_signals.virtual_addr=32'b0;
    back_dcache_signals.tlb_excp_cancel_req=1'b0;
    back_dcache_signals.wstrb=4'b0;
    back_dcache_signals.wdata=32'hffffffff;
    

    axi_dcache_signals.wr_rdy=1'b1;
    axi_dcache_signals.rd_rdy=1'b1;
    axi_dcache_signals.ret_valid=1'b0;
    axi_dcache_signals.ret_last=1'b0;
    axi_dcache_signals.ret_data=32'b0;


    #20 begin reset=1'b0;end

    #10 begin
        back_dcache_signals.valid=1'b1;
    end

    #500 begin
        back_dcache_signals.op=1'b1;
        back_dcache_signals.wstrb=4'b1111;
    end
    
    #900 $finish;
end

wire cur_op;
assign cur_op=back_dcache_signals.op;
reg pre_op;
always_ff @( posedge clk ) begin
    pre_op<=cur_op;
end

integer counter;
reg [32-1:0]data;
always_ff @(posedge clk) begin
    if(reset)data<=32'h00000000;
    else if(counter!=-1)begin
        data<=data+1;
    end
end

always_ff @( posedge clk ) begin
    if(reset)counter<=-1;
    else if(counter==7)counter<=-1;
    else if(dcache_axi_signals.rd_req)counter<=counter+1;
    else if(counter!=-1)counter<=counter+1;
end

always_ff @( posedge clk ) begin
    if(reset)axi_dcache_signals.ret_valid<=1'b0;
    else if(counter>=0&&counter<=7)begin
        axi_dcache_signals.ret_valid<=1'b1;
    end
    else axi_dcache_signals.ret_valid<=1'b0;
end

always_ff @( posedge clk ) begin
    if(reset)axi_dcache_signals.ret_last<=1'b0;
    else if(counter==7)axi_dcache_signals.ret_last<=1'b1;
    else axi_dcache_signals.ret_last<=1'b0;
end

always_ff @( posedge clk ) begin
    if(reset)axi_dcache_signals.ret_data<=32'b0;
    else axi_dcache_signals.ret_data<=data;
end

always_ff @( posedge clk ) begin
    if(!pre_op&&cur_op)back_dcache_signals.virtual_addr<=32'h00000000;
    else if(dcache_back_signals.addr_ok)back_dcache_signals.virtual_addr<=back_dcache_signals.virtual_addr+4;
end

dcache u_dcache(
    .clk(clk),
    .reset(reset),
    .dcache_back_signals(dcache_back_signals),
    .back_dcache_signals(back_dcache_signals),
    .axi_dcache_signals(axi_dcache_signals),
    .dcache_axi_signals(dcache_axi_signals),
    .dcache_states(dcache_states)
);




always #10 clk=~clk;
    
endmodule



