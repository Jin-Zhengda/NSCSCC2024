`timescale 1ns/1ps

module testbench (
);

    reg CLOCK_50;
    reg rst;

    LA_spoc u_LA_spoc (
        .clk(CLOCK_50),
        .rst(rst)
    );

    initial begin
        CLOCK_50 = 1'b0;
        forever begin
            #10 CLOCK_50 = ~CLOCK_50;
        end
    end

    initial begin
        rst = 1'b1;
        #195 rst = 1'b0;
        #900 rst = 1'b1;
        #100 $finish;
    end
    
endmodule