`timescale 1ns / 1ps
module desition_tb;
	reg clk_in;
	reg rst;
	reg A;
	reg register;
	wire [19:0]out_timer;
	wire [19:0]out_reg;
	wire comp;
	
	
	
	
	desition TEST(
	.clk(clk_in),
	.rst(rst),
	.timer(A),
	.register(register),
	.out_timer(out_timer),
	.out_reg(out_reg),
	.comp(comp)
);

	
initial begin clk_in = 1'b0; repeat(10000) #1 clk_in= ~clk_in;end	

initial 
	begin
			rst=1'b1 ; A=5'b0;   register=1'b0;
	#10	rst=1'b0 ; A=5'b1;   register=1'b0;
	
	#100	rst=1'b0 ; A=5'b0;   register=1'b0;
	#10	rst=1'b0 ; A=5'b0;   register=1'b1;
	
	#2		rst=1'b0 ; A=5'b1;   register=1'b0;
	#200	rst=1'b0 ; A=5'b0;   register=1'b0;
	#10	rst=1'b0 ; A=5'b0;   register=1'b1;
	
	#2		rst=1'b0 ; A=5'b1;   register=1'b0;
	
	#100	rst=1'b0 ; A=5'b0;   register=1'b0;
	#10	rst=1'b0 ; A=5'b0;   register=1'b1;
	#2		rst=1'b0 ; A=5'b0;   register=1'b1;
	end
endmodule 