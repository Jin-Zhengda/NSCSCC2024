`timescale 1ns / 1ps
`define InstBus 31:0
`define Index 9:2

module bht_d(
    input logic clk,
    input logic rst,

    input logic [1:0][7:0] bh_index,

    input logic update_en,
    input logic [7:0] bh_index_up,
    input logic taken_actual,   //该分支是否真的发生，与目标地址无关
    
    output logic [1:0] taken_or_not
    );

    (*ram_style = "block"*) logic [1:0]pht [255:0];

    generate
        for (genvar i = 0; i < 2; i++) begin
            always_ff @(posedge clk) begin
                if(rst) begin
                    taken_or_not[i] <= 0;
                end else begin
                    taken_or_not[i] <= pht[bh_index[i]][1];
                end
            end
        end
    endgenerate


    //更新历史和预测
    always_ff @(posedge clk) begin
        if(rst) begin
            pht <= '{default:1};
        end
        else begin
            if(update_en) begin
                if(taken_actual) begin
                    case(pht[bh_index_up])
                        2'b00:begin
                            pht[bh_index_up] <= 2'b01;
                        end
                        2'b01:begin
                            pht[bh_index_up] <= 2'b10;
                        end
                        2'b10:begin
                            pht[bh_index_up] <= 2'b11;
                        end
                        2'b11:begin
                            pht[bh_index_up] <= 2'b11;
                        end
                        default:begin
                            pht[bh_index_up] <= pht[bh_index_up];
                        end
                    endcase
                end
                else begin
                    case(pht[bh_index_up])
                        2'b00:begin
                            pht[bh_index_up] <= 2'b00;
                        end
                        2'b01:begin
                            pht[bh_index_up] <= 2'b00;
                        end
                        2'b10:begin
                            pht[bh_index_up] <= 2'b01;
                        end
                        2'b11:begin
                            pht[bh_index_up] <= 2'b10;
                        end
                        default:begin
                            pht[bh_index_up] <= pht[bh_index_up];
                        end
                    endcase
                end
            end
        end
    end

endmodule
