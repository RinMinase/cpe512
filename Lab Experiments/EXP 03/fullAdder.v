module fullAdder(A, B, Cin, S, Cout);
	input A, B, Cin;
	output S, Cout;
	wire w1, w2, w3, w4, w5;

	xor XU1(S, A, w1);
	xor XU2(w1, B, Cin);
	and AU1(w2, A, B);
	and AU2(w3, B, Cin);
	and AU3(w4, A, Cin);
	or OU1(w5, w2, w3);
	or OU2(Cout, w5, w4);
endmodule
