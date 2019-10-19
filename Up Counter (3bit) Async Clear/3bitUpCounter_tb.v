module FourBitUpCounter_tb;
	reg Clk, Clear;
	wire [2:0] Q;
	
	FourBitUpCounter UUT (Clk, Clear, Q);
	
	initial begin
		$dumpfile("3bitUpCounter.vpd");
		$dumpvars;
	end
	
	// CLOCK
	initial begin
		Clk = 1;
		forever #5	Clk <= ~Clk;
	end
	
	// CLEAR
	initial begin
		Clear <= 1'b1;
		#15
		Clear <= 0;
		#40
		Clear <= 1'b1;
	end
	
	// TESTBENCH
	initial begin
		#60
		$finish;
	end
endmodule