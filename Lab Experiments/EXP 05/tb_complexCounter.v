module tb_complexCounter;
	reg Clk, nReset, M;
	wire [2:0] Count;
	
	complexCounter UUT(Clk, nReset, M, Count);
	
	initial begin
		$dumpfile("tb_complexCounter.vpd");
		$dumpvars;
	end
	
	initial
		Clk = 0;
	always #5 Clk = ~Clk;
	
	initial begin
		nReset <= 0; #10
		nReset <= 1;
	end
	
	initial begin
		M = 0; #10
		
		M = 0; #10
		M = 0; #10
		M = 0; #10
		M = 1; #10
		M = 1; #10
		M = 1; #10
		M = 0; #10
		M = 0; #10
		
		nReset = 0; #10 
		nReset = 1; #10
		M = 0; #70
		
		$finish;
	end
endmodule