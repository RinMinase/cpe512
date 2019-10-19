module tb_fourBitALU;
	reg [3:0] A, B;
	reg [2:0] Mode;
	reg C;
	wire [3:0] R;
	wire overflow;
	
	fourBitALU UUT(A, B, C, Mode, R, overflow);
	
	initial begin
		$dumpfile("fourBitALU.vpd");
		$dumpvars;
		
		//Mode000
		A = 4'b0101; B = 4'b1010; C = 1; Mode = 3'b000; #10
		A = 4'b1010; B = 4'b0101; C = 0; Mode = 3'b000; #10
		A = 4'b1100; B = 4'b0011; C = 1; Mode = 3'b000; #10
		
		//Mode001
		A = 4'b0011; B = 4'b1100; C = 0; Mode = 3'b001; #10
		A = 4'b1100; B = 4'b1100; C = 1; Mode = 3'b001; #10
		A = 4'b0011; B = 4'b0101; C = 0; Mode = 3'b001; #10
		
		//Mode010
		A = 4'b1000; B = 4'b1000; C = 0; Mode = 3'b010; #10
		A = 4'b1100; B = 4'b1010; C = 0; Mode = 3'b010; #10
		A = 4'b1100; B = 4'b1010; C = 0; Mode = 3'b010; #10
		
		//Mode011
		A = 4'b0101; B = 4'b1010; C = 0; Mode = 3'b011; #10
		A = 4'b1010; B = 4'b0101; C = 0; Mode = 3'b011; #10
		A = 4'b1100; B = 4'b0011; C = 0; Mode = 3'b011; #10
		
		//Mode100
		A = 4'b0011; B = 4'b1100; C = 0; Mode = 3'b100; #10
		A = 4'b1100; B = 4'b1100; C = 0; Mode = 3'b100; #10
		A = 4'b0011; B = 4'b0101; C = 0; Mode = 3'b100; #10
		
		//Mode101
		A = 4'b1000; B = 4'b1000; C = 0; Mode = 3'b101; #10
		A = 4'b1100; B = 4'b1010; C = 0; Mode = 3'b101; #10
		A = 4'b1100; B = 4'b1010; C = 0; Mode = 3'b101; #10
		
		//Mode110
		A = 4'b0101; B = 4'b1010; C = 0; Mode = 3'b110; #10
		A = 4'b1010; B = 4'b0101; C = 0; Mode = 3'b110; #10
		A = 4'b1100; B = 4'b0011; C = 0; Mode = 3'b110; #10
		
		//Mode111
		A = 4'b0011; B = 4'b1100; C = 0; Mode = 3'b111; #10
		A = 4'b1100; B = 4'b1100; C = 0; Mode = 3'b111; #10
		A = 4'b0011; B = 4'b0101; C = 0; Mode = 3'b111; #10
			
		$finish;
	end
	
endmodule