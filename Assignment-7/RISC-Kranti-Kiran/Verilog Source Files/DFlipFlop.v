`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
/*
Assignment No - 7
Semester - Autumn 2018
Group - 3
Members:
  Suhas Jain - 19CS30048
  Monal Prasad - 19CS30030
*/
//////////////////////////////////////////////////////////////////////////////////

// A D flip Flop module to branch with respect to previous flag
module DFlipFlop( input wire clk, input wire rst, output reg out, input wire in);
	always @(posedge clk  or posedge rst)
	begin
		if(rst)
		 out <= 0; // reset condition
		else
			out <= in;
	end
endmodule
