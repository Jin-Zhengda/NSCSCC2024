`timescale 1ns / 1ps

//interface define
`define ADDR_SIZE 32
`define DATA_SIZE 32
`define PACKED_DATA_SIZE 256

//dcache define
//size define
`define TAG_SIZE 20
`define INDEX_SIZE 8
`define OFFSET_SIZE 4
`define TAG_LOCATION 31:12
`define INDEX_LOCATION 11:4
`define OFFSET_LOCATION 3:0

`define BANK_NUM 8
`define BANK_SIZE 32
`define SET_SIZE 256
`define DIRTY_SIZE 256*2

//state define
`define DCache_IDLE 5'b00001
`define ReadDCache 5'b00010
`define WriteDCache 5'b00100
`define DCacheAskMem 5'b01000
`define RefreshDCache 5'b10000

module dcache_testbench ();

reg clk,reset,cpu_read_dcache_en,cpu_receive_dcache_data_ok,cpu_write_dcache_en,
    mem_ready_for_dcache_read,mem_dcache_return_data_en,mem_receive_dcache_read_ok,
    buffer_ready_for_dcache_write,buffer_receive_dcache_write_ok,buffer_hit_success;
reg[`ADDR_SIZE-1:0]cpu_dcache_virtual_addr,cpu_dcache_physical_addr;
reg [`DATA_SIZE-1:0]cpu_write_dcache_data;
reg [`PACKED_DATA_SIZE-1:0] mem_dcache_return_data;

wire cpu_command_dcache_ok,dcache_cpu_return_data_en,cpu_write_dcache_ok,
    dcache_read_mem_en,dcache_receive_mem_data_ok,dcache_write_buffer_en,
    dcache_hit_success,dcache_hit_fail,dcache_hit_result;
wire [`DATA_SIZE-1:0]dcache_cpu_return_data;
wire [`ADDR_SIZE-1:0]dcache_read_mem_addr,dcache_write_buffer_physical_addr,dcache_write_buffer_virtual_addr;
wire [`PACKED_DATA_SIZE-1:0]dcache_write_buffer_data;


initial begin
    clk=1'b0;reset=1'b1;cpu_receive_dcache_data_ok=1'b0;cpu_dcache_virtual_addr=`ADDR_SIZE'b0;cpu_dcache_physical_addr=`ADDR_SIZE'b0;
    cpu_read_dcache_en=1'b0;cpu_write_dcache_en=1'b0;cpu_write_dcache_data=`DATA_SIZE'b0;
    mem_ready_for_dcache_read=1'b0;mem_dcache_return_data_en=1'b0;mem_dcache_return_data=`PACKED_DATA_SIZE'b0;
    mem_receive_dcache_read_ok=1'b0;buffer_ready_for_dcache_write=1'b0;buffer_receive_dcache_write_ok=1'b0;
    buffer_hit_success=1'b0;
    
    #20 begin reset=1'b0;end
    #10 begin 
        cpu_read_dcache_en=1'b1;cpu_dcache_virtual_addr=`ADDR_SIZE'b0001;
        cpu_dcache_physical_addr=`ADDR_SIZE'b0000_0000_0000_0000_0000_0001_0000_0000;
        mem_ready_for_dcache_read=1'b1;
    end
    #100begin 
        cpu_read_dcache_en=1'b1;cpu_dcache_virtual_addr=`ADDR_SIZE'b0001;
        cpu_dcache_physical_addr=`ADDR_SIZE'b0000_0000_0000_0000_0000_0001_0000_0000;
        mem_ready_for_dcache_read=1'b1;
    end
    #160 $finish;
end




reg flag_cpu_command_en;
always @(posedge clk) begin
    if(reset)flag_cpu_command_en<=1'b0;
    else if(cpu_command_dcache_ok)flag_cpu_command_en<=1'b1;
    else flag_cpu_command_en<=1'b0;
    if(flag_cpu_command_en)cpu_read_dcache_en<=1'b0;
end

always @(posedge clk) begin
    if(dcache_cpu_return_data_en)cpu_receive_dcache_data_ok=1'b1;
    else if(cpu_receive_dcache_data_ok)cpu_receive_dcache_data_ok=1'b0;
end



reg [`PACKED_DATA_SIZE-1:0]data;
always @(posedge clk) begin
    if(reset)data<=`PACKED_DATA_SIZE'h1601600808048848022016088416;
    else if(dcache_read_mem_en)begin
        mem_dcache_return_data_en<=1'b1;
        mem_receive_dcache_read_ok<=1'b1;
        mem_dcache_return_data<=data;
        data<=data*2;
    end
    else begin
        mem_receive_dcache_read_ok<=1'b0;
        mem_dcache_return_data_en<=1'b0;
    end
end


dcache u_dcache(
    clk,
    reset,
    cpu_dcache_virtual_addr,//cpu传的虚拟地址
    cpu_dcache_physical_addr,//cpu传的物理地址
    cpu_command_dcache_ok,//cpu向dcache的命令成功接收

    //cpu读数据
    cpu_read_dcache_en,//cpu读数据命令使能信号
    cpu_receive_dcache_data_ok,//cpu成功接收dcache的数据
    dcache_cpu_return_data_en,//dcache正在向cpu返回数据
    dcache_cpu_return_data,//dcache向cpu返回的数据
    //cpu写数据
    cpu_write_dcache_en,//cpu写数据命令使能信号
    cpu_write_dcache_data,//cpu需要写的数据
    cpu_write_dcache_ok,//dcache写入完成

    //axi读数据
    dcache_read_mem_en,//dcache读数据命令信号
    dcache_read_mem_addr,//dcache读数据的地址(物理地址)
    dcache_receive_mem_data_ok,//dcache成功接收来自mem的data
    mem_ready_for_dcache_read,//mem空闲可读
    mem_dcache_return_data_en,//mem正在向dcache返回数据
    mem_dcache_return_data,//mem向cache返回的数据
    mem_receive_dcache_read_ok,//mem成功接收dcache的读取命令
    //通过write_buffer向mem写数据
    dcache_write_buffer_en,//dcache写数据命令信号
    dcache_write_buffer_physical_addr,//dcache向mem写数据的物理地址
    dcache_write_buffer_virtual_addr,//dcache向mem写数据的虚拟地址
    dcache_write_buffer_data,//dcache向mem写的数据
    buffer_ready_for_dcache_write,//buffer可接收写命令
    buffer_receive_dcache_write_ok,//buffer成功接收写命令
    //writebuffer命中情况
    buffer_hit_success,//write_buffer成功命中
    
    //其他信号
    dcache_hit_success,//dcache成功命中
    dcache_hit_fail,//dcache未命中
    dcache_hit_result//dcache的命中结果
);

always #10 clk=~clk;

endmodule