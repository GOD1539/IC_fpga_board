module PE_array(C, A, B, clk);
input [3:0]A, B;
output [6:0]C;
wire [15:0]fa, y;

PE p1(A[0], B[0], 0, fa[0], y[0], clk);
PE p2(A[1], B[0], 0, fa[1], y[1], clk);
PE p3(A[2], B[0], 0, fa[2], y[2], clk);
PE p4(A[3], B[0], 0, fa[3], y[3], clk);
PE p5(fa[0], B[1], y[1], fa[4], y[4], clk);
PE p6(fa[1], B[1], y[2], fa[5], y[5], clk);
PE p7(fa[2], B[1], y[3], fa[6], y[6], clk);
PE p8(fa[3], B[1], y[4], fa[7], y[7], clk);
PE p9(fa[4], B[2], y[5], fa[8], y[8], clk);
PE p10(fa[5], B[2], y[6], fa[9], y[9], clk);
PE p11(fa[6], B[2], y[7], fa[10], y[10], clk);
PE p12(fa[7], B[2], y[8], fa[11], y[11], clk);
PE p13(fa[8], B[3], y[9], fa[12], y[12], clk);
PE p14(fa[9], B[3], y[10], fa[13], y[13], clk);
PE p15(fa[10], B[3], y[11], fa[14], y[14], clk);
PE p16(fa[11], B[3], y[12], fa[15], y[15], clk);

assign C[0] = y[0];
assign C[1] = y[4];
assign C[2] = y[8];
assign C[3] = y[12];
assign C[4] = y[13];
assign C[5] = y[14];
assign C[6] = y[15];



endmodule
