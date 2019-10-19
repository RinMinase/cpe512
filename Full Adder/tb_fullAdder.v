module tb_fullAdder;
	reg X, Y, Z;
	wire S, C;
	
	fullAdder UUT(X, Y, Z, S, C);
	
	initial
		begin
			$dumpfile("tb_fullAdder.vpd");
			$dumpvars;
			X=0; Y=0; Z=0;
			#10
			X=0; Y=0; Z=1;
			#10
			X=0; Y=1; Z=0;
			#10
			X=0; Y=1; Z=1;
			#10
			X=1; Y=0; Z=0;
			#10
			X=1; Y=0; Z=1;
			#10
			X=1; Y=1; Z=0;
			#10
			X=1; Y=1; Z=1;
			#10
			$finish;
	end
endmodule