/////////////////////////////////
// COUNTER MODULE
//////////////////////////////////
// ECEN 3763 Lab 1 
// Isaac Timko
// Created: 1/14/22
// Modified: 1/19/22
/////////////////////////////////

module setup(

	//////////// CLOCK //////////
	input logic		          		CLOCK_50,

	//////////// KEY //////////
	input logic		     [3:0]		KEY,

	//////////// SW //////////
	input logic		     [9:0]		SW,

	//////////// LED //////////
	output logic	     [9:0]		LEDR
);

	logic [31:0] COUNTER_VAL;
	logic DIRECTION;

	assign LEDR = COUNTER_VAL[31:22];

	always_ff @(posedge CLOCK_50) begin

		// If reset is pressed
		if (~KEY[0]) begin
			COUNTER_VAL <= 'b0;
		end

		// Set the counter to the switch value
		else if (~KEY[1]) begin
			COUNTER_VAL[31:22] <= SW;
		end

		// Change the counter direction
		else if (~KEY[2]) begin
			COUNTER_VAL <= COUNTER_VAL - 'b1;
		end

		// Otherwise, count as usual
		else begin
			// if counting up
			COUNTER_VAL <= COUNTER_VAL + 'b1;
		end

	end

endmodule: setup
