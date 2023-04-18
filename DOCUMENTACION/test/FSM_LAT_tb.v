`timescale 1ns / 1ps

module FSM_LAT_tb;

	 reg clk_in;
	 reg reset;
	 reg [4:0]in;
	 reg REG_STATE;
	 wire [7:0]out;			 

FSM_LAT TEST(
    .clk_in(clk_in),
	 .reset(reset),
	 .in(in),
	 .REG_STATE(REG_STATE),
	 .out(out)
);

initial begin clk_in = 1'b0; repeat(100) #5 clk_in= ~clk_in;end
initial 
	begin
		reset=1'b1;in=5'b00000;REG_STATE=1'b0;
	#5	reset=1'b1;in=5'b00000;REG_STATE=1'b1;
	end
endmodule 