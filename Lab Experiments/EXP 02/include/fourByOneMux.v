module fourByOneMux(A, B, C, D, S, Y);
	input [3:0] A, B, C, D;
	input [1:0] S;
	output [3:0] Y;
	
	
	assign Y = (S == 2'd0) ? A : ((S == 2'd1) ? B : ((S == 2'd2) ? C : D));
endmodule