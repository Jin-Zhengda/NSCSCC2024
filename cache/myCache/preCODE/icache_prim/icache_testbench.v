//interficate_define
`define PHYSICAL_ADDR_SIZE 32//物理地址的位数
`define VIRTUAL_ADDR_SIZE 32//虚拟地址的位数
`define INSTRUCTION_DATA_SIZE 32//所取指令的位数
`define PACKED_DATA_SIZE `BANK_SIZE*`BANK_NUM//总线传回数据位宽

//cache_define

//num define
`define BANK_NUM 8//每个路中bank的个数数

//size define
`define TAG_SIZE 20//tag的位数
`define INDEX_SIZE 8//index的位数
`define OFFSET_SIZE 4//offset的位数
`define TAG_LOCATION 31:12
`define INDEX_LOCATION 11:4
`define OFFSET_LOCATION 3:0

`define BANK_SIZE 32//每个bank的位数
`define TAGV_SIZE 32//tag+valid存储时的size
`define SETSIZE 256

module icache_testbench ();

reg clk,reset,cpu_icache_en,mem_icache_return_en;
wire icache_free,icache_hit,icache_cpu_data_en,cache_mem_read_en;
reg[`VIRTUAL_ADDR_SIZE-1:0] virtual_addr;
reg[`PHYSICAL_ADDR_SIZE-1:0] physical_addr;
wire [`INSTRUCTION_DATA_SIZE-1:0] icache_cpu_data;
reg[`PACKED_DATA_SIZE-1:0]mem_icache_return_data;
wire [`PHYSICAL_ADDR_SIZE-1:0]cache_mem_read_addr;

icache u_icache(
    .clk(clk),
    .reset(reset),
    .cpu_icache_en(cpu_icache_en),
    .virtual_addr(virtual_addr),
    .physical_addr(physical_addr),
    .icache_free(icache_free),
    .icache_hit(icache_hit),
    .icache_cpu_data(icache_cpu_data),
    .icache_cpu_data_en(icache_cpu_data_en),
    //AXI
    .mem_icache_return_en(mem_icache_return_en),
    .mem_icache_return_data(mem_icache_return_data),
    .cache_mem_read_en(cache_mem_read_en),
    .cache_mem_read_addr(cache_mem_read_addr)
);

reg [`PACKED_DATA_SIZE-1:0]test_mem_return_data;

initial begin
    clk=1'b0;reset=1'b1;cpu_icache_en=1'b1;
    virtual_addr=`VIRTUAL_ADDR_SIZE'b0;physical_addr=`PHYSICAL_ADDR_SIZE'b0;
    mem_icache_return_en=1'b0;mem_icache_return_data=`PACKED_DATA_SIZE'b0;
    test_mem_return_data=`PACKED_DATA_SIZE'h32;
    #20 begin reset=1'b0;end
    #20 begin cpu_icache_en=1'b1;virtual_addr=`VIRTUAL_ADDR_SIZE'h4;physical_addr=`PHYSICAL_ADDR_SIZE'h40;end
    #100 begin cpu_icache_en=1'b0;end
    #20 begin cpu_icache_en=1'b1;virtual_addr=`VIRTUAL_ADDR_SIZE'h4;physical_addr=`PHYSICAL_ADDR_SIZE'h40;end
    
    #160 $finish;
end

always @(posedge clk) begin
    if(cache_mem_read_en)begin
        mem_icache_return_en<=1'b1;
        mem_icache_return_data<=test_mem_return_data;
        test_mem_return_data=test_mem_return_data*2;
    end
    else begin
        mem_icache_return_en<=1'b0;
        mem_icache_return_data<=`PACKED_DATA_SIZE'b0;
    end
end

always #10 clk=~clk;
    
endmodule