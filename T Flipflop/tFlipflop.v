module tFlipflop(clk, T, Q);
	input clk, T;
	output Q;
	reg Q = 0;
	
	always @ (posedge clk) begin
		if (T == 1)
			Q = ~T;
		else
			Q = T;
	end
endmodule