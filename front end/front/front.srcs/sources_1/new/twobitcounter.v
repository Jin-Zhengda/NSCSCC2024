`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/07 22:11:38
// Design Name: 
// Module Name: twobitcounter
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


module twobitcounter(
    input clk,
    input rst,
    input set_i,
    output reg taken_or_not
    );
    parameter STRONGLY_TAKEN = 2'b11;
    parameter WEAKLY_TAKEN = 2'b10;
    parameter WEAKLY_NOT_TAKEN = 2'b01;
    parameter STRONGLY_NOT_TAKEN = 2'b00;
    reg [1:0] current_state;
    reg [1:0] next_state;
    
    wire cnt_end;
    
    counter u_counter(
        .clk(clk),
        .reset(rst),
        .cnt_inc(1),
        .cnt_end(cnt_end)
    );
    
    always @(posedge clk,negedge rst)begin
        if(rst==1) current_state <= WEAKLY_NOT_TAKEN;
        else if(cnt_end) current_state <= next_state;
    end
    
    always @(*)begin
        case (current_state)
            WEAKLY_TAKEN : begin 
                               if(set_i==1) next_state = STRONGLY_TAKEN;
                               else next_state = WEAKLY_NOT_TAKEN;
                           end
            WEAKLY_NOT_TAKEN : begin
                                   if(set_i==1) next_state = WEAKLY_TAKEN;
                                   else next_state = STRONGLY_NOT_TAKEN;
                               end
            STRONGLY_TAKEN : begin
                                 if(set_i==1) next_state = STRONGLY_TAKEN;
                                 else next_state = WEAKLY_TAKEN;
                             end
            STRONGLY_NOT_TAKEN : begin
                                     if(set_i==1) next_state = WEAKLY_NOT_TAKEN;
                                     else next_state = STRONGLY_NOT_TAKEN;
                                 end
            default : next_state = WEAKLY_NOT_TAKEN;
            endcase
    end
    
    always @(posedge clk or posedge rst) begin
        if(rst == 1) taken_or_not <= 1'b0;
        else begin
            case(current_state)
                STRONGLY_TAKEN : taken_or_not <= 1'b1;
                WEAKLY_TAKEN : taken_or_not <= 1'b1;
                WEAKLY_NOT_TAKEN : taken_or_not <= 1'b0;
                STRONGLY_NOT_TAKEN : taken_or_not <= 1'b0;
                default : taken_or_not <= 1'b0;
            endcase
        end
    end
    
endmodule
