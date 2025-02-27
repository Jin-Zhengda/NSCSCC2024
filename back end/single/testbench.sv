`timescale 1ns / 1ps

module testbench ();

    logic CLOCK_50;
    logic rst;
    logic continue_idle;

    cpu_spoc u_cpu_spoc (
        .clk(CLOCK_50),
        .rst(rst),
        .continue_idle(continue_idle)
    );

    initial begin
        CLOCK_50 = 1'b0;
        forever begin
            #10 CLOCK_50 = ~CLOCK_50;
        end
    end

    initial begin
        rst = 1'b1;
        continue_idle = 1'b0;
        #195 rst = 1'b0;
        #1000 continue_idle = 1'b1;
        #100 continue_idle = 1'b0;
        #100 $finish;
    end

endmodule
