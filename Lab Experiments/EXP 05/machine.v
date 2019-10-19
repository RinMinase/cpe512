`timescale 1ns/1ps
module machine(Clk, nReset, Start, M, L, dirty, wet, T1done, T2done, Mout, Lout, wash, rinse, dry, T1start, T2start);


	input Clk, nReset, Start, M, L, dirty, wet, T1done, T2done;
	output reg Mout, Lout, wash, rinse, dry, T1start, T2start;


	reg[2:0] cstate, nstate;

	parameter A = 4'b0000; 	//determine load size or Standby	
	parameter B = 4'b0001; 	//med load		
	parameter C = 4'b0010; 	//large load
	parameter D	= 4'b0011; 		
	parameter E = 4'b0100; 		
	parameter F = 4'b0101; 		
	parameter G = 4'b0110; 		
	parameter H = 4'b0111; 			
	parameter I = 4'b1000; 		
	parameter J = 4'b1001; 		
	parameter K	= 4'b1010; 		


	always @ (negedge Clk or negedge nReset) 
	begin
		if(!nReset)
			cstate <= A;		
		else
			cstate <= nstate;
	end

	always @ (*)
	begin

		case(cstate)

			A:		case({Start,M,L})
						3'b110:		begin	nstate <= B; 	{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1000000; end
						3'b101:		begin	nstate <= B;	{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0100000; end
						default:	begin	nstate <= A;	{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0000000; end

					endcase

			B:	begin
					if(dirty)			
						begin
						nstate <= C;
						if(M)
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1010011;
						else
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0110011;

						
						end

					else
						begin 
						nstate <= B;
						if(M)
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1000000;
						else
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0100000;

						
						end
				end

			C:	begin
						if(T2done == 1 && wet ==0)
						begin
						nstate<=D;
							if(M)
								{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1001001;
							else
								{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0101001;
										
						end	

					else	
						begin
						nstate <= C;
						if(M)
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1000000;
						else
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0100000;

						end
				end

			D:	begin
					if(T1done == 1 && T2done == 1)

						begin
							nstate<=E;
							if(M)
								{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1000101;
							else
								{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0100101;
					end

					else if(dirty == 1 && T2done == 1)

						begin
							nstate<=C;
							if(M)
								{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1010001;
							else
								{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0110001;		
					end

					else if(dirty == 0 && T2done == 1)

						begin
							nstate<=E;
							if(M)
								{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1000101;
							else
								{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0100101;
						end

					else

						begin
							nstate<=D;
							if(M)
								{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1000000;
							else
								{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0100000;

						end
				end

			E:	begin
					if(wet ==1 && T2done == 1)
					begin
						nstate<=A;
						if(M)
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1000100;
						else
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0100100;
					end

					else if(wet == 0 && T2done == 1)
					begin
						nstate<=A;
						if(M)
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1000001;
						else
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0100001;
					end

					else
					begin
						nstate<=E;
						if(M)
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b1000000;
						else
							{Mout, Lout, wash, rinse, dry, T1start, T2start} <= 7'b0100000;			
					end
				end
					
		endcase	
	end
endmodule	