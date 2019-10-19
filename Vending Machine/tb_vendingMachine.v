module tb_vendingMachine;
	reg P1, P5, R, clk;
	wire item, change;
	vendingMachine UUT(item, change, clk, P1, P5, R);
	
	initial
	begin
		$dumpfile("vendingMachine.vpd");
		$dumpvars;
	end
	
	initial
	begin
	R=0;
	clk=0;
	P1=0;
	P5=0;
	end
	
	always 
	#10 clk = ~clk;
	
	initial
	begin
	
	#10
	P5=1;
	#5
	P5=0;
	#5
	
	#50
	P1=1;
	#5
	P1=0;
	#15
	P1=1;
	#5
	P1=0;
	#15
	P1=1;
	#5
	P1=0;
	#5
	
	#50
	P1=1;
	#5
	P1=0;
	#15
	P1=1;
	#5
	P1=0;
	#15
	P5=1;
	#5
	P5=0;
	#5
	
	#90
	P1=1;
	#5
	P1=0;
	#15
	P5=1;
	#5
	P5=0;
	#5
	
	#50
	P1=1;
	#5
	P1=0;
	#5
	R=1;
	#5
	R=0;
	#5
	
	$finish;
	end
endmodule