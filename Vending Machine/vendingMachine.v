module vendingMachine(dispense, c1, clk, p1, p5, reset);
	input p1, p5, reset, clk;
	output dispense, c1;
	reg dispense=0, c1=0;
	reg [2:0] state = 3'b000;

	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			dispense <= 0;
			c1 <= 0;
			state <= 3'b000;
		end
		else
		begin
			case(state)
				3'b000:
				begin
					if(!p1&&!p5)
					begin
						state <= 3'b000;
						dispense <=0;
						c1 <= 0;
					end
					else if(p1)
					begin
						state <=3'b010;
						dispense <=0;
						c1 <=0;
					end
					else if(p5)
					begin
						state <=3'b001;
						dispense <=1;
						c1 <=1;
					end
				end
				3'b001:
				begin
					state <= 3'b000;
					dispense <=0;
					c1 <=1;
				end
				3'b010:
				begin
					if(!p1&&!p5)
					begin
						state <= 3'b010;
						dispense <=0;
						c1 <= 0;
					end
					else if(p1)
					begin
						state <=3'b100;
						dispense <=0;
						c1 <=0;
					end
					else if(p5)
					begin
						state <=3'b011;
						dispense <=1;
						c1 <=1;
					end
				end
				3'b011:
				begin
					state <= 3'b001;
					dispense <=0;
					c1 <=1;
				end
				3'b100:
				begin
					if(!p1&&!p5)
					begin
						state <= 3'b100;
						dispense <=0;
						c1 <= 0;
					end
					else if(p1)
					begin
						state <=3'b000;
						dispense <=1;
						c1 <=0;
					end
					else if(p5)
					begin
						state <=3'b101;
						dispense <=1;
						c1 <=1;
					end
				end
				3'b101:
				begin
					state <= 3'b011;
					dispense <=0;
					c1 <=1;
				end
			endcase
		end
	end
endmodule