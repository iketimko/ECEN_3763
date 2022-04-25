/////////////////////////////////
// AD CONTROLLER LAB TESTBENCH
//////////////////////////////////
// ECEN 3763 Lab 12 
// Isaac Timko
// Created: 4/20/22
/////////////////////////////////

`timescale 1ns/1ps

module tb ();

	logic CLOCK_50;
	logic [3:0] KEY;
	logic [9:0] SW;
    logic ADC_DOUT = 1;

	IT_LAB_12 DUT (.CLOCK_50, .KEY, .SW, .ADC_DOUT);

	always # 10 CLOCK_50 = ~CLOCK_50;


	initial begin
		//$monitor("%6d: LEDR=%b", $time, LEDR);

		CLOCK_50 = 1'b1;
		KEY = 4'b1110;
		SW = 10'b0000000001;
		#50 KEY = 4'b1111; 
		#10000;
		$stop;
	end

endmodule: tb