module dFlipflop_tb;
	reg clk, Reset, D;
	wire Q;
	
	dFlipflop UUT(clk, Reset, D, Q);
	
	initial begin
		$dumpfile("dFlipflop.vpd");
		$dumpvars;
	end
	
	// CLOCK
	initial begin	
		clk = 0;
		forever #5	clk <= ~clk;
	end
	
	// RESET
	initial begin
		Reset <= 1'b1;
		#10
		Reset <= 0;
	end
	
	// TESTBENCH
	initial begin
		D = 0;
		#12
		D = 1'b1;
		#25
		D = 0;
		#10
		D = 1'b1;
		#12
		D = 0;
		#10
		
		$display ("Simulation ends at %2d ns", $time);
		$finish;
	end
	
	// MONITORING
	always @ (*)
		$monitor ("Time = %2d ns : clk = %1d Reset = %1d D = %1d Q = %1d", $time, clk, Reset, D, Q);
endmodule