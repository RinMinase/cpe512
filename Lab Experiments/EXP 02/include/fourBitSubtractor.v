module fourBitSubtractor(A, B, D, Bout);
	input [3:0] A, B;
	
	output [3:0] D;
	output Bout;
	
	wire [6:0] W;
	
	not U1(W[0],B[0]);
	not U2(W[1],B[1]);
	not U3(W[2],B[2]);
	not U4(W[3],B[3]);
	fullAdder U5(A[0], W[0], 1, D[0], W[4]);
	fullAdder U6(A[1], W[1], W[4], D[1], W[5]);
	fullAdder U7(A[2], W[2], W[5], D[2], W[6]);
	fullAdder U8(A[3], W[3], W[6], D[3], Bout);
endmodule