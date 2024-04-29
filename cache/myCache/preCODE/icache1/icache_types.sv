`ifndef ICACHE_TYPES_SV
`define ICACHE_TYPES_SV


package icache_types;

    //Front -> icache
    typedef struct packed{
        logic       valid;//请求有效(即表示有真实数据传来了)
        logic[31:0] virtual_addr;
        logic       tlb_excp_cancel_req;
    } FRONT_ICACHE_SIGNALS;

    //icache -> FrontEnd
    typedef struct packed {
        logic       addr_ok;//该次请求的地址传输OK，地址成功被接收；
        logic       data_ok;//该次请求的数据传输OK，即数据正在被返回；
        logic[31:0] rdata;//读Cache的结果
        logic       cache_miss;//cache未命中
    } ICACHE_FRONT_SIGNALS;


    //icache -> axi
    typedef struct packed {
        logic       rd_req;//读请求有效信号,高电平有效。
        logic[2:0]  rd_type;//读请求类型。3’b000——字节，3’b001——半字，3’b010——字，3’b100——Cache行。(在icache中只有可能是 字 或者 行)
        logic[31:0] rd_addr;//读请求起始地址
    } ICACHE_AXI_SIGNALS;
    //axi -> icache
    typedef struct packed {
        logic       rd_rdy;//读请求能否被接收的握手信号。高电平有效。
        logic       ret_valid;//返回数据有效信号。高电平有效。
        logic       ret_last;//返回数据是一次读请求对应的最后一个返回数据
        logic[31:0] ret_data;//读返回数据。
    } AXI_ICACHE_SIGNALS;

    //EXE -> icache(暂不实现)
    typedef struct packed {
        logic       uncache_en;
        logic       icacop_op_en;
        logic[1:0]  cacop_op_mode;
        logic[7:0]  cacop_op_addr_index;
        logic[19:0] cacop_op_addr_tag;
        logic[3:0]  cacop_op_addr_offset;
    } EXE_ICACHE_SIGNALS;

    //icache state
    typedef struct packed {
        logic       icache_unbusy;//缓存是否属于忙状态
        logic       icache_hit;//缓存命中
    } ICACHE_STATES;

endpackage
`endif
