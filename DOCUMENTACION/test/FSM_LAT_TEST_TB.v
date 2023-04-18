`timescale 1ns / 1ps

	 module FSM_LAT_TEST_TB;
					 reg clk;
					 reg reset;
					 reg [4:0]in;
					 wire [7:0]out;			 

					 
	 FSM_LAT_TEST TEST(
					 .clk_in(clk),
					 .reset(reset),
					 .in(in),
					 .out(out)				 
					 );


initial begin clk = 1'b0; repeat(5000) #5 clk = ~clk;end

initial 
	begin
			reset=1; in = 5'b00000; 
	#50	reset=0; in = 5'b00000; 
	#4000	reset=0; in = 5'b00000;  
	#50  	reset=0; in = 5'b00001; 
	#50  	reset=0; in = 5'b01000; 
	#50  	reset=0; in = 5'b10000;	
	#50  	reset=0; in = 5'b10000;
	
	#10  	reset=0; in = 5'b00011; 
	#10  	reset=0; in = 5'b01010; 
	#10  	reset=0; in = 5'b10110;	
	#10  	reset=0; in = 5'b10110;
		
	#50  	reset=0; in = 5'b00111; 
	#50  	reset=0; in = 5'b01110; 
	#50  	reset=0; in = 5'b10110;	
	#50  	reset=0; in = 5'b10110;
	end

endmodule 