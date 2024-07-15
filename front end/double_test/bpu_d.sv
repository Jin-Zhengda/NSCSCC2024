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
    output logic [1:0] is_branch,
    output logic [`InstBus] pre_branch_addr,
    output logic [1:0] taken_sure,
    output logic [7:0] ghr_out,

    //传给instbuffer
    output logic [1:0] fetch_inst_en,

    //传给ctrl
    output logic bpu_flush

);
    

    //储存单元
    (*ram_style = "block"*) logic [7:0]bht [255: 0];
    logic [7:0] ghr;

    //索引逻辑
    logic [1:0][7:0] bh_index;  
    logic [1:0][7:0] gh_index;  
    generate
        for (genvar i = 0; i < 2; i++) begin
            always_ff @(posedge clk) begin
                bh_index[i] <= bht[pc[i][9:2]] ^ pc[i][9:2];
                gh_index[i] <= ghr ^ pc[i][9:2];
            end
        end
    endgenerate

    //预测的分支类型和跳转方向和跳转目标地址
    logic [1:0][1:0] branch_type;    //分支类型
    logic [1:0][1:0] indirect_type;        //call or return
    
    logic [1:0][31:0] prede_address;   //预解码出来的目标地址，适用于B，BL
    logic [1:0] bh_pre_taken;       //局部历史预测结果
    logic [1:0] gh_pre_taken;       //全局历史预测结果

    logic [1:0][`InstBus] prediction_addr;      //btb预测的地址
    logic [1:0] btb_valid;      //btb预测的地址有效性
    

    //历史及预测更新逻辑
    logic [7:0] bh_index_up;
    logic [7:0] gh_index_up;
    assign bh_index_up = bht[update_info.pc_dispatch[9:2]] ^ update_info.pc_dispatch[9:2];
    assign gh_index_up = update_info.ghr_dispatch ^ update_info.pc_dispatch[9:2];

    always_ff @(posedge clk) begin
        if(rst) begin
            ghr <= 0;
            ghr_out <= 0;
        end else if(update_info.update_en) begin
            if(!(update_info.taken_or_not_actual ^ update_info.ghr_dispatch[0])) begin
                ghr <= ghr;
            end else begin
                ghr <= {update_info.ghr_dispatch[7:1], update_info.taken_or_not_actual};
            end
        end else begin
            if(is_branch[0]) begin
                ghr <= {ghr[6:0], gh_pre_taken[0]};
                ghr_out <= {ghr[6:0], gh_pre_taken[0]};
            end else if(is_branch[1]) begin
                ghr <= {ghr[6:0], gh_pre_taken[1]};
                ghr_out <= {ghr[6:0], gh_pre_taken[1]};
            end
        end
    end



    //清空时序维护逻辑
    logic [1:0] pre_taken_or_not;
    logic [1:0] last_is_branch;
    logic [1:0] last_pre_taken_or_not;
    logic inst_invalid;

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
        if (is_branch[0] && pre_taken_or_not[0] && inst_en_1 && btb_valid[0]) begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b0;
            pre_branch_addr = prediction_addr[0];
            taken_sure[0] = 1'b1;
            taken_sure[1] = 1'b0;
        end else if (is_branch[1] && pre_taken_or_not[1] && inst_en_2 && btb_valid[1]) begin
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

                .push_i(),
                .call_addr_i(),
                .pop_i(),

                .top_addr_o()
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

    gh_d u_gh_d(
        .clk(clk),
        .rst(rst),

        .gh_index(gh_index),

        .update_en(update_info.update_en),
        .gh_index_up(gh_index_up),
        .taken_actual(update_info.taken_or_not_actual),

        .taken_or_not(gh_pre_taken)
    );


    bht_d u_bht_d (
        .clk,
        .rst,

        .bh_index(bh_index),

        .update_en(update_info.update_en),
        .bh_index_up(bh_index_up),
        .taken_actual(update_info.taken_or_not_actual),

        .taken_or_not(bh_pre_taken)
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