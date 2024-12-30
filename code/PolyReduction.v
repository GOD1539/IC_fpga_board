module PolyReduction(D, C);   
output [3:0] D;
input [3:0]  C;

assign D[3] = C[6] - C[2];
assign D[2] = C[5] - C[1];
assign D[1] = C[4] - C[0];
assign D[0] = C[3];
endmodule