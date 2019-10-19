module tFlipflop_tb;
	wire Q;
	reg T, clk;
	
	tFlipflop UUT(T, clk, Q);
	
	initial begin
		$dumpfile("tFlipflop.vpd");
		$dumpvars;
	end
	
	// CLOCK
	initial begin	
		clk = 1;
		forever #5	clk <= ~clk;
	end
	
	// RESET
	// initial begin
		// Reset <= 1'b1;
		// #10
		// Reset <= 0;
	// end
	
	// TESTBENCH
	initial begin
		T = 0;
		#10
		T = 1;
		#10
		T = 0;
		#5
		T = 1;
		#5
		T = 0;
		#5
		T = 1;
		#5
		
		// $display ("Simulation ends at %2d ns", $time);
		$finish;
	end
	
	// MONITORING
	// always @ (*)
		// $monitor ("Time = %2d ns : clk = %1d Reset = %1d T = %1d Q = %1d", $time, clk, Reset, D, Q);
endmodule