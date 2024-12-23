module Reg(out, in, clk);
output reg out;
input in, clk;

always @(posedge clk)
	out <= in;

endmodule