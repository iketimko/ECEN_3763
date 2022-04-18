/////////////////////////////////
// COUNTER MODULE TESTBENCH
//////////////////////////////////
// ECEN 3763 Lab 3
// Isaac Timko
// Created: 2/1/22
// Modified: 2/1/22
/////////////////////////////////

`timescale 1ns/1ps

module tb ();

	logic CLOCK_50;
	logic [3:0] KEY;
	logic [9:0] SW, LEDR;

	setup DUT (.CLOCK_50, .KEY, .SW, .LEDR);	

	always # 10 CLOCK_50 = ~CLOCK_50;


	initial begin
		//~$monitor("%6d: LEDR=%b", $time, LEDR);

		CLOCK_50 = 1'b1;
		KEY = 4'b1110;
		SW = 10'b0101010101;
		#50 KEY = 4'b1111; // Count up to 10
		#200 KEY = 4'b1011; // Count down to 5
		#200 KEY = 4'b1101; // load switch values
		#50 KEY = 4'b1111; // count up again
		#1000;
		$stop;
	end

endmodule: tb