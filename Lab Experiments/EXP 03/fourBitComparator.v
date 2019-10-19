module fourBitComparator(A, B, R);
	input [3:0] A, B;
	output [3:0] R;
	
	assign R = (A > B) ? 4'bz100: ((A == B) ? 4'bz010: 4'bz001);
	
	//assign R[3] = 1'bz;
	//assign R[2] = (A > B) ? 1:0;
	//assign R[1] = (A == B) ? 1:0;
	//assign R[0] = (A < B) ? 1:0;
	
endmodule