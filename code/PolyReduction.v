// Verilog implementation of a polynomial reduction module
module PolyReduction #(parameter WIDTH = 1, parameter DEGREE = 3)(
    output reg  [3:0] out,
    input clk,
    input sel,
    input [6:0] in,
);

    // Shift registers for storing intermediate values
    reg [WIDTH-1:0] shift_reg [0:DEGREE];

    integer i;

    always @(posedge clk) begin
        if (sel == 0) begin
            // Store input into shift registers
            shift_reg[0] <= input_data;
            for (i = 1; i <= DEGREE; i = i + 1) begin
                shift_reg[i] <= shift_reg[i-1];
            end
        end else if (sel == 1) begin
            // Perform subtraction for reduction
            out <= shift_reg[0] - shift_reg[DEGREE];
            for (i = 0; i < DEGREE; i = i + 1) begin
                shift_reg[i] <= shift_reg[i+1];
            end
            shift_reg[DEGREE] <= 0;
        end
    end

endmodule
