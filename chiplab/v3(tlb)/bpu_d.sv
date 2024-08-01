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

    //分支预测的结果
    output logic [1:0] is_branch,
    output logic [`InstBus] pre_branch_addr,
    output logic [1:0] taken_sure,

    //传给instbuffer
    output logic [1:0] fetch_inst_en,

    //传给ctrl
    output logic bpu_flush

);
    logic [1:0][6:0] index;
    assign index[0] = pc[0][8:2];
    assign index[1] = pc[1][8:2];

    logic [6:0] index_up;
    assign index_up = update_info.pc_dispatch[8:2];
    
    logic [1:0][1:0] branch_type;
    assign is_branch[0] = branch_type[0][1];
    assign is_branch[1] = branch_type[1][1];
    logic [1:0] pre_taken_or_not;
    logic [1:0][31:0] prede_address;
    logic [1:0][`InstBus] prediction_addr;
    logic [1:0] btb_valid;


    logic [1:0][31:0] inst_i;
    assign inst_i[0] = stall ? 32'b0 : inst[0]; 
    assign inst_i[1] = stall ? 32'b0 : inst[1]; 

    assign bpu_flush = (is_branch[0] && taken_sure[0]) || (is_branch[1] && taken_sure[1]);

    assign fetch_inst_en[0] = 1'b1;
    assign fetch_inst_en[1] = (branch_type[0] == 2'b10 && inst_en_1)|((branch_type[0] == 2'b11) && pre_taken_or_not[0] && inst_en_1 && btb_valid[0]) ? 1'b0 : 1'b1;
    assign taken_sure[0] = (branch_type[0] == 2'b10 && inst_en_1)|((branch_type[0] == 2'b11) && pre_taken_or_not[0] && inst_en_1 && btb_valid[0]) ? 1'b1 : 1'b0;
    assign taken_sure[1] = (branch_type[1] == 2'b10 && inst_en_2)|((branch_type[1] == 2'b11) && pre_taken_or_not[1] && inst_en_2 && btb_valid[1]) ? 1'b1 : 1'b0;

    logic prede_1;
    logic prede_2;
    logic predi_1;
    logic predi_2;
    
    assign prede_1 = (branch_type[0] == 2'b10) && inst_en_1;
    assign prede_2 = (branch_type[1] == 2'b10) && inst_en_2;
    assign predi_1 = (branch_type[0] == 2'b11) && pre_taken_or_not[0] && inst_en_1 && btb_valid[0];
    assign predi_2 = (branch_type[1] == 2'b11) && pre_taken_or_not[1] && inst_en_2 && btb_valid[1];

    always_comb begin
        case({prede_1,prede_2,predi_1,predi_2})
            4'b0001: begin
                pre_branch_addr = prediction_addr[1];
            end
            4'b0011,4'b0010,4'b0110: begin
                pre_branch_addr = prediction_addr[0];
            end
            4'b1100,4'b1000,4'b1001: begin
                pre_branch_addr = prede_address[0];
            end
            4'b0100:begin
                pre_branch_addr = prede_address[1];
            end
            default: begin
                pre_branch_addr = 32'b0;
            end
        endcase
    end

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
        .taken_actual(update_info.taken_or_not_actual),

        .taken_or_not(pre_taken_or_not)
    );

    btb_d u_btb (
        .clk,
        .rst,

        .pc(pc),
        .update_en(update_info.update_en),
        .pc_dispatch(update_info.pc_dispatch),
        .pc_actual(update_info.branch_actual_addr),

        .pre_branch_addr(prediction_addr),
        .btb_valid(btb_valid)
    );


endmodule