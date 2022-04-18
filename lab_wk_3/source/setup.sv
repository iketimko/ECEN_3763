/////////////////////////////////
// COUNTER MODULE
//////////////////////////////////
// ECEN 3763 Lab 3 
// Isaac Timko
// Created: 2/1/22
// Modified: 2/1/22
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

	RESET u0 (.probe(RESET_probe), .source(RESET_source));
	KEY u1 (.probe(KEY_probe), .source(KEY_source));
	SWITCH u2 (.probe(SWITCH_probe), .source(SWITCH_source));
	reset u3 (.clock(CLOCK_50), .ext_reset_n(KEY[0] && KEY_source[0]), .pll_locked, .reset_n);

	logic pll_locked, RESET_probe, RESET_source, reset_n;
	logic [31:0] COUNTER_VAL;
	logic [3:0] KEY_probe, KEY_source;
	logic [9:0] SWITCH_probe, SWITCH_source;

	assign pll_locked = 1'b1;
	assign LEDR = COUNTER_VAL[31:22];

	always_ff @(posedge CLOCK_50) begin

		// If reset is pressed
		if (~reset_n) begin
			COUNTER_VAL <= 'b0;
		end

		// Set the counter to the switch value
		else if ( ~(KEY[1] && KEY_source[1]) ) begin
			if (SWITCH_source == 10'b0) begin
				COUNTER_VAL[31:22] <= SW;
			end else begin	
				COUNTER_VAL[31:22] <= SWITCH_source;
			end
		end

		// Change the counter direction
		else if ( ~(KEY[2] && KEY_source[2]) ) begin
			COUNTER_VAL <= COUNTER_VAL - 'b1;
		end

		// Otherwise, count as usual
		else begin
			// if counting up
			COUNTER_VAL <= COUNTER_VAL + 'b1;
		end

	end

endmodule: setup
