`ifndef DCACHE_TYPES_SV
`define DCACHE_TYPES_SV


package dcache_types;

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
        logic[127:0]wr_data;//4个32位的数据为1路
    } DCACHE_AXI_SIGNALS;
    //axi -> dcache
    typedef struct packed {
        logic       wr_rdy;//写操作完成(你给这个信号告诉我，你写完了，我才能更新我这里的数据。即使后续我加writebuffer你应该也需要给writebuffer这个信号的)
        logic       rd_rdy;//读操作完成
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

endpackage
`endif
