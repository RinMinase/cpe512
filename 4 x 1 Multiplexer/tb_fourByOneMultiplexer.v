module tb_fourByOneMultiplexer;
	reg [3:0] A, B, C, D;
	reg [1:0] S;
	wire [3:0] Y;
	
	fourByOneMultiplexer UUT(A, B, C, D, S, Y);
	
	initial
		begin
			$dumpfile("tb_fourByOneMultiplexer.vpd");
			$dumpvars;
			
			A = 4'b1010; B = 4'b1011; C = 4'b1100; D = 4'b1101; 
			S = 2'b00;
			#10
			
			A = 4'b1010; B = 4'b1011; C = 4'b1100; D = 4'b1101; 
			S = 2'b01;
			#10
			
			A = 4'b1010; B = 4'b1011; C = 4'b1100; D = 4'b1101; 
			S = 2'b10;
			#10
			
			A = 4'b1010; B = 4'b1011; C = 4'b1100; D = 4'b1101; 
			S = 2'b11;
			#10
			
			A = 4'b1010; B = 4'b1011; C = 4'b1100; D = 4'b1101; 
			S = 2'b01;
			#10
			
			A = 4'b1010; B = 4'b1011; C = 4'b1100; D = 4'b1101; 
			S = 2'b11;
			#10
			
			A = 4'b1010; B = 4'b1011; C = 4'b1100; D = 4'b1101; 
			S = 2'b00;
			#10
			
			A = 4'b1010; B = 4'b1011; C = 4'b1100; D = 4'b1101; 
			S = 2'b11;
			#10
			
			A = 4'b1010; B = 4'b1011; C = 4'b1100; D = 4'b1101; 
			S = 2'b01;
			#10
			
			A = 4'b1010; B = 4'b1011; C = 4'b1100; D = 4'b1101; 
			S = 2'b00;
			#10
			
			
		$finish;
	end
endmodule