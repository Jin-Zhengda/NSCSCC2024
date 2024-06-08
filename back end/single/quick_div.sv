module quick_div 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input bus32_t dividend,
    input bus32_t divisor,

    output bus32_t quotient,
    output bus32_t remainder
);
    
endmodule