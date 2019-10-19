`timescale 1ns/1ps

module tb_machine();

	reg 	Clk, nReset, Start, M, L, dirty, wet, T1done, T2done;
	wire 	Mout, Lout, wash, rinse, dry, T1start, T2start;

	machine UUT (Clk, nReset, Start, M, L, dirty, wet, T1done, T2done, Mout, Lout, wash, rinse, dry, T1start, T2start);
		
		initial 
		begin
			Clk = 0; nReset = 0; Start = 0; M = 0; L = 0;
			dirty = 0; wet = 0; T1done = 0; T2done = 0;
		end

		always #1 Clk = ~Clk;

		initial begin

			$dumpfile("WashingMachine.vpd");
			$dumpvars;

			// medium
			nReset = 0;#2
			Start = 1'b1; M = 1'b1; nReset = 1'b1; #2
			dirty = 1'b1; #2
			T2done = 1'b1;#2
			dirty = 1'b0; T2done = 1'b1; wet = 1'b0; #6
			T2done = 1'b1; #2
			wet = 1'b0; T2done = 1'b0; Start = 1'b0; M = 1'b0;

			// medium
			nReset = 1'b0; #2
			Start =1'b1; M = 1'b1; nReset = 1'b1; #2
			dirty =1'b1; #2
			T2done = 1'b1; #2
			T2done = 1'b1; #2
			T2done = 1'b1; #2
			T2done = 1'b1; #2
			dirty = 1'b0; T2done = 1'b1; #2
			T2done = 1'b1; T1done = 1'b1; wet = 1'b0; #2
			wet = 1'b0; T2done = 1'b1; T1done = 1'b0; #2
			wet = 1'b0; T2done = 1'b1; #2
			Start = 1'b0; M = 1'b0; dirty = 1'b0; T2done = 1'b0; 

			// large
			nReset = 1'b0; #2
			Start =1'b1; L = 1'b1; nReset = 1'b1; #2
			dirty =1'b1; #2
			T2done = 1'b1; #2
			T2done = 1'b1; #2
			T2done = 1'b1; #2
			T2done = 1'b1; #2
			dirty = 1'b0; T2done = 1'b1; #2
			T2done = 1'b1; T1done = 1'b1; wet = 1'b0; #2
			wet = 1'b0; T2done = 1'b1; T1done = 1'b0; #2
			wet = 1'b0; T2done = 1'b1; #2
		    wet = 1'b0; T2done = 1'b1; #2
			dirty = 1'b0; T2done = 1'b1; #2
			T2done = 1'b1; T1done = 1'b1; wet = 1'b0;
			Start = 1'b0; L = 1'b0; dirty = 1'b0; T2done = 1'b0; #2

		$finish;

	end

endmodule