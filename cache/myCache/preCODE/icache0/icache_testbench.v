//interficate_define
`define PHYSICAL_ADDR_SIZE 32//物理地址的位数
`define VIRTUAL_ADDR_SIZE 32//虚拟地址的位数
`define INSTRUCTION_DATA_SIZE 32//所取指令的位数
`define PACKED_DATA_SIZE 256//总线传回数据位宽
`define INSTRUCTION_ADDR_SIZE 32

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

reg clk,reset,cpu_icache_read_en,cpu_receive_data_ok,mem_ready_to_read,mem_read_addr_ok,mem_return_en;
reg[`INSTRUCTION_ADDR_SIZE-1:0] virtual_addr,physical_addr;
wire cpu_icache_addr_request_ok,icache_cpu_return_data_en ,icache_mem_read_request,read_data_from_mem_ok,cache_hit_fail_output;
wire [31:0]icache_cpu_return_data,icache_mem_read_addr;
reg [`PACKED_DATA_SIZE-1:0]mem_return_data;




initial begin
    clk=1'b0;reset=1'b1;cpu_icache_read_en=1'b0;cpu_receive_data_ok=1'b0;mem_ready_to_read=1'b0;
    mem_read_addr_ok=1'b0;mem_return_en=1'b0;
    virtual_addr=`VIRTUAL_ADDR_SIZE'b0;physical_addr=`PHYSICAL_ADDR_SIZE'b0;
    mem_return_data=`PACKED_DATA_SIZE'b0;
    #20 begin reset=1'b0;end
    #10 begin 
        cpu_icache_read_en=1'b1;virtual_addr=`VIRTUAL_ADDR_SIZE'b1;
        physical_addr=`PHYSICAL_ADDR_SIZE'b1000_0000_0000_0000_0000_0000_0000_0000;
        mem_ready_to_read=1'b1;
    end
    #100begin 
        cpu_icache_read_en=1'b1;virtual_addr=`VIRTUAL_ADDR_SIZE'b1;
        physical_addr=`PHYSICAL_ADDR_SIZE'b1000_0000_0000_0000_0000_0000_0000_0000;
        mem_ready_to_read=1'b1;
    end
    #160 $finish;
end

reg flag_cpu_en;
always @(posedge clk) begin
    if(reset)flag_cpu_en<=1'b0;
    if(cpu_icache_addr_request_ok)flag_cpu_en<=1'b1;
    else flag_cpu_en<=1'b0;
    if(flag_cpu_en)cpu_icache_read_en<=1'b0;
end



reg [`PACKED_DATA_SIZE-1:0]data;
always @(posedge clk) begin
    if(reset)data<=`PACKED_DATA_SIZE'h1601600808048848022016088416;
    else if(icache_mem_read_request)begin
        mem_return_en<=1'b1;
        mem_read_addr_ok<=1'b1;
        mem_return_data<=data;
        data<=data*2;
    end
    else begin
        mem_read_addr_ok<=1'b0;
        mem_return_en<=1'b0;
    end
end


icache u_icache(
    .clk(clk),
    .reset(reset),
    .cpu_icache_read_en(cpu_icache_read_en),
    .cpu_receive_data_ok(cpu_receive_data_ok),
    .virtual_addr(virtual_addr),
    .physical_addr(physical_addr),
    .cpu_icache_addr_request_ok(cpu_icache_addr_request_ok),
    .icache_cpu_return_data_en(icache_cpu_return_data_en),
    .icache_cpu_return_data(icache_cpu_return_data),
    //to from axi
    .icache_mem_read_request(icache_mem_read_request),
    .read_data_from_mem_ok(read_data_from_mem_ok),
    .icache_mem_read_addr(icache_mem_read_addr),
    .mem_ready_to_read(mem_ready_to_read),
    .mem_read_addr_ok(mem_read_addr_ok),
    .mem_return_en(mem_return_en),
    .mem_return_data(mem_return_data),

    .cache_hit_fail_output(cache_hit_fail_output) 
);




always #10 clk=~clk;
    
endmodule