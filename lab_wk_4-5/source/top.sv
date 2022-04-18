// -------------------------------------------------
// -> TOP level File
// Isaac Timko
// ECEN 3763: FPGA Design
// Lab Weeks 4 and 5
// VGA Video Controller for 720p
// Created: 2/8/22
// -------------------------------------------------

module top (
    //////////// CLOCK //////////
	input logic CLOCK_50,
	//////////// KEY //////////
	input logic [3:0] KEY,
	//////////// VGA //////////
	output logic       VGA_BLANK_N,
	output logic [7:0] VGA_B,
	output logic       VGA_CLK,
	output logic [7:0] VGA_G,
	output logic       VGA_HS,
	output logic [7:0] VGA_R,
	output logic       VGA_SYNC_N,
	output logic       VGA_VS
);
    
// import the parameters from the .svh file
`define _720p_resolution
`include "params.svh"

// set VGA blank and sync values 
assign VGA_BLANK_N = 'b1;
assign VGA_SYNC_N = 'b0;

// Set up the reset Function
logic reset_n, pll_locked;

reset u0 (
	.clock(VGA_CLK),
	.ext_reset_n(KEY[0]),
	.pll_locked,
	.reset_n
);

// Enable the required clock

clock u1 (
	.refclk(CLOCK_50),
	.rst(1'b0),
	.outclk_0(VGA_CLK),
	.locked(pll_locked)
);

// Enable the Video Timer
logic [31:0] V_pos, H_pos;
logic valid_video;

timer u2 (
	.clk(VGA_CLK),
    .V_pos,
    .H_pos,
    .valid_video
);

// Enable the pixel generator
pixelgen u3 (
	.valid_video,
	.H_pos,
	.V_pos,
	.VGA_HS,
	.VGA_VS,
	.VGA_R,
	.VGA_G,
	.VGA_B
);

endmodule

