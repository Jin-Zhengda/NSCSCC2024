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
    logic [44:0] btb[511: 0];

    logic[11: 0] pc_tag_1;
    logic[8: 0] pc_index_1;

    assign pc_tag_1   = {pc[0][30:28], pc[0][19:11]};
    assign pc_index_1 = pc[0][10:2];

    always_ff @(posedge clk) begin
        if (rst) begin
            pre_branch_addr[0] <= 0;
        end else begin
            if ((btb[pc_index_1][43:32] == pc_tag_1) && (btb[pc_index_1][44] == 1)) begin
                pre_branch_addr[0] <= btb[pc_index_1][31:0];
                btb_valid[0] <= 1'b1;
            end else begin
                pre_branch_addr[0] <= 32'b0;
                btb_valid[0] <= 0;
            end
        end
    end

    logic[11: 0] pc_tag_2;
    logic[8: 0] pc_index_2;

    assign pc_tag_2   = {pc[1][30:28], pc[1][19:11]};
    assign pc_index_2 = pc[1][10:2];

    always_ff @(posedge clk) begin
        if (rst) begin
            pre_branch_addr[1] <= 0;
        end else begin
            if ((btb[pc_index_2][43:32] == pc_tag_2) && (btb[pc_index_2][44] == 1)) begin
                pre_branch_addr[1] <= btb[pc_index_2][31:0];
                btb_valid[1] <= 1'b1;
            end else begin
                pre_branch_addr[1] <= 32'b0;
                btb_valid[1] <= 0;
            end
        end
    end

    // always_comb begin
    //     if ((btb[pc_index][43:32] == pc_tag) && (btb[pc_index][44] == 1)) begin
    //         pre_branch_addr <= btb[pc_index][31:0];
    //         btb_valid <= 1'b1;
    //     end else begin
    //         pre_branch_addr <= 32'b0;
    //         btb_valid <= 0;
    //     end
    // end

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


