module tb_fourBitRegister;

	reg Clk,RW;
	reg [3:0] Data_in;
	reg [2:0] Address;
	wire [3:0] Data_out;


	fourBitRegister UUT(Clk,RW,Data_in,Address,Data_out);

	initial begin
		$dumpfile("fourBitRegister.vpd");
		$dumpvars;
	end

	initial
		Clk = 0;

	always
		#5 Clk = ~Clk;

	initial begin
	RW=1;
	Data_in=0;
	Address=0;

	#15
	Data_in=1;
	Address=1;

	#10
	Data_in=2;
	Address=2;

	#10
	RW=0;
	Address=0;


	#10
	RW=1;
	Data_in=3;
	Address=3;

	#10
	Data_in=4;
	Address=4;

	#10
	Data_in=5;
	Address=5;

	#10
	RW=0;
	Address=3;

	#10
	Address=2;


	#10
	RW=1;
	Data_in=6;
	Address=6;

	#10
	RW=0;
	Address=6;


	#10
	RW=1;
	Data_in=7;
	Address=7;

	#10
	RW=0;
	Address=1;

	#10
	Address=4;

	#10
	Address=5;

	#10
	Address=7;

	$finish;

	end
endmodule