module tb_lights;

	reg Clk,nReset,Start;
	wire [2:0]lights;

	lights UUT(Clk,nReset,Start, lights);

	initial begin
		$dumpfile("lights.vpd");
		$dumpvars;
	end

	initial
		Clk = 0;
	always #5 Clk = ~Clk;


	initial begin
		nReset <= 0;
		#12
		nReset <= 1;
	end

	initial 
	begin
	Start = 0;
	#15
	Start = 1;
	nReset = 0;
	#35
	nReset = 1;
	#20
	Start = 0;
	#32
	Start = 1;
	#50 
	Start = 0;
	#12
	Start = 1;
	#30  

	$finish;

	end
endmodule