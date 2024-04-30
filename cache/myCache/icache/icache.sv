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

    interface pc_icache;
        bus32_t pc; // 读 icache 的地址
        logic inst_en; // 读 icache 使能
        bus32_t inst; // 读 icache 的结果，即给出的指令
        logic stall;
        //logic cache_miss; // cache 未命中
        //logic data_ok; // 数据传输完成

        modport master (
            input inst, stall,
            output pc, inst_en
        );

        modport slave (
            output inst, stall,
            input pc, inst_en
        );
    endinterface: pc_icache

    interface icache_mem;
        logic rd_req,ret_valid;
        bus32_t rd_addr;
        bus256_t ret_data;
        modport master (
            input ret_valid,ret_data,
            output rd_req,rd_addr
        );
        modport slave (
            input rd_req,rd_addr,
            output ret_valid,ret_data
        );
    endinterface //icache_mem

module icache (
    input logic clk,
    input logic reset,
    //front-icache
    input logic inst_en,
    input bus32_t pc,
    output logic stall,
    output bus32_t inst,
    //icache-mem
    output logic rd_req,
    output bus32_t rd_addr,
    input logic ret_valid,
    input bus256_t ret_data
);

//TLB转换(未实现)
bus32_t physical_addr;
assign physical_addr=pc;

logic pre_inst_en;
bus32_t pre_physical_addr;

//记录地址
always_ff @( posedge clk ) begin
    if(reset)begin
        pre_inst_en<=1'b0;
        pre_physical_addr<=32'b0;
    end
    else if(stall)begin
        pre_physical_addr<=pre_physical_addr;
        pre_inst_en<=pre_inst_en;
    end
    else begin
        pre_inst_en<=inst_en;
        pre_physical_addr<=physical_addr;
    end
end



logic [`DATA_SIZE-1:0]read_from_mem[`BANK_NUM-1:0];
for(genvar i =0 ;i<`BANK_NUM; i=i+1)begin
	assign read_from_mem[i] = ret_data[32*(i+1)-1:32*i];
end
logic hit_success,hit_fail,hit_way0,hit_way1;

//BANK 0~7 WAY 0~1
logic [3:0]wea_way0;
logic [3:0]wea_way1;
    
//port a:write  port b:read
logic [`DATA_SIZE-1:0]way0_cache[`BANK_NUM-1:0];
logic [6:0] ram_addr;
assign ram_addr = stall? pre_physical_addr[`INDEX_LOC] : physical_addr[`INDEX_LOC];//When stall, maintain the addr of ram 
simple_dual_port_ram Bank0_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[0]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[0]));
simple_dual_port_ram Bank1_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[1]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[1]));
simple_dual_port_ram Bank2_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[2]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[2]));
simple_dual_port_ram Bank3_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[3]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[3]));
simple_dual_port_ram Bank4_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[4]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[4]));
simple_dual_port_ram Bank5_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[5]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[5]));
simple_dual_port_ram Bank6_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[6]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[6]));
simple_dual_port_ram Bank7_way0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[7]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way0_cache[7]));
   
logic [`DATA_SIZE-1:0]way1_cache[`BANK_NUM-1:0]; 
simple_dual_port_ram Bank0_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[0]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[0]));
simple_dual_port_ram Bank1_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[1]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[1]));
simple_dual_port_ram Bank2_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[2]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[2]));
simple_dual_port_ram Bank3_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[3]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[3]));
simple_dual_port_ram Bank4_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[4]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[4]));
simple_dual_port_ram Bank5_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[5]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[5]));
simple_dual_port_ram Bank6_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[6]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[6]));
simple_dual_port_ram Bank7_way1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina(read_from_mem[7]),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(way1_cache[7]));                        

//Tag+Valid
logic [`TAGV_SIZE-1:0]tagv_cache_w0;
logic [`TAGV_SIZE-1:0]tagv_cache_w1;
simple_dual_port_ram TagV0 (.clka(clk),.ena(|wea_way0),.wea(wea_way0),.addra(pre_physical_addr[`INDEX_LOC]), .dina({1'b1,pre_physical_addr[`TAG_LOC]}),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(tagv_cache_w0));
simple_dual_port_ram TagV1 (.clka(clk),.ena(|wea_way1),.wea(wea_way1),.addra(pre_physical_addr[`INDEX_LOC]), .dina({1'b1,pre_physical_addr[`TAG_LOC]}),.clkb(clk),.enb(1'b1),.addrb(ram_addr),.doutb(tagv_cache_w1));  


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
    else if(inst_en&&hit_success)LRU[pre_physical_addr[`INDEX_LOC]] <= hit_way0;
    else if(inst_en&&hit_fail&&read_success)LRU[pre_physical_addr[`INDEX_LOC]] <= wea_way0;
    else LRU<=LRU;
end


//判断命中
assign hit_way0 = (tagv_cache_w0[19:0]==pre_physical_addr[`TAG_LOC] && tagv_cache_w0[20]==1'b1)? 1'b1 : 1'b0;
assign hit_way1 = (tagv_cache_w1[19:0]==pre_physical_addr[`TAG_LOC] && tagv_cache_w1[20]==1'b1)? 1'b1 : 1'b0;
assign hit_success = (hit_way0 | hit_way1) & pre_inst_en;
assign hit_fail = ~(hit_success) & pre_inst_en;


assign stall=reset?1'b1:(hit_fail||read_success?1'b1:1'b0);
assign inst=hit_way0?way0_cache[pre_physical_addr[4:2]]:(hit_way1?way1_cache[pre_physical_addr[4:2]]:(hit_fail&&ret_valid?read_from_mem[pre_physical_addr[4:2]]:32'hffffffff));


assign wea_way0=(pre_inst_en&&ret_valid&&LRU_pick==1'b0)?4'b1111:4'b0000;
assign wea_way1=(pre_inst_en&&ret_valid&&LRU_pick==1'b1)?4'b1111:4'b0000;


assign rd_req=!read_success&&hit_fail&&!ret_valid;
assign rd_addr=pre_physical_addr;

    
endmodule