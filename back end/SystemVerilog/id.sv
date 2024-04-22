`include "defines.sv"
`include "csr_defines.sv"

module id 
    import pipeline_types::*;
(
    input pc_id_t pc_id,

    input logic[1: 0] CRMD_PLV,
    input csr_push_forward_t csr_push_forward,

    output logic pause_id,
    output id_dispatch_t id_dispatch
);

    assign id_dispatch.pc = pc_id.pc;
    assign id_dispatch.inst = pc_id.inst;

    logic[1: 0] CRMD_PLV_current;
    assign CRMD_PLV_current = (csr_push_forward.csr_write_en && csr_push_forward.csr_wirte_addr == `CSR_CRMD) 
                                ? csr_push_forward.csr_write_data : CRMD_PLV;

    // select inst feild
    wire[9: 0] opcode1 = pc_id.inst[31: 22];
    wire[16: 0] opcode2 = pc_id.inst[31: 15];
    wire[6: 0] opcode3 = pc_id.inst[31: 25];
    wire[7: 0] opcode4 = pc_id.inst[31: 24];
    wire[5: 0] opcode5 = pc_id.inst[31: 26];
    wire[21: 0] opcode6 = pc_id.inst[31: 10];
    wire[26: 0] opcode7 = pc_id.inst[31: 5];   

    wire[19: 0] si20 = pc_id.inst[24: 5];
    wire[11: 0] ui12 = pc_id.inst[21: 10];
    wire[11: 0] si12 = pc_id.inst[21: 10];
    wire[13: 0] si14 = pc_id.inst[23: 10];
    wire[4: 0] ui5 = pc_id.inst[14: 10];

    wire[4: 0] rk = pc_id.inst[14: 10];
    wire[4: 0] rj = pc_id.inst[9: 5];
    wire[4: 0] rd = pc_id.inst[4: 0];
    wire[14: 0] code = pc_id.inst[14: 0];
    wire[13: 0] csr = pc_id.inst[23: 10];
    wire[9: 0] level = pc_id.inst[9: 0]; 




    
endmodule