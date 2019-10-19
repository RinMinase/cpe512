module lights(Clk,nReset,Start, lights);

	input Clk,nReset,Start;
	output reg [2:0] lights;

//lights[0] = red;
//lights[1] = yellow;
//lights[2] = green;

	reg [2:0] cstate, nstate;
	parameter A = 3'b000;
	parameter B = 3'b001;
	parameter C = 3'b011;
	parameter D = 3'b100;
	parameter E = 3'b101;
	parameter F = 3'b110;

	always @ (negedge Clk or negedge nReset)
		if(!nReset)
			cstate <= A;
		else
			cstate <= nstate;


	always @ (cstate or Start)
		case(cstate)
			A : nstate <= B;
			B : nstate <= C;
			C : nstate <= D;
			D : nstate <= E;
			E : nstate <= F;
			default : nstate <= A;
		endcase


	always @ (negedge Clk)
	begin
		case(cstate)
			A : lights <= 3'b100;
			B : lights <= 3'b010;
			C : lights <= 3'b001;
			D : lights <= 3'b001;
			E : lights <= 3'b001;
			default : lights <=100;

		endcase

	end

endmodule


