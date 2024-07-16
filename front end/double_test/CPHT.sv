`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/13 20:35:39
// Design Name: 
// Module Name: CPHT
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


module CPHT(
    input logic clk,
    input logic rst,

    input logic [7:0] cpht_addr,

    input logic update_en,
    input logic taken_actual,
    input logic [7:0] cpht_addr_dispatch,
    input logic pre_gh,
    input logic pre_bh,

    output logic [1:0] choice

    );

    logic [1:0] pht [255:0];


    always_ff @(posedge clk) begin
        if(rst) begin
            choice <= 2'b00;
        end else begin
            choice <= pht[cpht_addr];
        end
    end

    always_ff @(posedge clk) begin
        if(rst) begin
            pht <= '{default:0};
        end else if(update_en) begin
            if(pre_bh ^ pre_gh) begin
                case(pht[cpht_addr_dispatch])
                    2'b00:begin
                        pht[cpht_addr_dispatch] <= !(taken_actual ^ pre_bh) ? 2'b00 : 2'b01;
                    end
                    2'b01:begin
                        pht[cpht_addr_dispatch] <= !(taken_actual ^ pre_bh) ? 2'b00 : 2'b10;
                    end
                    2'b10:begin
                        pht[cpht_addr_dispatch] <= !(taken_actual ^ pre_bh) ? 2'b01 : 2'b11;
                    end
                    2'b11:begin
                        pht[cpht_addr_dispatch] <= !(taken_actual ^ pre_bh) ? 2'b10 : 2'b11;
                    end
                endcase
            end
        end
    end


endmodule
