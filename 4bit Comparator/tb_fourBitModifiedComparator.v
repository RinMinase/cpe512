module tb_fourBitModifiedComparator;
	reg [3:0] A, B;
	wire [3:0] R;
	
	fourBitModifiedComparator UUT(A, B, R);
	
	initial
		begin
			$dumpfile("tb_fourBitModifiedComparator.vpd");
			$dumpvars;
			
			A = 4'b0101; B = 4'b1010; #10
			
			A = 4'b1010; B = 4'b0101; #10
			
			A = 4'b1100; B = 4'b0011; #10
			
			A = 4'b0011; B = 4'b1100; #10
			
			A = 4'b1100; B = 4'b1100; #10
			
			A = 4'b0011; B = 4'b0101; #10
			
			A = 4'b0110; B = 4'b1001; #10
			
			A = 4'b0111; B = 4'b1110; #10
			
			A = 4'b0010; B = 4'b0100; #10
			
			A = 4'b1000; B = 4'b1000; #10
			
			A = 4'b1100; B = 4'b1010; #10
			
			A = 4'b1100; B = 4'b1010; #10
			
		$finish;
	end
endmodule