module tb_fourBitAluWithShifter;
	reg [3:0] A, B;
	reg [3:0] Mode;
	reg C;
	wire [3:0] R;
	wire overFlow;
	
	fourBitAluWithShifter UUT(A, B, C, Mode, R, overFlow);
	
	initial
		begin
			$dumpfile("tb_fourBitAluWithShifter.vpd");
			$dumpvars;
			
			//Mode0000
			A = 4'b0101; B = 4'b1010; C = 1; Mode = 4'b0000; #10
			A = 4'b1010; B = 4'b0101; C = 0; Mode = 4'b0000; #10
			A = 4'b1100; B = 4'b0011; C = 1; Mode = 4'b0000; #10
			
			
			//Mode0001
			A = 4'b0011; B = 4'b1100; C = 0; Mode = 4'b0001; #10
			A = 4'b1100; B = 4'b1100; C = 1; Mode = 4'b0001; #10
			A = 4'b0011; B = 4'b0101; C = 0; Mode = 4'b0001; #10
			
			
			//Mode0010
			A = 4'b1000; B = 4'b1000; C = 0; Mode = 4'b0010; #10
			A = 4'b1100; B = 4'b1010; C = 0; Mode = 4'b0010; #10
			A = 4'b1101; B = 4'b1110; C = 0; Mode = 4'b0010; #10
			
			//Mode0011
			A = 4'b0101; B = 4'b1010; C = 0; Mode = 4'b0011; #10
			A = 4'b1010; B = 4'b0101; C = 0; Mode = 4'b0011; #10
			A = 4'b1100; B = 4'b0011; C = 0; Mode = 4'b0011; #10
			
			
			//Mode0100
			A = 4'b0011; B = 4'b1100; C = 0; Mode = 4'b0100; #10
			A = 4'b1100; B = 4'b1100; C = 0; Mode = 4'b0100; #10
			A = 4'b0011; B = 4'b0101; C = 0; Mode = 4'b0100; #10
			
			
			//Mode0101
			A = 4'b1000; B = 4'b1000; C = 0; Mode = 4'b0101; #10
			A = 4'b1100; B = 4'b1010; C = 0; Mode = 4'b0101; #10
			A = 4'b1010; B = 4'b1011; C = 0; Mode = 4'b0101; #10
			
			
			//Mode0110
			A = 4'b0101; B = 4'b1010; C = 0; Mode = 4'b0110; #10
			A = 4'b1010; B = 4'b0101; C = 0; Mode = 4'b0110; #10
			A = 4'b1100; B = 4'b0011; C = 0; Mode = 4'b0110; #10
			
			
			//Mode0111
			A = 4'b0011; B = 4'b1100; C = 0; Mode = 4'b0111; #10
			A = 4'b1100; B = 4'b1100; C = 0; Mode = 4'b0111; #10
			A = 4'b0011; B = 4'b0101; C = 0; Mode = 4'b0111; #10
			
			//Mode1000
			A = 4'b0101; B = 4'b1010; C = 1; Mode = 4'b1000; #10
			A = 4'b1010; B = 4'b0101; C = 0; Mode = 4'b1000; #10
			A = 4'b1100; B = 4'b0011; C = 1; Mode = 4'b1000; #10
			
			
			//Mode1001
			A = 4'b0011; B = 4'b1100; C = 0; Mode = 4'b1001; #10
			A = 4'b1100; B = 4'b1100; C = 1; Mode = 4'b1001; #10
			A = 4'b0011; B = 4'b0101; C = 0; Mode = 4'b1001; #10
			
			
			//Mode1010
			A = 4'b1000; B = 4'b1000; C = 0; Mode = 4'b1010; #10
			A = 4'b1100; B = 4'b1010; C = 0; Mode = 4'b1010; #10
			A = 4'b1101; B = 4'b1110; C = 0; Mode = 4'b1010; #10
			
			//Mode1011
			A = 4'b0101; B = 4'b1010; C = 0; Mode = 4'b1011; #10
			A = 4'b1010; B = 4'b0101; C = 0; Mode = 4'b1011; #10
			A = 4'b1100; B = 4'b0011; C = 0; Mode = 4'b1011; #10
			
			
			//Mode1100
			A = 4'b0011; B = 4'b1100; C = 0; Mode = 4'b1100; #10
			A = 4'b1100; B = 4'b1100; C = 0; Mode = 4'b1100; #10
			A = 4'b0011; B = 4'b0101; C = 0; Mode = 4'b1100; #10
			
			
			//Mode1101
			A = 4'b1000; B = 4'b1000; C = 0; Mode = 4'b1101; #10
			A = 4'b1100; B = 4'b1010; C = 0; Mode = 4'b1101; #10
			A = 4'b1101; B = 4'b1110; C = 0; Mode = 4'b1101; #10
			
			
			//Mode1110
			A = 4'b0101; B = 4'b1010; C = 0; Mode = 4'b1110; #10
			A = 4'b1010; B = 4'b0101; C = 0; Mode = 4'b1110; #10
			A = 4'b1100; B = 4'b0011; C = 0; Mode = 4'b1110; #10
			
			
			//Mode1111
			A = 4'b0011; B = 4'b1100; C = 0; Mode = 4'b1111; #10
			A = 4'b1100; B = 4'b1100; C = 0; Mode = 4'b1111; #10
			A = 4'b0011; B = 4'b0101; C = 0; Mode = 4'b1111; #10
			
		$finish;
	end
	
endmodule