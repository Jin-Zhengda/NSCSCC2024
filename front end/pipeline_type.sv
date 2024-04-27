`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/27 14:45:27
// Design Name: 
// Module Name: pipeline_type
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

package pipeline_type;

    typedef struct packed {
        logic [`InstBus] inst_o_1;
        logic [`InstBus] inst_o_2;
        logic [`InstBus] pc_o_1;
        logic [`InstBus] pc_o_2;
        logic [5:0] is_exception;
        logic [5:0][6:0] exception_cause;
    } inst_and_pc_t;

    typedef struct packed {
        logic [6:0] pause;
        logic exception_flush;
    } ctrl_t;

    typedef struct packed {
        logic [31:0] exception_new_pc;
        logic is_interrupt;
    } ctrl_pc_t;

    typedef struct packed {
        logic [31:0] pc_o_1;
        logic [31:0] pc_o_2;
        logic [5:0] is_exception;
        logic [5:0][6:0] exception_cause;
    } pc_out;

endpackage