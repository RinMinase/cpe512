module FourBitUpCounter(Clk, Clear, Q);
	input Clk, Clear;
	output reg [2:0] Q;
	
	always @ (posedge Clk or posedge Clear) begin
		if (Clear)
			Q = 3'b000;
		else
			Q = Q + 2'b10;
	end
endmodule