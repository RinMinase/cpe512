module fourBitShifter(A, Mode, R);
	input [3:0] A;
	input [2:0] Mode;
	output [3:0] R;
	reg [3:0] R;
	
	always @ (*) begin
		case (Mode)
			3'b000: begin
				R[0] <= 0;
				R[1] <= A[0];
				R[2] <= A[1];
				R[3] <= A[2];
			end
			3'b001: begin
				R[0] <= 1;
				R[1] <= A[0];
				R[2] <= A[1];
				R[3] <= A[2];
			end
			3'b010: begin
				R[0] <= A[1];
				R[1] <= A[2];
				R[2] <= A[3];
				R[3] <= 0;
			end
			3'b011: begin
				R[0] <= A[1];
				R[1] <= A[2];
				R[2] <= A[3];
				R[3] <= 1;
			end
			3'b100: begin
				R[0] <= 0;
				R[1] <= A[0];
				R[2] <= A[1];
				R[3] <= A[2];
			end
			3'b101: begin
				R[0] <= A[1];
				R[1] <= A[2];
				R[2] <= A[3];
				R[3] <= A[3];
			end
			3'b110: begin
				R[0] <= A[3];
				R[1] <= A[0];
				R[2] <= A[1];
				R[3] <= A[2];
			end
			3'b111: begin
				R[0] <= A[1];
				R[1] <= A[2];
				R[2] <= A[3];
				R[3] <= A[0];
			end
		endcase
	end
endmodule