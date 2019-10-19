module accumulator(A,Clk,nReset,CBF,Y);
	input [4:0] A;
	input Clk,nReset;
	output reg CBF;
	output reg [3:0] Y;

	always @ (negedge Clk or negedge nReset)
	begin
	if(!nReset)
		begin
		CBF <= 0;
		Y <= 0;
		end
	else
		begin
		CBF= A[4];
		Y <= {A[3],A[2],A[1],A[0]};
		end
	end

endmodule