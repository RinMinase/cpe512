module FourBitUpCounter(Clk, Clear, Q);
	input Clk, Clear;
	output reg [3:0] Q;
	
	always @ (posedge Clk or posedge Clear) begin
		if (Clear)
			Q = 4'b0000;
		else
			Q = Q + 1'b1;
	end
endmodule