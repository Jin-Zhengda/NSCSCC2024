`timescale 1ns / 1ps
`define InstBus 31:0

module bpu_d
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input branch_update update_info,
    input logic stall,


    input bus32_t [1:0] pc,
    input logic [1:0][`InstBus] inst,
    input logic inst_en_1,
    input logic inst_en_2,

    //分支预测的结果和信息
    output logic [1:0][1:0] branch_type,   //分支类型     00表示非分支  01表示条件跳转 11表示无条件间接跳转 10表示无条件直接跳转
    output logic [`InstBus] pre_branch_addr,
    output logic [1:0] taken_sure,

    //传给instbuffer
    output logic [1:0] fetch_inst_en,

    //传给ctrl
    output logic bpu_flush

);
    
    logic [1:0][7:0] index;
    assign index[0] = pc[0][9:2];
    assign index[1] = pc[1][9:2];

    logic [7:0] index_up;
    assign index_up = update_info.pc_dispatch[9:2];

    logic [1:0] pre_taken_or_not;    //预测结果
    logic [1:0][31:0] prede_address;   //预解码出来的目标地址，适用于B，BL
    logic [1:0][`InstBus] prediction_addr;      //btb预测的地址
    logic [1:0] btb_valid;      //btb预测的地址有效性

    logic [1:0] push_i;
    logic [1:0] pop_i;

    //ras逻辑
    logic [1:0][1:0] indirect_type;  //call or return   00表示非此类型  01表示call  10表示return
    logic [1:0][31:0] ras_target;      //ras给出的返回地址
    logic [1:0][31:0] pc_plus;

    always_ff @(posedge clk) begin
        pc_plus[0] <= pc[0] + 4'h4;
        pc_plus[1] <= pc[1] + 4'h8;
    end

    assign push_i[0] = (indirect_type[0] == 2'b01) ? 1'b1 : 1'b0;
    assign push_i[1] = (indirect_type[1] == 2'b01) ? 1'b1 : 1'b0;
    assign pop_i[0] = (indirect_type[0] == 2'b10) ? 1'b1 : 1'b0;
    assign pop_i[1] = (!(indirect_type[0] == 2'b10) && (indirect_type[1] == 2'b10)) ? 1'b1 : 1'b0;
    
    
    

    //清空时序维护逻辑
    logic [1:0] last_is_branch;
    logic [1:0] last_pre_taken_or_not;
    logic inst_invalid;
    logic [1:0] is_branch;
    assign is_branch[0] = (branch_type[0] == 2'b00) ? 1'b0 : 1'b1;
    assign is_branch[1] = (branch_type[1] == 2'b00) ? 1'b0 : 1'b1;

    always_ff @(posedge clk) begin
        last_is_branch <= is_branch;
        last_pre_taken_or_not <= taken_sure;
    end

    assign inst_invalid = (last_is_branch[0] && last_pre_taken_or_not[0]) || (last_is_branch[1] && last_pre_taken_or_not[1])
                            || (is_branch[0] && taken_sure[0]) || (is_branch[1] && taken_sure[1]);
    

    //指令信号定义
    logic [1:0][31:0] inst_i;
    assign inst_i[0] = (stall || inst_invalid) ? 32'b0 : inst[0]; 
    assign inst_i[1] = (stall || inst_invalid) ? 32'b0 : inst[1]; 



    //bpu的flush信号生成
    assign bpu_flush = (is_branch[0] && taken_sure[0]) || (is_branch[1] && taken_sure[1]);

    always_comb begin
        if(branch_type[0] == 2'b10 && inst_en_1) begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b0;
            pre_branch_addr = prede_address[0];
            taken_sure[0] = 1'b1;
            taken_sure[1] = 1'b0;
        end else if(branch_type[1] == 2'b10 && inst_en_2) begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b1;
            pre_branch_addr = prede_address[1];
            taken_sure[0] = 1'b0;
            taken_sure[1] = 1'b1;
        end else if((branch_type[0] == 2'b11) && (indirect_type[0] == 2'b10) && inst_en_1) begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b0;
            pre_branch_addr = ras_target[0];
            taken_sure[0] = 1'b1;
            taken_sure[1] = 1'b0;
        end else if((branch_type[1] == 2'b11) && (indirect_type[1] == 2'b10) && inst_en_2) begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b1;
            pre_branch_addr = ras_target[1];
            taken_sure[0] = 1'b0;
            taken_sure[1] = 1'b1;
        end else if((branch_type[0] == 2'b01) && pre_taken_or_not[0] && inst_en_1 && btb_valid[0]) begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b0;
            pre_branch_addr = prediction_addr[0];
            taken_sure[0] = 1'b1;
            taken_sure[1] = 1'b0;
        end else if((branch_type[1] == 2'b01) && pre_taken_or_not[1] && inst_en_2 && btb_valid[1]) begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b1;
            pre_branch_addr = prediction_addr[1];
            taken_sure[0] = 1'b0;
            taken_sure[1] = 1'b1;
        end else begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b1;
            pre_branch_addr = 32'b0;
            taken_sure = 0;
        end
    end

    generate
        for (genvar i = 0; i < 2; i++) begin
            ras_d u_ras_d(
                .clk(clk),
                .rst(rst),

                .push_i(push_i[i]),
                .call_addr_i(pc_plus[i]),
                .pop_i(pop_i[i]),

                .top_addr_o(ras_target[i])
            );
        end
    endgenerate

    generate
        for (genvar i = 0; i < 2; i++) begin
            predecoder u_predecoder(
                .clk(clk),
                .rst(rst),

                .inst_i(inst_i[i]),
                .pc_i(pc[i]),
                
                .branch_type(branch_type[i]),
                .target_address(prede_address[i])
            );
        end
    endgenerate

    pht_d u_pht_d (
        .clk(clk),
        .rst(rst),

        .index(index),
        .update_en(update_info.update_en),
        .index_up(index_up),
        .taken_actual(update_info.taken_actual),

        .taken_or_not(pre_taken_or_not)
    );

    btb_d u_btb_d (
        .clk,
        .rst,

        .pc(pc),
        .update_en(update_info.update_en),
        .pc_dispatch(update_info.pc_dispatch),
        .pc_actual(update_info.branch_actual_addr),
        .indirect_type_dispatch(update_info.indirect_type_dispatch),

        .pre_branch_addr(prediction_addr),
        .btb_valid(btb_valid),
        .indirect_type(indirect_type)
    );


endmodule