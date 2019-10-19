`include "include/fullAdder.v"
`include "testbench/tb_fourBitAdder.v"

module fourBitAdder(A, B, Cin, S, Cout);
	input [3:0] A, B;
	input Cin;
	
	output [3:0] S;
	output Cout;
	
	wire [2:0] W;
	
	fullAdder U1(A[0], B[0], Cin, S[0], W[0]);
	fullAdder U2(A[1], B[1], W[0], S[1], W[1]);
	fullAdder U3(A[2], B[2], W[1], S[2], W[2]);
	fullAdder U4(A[3], B[3], W[2], S[3], Cout);
endmodule