module dcacheInterface
(
    input               clk          ,
    input               reset        ,

    //与后端
    //后端给dcache的信号
    input               valid        ,//请求有效
    input               op           ,//操作类型，读-0，写-1
    input  [ 2:0]       size         ,//数据大小，3’b000——字节，3’b001——半字，3’b010——字
    input  [31:0]       virtual_addr ,//虚拟地址
    input               tlb_excp_cancel_req,//你给我的一个cancel信号，用于一些异常情况的处理，assign tlb_excp_cancel_req = excp_tlbr || excp_pil || excp_pis || excp_ppi || excp_pme;
    input  [ 3:0]       wstrb        ,//写使能，1表示对应的8位数据需要写
    input  [31:0]       wdata        ,//需要写的数据
    //dcache给后端的信号
    output              addr_ok      ,//该次请求的地址传输OK，读：地址被接收；写：地址和数据被接收
    output              data_ok      ,//该次请求的数据传输OK，读：数据返回；写：数据写入完成
    output [31:0]       rdata        ,//读DCache的结果
    output              cache_miss   ,//cache未命中(这个信号先不用也行，感觉是用来性能评估的？)
    //与后端结束

	//与总线
    //dcache给总线的信号
    output              rd_req       ,//读请求有效
    output [ 2:0]       rd_type      ,//3’b000——字节，3’b001——半字，3’b010——字，3’b100——Cache行。
    output [31:0]       rd_addr      ,//要读的数据所在的物理地址
    output reg          wr_req       ,//写请求有效
    output [ 2:0]       wr_type      ,//写的类型，3’b000——字节，3’b001——半字，3’b010——字，3'b100——一个cache路，32*4位
    output [31:0]       wr_addr      ,//要写的数据所在的物理地址
    output [ 3:0]       wr_wstrb     ,//4位的写使能信号，决定4个8位中，每个8位是否要写入
    output [127:0]      wr_data      ,//4个32位的数据为1路
    //总线给dcache的信号
    input               wr_rdy       ,//写操作完成(你给这个信号告诉我，你写完了，我才能更新我这里的数据。即使后续我加writebuffer你应该也需要给writebuffer这个信号的)
    input               rd_rdy       ,//读操作完成
    input               ret_valid    ,//返回数据信号有效
    input               ret_last     ,//返回数据为最后一个
    input  [31:0]       ret_data     ,//返回的数据
    //与总线结束


    //非缓存模式，有些指令可能用到这些接口，会跟EXE交互？
    input               uncache_en   ,
    input               dcacop_op_en ,
    input  [ 1:0]       cacop_op_mode,
    input  [ 4:0]       preld_hint   ,
    input               preld_en     ,

    //其他信号
    output              dcache_unbusy,//dcache空闲中
    output              dcache_hit//dcache命中

    
    
);
endmodule