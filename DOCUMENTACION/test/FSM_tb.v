`timescale 1ns / 1ps

module FSM_tb;

	 reg clk_in;
	 reg rst;
	 reg[4:0]in;
	 reg ok;
	 reg[4:0]jump1;
	 reg[4:0]jump2;
	 reg[4:0]jump3;
	 reg[4:0]jump4;
	 reg[4:0]jump5;
	 wire[4:0] out;
	 wire[2:0] out_state;

FSM TEST(
			.clk(clk_in),
			.reset(rst),
			.in(in),
			.ok(ok),
			.jump1(jump1),
			.jump2(jump2),
			.jump3(jump3),
			.jump4(jump4),
			.jump5(jump5),
			.out(out),
			.out_state(out_state)
					 
);

initial begin clk_in = 1'b0; repeat(1000) #5 clk_in= ~clk_in;end
initial 
	begin
			rst=1; in = 5'b00000;  ok=0;  jump1=5'b00000;  jump2=5'b00000;  jump3=5'b00000;  jump4=5'b00000;  jump5=5'b00000; 
	#50 	rst=0; in = 5'b00000;  ok=0;  jump1=5'b00000;  jump2=5'b00000;  jump3=5'b00000;  jump4=5'b00000;  jump5=5'b00000; 
	#100 	rst=0; in = 5'b00000;  ok=1;  jump1=5'b00001;  jump2=5'b10000;  jump3=5'b00010;  jump4=5'b00001;  jump5=5'b00001; 
	#500  rst=0; in = 5'b00001;  ok=1;  jump1=5'b00001;  jump2=5'b10000;  jump3=5'b00010;  jump4=5'b00001;  jump5=5'b00001; 
	#50   rst=0; in = 5'b01000;  ok=1;  jump1=5'b00001;  jump2=5'b10000;  jump3=5'b00010;  jump4=5'b00001;  jump5=5'b00001; 
	#50   rst=0; in = 5'b10000;  ok=1;  jump1=5'b00001;  jump2=5'b10000;  jump3=5'b00010;  jump4=5'b00001;  jump5=5'b00001; 
	
	
	#50 	rst=0; in = 5'b00000;  ok=0;  jump1=5'b00000;  jump2=5'b00000;  jump3=5'b00000;  jump4=5'b00000;  jump5=5'b00000; 
	#100 	rst=0; in = 5'b00000;  ok=1;  jump1=5'b00001;  jump2=5'b10000;  jump3=5'b00010;  jump4=5'b00001;  jump5=5'b00001; 
	#500  rst=0; in = 5'b00011;  ok=1;  jump1=5'b00001;  jump2=5'b10000;  jump3=5'b00010;  jump4=5'b00001;  jump5=5'b00001; 
	#50   rst=0; in = 5'b01110;  ok=1;  jump1=5'b00001;  jump2=5'b10000;  jump3=5'b00010;  jump4=5'b00001;  jump5=5'b00001; 
	#50   rst=0; in = 5'b10010;  ok=1;  jump1=5'b00001;  jump2=5'b10000;  jump3=5'b00010;  jump4=5'b00001;  jump5=5'b00001;
	end
endmodule 