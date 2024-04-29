`include "dcache_types.sv"


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
`define DIRTY_SIZE 128*2


module dcache 
    import dcache_types::*;
(
    input logic clk,
    input logic reset,

    input BACK_DCACHE_SIGNALS back_dcache_signals,
    output DCACHE_BACK_SIGNALS dcache_back_signals,

    output DCACHE_AXI_SIGNALS dcache_axi_signals,
    input AXI_DCACHE_SIGNALS axi_dcache_signals,

    input EXE_DCACHE_SIGNALS exe_dcache_signals,

    output DCACHE_STATES dcache_states
);


//记录信号
logic record_op;
logic[2:0]record_size;//数据大小，3’b000——字节，3’b001——半字，3’b010——字
logic[`ADDR_SIZE-1:0]record_virtual_addr;
logic[3:0]record_wstrb;
logic[`DATA_SIZE-1:0]record_wdata;

logic hit_success,hit_fail;
logic hit_result;

logic cur_write_dirty,pre_write_dirty;


//状态机
enum int { 
    DCacheIDLE, 
    DCacheAskMem,
    DCacheWaitAxi,
    DCacheRefresh
    } 
    current_state,next_state;
//current_state赋值
always_ff @( posedge clk ) begin
    if(reset)current_state<=DCacheIDLE;
    else current_state<=next_state;
end

integer dcacheRefreshcounter;
always_ff @( posedge clk ) begin
    if(current_state==DCacheRefresh)dcacheRefreshcounter<=dcacheRefreshcounter+1;
    else dcacheRefreshcounter<=1'b0;
end

//next_state赋值
always_comb begin
    case (current_state)
        DCacheIDLE:begin
            if(back_dcache_signals.valid==1)begin
                if(hit_success)next_state=DCacheIDLE;
                else if(hit_fail)next_state=DCacheAskMem;
                else next_state=DCacheIDLE;
            end
            else next_state=DCacheIDLE;
        end 
        DCacheAskMem:begin
            if(axi_dcache_signals.rd_rdy&&((!pre_write_dirty)||(pre_write_dirty&&axi_dcache_signals.wr_rdy)))next_state=DCacheWaitAxi;
            else next_state=DCacheAskMem;
        end
        DCacheWaitAxi:begin
            if(axi_dcache_signals.ret_last)next_state=DCacheRefresh;
            else next_state=DCacheWaitAxi;
        end
        DCacheRefresh:begin
            if(dcacheRefreshcounter==2)next_state=DCacheIDLE;
            else next_state=DCacheRefresh;
        end
        default: next_state=DCacheIDLE;
    endcase
end

//分状态解决

/*=========================================DCacheIDLE=============================================*/
//DCacheIDLE:空闲等待状态，接收到使能则保存命令信息，判断是否命中。
//若命中则执行对应任务，下一状态进入DCacheIDLE。
//若未命中则进入下一状态DCacheAskMem

//TLB转换(暂未实现)
logic[`ADDR_SIZE-1:0] cur_physical_addr;
logic[`TAG_SIZE-1:0]cur_tag;
logic[`INDEX_SIZE-1:0]cur_index;
logic[`OFFSET_SIZE-1:0]cur_offset;
assign cur_physical_addr=back_dcache_signals.virtual_addr;
assign cur_tag=cur_physical_addr[`TAG_LOC];
assign cur_index=cur_physical_addr[`INDEX_LOC];
assign cur_offset=cur_physical_addr[`OFFSET_LOC];

//记录上一个请求的地址信息
logic[`ADDR_SIZE-1:0] pre_physical_addr;
logic[`TAG_SIZE-1:0]pre_tag;
logic[`INDEX_SIZE-1:0]pre_index;
logic[`OFFSET_SIZE-1:0]pre_offset;
assign pre_tag=pre_physical_addr[`TAG_LOC];
assign pre_index=pre_physical_addr[`INDEX_LOC];
assign pre_offset=pre_physical_addr[`OFFSET_LOC];
always_ff @( posedge clk ) begin
    if(dcache_back_signals.addr_ok)begin
        pre_physical_addr<=cur_physical_addr;
        record_op<=back_dcache_signals.op;
        record_size<=back_dcache_signals.size;
        record_virtual_addr<=back_dcache_signals.virtual_addr;
        record_wstrb<=back_dcache_signals.wstrb;
        record_wdata<=back_dcache_signals.wdata;
    end
    else begin
        pre_physical_addr<=pre_physical_addr;
        record_op<=record_op;
        record_size<=record_size;
        record_virtual_addr<=record_virtual_addr;
        record_wstrb<=record_wstrb;
        record_wdata<=record_wdata;
    end
end



//声明ram存储dcache数据
//使能信号
logic way0_read_en,way1_read_en;
//一直使能
assign way0_read_en=1'b1;
assign way1_read_en=1'b1;
//logic way0_write_en;
//logic way1_write_en;


logic [`DATA_SIZE-1:0]data_record_from_mem[`BANK_NUM-1:0];
integer mycounter;

always_ff @( posedge clk ) begin
    if(reset)mycounter<=0;
    else if(axi_dcache_signals.ret_valid)begin
        mycounter<=mycounter+1;
        data_record_from_mem[mycounter]<=axi_dcache_signals.ret_data;
    end
    else mycounter<=0;
end
/*
always_comb begin
    data_record_from_mem[mycounter]=axi_dcache_signals.ret_data;
end
*/

logic [`BANK_SIZE-1:0]way0_cache[`BANK_NUM-1:0];//读中的那一组第0路数据的数组
logic [`BANK_SIZE-1:0]way1_cache[`BANK_NUM-1:0];//读中的那一组第1路数据的数组

logic [`DATA_SIZE-1:0]data_to_write_dcache0[`BANK_NUM-1:0];
logic [`DATA_SIZE-1:0]data_to_write_dcache1[`BANK_NUM-1:0];

logic[1:0] mem_return_last_late;
always_ff @( posedge clk ) begin
    if(axi_dcache_signals.ret_last)mem_return_last_late<=2'b01;
    else if(mem_return_last_late==2'b01)mem_return_last_late<=2'b10;
    else mem_return_last_late<=1'b0;
end

for(genvar i=0;i<`BANK_NUM;i=i+1)begin
    assign data_to_write_dcache0[i]=(back_dcache_signals.op==1'b1&&hit_result&&i==pre_offset[4:2])?
                                    {(record_wstrb[3] ? record_wdata[31:24] : way0_cache[i][31:24]),
                                     (record_wstrb[2]?record_wdata[23:16]:way0_cache[i][23:16]),
                                     (record_wstrb[1]?record_wdata[15:8]:way0_cache[i][15:8]),
                                     (record_wstrb[0]?record_wdata[7:0]:way0_cache[i][7:0])}:
                                    ((mem_return_last_late==2'b10)?data_record_from_mem[i]:way0_cache[i]);
    assign data_to_write_dcache1[i]=(back_dcache_signals.op==1'b1&&hit_result&&i==pre_offset[4:2])
                                    ?{record_wstrb[3]?record_wdata[31:24]:way1_cache[i][31:24]
                                     ,record_wstrb[2]?record_wdata[23:16]:way1_cache[i][23:16]
                                     ,record_wstrb[1]?record_wdata[15:8]:way1_cache[i][15:8]
                                     ,record_wstrb[0]?record_wdata[7:0]:way1_cache[i][7:0]}
                                    :((mem_return_last_late==2'b10)?data_record_from_mem[i]:way1_cache[i]);
end
/*
integer i;
always_ff @( posedge clk ) begin
    for(i=0;i<`BANK_NUM;i=i+1)begin
        if(record_op==1'b1&&hit_result&&i==pre_offset)begin
            data_to_write_dcache0[i]<={(record_wstrb[3] ? record_wdata[31:24] : way0_cache[i][31:24]),
                                     (record_wstrb[2]?record_wdata[23:16]:way0_cache[i][23:16]),
                                     (record_wstrb[1]?record_wdata[15:8]:way0_cache[i][15:8]),
                                     (record_wstrb[0]?record_wdata[7:0]:way0_cache[i][7:0])};
            data_to_write_dcache1[i]<={(record_wstrb[3] ? record_wdata[31:24] : way0_cache[i][31:24]),
                                     (record_wstrb[2]?record_wdata[23:16]:way0_cache[i][23:16]),
                                     (record_wstrb[1]?record_wdata[15:8]:way0_cache[i][15:8]),
                                     (record_wstrb[0]?record_wdata[7:0]:way0_cache[i][7:0])};                         
        end
        else if(mycounter==7&&i==pre_offset)begin
            data_to_write_dcache0[i]<=data_record_from_mem[i];
            data_to_write_dcache1[i]<=data_record_from_mem[i];
        end
        else begin
            data_to_write_dcache0[i]<=data_to_write_dcache0[i];
            data_to_write_dcache1[i]<=data_to_write_dcache1[i];
        end
    end
end
*/

logic way0_write_en[7:0];
logic way1_write_en[7:0];


simple_dual_ram WAY0_BANK0(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(cur_index),.read_data(way0_cache[0]),.clk_write(clk),.write_en(way0_write_en[0]),.write_addr(pre_index),.write_data(data_to_write_dcache0[0]));
simple_dual_ram WAY0_BANK1(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(cur_index),.read_data(way0_cache[1]),.clk_write(clk),.write_en(way0_write_en[1]),.write_addr(pre_index),.write_data(data_to_write_dcache0[1]));
simple_dual_ram WAY0_BANK2(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(cur_index),.read_data(way0_cache[2]),.clk_write(clk),.write_en(way0_write_en[2]),.write_addr(pre_index),.write_data(data_to_write_dcache0[2]));
simple_dual_ram WAY0_BANK3(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(cur_index),.read_data(way0_cache[3]),.clk_write(clk),.write_en(way0_write_en[3]),.write_addr(pre_index),.write_data(data_to_write_dcache0[3]));
simple_dual_ram WAY0_BANK4(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(cur_index),.read_data(way0_cache[4]),.clk_write(clk),.write_en(way0_write_en[4]),.write_addr(pre_index),.write_data(data_to_write_dcache0[4]));
simple_dual_ram WAY0_BANK5(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(cur_index),.read_data(way0_cache[5]),.clk_write(clk),.write_en(way0_write_en[5]),.write_addr(pre_index),.write_data(data_to_write_dcache0[5]));
simple_dual_ram WAY0_BANK6(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(cur_index),.read_data(way0_cache[6]),.clk_write(clk),.write_en(way0_write_en[6]),.write_addr(pre_index),.write_data(data_to_write_dcache0[6]));
simple_dual_ram WAY0_BANK7(.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(cur_index),.read_data(way0_cache[7]),.clk_write(clk),.write_en(way0_write_en[7]),.write_addr(pre_index),.write_data(data_to_write_dcache0[7]));

simple_dual_ram WAY1_BANK0(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(cur_index),.read_data(way1_cache[0]),.clk_write(clk),.write_en(way1_write_en[0]),.write_addr(pre_index),.write_data(data_to_write_dcache1[0]));
simple_dual_ram WAY1_BANK1(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(cur_index),.read_data(way1_cache[1]),.clk_write(clk),.write_en(way1_write_en[1]),.write_addr(pre_index),.write_data(data_to_write_dcache1[1]));
simple_dual_ram WAY1_BANK2(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(cur_index),.read_data(way1_cache[2]),.clk_write(clk),.write_en(way1_write_en[2]),.write_addr(pre_index),.write_data(data_to_write_dcache1[2]));
simple_dual_ram WAY1_BANK3(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(cur_index),.read_data(way1_cache[3]),.clk_write(clk),.write_en(way1_write_en[3]),.write_addr(pre_index),.write_data(data_to_write_dcache1[3]));
simple_dual_ram WAY1_BANK4(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(cur_index),.read_data(way1_cache[4]),.clk_write(clk),.write_en(way1_write_en[4]),.write_addr(pre_index),.write_data(data_to_write_dcache1[4]));
simple_dual_ram WAY1_BANK5(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(cur_index),.read_data(way1_cache[5]),.clk_write(clk),.write_en(way1_write_en[5]),.write_addr(pre_index),.write_data(data_to_write_dcache1[5]));
simple_dual_ram WAY1_BANK6(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(cur_index),.read_data(way1_cache[6]),.clk_write(clk),.write_en(way1_write_en[6]),.write_addr(pre_index),.write_data(data_to_write_dcache1[6]));
simple_dual_ram WAY1_BANK7(.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(cur_index),.read_data(way1_cache[7]),.clk_write(clk),.write_en(way1_write_en[7]),.write_addr(pre_index),.write_data(data_to_write_dcache1[7]));

//tag_valid
logic [31:0] tagv_way0_cache,tagv_way1_cache;
logic way0_write_en_OR,way1_write_en_OR;
assign way0_write_en_OR=way0_write_en[0]|way0_write_en[1]|way0_write_en[2]|way0_write_en[3]|way0_write_en[4]|way0_write_en[5]|way0_write_en[6]|way0_write_en[7];
assign way1_write_en_OR=way1_write_en[0]|way1_write_en[1]|way1_write_en[2]|way1_write_en[3]|way1_write_en[4]|way1_write_en[5]|way1_write_en[6]|way1_write_en[7];
simple_dual_ram WAY0_TAGV (.reset(reset),.clk_read(clk),.read_en(way0_read_en),.read_addr(cur_index),.read_data(tagv_way0_cache),.clk_write(clk),.write_en(way0_write_en_OR),.write_addr(pre_index),.write_data({12'b1,pre_tag}));
simple_dual_ram WAY1_TAGV (.reset(reset),.clk_read(clk),.read_en(way1_read_en),.read_addr(cur_index),.read_data(tagv_way1_cache),.clk_write(clk),.write_en(way1_write_en_OR),.write_addr(pre_index),.write_data({12'b1,pre_tag}));

//判断命中
logic hit_way0;
logic hit_way1;
logic pre_hit_way0;
logic pre_hit_way1;
assign hit_way0=(tagv_way0_cache[19:0]==cur_tag&&(tagv_way0_cache[20]==1'b1))?1'b1:1'b0;
assign hit_way1=(tagv_way1_cache[19:0]==cur_tag&&tagv_way1_cache[20]==1'b1)?1'b1:1'b0;
assign pre_hit_way0=(tagv_way0_cache[19:0]==pre_tag&&(tagv_way0_cache[20]==1'b1))?1'b1:1'b0;
assign pre_hit_way1=(tagv_way1_cache[19:0]==pre_tag&&tagv_way1_cache[20]==1'b1)?1'b1:1'b0;
assign hit_success=(hit_way0||hit_way1)&&back_dcache_signals.valid;
assign hit_fail=(~hit_success)&&back_dcache_signals.valid;
always @(posedge clk) begin
    if(reset)hit_result<=1'b0;
    else if(hit_success)hit_result<=1'b1;
    else if(hit_fail)hit_result<=1'b0;
end


logic test;
//若命中则向cpu返回数据
integer trans_cur_offset;
always_comb begin
    case (cur_offset[4:2])
        3'h0:trans_cur_offset=0; 
        3'h1:trans_cur_offset=1; 
        3'h2:trans_cur_offset=2; 
        3'h3:trans_cur_offset=3; 
        3'h4:trans_cur_offset=4; 
        3'h5:trans_cur_offset=5; 
        3'h6:trans_cur_offset=6; 
        3'h7:trans_cur_offset=7; 
        default: trans_cur_offset=-1;
    endcase
end
integer trans_pre_offset;
always_comb begin
    case (pre_offset[4:2])
        3'h0:trans_pre_offset=0; 
        3'h1:trans_pre_offset=1; 
        3'h2:trans_pre_offset=2; 
        3'h3:trans_pre_offset=3; 
        3'h4:trans_pre_offset=4; 
        3'h5:trans_pre_offset=5; 
        3'h6:trans_pre_offset=6; 
        3'h7:trans_pre_offset=7; 
        default: trans_pre_offset=-1;
    endcase
end

//返回数据
always_ff @( posedge clk ) begin
    if(hit_success&&back_dcache_signals.op==1'b0)begin
        test<=1'b0;
        dcache_back_signals.data_ok<=1'b1;
        if(back_dcache_signals.op==1'b0)begin
            dcache_back_signals.rdata<=hit_way0?way0_cache[trans_cur_offset]:way1_cache[trans_cur_offset];
        end
    end
    else if(!hit_result&&mycounter==7&&record_op==1'b0)begin
        test<=1'b1;
        dcache_back_signals.data_ok<=1'b1;
        if(back_dcache_signals.op==1'b0)begin
            dcache_back_signals.rdata<=data_record_from_mem[trans_pre_offset];
        end
        
    end 
    else begin
        dcache_back_signals.data_ok<=1'b0;
        dcache_back_signals.rdata<=`ADDR_SIZE'hffffffff;
    end
end

/*======================================DCacheAskMem===============================================*/
//读取新数据
always_ff @( posedge clk ) begin
    if(reset)begin
        dcache_axi_signals.rd_req<=1'b0;
        dcache_axi_signals.rd_addr<=`ADDR_SIZE'b0;
    end
    else if(axi_dcache_signals.ret_valid)begin
        dcache_axi_signals.rd_req<=1'b0;
    end
    else if(current_state==DCacheAskMem)begin
        dcache_axi_signals.rd_req<=1'b1;
        dcache_axi_signals.rd_addr<=cur_physical_addr;
    end
end

//写回脏数据
logic cur_LRU_pick;
logic pre_LRU_pick;
//Dirty
logic [`DIRTY_SIZE-1:0] dirty;//1表示Dirty

assign cur_write_dirty=dirty[{cur_index,cur_LRU_pick}];
assign pre_write_dirty=dirty[{pre_index,pre_LRU_pick}];
always @(posedge clk) begin
    if(reset)dirty<=`DIRTY_SIZE'b0;
    else if(current_state==DCacheIDLE&&back_dcache_signals.op==1'b1&&hit_success)dirty[{pre_index,hit_way1}]<=1'b1;
    else if(current_state==DCacheWaitAxi)begin
        if(record_op==1'b0)dirty[{pre_index,pre_LRU_pick}]<=1'b0;
        else if(record_op==1'b1)dirty[{pre_index,pre_LRU_pick}]<=1'b1;
    end
    else dirty<=dirty;
end
//向mem写的使能信号赋值
always_ff @( posedge clk ) begin
    if(reset)begin
        dcache_axi_signals.wr_req<=1'b0;
    end
    else if(hit_fail&&cur_write_dirty)begin
        dcache_axi_signals.wr_req<=1'b1;
    end
    else dcache_axi_signals.wr_req<=1'b0;
end

always_comb begin
    //if(hit_result==1'b0&&pre_write_dirty)begin
    if(dcache_axi_signals.wr_req)begin
        dcache_axi_signals.wr_type=3'b100;
        dcache_axi_signals.wr_addr=pre_physical_addr;
        dcache_axi_signals.wr_wstrb=4'b1111;
        dcache_axi_signals.wr_data=hit_way0?{way0_cache[7],way0_cache[6],way0_cache[5],way0_cache[4],way0_cache[3],way0_cache[2],way0_cache[1],way0_cache[0]}:{way1_cache[7],way1_cache[6],way1_cache[5],way1_cache[4],way1_cache[3],way1_cache[2],way1_cache[1],way1_cache[0]};
    end
    else begin
        dcache_axi_signals.wr_type=3'b000;
        dcache_axi_signals.wr_addr=`ADDR_SIZE'b0;
        dcache_axi_signals.wr_wstrb=4'b0000;
        dcache_axi_signals.wr_data=256'b0;
    end
end


/*==========================================DCacheWaitAxi=========================================*/
//DCacheWaitAxi:等待直到总线将数据传回，执行对应的读写，向cpu返回信号，下一状态进入DCacheIDLE
//更新cache数据
logic[`SET_SIZE-1:0]LRU;
assign cur_LRU_pick=LRU[cur_index];
assign pre_LRU_pick=LRU[pre_index];
always @(posedge clk) begin
    if(reset)LRU<=`SET_SIZE'b0;
    else if(hit_success)LRU[cur_index]<=hit_way0;
    else if(axi_dcache_signals.ret_last)LRU[cur_index]<=pre_LRU_pick;
    else LRU<=LRU;
end

/*
//更新DCache的写使能
always_ff @( posedge clk ) begin
    if(reset) way0_write_en<=1'b0;
    else if(current_state==DCacheIDLE&&back_dcache_signals.op==1'b1&&pre_hit_way0)way0_write_en<=1'b1;
    else if(mycounter==7&&pre_LRU_pick==1'b0)way0_write_en<=1'b1;
    else way0_write_en<=1'b0;
end
always_ff @( posedge clk ) begin
    if(reset) way1_write_en<=1'b0;
    else if(current_state==DCacheIDLE&&back_dcache_signals.op==1'b1&&pre_hit_way1)way1_write_en<=1'b1;
    else if(mycounter==7&&pre_LRU_pick==1'b1)way1_write_en<=1'b1;
    else way1_write_en<=1'b0;
end
*/

integer x;
always_ff @( posedge clk ) begin
    if(reset)begin
        for(x=0;x<=7;x=x+1)begin
            way0_write_en[x]<=1'b0;
            way1_write_en[x]<=1'b0;
        end
    end
    else if(current_state==DCacheIDLE&&back_dcache_signals.op==1'b1&&pre_hit_way0)begin
        for(x=0;x<=7;x=x+1)begin
            if(x==cur_offset[4:2])way0_write_en[x]<=1'b1;
            else way0_write_en[x]<=1'b0;
        end
    end
    else if(current_state==DCacheIDLE&&back_dcache_signals.op==1'b1&&pre_hit_way1)begin
        for(x=0;x<=7;x=x+1)begin
            if(x==cur_offset[4:2])way1_write_en[x]<=1'b1;
            else way0_write_en[x]<=1'b0;
        end
    end
    else if(mem_return_last_late==2'b01&&pre_LRU_pick==1'b0)begin
        for(x=0;x<=7;x=x+1)begin
            way0_write_en[x]<=1'b1;
        end
    end
    else if(mem_return_last_late==2'b01&&pre_LRU_pick==1'b1)begin
        for(x=0;x<=7;x=x+1)begin
            way1_write_en[x]<=1'b1;
        end
    end
    else begin
        for(x=0;x<=7;x=x+1)begin
            way0_write_en[x]<=1'b0;
            way1_write_en[x]<=1'b0;
        end
    end
end






/*==========================================其他信号=============================================*/
assign dcache_back_signals.addr_ok=back_dcache_signals.valid&&(current_state==DCacheIDLE);
assign dcache_back_signals.cache_miss=hit_fail;
assign dcache_axi_signals.rd_type=3'b100;//后续要改

assign dcache_states.dcache_unbusy=current_state==DCacheIDLE?1'b1:1'b0;
assign dcache_states.cache_hit=hit_success;



endmodule