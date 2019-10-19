module complexCounter(Clk, nReset, M, Count);
	input Clk, nReset, M;
	output [2:0] Count;
	
	reg [2:0] cState,nStateBin,nStateGr;
	always @ (negedge Clk, negedge nReset)
		if(!nReset)
			cState <= 3'b000;
		else if(!M)
			cState <= nStateBin;
			else
			cState <= nStateGr;
	
	reg [2:0] Count;
	always @ (cState)
		case(cState)
			3'b000: begin
				nStateBin <= 3'b001;
				nStateGr <= 3'b001;
				Count <= 3'b000;
			end
			3'b001: begin
				nStateBin <= 3'b010;
				nStateGr <= 3'b011;
				Count <= 3'b001;
			end
			3'b010: begin
				nStateBin <= 3'b011;
				nStateGr <= 3'b110;
				Count <= 3'b010;
			end
			3'b011: begin
				nStateBin <= 3'b100;
				nStateGr <= 3'b010;
				Count <= 3'b011;
			end
			3'b100: begin
				nStateBin <= 3'b101;
				nStateGr <= 3'b000;
				Count <= 3'b100;
			end
			3'b101: begin
				nStateBin <= 3'b110;
				nStateGr <= 3'b100;
				Count <= 3'b101;
			end
			3'b110: begin
				nStateBin <= 3'b111;
				nStateGr <= 3'b111;
				Count <= 3'b110;
			end
			3'b111: begin
				nStateBin <= 3'b000;
				nStateGr <= 3'b101;
				Count <= 3'b111;
			end
		endcase
		// Count <= cState;
endmodule