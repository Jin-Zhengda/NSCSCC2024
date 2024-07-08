`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/28 23:26:59
// Design Name: 
// Module Name: btb_d
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

module btb_d (
    input logic clk,
    input logic rst,

    input logic [1:0][31:0] pc,
    input logic update_en,
    input logic [31:0] pc_dispatch,
    input logic [31:0] pc_actual,

    output logic [1:0][31:0] pre_branch_addr,
    output logic [1:0]btb_valid

);

    //第44位为valid_bit，43-32位为tag，31-0位为BTA
    (*ram_style = "block"*) logic [44:0] btb[511: 0];

    logic [1:0][11: 0] pc_tag;
    logic [1:0][8: 0] pc_index;

    generate
        for (genvar i = 0; i < 2; i++) begin
            assign pc_tag[i]   = {pc[i][30:28], pc[i][19:11]};
            assign pc_index[i] = pc[i][10:2];
        end
    endgenerate

    generate
        for (genvar i = 0; i < 2; i++) begin
            always_ff @(posedge clk) begin
                if (rst) begin
                    pre_branch_addr[i] <= 0;
                end else begin
                    if ((btb[pc_index[i]][43:32] == pc_tag[i]) && (btb[pc_index[i]][44] == 1)) begin
                        pre_branch_addr[i] <= btb[pc_index[i]][31:0];
                        btb_valid[i] <= 1'b1;
                    end else begin
                        pre_branch_addr[i] <= 32'b0;
                        btb_valid[i] <= 0;
                    end
                end
            end
        end
    endgenerate

    logic[8: 0] pc_dispatch_index;
    assign pc_dispatch_index = pc_dispatch[10:2];

    always_ff @(posedge clk) begin
        if (rst) begin
            btb <= '{default: 0};
        end else begin
            if (update_en) begin
                btb[pc_dispatch_index][44] <= 1'b1;
                btb[pc_dispatch_index][43:32] <= {pc_dispatch[30:28], pc_dispatch[19:11]};
                btb[pc_dispatch_index][31:0] <= pc_actual;
            end else begin

            end
        end
    end



endmodule


