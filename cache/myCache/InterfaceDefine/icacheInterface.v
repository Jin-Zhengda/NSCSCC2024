module icacheInterface
(
    input               clk            ,//时钟信号
    input               reset          ,//复位信号

    //与前端
    //前端要给icache的信号：
    input               valid          ,//请求有效(即表示有真实数据传来了)
    input  [31:0]       virtual_addr   ,//虚拟地址，也就是你的PC
    input               tlb_excp_cancel_req,//你给我的一个取消信号。我的理解是，这个cancel信号取消的情况包括了三种情况(assign tlb_excp_cancel_req = fs_excp_tlbr || fs_excp_pif || fs_excp_ppi;)TLB读取异常会取消，你所说的要取的指令突然又不要了的情况是不是也在这里面？
    //icache给前端的信号：
    output              addr_ok        ,//该次请求的地址传输OK，地址被接收
    output              data_ok        ,//该次请求的数据传输OK，指令数据返回使能信号
    output [31:0]       rdata          ,//读Cache的结果
    output              cache_miss  ,//cache未命中(其实你不用这个信号也行？to perf_counter什么意思？性能评估的时候用？)
    //与前端结束
    

    //与总线
    //icache给总线的信号
    output              rd_req       ,//读请求有效信号,高电平有效。
    output [ 2:0]       rd_type      ,//读请求类型。3’b000——字节，3’b001——半字，3’b010——字，3’b100——Cache行。(在icache中只有可能是 字 或者 行)
    output [31:0]       rd_addr      ,//读请求起始地址
    //总线要给icache的信号：
    input               rd_rdy       ,//读请求能否被接收的握手信号。高电平有效。
    input               ret_valid    ,//返回数据有效信号。高电平有效。
    input               ret_last     ,//返回数据是一次读请求对应的最后一个返回数据。
    input  [31:0]       ret_data     ,//读返回数据。
    //与总线结束
   

    //非缓存模式，有些指令的实现可能需要这些接口，会跟EXE交互？
    input               uncache_en     ,//是否使能非缓存模式
    input               icacop_op_en   ,//是否使能非cacop操作
    input  [ 1:0]       cacop_op_mode  ,//缓存操作的模式
    input  [ 7:0]       cacop_op_addr_index , //this signal from mem stage's va（来自流水线中内存阶段的虚拟地址）
    input  [19:0]       cacop_op_addr_tag   , 
    input  [ 3:0]       cacop_op_addr_offset,


    //其他信号
    output              icache_unbusy,//缓存是否属于忙状态
    output              icache_hit//缓存命中
    
); 
endmodule