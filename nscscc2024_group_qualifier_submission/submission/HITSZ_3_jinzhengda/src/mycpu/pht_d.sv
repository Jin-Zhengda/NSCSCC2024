`timescale 1ns / 1ps
`define InstBus 31:0
`define Index 9:2

module pht_d(
    input logic clk,
    input logic rst,

    input logic [1:0][6:0] index,

    input logic update_en,
    input logic [6:0] index_up,
    input logic taken_actual,   //该分支是否真的发生，与目标地�?无关
    
    output logic [1:0] taken_or_not
    );

    logic [1:0]pht [127:0];

    generate
        for (genvar i = 0; i < 2; i++) begin
            assign taken_or_not[i] = pht[index[i]][1];
        end
    endgenerate


    //更新历史和预�?
    always_ff @(posedge clk) begin
        if(rst) begin
            pht <= '{default:1};
        end
        else if(update_en && taken_actual) begin
            case(pht[index_up])
                2'b00:begin
                    pht[index_up] <= 2'b01;
                end
                2'b01:begin
                    pht[index_up] <= 2'b10;
                end
                2'b10, 2'b11:begin
                    pht[index_up] <= 2'b11;
                end
            endcase
        end
        else if (update_en && !taken_actual)begin
            case(pht[index_up])
                2'b00, 2'b01:begin
                    pht[index_up] <= 2'b00;
                end
                2'b10:begin
                    pht[index_up] <= 2'b01;
                end
                2'b11:begin
                    pht[index_up] <= 2'b10;
                end
            endcase
        end
    end

endmodule
