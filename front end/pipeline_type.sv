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


package pipeline_type;

    typedef struct packed {
        logic [31:0] inst_o_1;
        logic [31:0] inst_o_2;
        logic [31:0] pc_o_1;
        logic [31:0] pc_o_2;
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

    typedef struct packed {
        logic is_branch;
        logic pre_taken_or_not;
        logic [31:0] pre_branch_addr;
    } branch_info;

    typedef logic [31:0] bus32_t;
    typedef logic [63:0] bus64_t;

endpackage