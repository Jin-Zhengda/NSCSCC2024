module testbench ();




reg reset;

reg clk,ena,enb;
reg[6:0]addra,addrb;
reg [31:0]dina,dinb;
wire[31:0]douta,doutb;
reg[3:0]wea,web;

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

always_ff @( posedge clk ) begin
    if(counter>=1&&counter<=10)begin
        ena<=1'b1;
        addra<=counter[6:0];
        dina<=counter;
        wea<=4'b1111;
    end
    else if(counter==11)begin
        ena<=1'b1;
        addra<=counter[6:0]-7'b1;
        wea<=4'b0000;
    end
    else if(counter>=12&&counter<=21)begin
        addra<=counter[6:0]-7'd11;
    end
    else begin
        ena<=1'b0;
        enb<=1'b0;
        addra<=7'b0;
        addrb<=7'b0;
        dina<=32'b0;
        dinb<=32'b0;
        wea<=4'b0;
        web<=4'b0;
    end
end





BRAM u_bram(
    .clk(clk),
    .ena(ena), 
    .enb(enb), 
    .wea(wea), 
    .web(web), 

    .dina (dina ),
    .addra(addra),
    .douta(douta),
    .dinb (dinb ),
    .addrb(addrb),
    .doutb(doutb)
);




always #10 clk=~clk;



endmodule