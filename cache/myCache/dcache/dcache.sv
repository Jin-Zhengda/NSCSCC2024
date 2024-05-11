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


module dcache (
    input logic clk,
    input logic reset,

    mem_dcache mem2dcache,
    output logic stall,//比interface.sv里面的多了这个信号，你可以不接


    output logic rd_req,//读请求有效
    output logic[2:0] rd_type,//3’b000——字节，3’b001——半字，3’b010——字，3’b100——Cache行。
    output bus32_t rd_addr,//要读的数据所在的物理地址
    output logic       wr_req,//写请求有效
    output logic[31:0] wr_addr,//要写的数据所在的物理地址
    output logic[3:0]  wr_wstrb,//4位的写使能信号，决定4个8位中，每个8位是否要写入
    output bus256_t wr_data,//8个32位的数据为1路

    input logic       wr_rdy,//能接收写操作
    input logic       rd_rdy,//能接收读操作
    input logic       ret_valid,//返回数据信号有效
    input bus256_t ret_data//返回的数据

);

//wire stall;


//TLB转换(未实现)
bus32_t physical_addr;
assign physical_addr=mem2dcache.virtual_addr;

logic pre_valid,pre_op;
logic[3:0]pre_wstrb;
// logic[2:0]pre_size;
bus32_t pre_physical_addr,pre_wdata;

//记录地址
always_ff @( posedge clk ) begin
    if(reset)begin
        pre_valid<=1'b0;
        pre_op<=1'b0;
        pre_wstrb<=4'b0;
        // pre_size<=3'b0;
        pre_physical_addr<=32'b0;
        pre_wdata<=32'b0;
    end
    else if(stall)begin
        pre_valid<=pre_valid;
        pre_op<=pre_op;
        pre_wstrb<=pre_wstrb;
        // pre_size<=pre_size;
        pre_physical_addr<=pre_physical_addr;
        pre_wdata<=pre_wdata;
    end
    else begin
        pre_valid<=mem2dcache.valid;
        pre_op<=mem2dcache.op;
        pre_wstrb<=mem2dcache.wstrb;
        // pre_size<=mem2dcache.size;
        pre_physical_addr<=physical_addr;
        pre_wdata<=mem2dcache.wdata;
    end
end




logic [`DATA_SIZE-1:0]read_from_mem[`BANK_NUM-1:0];
for(genvar i =0 ;i<`BANK_NUM; i=i+1)begin
	assign read_from_mem[i] = ret_data[32*(i+1)-1:32*i];
end
logic hit_success,hit_fail,hit_way0,hit_way1;


reg [`DATA_SIZE-1:0]cache_wdata[`BANK_NUM-1:0];


//BANK 0~7 WAY 0~1
logic [3:0]wea_way0;
logic [3:0]wea_way1;
    
//port a:write  port b:read
logic [`DATA_SIZE-1:0]way0_cache[`BANK_NUM-1:0];
logic [6:0] ram_addr;
assign ram_addr = stall? pre_physical_addr[`INDEX_LOC] : physical_addr[`INDEX_LOC];//When stall, maintain the addr of ram 
simple_dual_port_ram Bank0_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[0]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[0]));
simple_dual_port_ram Bank1_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[1]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[1]));
simple_dual_port_ram Bank2_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[2]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[2]));
simple_dual_port_ram Bank3_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[3]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[3]));
simple_dual_port_ram Bank4_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[4]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[4]));
simple_dual_port_ram Bank5_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[5]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[5]));
simple_dual_port_ram Bank6_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[6]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[6]));
simple_dual_port_ram Bank7_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[7]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[7]));
   
logic [`DATA_SIZE-1:0]way1_cache[`BANK_NUM-1:0];                                               
simple_dual_port_ram Bank0_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[0]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[0]));
simple_dual_port_ram Bank1_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[1]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[1]));
simple_dual_port_ram Bank2_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[2]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[2]));
simple_dual_port_ram Bank3_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[3]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[3]));
simple_dual_port_ram Bank4_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[4]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[4]));
simple_dual_port_ram Bank5_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[5]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[5]));
simple_dual_port_ram Bank6_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[6]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[6]));
simple_dual_port_ram Bank7_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(cache_wdata[7]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[7]));                        

//Tag1'b1
logic [`TAGV_SIZE-1:0]tagv_cache_w0;
logic [`TAGV_SIZE-1:0]tagv_cache_w1;
simple_dual_port_ram TagV0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina({1'b1,pre_physical_addr[`TAG_LOC]}),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(tagv_cache_w0));
simple_dual_port_ram TagV1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina({1'b1,pre_physical_addr[`TAG_LOC]}),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(tagv_cache_w1));  


logic[31:0] write_mask;
assign write_mask={{8{pre_wstrb[3]}},{8{pre_wstrb[2]}},{8{pre_wstrb[1]}},{8{pre_wstrb[0]}}};

integer x;
always_comb begin 
	if(hit_fail&&ret_valid)begin//hit fail
		cache_wdata[0] = read_from_mem[0];
		cache_wdata[1] = read_from_mem[1];
		cache_wdata[2] = read_from_mem[2];
		cache_wdata[3] = read_from_mem[3];
		cache_wdata[4] = read_from_mem[4];
		cache_wdata[5] = read_from_mem[5];
		cache_wdata[6] = read_from_mem[6];
		cache_wdata[7] = read_from_mem[7];
	end
	else if(hit_success&&pre_op==1'b1)begin
        for(x=0;x<=7;x=x+1)begin
            if(x==pre_physical_addr[4:2])cache_wdata[x]=(pre_wdata & write_mask)|(((hit_way0)?way0_cache[x]:way1_cache[x]) & ~write_mask);
            else if(hit_way0)cache_wdata[x]=way0_cache[x];
            else if(hit_way1)cache_wdata[x]=way1_cache[x];
            else cache_wdata[x]=32'hffffffff;
        end
	end
    else begin
        cache_wdata[0] = `DATA_SIZE'b0;
        cache_wdata[1] = `DATA_SIZE'b0;
        cache_wdata[2] = `DATA_SIZE'b0;
        cache_wdata[3] = `DATA_SIZE'b0;
        cache_wdata[4] = `DATA_SIZE'b0;
        cache_wdata[5] = `DATA_SIZE'b0;
        cache_wdata[6] = `DATA_SIZE'b0;
        cache_wdata[7] = `DATA_SIZE'b0;
    end
end







logic read_success;
always_ff @( posedge clk ) begin
    if(ret_valid)read_success<=1'b1;
    else read_success<=1'b0;
end

//LRU
logic [`SET_SIZE-1:0]LRU;
logic LRU_pick;
assign LRU_pick = LRU[pre_physical_addr[`INDEX_LOC]];
always_ff @( posedge clk ) begin
    if(reset)LRU<=0;
    else if(mem2dcache.valid&&hit_success)LRU[pre_physical_addr[`INDEX_LOC]] <= hit_way0;
    else if(mem2dcache.valid&&hit_fail&&read_success)LRU[pre_physical_addr[`INDEX_LOC]] <= wea_way0;
    else LRU<=LRU;
end


//判断命中
assign hit_way0 = (tagv_cache_w0[19:0]==pre_physical_addr[`TAG_LOC] && tagv_cache_w0[20]==1'b1)? 1'b1 : 1'b0;
assign hit_way1 = (tagv_cache_w1[19:0]==pre_physical_addr[`TAG_LOC] && tagv_cache_w1[20]==1'b1)? 1'b1 : 1'b0;
assign hit_success = (hit_way0 | hit_way1) & pre_valid;
assign hit_fail = ~(hit_success) & pre_valid;





assign stall=reset?1'b1:(hit_fail||read_success?1'b1:1'b0);
assign mem2dcache.rdata=hit_way0?way0_cache[pre_physical_addr[4:2]]:(hit_way1?way1_cache[pre_physical_addr[4:2]]:(hit_fail&&ret_valid?read_from_mem[pre_physical_addr[4:2]]:32'hffffffff));


assign wea_way0=(pre_valid&&hit_way0&&mem2dcache.op==1'b1)?pre_wstrb:((pre_valid&&ret_valid&&LRU_pick==1'b0)?4'b1111:4'b0000);
assign wea_way1=(pre_valid&&hit_way1&&mem2dcache.op==1'b1)?pre_wstrb:((pre_valid&&ret_valid&&LRU_pick==1'b1)?4'b1111:4'b0000);


assign rd_req=!read_success&&hit_fail&&!ret_valid;
assign rd_addr=pre_physical_addr;

assign rd_type=3'b100;





//Dirty
    reg [`SET_SIZE*2-1:0] dirty;
	wire write_dirty = dirty[{pre_physical_addr[`INDEX_LOC],LRU_pick}]; 
    always@(posedge clk)begin
        if(reset)
            dirty<=0;
		else if(ret_valid == 1'b1 && pre_op == 1'b0)//Read not hit
            dirty[{pre_physical_addr[`INDEX_LOC],LRU_pick}] <= 1'b0;
		else if(ret_valid == 1'b1 && pre_op == 1'b1)//write not hit
            dirty[{pre_physical_addr[`INDEX_LOC],LRU_pick}] <= 1'b1;
		else if((hit_way0|hit_way1) == 1'b1 && pre_op == 1'b1)//write hit but not FIFO
            dirty[{pre_physical_addr[`INDEX_LOC],hit_way1}] <= 1'b1;
        else
            dirty <= dirty;
    end



always_ff @( posedge clk ) begin
    if(reset)begin
        wr_req<=1'b0;
        wr_addr<=32'b0;
        wr_wstrb<=4'b0;
        wr_data<=256'b0;
    end
    else if(write_dirty&&wr_rdy)begin
        wr_req<=1'b1;
        wr_addr<=pre_physical_addr;
        wr_wstrb<=4'b1111;
        wr_data<=LRU_pick?{way1_cache[7],way1_cache[6],way1_cache[5],way1_cache[4],way1_cache[3],way1_cache[2],way1_cache[1],way1_cache[0]}:{way0_cache[7],way0_cache[6],way0_cache[5],way0_cache[4],way0_cache[3],way0_cache[2],way0_cache[1],way0_cache[0]};
    end
    else begin
        wr_req<=1'b0;
        wr_addr<=32'b0;
        wr_wstrb<=4'd0;
        wr_data<=256'b0;
    end
end


assign mem2dcache.addr_ok=(mem2dcache.valid&&!stall);
assign mem2dcache.data_ok=(pre_valid&&!stall&&pre_op==1'b1);
assign mem2dcache.cache_miss=hit_fail;

endmodule