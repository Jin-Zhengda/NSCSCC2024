module inst_ram (
    input clk,
    input [31:0] pc,
    output logic [31:0] inst
);

always_ff @( posedge clk ) begin
    case (pc)
        32'h1c000000: inst <= 32'h02bffc0c;
        32'h1c000004: inst <= 32'h02bffc0c;
        32'h1c000008: inst <= 32'h0015000c;
        32'h1c00000c: inst <= 32'h0384000e;
        32'h1c000010: inst <= 32'h0040918d;
        32'h1c000014: inst <= 32'h060001a0;
        32'h1c000018: inst <= 32'h060005a0;
        32'h1c00001c: inst <= 32'h060001a1;
        32'h1c000020: inst <= 32'h060005a1;
        32'h1c000024: inst <= 32'h0280058c;
        32'h1c000028: inst <= 32'h5fffe98e;
        32'h1c00002c: inst <= 32'h50ffd400;
        32'h1c000030: inst <= 32'h02800000;
        32'h1c000034: inst <= 32'h02800000;
        32'h1c000038: inst <= 32'h02800000;
        32'h1c00003c: inst <= 32'h02800000;
        32'h1c000040: inst <= 32'h1500000c;
        32'h1c000044: inst <= 32'h028005ad;
        32'h1c000048: inst <= 32'h0015018e;
        32'h1c00004c: inst <= 32'h00104a2f;
        32'h1c000050: inst <= 32'h28800190;
        // ...
        32'h1c0000ec: inst <= 32'h1500000c;
        32'h1c0000f0: inst <= 32'h028005ad;
        32'h1c0000f4: inst <= 32'h0015018e;
        32'h1c0000f8: inst <= 32'h00104a2f;
        32'h1c0000fc: inst <= 32'h28800190;
        default: inst <= 32'h00000000; 
    endcase
end

endmodule


