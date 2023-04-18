`timescale 1ns / 1ps

module PISO_tb;


			reg clk_in;
			reg reset;
			reg load;
			reg [31:0] dat;
			wire out;
			
PISO test(
			.clk(clk_in),
			.rst(reset),
			.DATA(dat),
			.load(load),
			.shift_in(1'b1),
			.out(out)
			);

			
initial begin clk_in = 1'b0; repeat(10000) #1 clk_in= ~clk_in;end
initial begin reset = 0 ;end
initial begin dat = 32'b10110111011110111110111111011111 ;end

initial 
	begin
				load=1'b1 ; 
	#128		load=1'b0 ; 
	#128		load=1'b1 ; 
	#128		load=1'b0 ; 
	#128		load=1'b1 ; 
	#128		load=1'b0 ; 
	#128		load=1'b1 ; 
	#128		load=1'b0 ; 
	#128		load=1'b1 ; 
	#128		load=1'b0 ; 
	#128		load=1'b1 ; 
	#128		load=1'b0 ; 
	#128		load=1'b1 ; 
	#128		load=1'b0 ; 
	#128		load=1'b1 ; 
	#128		load=1'b0 ; 
	end
endmodule

