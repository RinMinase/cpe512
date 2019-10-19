module fullAdder(A, B, Cin, S, Cout);
	input A, B, Cin;
	output S, Cout;
	wire [4:0] W;
	
	xor U1(S, A, W[0]);
	xor U2(W[0], B, Cin);
	and U3(W[1], A, B);
	and U4(W[2], B, Cin);
	and U5(W[3], A, Cin);
	or U6(W[4], W[1], W[2]);
	or U7(Cout, W[4], W[3]);
endmodule
