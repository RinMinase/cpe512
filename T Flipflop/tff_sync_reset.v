module tFlipflop (T, clk, Q);

input T, clk; 

output reg Q;

always @ (posedge clk) begin
// if (~reset) begin
  // q <= 1'b0;
// end else
	if (T==1'b1) begin
		Q <= ~T;
	end else begin
		Q <= T;
	end

	// Q <= ~T;

end

endmodule
