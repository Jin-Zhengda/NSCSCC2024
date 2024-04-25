`timescale 1ns/1ps

module testbench (
);

    logic CLOCK_50;
    logic rst;

    cpu_spoc u_cpu_spoc (
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
        #1000 $finish;
    end
    
endmodule