`timescale 1ns / 1ps

module btb_d (
    input logic clk,
    input logic rst,

    input logic [1:0][31:0] pc,
    input logic update_en,
    input logic [31:0] pc_dispatch,
    input logic [31:0] pc_actual,

    output logic [1:0][31:0] pre_branch_addr,
    output logic [1:0] btb_valid

);

    // ?44位为valid_bit ?43-32位为tag ?31-0位为BTA
    logic [32:0] btb[127: 0];

    // logic [1:0][10: 0] pc_tag;
    logic [1:0][6: 0] pc_index;

    generate
        for (genvar i = 0; i < 2; i++) begin
            // assign pc_tag[i]   = pc[i][14:4];
            assign pc_index[i] = pc[i][8:2];
        end
    endgenerate


    // logic [1:0] hit;
    // assign hit[0] = btb[pc_index[0]][32];  
    // assign hit[1] = btb[pc_index[1]][32];

    generate
        for (genvar i = 0; i < 2; i++) begin
            assign pre_branch_addr[i] = btb[pc_index[i]][31:0];
            assign btb_valid[i] = btb[pc_index[i]][32];
        end
    endgenerate

    always_ff @(posedge clk) begin
        if (rst) begin
            btb <= '{default: 0};
        end else if (update_en) begin
            btb[pc_dispatch[8:2]] <= {1'b1, pc_actual};
        end
    end



endmodule

