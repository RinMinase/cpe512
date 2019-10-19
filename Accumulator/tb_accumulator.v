module tb_accumulator;
	reg [3:0] A,B,Mode;
	reg Cin;

	// wire [3:0] R;
	// wire overFlow;

	reg Clk, nReset;

	wire CBF;
	wire [3:0] Y;

	fiveBitRegisterAccumulatorAluShifter UUT(A, B, Cin, Mode, nReset, Clk, CBF, Y);
	
	// fourBitAluWithShifter UUT (.A(a), .B(b), .Cin(cin), .Mode(m), .R(r), .overFlow(ovf));
	// accumulator UUT2({ovf,r},Clk,nReset,CBF,Y);
	

	initial begin

		$dumpfile("tb_accumulator.vpd");
		$dumpvars;
	end

	initial
		Clk = 0;

	always
		#5 Clk = ~Clk;

	initial begin
		nReset <= 0;
		#10
		nReset <= 1;
	end

	initial begin


A = 4'b1111; B = 4'b1110; Cin = 4'b0110; Mode = 4'b0000; #10 
A = 4'b0100; B = 4'b1110; Cin = 4'b1110; Mode = 4'b0000; #10 
A = 4'b1100; B = 4'b0101; Cin = 4'b1111; Mode = 4'b0000; #10

A = 4'b1001; B = 4'b1101; Cin = 4'd1; Mode = 4'b0001; #10 
A = 4'b0101; B = 4'b1010; Cin = 4'd1; Mode = 4'b0001; #10 
A = 4'b0110; B = 4'b1110; Cin = 4'd1; Mode = 4'b0001; #10 

A = 4'b1110; B = 4'b1011; Cin = 4'b0110; Mode = 4'b0010; #10 
A = 4'b1111; B = 4'b1011; Cin = 4'b1010; Mode = 4'b0010; #10 
A = 4'b1010; B = 4'b0100; Cin = 4'b0101; Mode = 4'b0010; #10 

A = 4'b1010; B = 4'b0101; Cin = 4'b0001; Mode = 4'b0011; #10
A = 4'b1111; B = 4'b1110; Cin = 4'b0110; Mode = 4'b0011; #10 
A = 4'b0100; B = 4'b1110; Cin = 4'b1110; Mode = 4'b0011; #10 

A = 4'b1100; B = 4'b0101; Cin = 4'b1111; Mode = 4'b0100; #10 
A = 4'b1001; B = 4'b1101; Cin = 4'b1011; Mode = 4'b0100; #10 
A = 4'b0101; B = 4'b1010; Cin = 4'b0111; Mode = 4'b0100; #10 

A = 4'b0110; B = 4'b1110; Cin = 4'b1001; Mode = 4'b0101; #10 
A = 4'b1110; B = 4'b1011; Cin = 4'b0110; Mode = 4'b0101; #10 
A = 4'b1111; B = 4'b1011; Cin = 4'b1010; Mode = 4'b0101; #10 

A = 4'b1010; B = 4'b0100; Cin = 4'b0101; Mode = 4'b0110; #10 
A = 4'b1010; B = 4'b0101; Cin = 4'b0001; Mode = 4'b0110; #10
A = 4'b1110; B = 4'b1011; Cin = 4'b0110; Mode = 4'b0110; #10 

A = 4'b1111; B = 4'b1011; Cin = 4'b1010; Mode = 4'b0111; #10 
A = 4'b1010; B = 4'b0100; Cin = 4'b0101; Mode = 4'b0111; #10 
A = 4'b1010; B = 4'b0101; Cin = 4'b0001; Mode = 4'b0111; #10

A = 4'b1111; B = 4'b1110; Cin = 4'b0110; Mode = 4'b1000; #10 
A = 4'b0100; B = 4'b1110; Cin = 4'b1110; Mode = 4'b1000; #10 
A = 4'b1100; B = 4'b0101; Cin = 4'b1111; Mode = 4'b1000; #10

A = 4'b1001; B = 4'b1101; Cin = 4'b0110; Mode = 4'b1001; #10 
A = 4'b0101; B = 4'b1010; Cin = 4'b1110; Mode = 4'b1001; #10 
A = 4'b0110; B = 4'b1110; Cin = 4'b1111; Mode = 4'b1001; #10 

A = 4'b1110; B = 4'b1011; Cin = 4'b0110; Mode = 4'b1010; #10 
A = 4'b1111; B = 4'b1011; Cin = 4'b1010; Mode = 4'b1010; #10 
A = 4'b1010; B = 4'b0100; Cin = 4'b0101; Mode = 4'b1010; #10 

A = 4'b1010; B = 4'b0101; Cin = 4'b0001; Mode = 4'b1011; #10
A = 4'b1111; B = 4'b1110; Cin = 4'b0110; Mode = 4'b1011; #10 
A = 4'b0100; B = 4'b1110; Cin = 4'b1110; Mode = 4'b1011; #10 

A = 4'b1100; B = 4'b0101; Cin = 4'b1111; Mode = 4'b1100; #10 
A = 4'b1001; B = 4'b1101; Cin = 4'b1011; Mode = 4'b1100; #10 
A = 4'b0101; B = 4'b1010; Cin = 4'b0111; Mode = 4'b1100; #10 

A = 4'b0110; B = 4'b1110; Cin = 4'b1001; Mode = 4'b1101; #10 
A = 4'b1110; B = 4'b1011; Cin = 4'b0110; Mode = 4'b1101; #10 
A = 4'b1111; B = 4'b1011; Cin = 4'b1010; Mode = 4'b1101; #10 

A = 4'b1010; B = 4'b0100; Cin = 4'b0101; Mode = 4'b1110; #10 
A = 4'b1010; B = 4'b0101; Cin = 4'b0001; Mode = 4'b1110; #10
A = 4'b1110; B = 4'b1011; Cin = 4'b0110; Mode = 4'b1110; #10 

A = 4'b1111; B = 4'b1011; Cin = 4'b1010; Mode = 4'b1111; #10 
A = 4'b1010; B = 4'b0100; Cin = 4'b0101; Mode = 4'b1111; #10 
A = 4'b1010; B = 4'b0101; Cin = 4'b0001; Mode = 4'b1111; #10



		$finish;

	end

endmodule