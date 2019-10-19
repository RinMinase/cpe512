 module fourBitAluWithShifter(A, B, Cin, Mode, R, overFlow);
	input [3:0] A, B;
	input [3:0] Mode;
	input Cin;
	output [3:0] R;
	output overFlow;
	
	wire [3:0] m1,m2;
	wire oF;
	
	fourBitAlu F1(A, B, Cin, Mode[2:0], m1, oF);
	fourBitShifter S1(A, Mode[2:0], m2);
	
	assign R = (Mode[3] == 1)? m2 : m1;
	assign overFlow = (Mode > 1)? 1'bz : oF;
	
endmodule