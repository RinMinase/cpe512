module counter3_tb;
	reg Clk, nE, cntby2, nReset;
	wire [2:0] out;
	
	counter3 UUT (Clk, nE, cntby2, nReset, out);
	
	initial begin
		$dumpfile("counter3.vpd");
		$dumpvars;
	end
	
	initial begin
		Clk = 1;
		forever #5	Clk <= ~Clk;
	end
	
	// nReset
	initial begin
		nReset <= 1'b1;
		#15
		nReset <= 0;
		#30
		nReset <= 1'b1;
	end
	
	initial begin
		nE = 0;
		#5
		
		nE <= 1'b1; 
		#25
		
		nE = 0;
	end
	
	initial begin
		cntby2 = 0;
		#30
		
		cntby2 = 1;
	end
	/*
	initial begin
		nReset = 0;
		#30
		
		nReset = 1;
	end*/
	
	initial begin
		#60
		$finish;
	end
endmodule