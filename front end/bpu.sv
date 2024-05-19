`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/22 21:16:38
// Design Name: 
// Module Name: bpu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define InstBus 31:0

module bpu
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input branch_update update_info,
    input logic stall,


    input pc_out_t pc_i,
    input logic [`InstBus] inst_1_i,
    input logic [`InstBus] inst_2_i,
    input logic inst_en_1,
    input logic inst_en_2,
    input ctrl_t ctrl,

    output logic is_valid_in,


    //分支预测的结果
    output logic is_branch_1,
    output logic is_branch_2,
    output logic pre_taken_or_not,

    //跳转的目标地址，传给pc
    output logic [`InstBus] pre_branch_addr,
    output logic btb_valid,

    //传给instbuffer
    output logic fetch_inst_1_en,
    output logic fetch_inst_2_en

);

    logic [5:0] branch_judge_1;
    logic [5:0] branch_judge_2;

    assign branch_judge_1 = inst_1_i[31:26];
    assign branch_judge_2 = inst_2_i[31:26];




    always_comb begin
        case (branch_judge_1)
            6'b010010: begin
                is_branch_1 = 1'b1;
            end
            6'b010011: begin
                is_branch_1 = 1'b1;
            end
            6'b010100: begin
                is_branch_1 = 1'b1;
            end
            6'b010101: begin
                is_branch_1 = 1'b1;
            end
            6'b010110: begin
                is_branch_1 = 1'b1;
            end
            6'b010111: begin
                is_branch_1 = 1'b1;
            end
            6'b011000: begin
                is_branch_1 = 1'b1;
            end
            6'b011001: begin
                is_branch_1 = 1'b1;
            end
            6'b011010: begin
                is_branch_1 = 1'b1;
            end
            6'b011011: begin
                is_branch_1 = 1'b1;
            end
            default: begin
                is_branch_1 = 1'b0;
            end
        endcase
    end

    always_comb begin
        case (branch_judge_2)
            6'b010010: begin
                is_branch_2 = 1'b1;
            end
            6'b010011: begin
                is_branch_2 = 1'b1;
            end
            6'b010100: begin
                is_branch_2 = 1'b1;
            end
            6'b010101: begin
                is_branch_2 = 1'b1;
            end
            6'b010110: begin
                is_branch_2 = 1'b1;
            end
            6'b010111: begin
                is_branch_2 = 1'b1;
            end
            6'b011000: begin
                is_branch_2 = 1'b1;
            end
            6'b011001: begin
                is_branch_2 = 1'b1;
            end
            6'b011010: begin
                is_branch_2 = 1'b1;
            end
            6'b011011: begin
                is_branch_2 = 1'b1;
            end
            default: begin
                is_branch_2 = 1'b0;
            end
        endcase
    end

    logic [`InstBus] prediction_addr_1;
    logic [`InstBus] prediction_addr_2;

    logic pre_taken_or_not_1;
    logic pre_taken_or_not_2;

    always_comb begin
        if (rst | update_info.branch_flush | stall) begin
            fetch_inst_1_en = 0;
            fetch_inst_2_en = 0;
        end else begin
            if (is_branch_1 && pre_taken_or_not_1 && inst_en_1) begin
                fetch_inst_1_en = 1'b1;
                fetch_inst_2_en = 1'b0;
                pre_branch_addr = prediction_addr_1;
            end else if (is_branch_2 && pre_taken_or_not_2 && inst_en_2) begin
                fetch_inst_1_en = 1'b1;
                fetch_inst_2_en = 1'b1;
                pre_branch_addr = prediction_addr_2;
            end else begin
                fetch_inst_1_en = 1'b1;
                fetch_inst_2_en = 1'b0;
                pre_branch_addr = 32'b0;
            end
        end
    end

    
    always_comb begin
        pre_taken_or_not = pre_taken_or_not_1|pre_taken_or_not_2;
    end

    always_comb begin
    //     pre_taken_or_not = 0;
    //     pre_taken_or_not_1 = 0;
        pre_taken_or_not_2 = 0;
    end



    //该逻辑表示若此条指令预测跳转，则下一条指令为无效取入
    always_comb begin
        if ((is_branch_1 & pre_taken_or_not_1) || update_info.branch_flush) begin
            is_valid_in = 0;
        end else begin
            is_valid_in = 1;
        end
    end

    //分支预测采用时序逻辑（包括预测和更新历史）

    bht u_bht (
        .clk,
        .rst,

        .pc(pc_i.pc_o_1),
        .update_en(update_info.update_en),
        .pc_dispatch(update_info.pc_dispatch),
        .taken_actual(update_info.taken_or_not_actual),

        .taken_or_not(pre_taken_or_not_1)
    );

    btb u_btb (
        .clk,
        .rst,

        .pc(pc_i.pc_o_1),
        .update_en(update_info.update_en),
        .pc_dispatch(update_info.pc_dispatch),
        .pc_actual(update_info.branch_actual_addr),

        .pre_branch_addr(prediction_addr_1),
        .btb_valid(btb_valid)
    );


endmodule
