`include "include/fullAdder.v"
`include "include/fourBitAdder.v"
`include "include/fourBitSubtractor.v"
`include "include/fourBitComparator.v"
`include "include/fourByOneMux.v"
`include "testbench/tb_fourBitALU.v"

module fourBitALU(A, B, Cin, Mode, R, overflow);
	input [3:0] A, B;
	input [2:0] Mode;
	input Cin;
	
	output [3:0] R;
	output overflow;
	
	wire [3:0] a0, a1, a2, a3, a4, a5, a6, a7, t0, t1;
	wire [1:0] temp;
	wire flow1, flow2;
	
	assign temp[0] = Mode[0];
	assign temp[1] = Mode[1];
	
	fourBitAdder U1(A, B, Cin, a0, flow1);
	fourBitSubtractor U2(A, B, a1, flow2);
	fourBitComparator U3(A, B, a2);
	
	assign a3 = A&B;
	assign a4 = A|B;
	assign a5 = ~A;
	assign a6 = A+1;
	assign a7 = A-1;
	
	fourByOneMux U4(a0, a1, a2, a3, temp, t0);
	fourByOneMux U5(a4, a5, a6, a7, temp, t1);
	
	assign R = (Mode[2] == 1)? t1 : t0;
	assign overflow = (Mode > 1)? 1'bz : ((Mode == 0)? flow1 : flow2);
endmodule