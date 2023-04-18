`timescale 1ns / 1ps

module PISO_div_tb;


			reg clk_in;
			reg reset;
			reg [31:0] dat;
			wire out;
			wire load;
			
PISO_div test(
			.clk(clk_in),
			.rst(reset),
			.DATA(dat),
			.shift_in(1'b0),
			.out(out)
			);

			
initial begin clk_in = 1'b0; repeat(10000) #1 clk_in= ~clk_in;end
initial begin 
				reset = 1 ;
			#5 reset = 0 ;
			end
initial begin dat = 32'b01111111111111111111111111111110 ;end

endmodule 