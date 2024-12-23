module PolyAddition(result, polyadd, D);   
output [3:0] result;
input [3:0] polyadd, D;

assign result[3] = polyadd[3] + D[3];
assign result[2] = polyadd[2] + D[2];
assign result[1] = polyadd[1] + D[1];
assign result[0] = polyadd[0] + D[0];

endmodule