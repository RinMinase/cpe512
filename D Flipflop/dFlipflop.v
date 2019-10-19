module dFlipflop(clk, Reset, D, Q);
	input clk, Reset, D;
	output reg Q;
	
	always @ (posedge clk) begin
		if (Reset)
			Q <= 1'b0;
		else
			Q <= D;
	end
endmodule