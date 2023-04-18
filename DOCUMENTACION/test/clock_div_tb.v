`timescale 1ns / 1ps

module clock_div_tb;

	 reg in;
	 wire out;			 

clock_div diviii(
    .in(in),
	 .out(out)
);

initial begin in = 1'b0; repeat(10000) #1 in= ~in;end

endmodule 