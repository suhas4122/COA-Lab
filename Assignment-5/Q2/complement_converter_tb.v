`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Assignment No: 5
// Group No     : 8
// Problem No   : 2
// Group Members: Suhas Jain    (19CS30048)
//				  Monal Prasad  (19CS30030)
// Semester No  : 5 (Autumn 2021-22)
//////////////////////////////////////////////////////////////////////////////////
// Module to implement a testbench for complement convetor module  

module complement_converter_tb;
	// Initialise inputs and outputs 
	reg clk, inp, reset;
	wire out;

	// Instantiate the Unit Under Test (UUT)
	complement_converter FSM(.clk(clk), .inp(inp), .reset(reset), .out(out));

	initial begin
		// Initialize Inputs
		clk = 0;
		inp = 0;
		reset = 1;

		// Wait 10 ns for global reset to finish
		#10;
		reset = 0; // Make reset 0
        
        #10;
		// Display the results if any of the parameters change 
		$monitor("clk: %d, inp: %d, out: %d", clk, inp, out);
		// Starting inputs
		inp = 0;
		#10 inp = 0;
		#10 inp = 1;
		#10 inp = 0;
		#10 inp = 1;
		#10 inp = 1;
		#10 inp = 0;
		#7 $finish;
	end
   
   	// Always block to toggle the clock every 5 time units 
	always
		#5 clk = !clk;

endmodule