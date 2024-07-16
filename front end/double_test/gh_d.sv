`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/09 20:02:56
// Design Name: 
// Module Name: gh_d
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
`define Index 9:2

module gh_d(
    input logic clk,
    input logic rst,

    input logic [1:0][7:0] gh_index,

    input logic update_en,
    input logic [7:0] gh_index_up,
    input logic taken_actual,   //该分支是否真的发生，与目标地址无关
    
    output logic [1:0] taken_or_not
    );

    //存储和预测逻辑
    (*ram_style = "block"*) logic [1:0] pht[255:0];


    generate
        for (genvar i = 0; i < 2; i++) begin
            always_ff @(posedge clk) begin
                if(rst) begin
                    taken_or_not[i] <= 0;
                end else begin
                    taken_or_not[i] <= pht[gh_index[i]];
                end
            end
        end
    endgenerate

    

    //更新饱和计数器
    always_ff @(posedge clk) begin
        if(rst) begin
            pht <= '{default:0};
        end
        else begin
            if(update_en) begin
                if(taken_actual) begin
                    case(pht[gh_index_up])
                        2'b00:begin
                            pht[gh_index_up] <= 2'b01;
                        end
                        2'b01:begin
                            pht[gh_index_up] <= 2'b10;
                        end
                        2'b10:begin
                            pht[gh_index_up] <= 2'b11;
                        end
                        2'b11:begin
                            pht[gh_index_up] <= 2'b11;
                        end
                        default:begin
                            pht[gh_index_up] <= pht[gh_index_up];
                        end
                    endcase
                end
                else begin
                    case(pht[gh_index_up])
                        2'b00:begin
                            pht[gh_index_up] <= 2'b00;
                        end
                        2'b01:begin
                            pht[gh_index_up] <= 2'b00;
                        end
                        2'b10:begin
                            pht[gh_index_up] <= 2'b01;
                        end
                        2'b11:begin
                            pht[gh_index_up] <= 2'b10;
                        end
                        default:begin
                            pht[gh_index_up] <= pht[gh_index_up];
                        end
                    endcase
                end
            end
        end
    end

endmodule