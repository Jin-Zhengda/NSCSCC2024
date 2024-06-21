`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/28 23:26:19
// Design Name: 
// Module Name: bpu_d
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
    output logic [1:0] pre_taken_or_not,
    output logic [`InstBus] pre_branch_addr,
    output logic taken_sure,

    //传给instbuffer
    output logic [1:0] fetch_inst_en

);

    logic [1:0][5:0] branch_judge;

    bus32_t inst_1_i;
    assign inst_1_i = stall ? 32'b0 : inst[0]; 
    bus32_t inst_2_i;
    assign inst_2_i = stall ? 32'b0 : inst[1]; 

    assign branch_judge[0] = inst_1_i[31:26];
    assign branch_judge[1] = inst_2_i[31:26];


    generate
        for (genvar i = 0; i < 2; i++) begin
            always_ff @(posedge clk) begin
                case (branch_judge[i])
                    6'b010010: begin
                        is_branch[i] = 1'b1;
                    end
                    6'b010011: begin
                        is_branch[i] = 1'b1;
                    end
                    6'b010100: begin
                        is_branch[i] = 1'b1;
                    end
                    6'b010101: begin
                        is_branch[i] = 1'b1;
                    end
                    6'b010110: begin
                        is_branch[i] = 1'b1;
                    end
                    6'b010111: begin
                        is_branch[i] = 1'b1;
                    end
                    6'b011000: begin
                        is_branch[i] = 1'b1;
                    end
                    6'b011001: begin
                        is_branch[i] = 1'b1;
                    end
                    6'b011010: begin
                        is_branch[i] = 1'b1;
                    end
                    6'b011011: begin
                        is_branch[i] = 1'b1;
                    end
                    default: begin
                        is_branch[i] = 1'b0;
                    end
                endcase
            end
        end
    endgenerate


    logic [1:0][`InstBus] prediction_addr;
    logic [1:0] btb_valid;


    always_comb begin
        if (is_branch[0] && pre_taken_or_not[0] && inst_en_1 && btb_valid[0]) begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b0;
            pre_branch_addr = prediction_addr[0];
            taken_sure <= 1'b1;
        end else if (is_branch[1] && pre_taken_or_not[1] && inst_en_2 && btb_valid[1]) begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b1;
            pre_branch_addr = prediction_addr[1];
            taken_sure <= 1'b1;
        end else begin
            fetch_inst_en[0] = 1'b1;
            fetch_inst_en[1] = 1'b1;
            pre_branch_addr = 32'b0;
            taken_sure <= 1'b0;
        end
    end



    bht_d u_bht (
        .clk,
        .rst,

        .pc(pc),
        .update_en(update_info.update_en),
        .pc_dispatch(update_info.pc_dispatch),
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