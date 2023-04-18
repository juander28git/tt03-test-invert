`timescale 1ns / 1ps
module counter_tb;
  reg clk,reset,en;
  wire [19:0] count;
  // instance counter design
  counter ct_1(
				  .clk(clk),
				  .reset(reset),
				  .en(en),
				  .count(count)
				  );
  //clock generator
  initial begin clk = 1'b0; repeat(4000) #3 clk= ~clk;end
  //insert all the input signal
  initial begin
				reset=1'b1;en=1'b1;
		#7 	reset=1'b0;en=1'b1;
		#500 	reset=1'b0;en=1'b0;
		#100 	reset=1'b1;en=1'b0;
		#100 	reset=1'b0;en=1'b0;
		#500 	reset=1'b0;en=1'b1;
		
		end
  //monitor all the input and output ports at times when any inputs changes its state
  initial begin $monitor("time=%0d,reset=%b,en=%b,count=%d",
                               $time,reset,en,count);end
endmodule