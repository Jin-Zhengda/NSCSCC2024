`timescale 1ns / 1ps
`define InstBus 31:0
`define Index 9:2

module bht_d(
    input logic clk,
    input logic rst,

    //一次只预测一条指令
    input logic [1:0][`InstBus] pc,

    input logic update_en,
    input logic [31:0]pc_dispatch,
    input logic taken_actual,   //该分支是否真的发生，与目标地址无关
    
    output logic [1:0] taken_or_not
    );

    (*ram_style = "block"*) logic [7:0]bht [255: 0];

    (*ram_style = "block"*) logic [1:0]pht [255:0];

    logic [1:0][7:0]history;
    logic [1:0][7:0]pht_index;
    logic [1:0][1:0]judge;

    generate
        for (genvar i = 0; i < 2; i++) begin
            always_ff @(posedge clk) begin
                if(rst) begin
                    taken_or_not[i] <= 0;
                end else begin
                    history[i] <= bht[pc[i][`Index]];
                    pht_index[i] <= history[i]^pc[i][`Index];
                    judge[i] <= pht[pht_index[i]];
                    case(judge[i])
                        2'b00:begin
                            taken_or_not[i] <= 0;
                        end
                        2'b01:begin
                            taken_or_not[i] <= 0;
                        end
                        2'b10:begin
                            taken_or_not[i] <= 1;
                        end
                        2'b11:begin
                            taken_or_not[i] <= 1;
                        end
                        default:begin
                            taken_or_not[i] <= 0;
                        end
                    endcase
                end
            end
        end
    endgenerate

    logic [7:0]history_up;
    logic [7:0]pht_index_up;

    assign history_up = bht[pc_dispatch[`Index]];
    assign pht_index_up = history_up^pc_dispatch[`Index];


    //更新历史和预测
    always_ff @(posedge clk) begin
        if(rst) begin
            bht <= '{default:1};
            pht <= '{default:1};
        end
        else begin
            if(update_en) begin
                bht[pc_dispatch[`Index]] <= {bht[pc_dispatch[`Index]][6:0],taken_actual};
                if(taken_actual) begin
                    case(pht[pht_index_up])
                        2'b00:begin
                            pht[pht_index_up] <= 2'b01;
                        end
                        2'b01:begin
                            pht[pht_index_up] <= 2'b10;
                        end
                        2'b10:begin
                            pht[pht_index_up] <= 2'b11;
                        end
                        2'b11:begin
                            pht[pht_index_up] <= 2'b11;
                        end
                        default:begin
                            pht[pht_index_up] <= pht[pht_index_up];
                        end
                    endcase
                end
                else begin
                    case(pht[pht_index_up])
                        2'b00:begin
                            pht[pht_index_up] <= 2'b00;
                        end
                        2'b01:begin
                            pht[pht_index_up] <= 2'b00;
                        end
                        2'b10:begin
                            pht[pht_index_up] <= 2'b01;
                        end
                        2'b11:begin
                            pht[pht_index_up] <= 2'b10;
                        end
                        default:begin
                            pht[pht_index_up] <= pht[pht_index_up];
                        end
                    endcase
                end
            end else begin
                
            end
        end
    end

endmodule
