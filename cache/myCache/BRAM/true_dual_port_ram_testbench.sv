module testbench (
);

logic clk,ena,wea,enb,web,reset;
logic[6:0]addra,addrb;
logic[31:0]dina,dinb,douta,doutb;


reg[31:0] counter;
always_ff @( posedge clk ) begin
    if(reset)counter=32'b0;
    else counter<=counter+32'b1;
end

initial begin
    clk=1'b0;reset=1'b1;
    # 30 begin
        reset=1'b0;
    end
    #1000 $finish;
end












BRAM testbram (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [6 : 0] addra
  .dina(dina),    // input wire [31 : 0] dina
  .douta(douta),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(enb),      // input wire enb
  .web(web),      // input wire [0 : 0] web
  .addrb(addrb),  // input wire [6 : 0] addrb
  .dinb(dinb),    // input wire [31 : 0] dinb
  .doutb(doutb)  // output wire [31 : 0] doutb
);







    
endmodule











