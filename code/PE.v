module PE(a, b, sum, fa, r, clk);
input a, b, sum, clk;
output fa, r;
wire fa_, r_;


assign r_ = a * b + sum;
assign fa_ = a;
Reg(r, r_, clk);
Reg(fa, fa_, clk);


endmodule
