`timescale 1ns / 1ps

module chaout_tb;
reg A;
reg [4:0] in;
wire [4:0] out;
chaout outexit(
				.in(in),
				.sel(A),
				.out(out)
);
initial 
	begin
			A=1'b1 ; in=5'b00000;
	#10	A=1'b0 ; in=5'b00000;
	
	#10	A=1'b1 ; in=5'b00001;
	#10	A=1'b0 ; in=5'b00001;
	
	#10	A=1'b1 ; in=5'b00010;
	#10	A=1'b0 ; in=5'b00010;
	
	#10	A=1'b1 ; in=5'b00100;
	#10	A=1'b0 ; in=5'b00100;
	
	#10	A=1'b1 ; in=5'b01000;
	#10	A=1'b0 ; in=5'b01000;
	
	#10	A=1'b1 ; in=5'b10000;
	#10	A=1'b0 ; in=5'b10000;
		#10	A=1'b1 ; in=5'b11001;
	#10	A=1'b0 ; in=5'b11001;
	#10	A=1'b0 ; in=5'b11001;
	
	$stop;
	$finish;
	end
endmodule 