module RingPolymultCore(A, B, sel, polyadd, result);   
output result;
input [3:0] A, B, polyadd;
input sel;        
wire [6:0] C;  
wire [3:0] D;

PE_array(C, A, B, clk);  
PolyReduction(D, C); 
PolyAddition(result, polyadd, D);     
         
endmodule
