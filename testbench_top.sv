`timescale 1ns / 1ps

module testbench_top (
);
    logic CLOCK_50;
    logic rst;
    
    initial begin
        CLOCK_50 = 1'b0;
        forever begin
            #10 CLOCK_50 = ~CLOCK_50;
        end
    end

    soc u_soc (
        .clk(CLOCK_50),
        .rst(rst)
    );

    initial begin
        rst = 1'b1;
        #195 rst = 1'b0;
        #1000 $finish;
    end


endmodule