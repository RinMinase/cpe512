module counter3 (Clk, nE, cntby2, nReset, out);
	input Clk, nE, cntby2, nReset;
	output reg [2:0] out;
	
	always @ (posedge Clk or posedge nReset) begin
		if (nReset) // ACTIVE LOW nReset
			if (cntby2) // IF ACTIVE HIGH cntby2
				out = out + 2'b10;
			else
				out = out + 1'b1;
		else if(nE)//ACTIVE LOW nEnable
			
			out = out + 1'b1;
		else
			out = 3'b000;
	end
endmodule