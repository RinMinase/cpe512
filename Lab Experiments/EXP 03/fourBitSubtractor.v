//module fullAdder(A, B, Cin, S, Cout);
	//input A, B, Cin;
	//output S, Cout;
//endmodule

module fourBitSubtractor(A, B, D, Bout);
	input [3:0] A,B;
	output [3:0] D;
	output Bout;
	wire w1,w2,w3,w4,w5,w6,w7;
	
	not NU1(w1,B[0]);
	not NU2(w2,B[1]);
	not NU3(w3,B[2]);
	not NU4(w4,B[3]);
	fullAdder FU1(A[0], w1, 1, D[0], w5);
	fullAdder FU2(A[1], w2, w5, D[1], w6);
	fullAdder FU3(A[2], w3, w6, D[2], w7);
	fullAdder FU4(A[3], w4, w7, D[3], Bout);
endmodule
