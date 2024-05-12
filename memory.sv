module memory (
    input logic clk,
    input logic rst,

    input logic read_en,
    input logic[3: 0] read_id,
    input logic[31: 0] read_addr,
    
    output logic[31: 0] read_data, 

    input logic write_en


);
    
endmodule