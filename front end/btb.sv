`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/26 22:19:07
// Design Name: 
// Module Name: btb
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


module btb (
    input logic clk,
    input logic rst,

    input logic [31:0] pc,
    input logic update_en,
    input logic [31:0] pc_dispatch,
    input logic [31:0] pc_actual,

    output logic [31:0] pre_branch_addr,
    output logic btb_valid

);

    //第44位为valid_bit，43-32位为tag，31-0位为BTA
    logic [44:0] btb[511: 0];

    logic[11: 0] pc_tag;
    logic[8: 0] pc_index;

    assign pc_tag   = {pc[30:28], pc[19:11]};
    assign pc_index = pc[10:2];

    // always_ff @(posedge clk) begin
    //     if (rst) begin
    //         pre_branch_addr <= 0;
    //     end else begin
    //         if ((btb[pc_index][43:32] == pc_tag) && (btb[pc_index][44] == 1)) begin
    //             pre_branch_addr <= btb[pc_index][31:0];
    //             btb_valid <= 1'b1;
    //         end else begin
    //             pre_branch_addr <= 32'b0;
    //             btb_valid <= 0;
    //         end
    //     end
    // end

    always_comb begin
        if ((btb[pc_index][43:32] == pc_tag) && (btb[pc_index][44] == 1)) begin
            pre_branch_addr <= btb[pc_index][31:0];
            btb_valid <= 1'b1;
        end else begin
            pre_branch_addr <= 32'b0;
            btb_valid <= 0;
        end
    end

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
