// simulate BRAM IP in simulation without Vivado
// data read latency is 1 cycle
module BRAM #(
    parameter DATA_SIZE = 32,
    parameter ADDR_SIZE = 7
) (
    input logic clk,
    input logic ena,  // Chip enable A
    input logic enb,  // Chip enable B
    input logic[3:0] wea,  // Write enable A
    input logic[3:0] web,  // Write enable B

    input  logic [DATA_SIZE-1:0] dina,
    input  logic [ADDR_SIZE-1:0] addra,
    output logic [DATA_SIZE-1:0] douta,

    input  logic [DATA_SIZE-1:0] dinb,
    input  logic [ADDR_SIZE-1:0] addrb,
    output logic [DATA_SIZE-1:0] doutb
);

    (* ram_style = "block" *) logic [DATA_SIZE-1:0] data[2**ADDR_SIZE];

    wire [31:0]write_mask_a;
    assign write_mask_a={{8{wea[3]}},{8{wea[2]}},{8{wea[1]}},{8{wea[0]}}};

    wire [31:0]write_mask_b;
    assign write_mask_b={{8{web[3]}},{8{web[2]}},{8{web[1]}},{8{web[0]}}};

    // For Simulation
    initial begin
        for (integer i = 0; i < 2 ** ADDR_SIZE; i++) begin
            data[i] = 0;
        end
    end

    // Read logic
    always_ff @(posedge clk) begin
        if (ena & wea) douta <= dina;
        else if (ena) douta <= data[addra];
        else douta <= 0;

        if (enb & web) doutb <= dinb;
        else if (enb) doutb <= data[addrb];
        else doutb <= 0;
    end

    // Write logic
    always_ff @(posedge clk) begin
        if (enb & web) begin
            data[addrb] <= (dinb&write_mask_b)|(data[addrb]&~write_mask_b);
        end

        // A port has priority
        if (ena & wea) begin
            data[addra] <= (dina&write_mask_a)|(data[addra]&~write_mask_a);
        end
    end



endmodule
