`define InstAddrBus 31:0
`define RstEnable 1'b0
`define Entry 32'hbfc00000 // 系统入口地址
`define Flush 1'b1
`define NoFlush 1'b0
`define Exception 1'b0
`define FailedBranchPrediction 1'b1
`define Branch 1'b1
`define NotBranch 1'b0
`define ReadEnable 1'b1
`define ReadDisable 1'b0


module pc_reg(

	input clk,    //时钟信号
	input resetn,  //复位信号
    input flush,   //清除信号
    input flush_cause,   //清除原因
    input[4:0] stall,    //流水线停止间隔
    
    input               branch_flag,   //是否分支
    input               stallreq_from_icache,   //流水线停止请求
    input[`InstAddrBus] npc_actual,  //分支跳转发生时的实际地址
    input[`InstAddrBus] ex_pc,  //ex部分执行的指令pc
	input[`InstAddrBus] epc,   //异常发生时跳转的地址
	input               ibuffer_full,   //指令缓存满信号
	
	 output reg[`InstAddrBus] pc,  //向外输出的pc值
	output reg rreq_to_icache  //向icache取指的请求信号
	
);
    
    reg[`InstAddrBus] npc;
    
    always @ (*) begin
        if (resetn == `RstEnable) npc = `Entry;  //复位
        else if (flush == `Flush && flush_cause == `Exception) npc = epc;   //异常中断
        else if (flush == `Flush && flush_cause == `FailedBranchPrediction && branch_flag == `Branch) npc = npc_actual;     //分支预测错误
        else if (flush == `Flush && flush_cause == `FailedBranchPrediction && branch_flag == `NotBranch) npc = ex_pc + 32'h8;    //分支预测错误
        else if (ibuffer_full) npc = pc;
        else npc = pc + 4;  //其他情况pc自增4
    end
    
    always @ (*) begin
        //设定向icache的读请求
        if (resetn == `RstEnable || flush == `Flush || ibuffer_full) rreq_to_icache = `ReadDisable;
        else rreq_to_icache = `ReadEnable;
    end
    
    always @ (posedge clk) pc <= npc;
    
    
    //////////////////////////
    reg [31:0] branch_count;
    reg [31:0] hit_count;
    
    always@(posedge clk)begin
        if(resetn == `RstEnable)begin
            branch_count <= 0;
            hit_count<= 0;
        end else begin
            //计算发生分支的次数
            if(branch_flag)begin
                branch_count <= branch_count + 1;
            end 
            //计算分支预测命中的次数
            if(branch_flag && !(branch_flag & flush & flush_cause))begin
                hit_count <= hit_count + 1;
            end
        end
    end
    /////////////////////////
    
endmodule