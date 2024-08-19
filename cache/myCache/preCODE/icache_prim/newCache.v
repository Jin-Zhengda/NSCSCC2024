`timescale 1ns / 1ps

module Cache
(
    input               clk            ,//时钟信号
    input               reset          ,//复位信号
    //to from cpu
    input               valid          ,//请求有效(即表示有真实数据传来了)
    input               option             ,//操作，0表示读，1表示写
    input  [ 7:0]       index          ,//地址的index域，arr[11:4]
    input  [19:0]       tag            ,//经虚实地址转换后的paddr形成的tag，地址的tag域，与index是同拍信号
    input  [ 3:0]       offset         ,//地址的offset域(addr[3:0])
    input  [ 3:0]       write_byte_en  ,//写字节使能信号(写入"1"所指的字节，如1100则是写入半字，前两个字节)
    input  [31:0]       write_data          ,//待写数据
    output              addr_ok        ,//该次请求的地址传输OK，读：地址被接收；写：地址和数据被接收
    output              data_ok        ,//该次请求的数据传输OK，读：数据返回；写：数据写入完成
    output [31:0]       read_data          ,//读Cache的结果

    input               uncache_en     ,//是否使能非缓存模式
    input               icacop_op_en   ,//是否使能非cacop操作
    input  [ 1:0]       cacop_op_mode  ,//缓存操作的模式
    input  [ 7:0]       cacop_op_addr_index , //this signal from mem stage's va（来自流水线中内存阶段的虚拟地址）
    input  [19:0]       cacop_op_addr_tag   , 
    input  [ 3:0]       cacop_op_addr_offset,
    output              icache_unbusy,//缓存是否属于忙状态
    input               tlb_excp_cancel_req,//TLB异常取消请求
    //to from axi
    output              read_request       ,//读请求有效信号,高电平有效。
    output [ 2:0]       read_type      ,//读请求类型。3’b000——字节，3’b001——半字，3’b010——字，3’b100——Cache行。
    output [31:0]       read_addr      ,//读请求起始地址(最后两位为00)
    input               read_ready       ,//读请求能否被axi接收的握手信号。高电平有效。
    input               return_valid    ,//返回数据有效的信号。高电平有效。
    input               return_last     ,//返回数据是一次读请求对应的最后一个返回数据。(感觉是若返回整个cache行则需要)
    input  [31:0]       return_data     ,//读返回数据。
    output reg          write_request       ,//写请求有效信号。高电平有效。
    output [ 2:0]       write_type      ,//写请求类型。3’b000——字节，3’b001——半字，3’b010——字，3’b100——Cache行。
    output [31:0]       write_addr      ,//写请求起始地址。(最后两位为00)
    output [ 3:0]       write_wstrb     ,//写字节使能信号
    output [127:0]      wr_data      ,//写数据。
    input               wr_rdy       ,//写请求能否被接收的握手信号。高电平有效。此处要求wr_rdy要先于wr_req置起，wr_req看到wr_rdy后才可能置上。所以wr_rdy的生成不要组合逻辑依赖wr_req，它应该是当AXI总线接口内部的16字节写缓存为空时就置上。
    //to perf_counter
    output              cache_miss  
); 

//将reset反相
wire rst_n;
assign rst_n=~reset;




endmodule

