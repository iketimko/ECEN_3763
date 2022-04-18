// -------------------------------------------------
// -> Test Bench
// Isaac Timko
// ECEN 3763: FPGA Design
// Lab Week 7
// VGA Video Controller for 720p
// Created: 2/25/22
// -------------------------------------------------
`timescale 1ns/1ps

module tb ();

    logic CLOCK_50;
	logic [3:0] KEY = 4'b1110;
	logic       VGA_BLANK_N;
	logic [7:0] VGA_B;
	logic       VGA_CLK;
	logic [7:0] VGA_G;
	logic       VGA_HS;
	logic [7:0] VGA_R;
	logic       VGA_SYNC_N;
	logic       VGA_VS;

    top u0(.*);

	always # 10 CLOCK_50 = ~CLOCK_50;
    
    initial begin
		CLOCK_50 = 0;
        KEY = 4'b1110;
        #100 KEY = 4'b1111;
        #17_000_000;
		$stop;
    end

endmodule