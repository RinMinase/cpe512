module tb_fullAdder;
	reg A, B, Cin;
	wire S, Cout;
	
	fullAdder UUT(A, B, Cin, S, Cout);
	
	initial
		begin
			$dumpfile("fullAdder.vpd");
			$dumpvars;
			
			A = 0; B = 0; Cin = 0; #10
			A = 0; B = 0; Cin = 1; #10
			A = 0; B = 1; Cin = 0; #10
			A = 0; B = 1; Cin = 1; #10
			A = 1; B = 0; Cin = 0; #10
			A = 1; B = 0; Cin = 1; #10
			A = 1; B = 1; Cin = 0; #10
			A = 1; B = 1; Cin = 1; #10
			
			$finish;
	end
endmodule