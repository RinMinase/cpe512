module tb_fourBitShifter;
	reg [3:0] A;
	reg [2:0] Mode;
	wire [3:0] R;
	
	fourBitShifter UUT(A, Mode, R);
	
	initial
		begin
			$dumpfile("tb_fourBitShifter.vpd");
			$dumpvars;
			
			A = 4'b0101; Mode = 3'b010; #10
			
			A = 4'b1010; Mode = 3'b101; #10
			
			A = 4'b1100; Mode = 3'b011; #10
			
			A = 4'b0011; Mode = 3'b100; #10
			
			A = 4'b1100; Mode = 3'b100; #10
			
			A = 4'b0011; Mode = 3'b101; #10
			
			A = 4'b0110; Mode = 3'b001; #10
			
			A = 4'b0111; Mode = 3'b110; #10
			
			A = 4'b0010; Mode = 3'b111; #10
			
			A = 4'b1000; Mode = 3'b000; #10
			
			A = 4'b1100; Mode = 3'b010; #10
			
			A = 4'b1100; Mode = 3'b010; #10
			
		$finish;
	end
endmodule