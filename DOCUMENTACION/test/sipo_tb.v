`timescale 1ns / 1ps
module sipo_tb;



			reg clk_in;
			reg reset;
			reg [31:0] dat;
			wire clk_sel;
			wire out_sel;
			wire [4:0]out1;
			wire [4:0]out2;
			wire [4:0]out3;
			wire [4:0]out4;
			wire [4:0]out5;
			wire finished;
			
SIPO_TEST test(
		.clk(clk_in),
		.rst(reset),
		.DATA(dat),
		.clk_sel(clk_sel),
		.out_sel(out_sel),
		.out1(out1),
		.out2(out2),
		.out3(out3),
		.out4(out4),
		.out5(out5),
		.finished(finished)
	);
						



			
initial begin clk_in = 1'b0; repeat(10000) #1 clk_in= ~clk_in;end
initial begin 
				reset = 1 ;
			#5 reset = 0 ;
			end
initial begin dat = 32'b00100001100000001000001000011000 ;end

endmodule