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
    //////////// CLOCK //////////
    logic CLOCK_50;
	//////////// KEY //////////
	logic [3:0] KEY = 4'b1110;
	//////////// VGA //////////
	logic       VGA_BLANK_N;
	logic [7:0] VGA_B;
	logic       VGA_CLK;
	logic [7:0] VGA_G;
	logic       VGA_HS;
	logic [7:0] VGA_R;
	logic       VGA_SYNC_N;
	logic       VGA_VS;
	//////////// DRAM //////////
	logic [12:0]	DRAM_ADDR;
	logic  [1:0]	DRAM_BA;
	logic       	DRAM_CAS_N;
	logic       	DRAM_CKE;
	logic       	DRAM_CLK;
	logic       	DRAM_CS_N;
	logic [15:0]	DRAM_DQ;
	logic       	DRAM_LDQM;
	logic       	DRAM_RAS_N;
	logic       	DRAM_UDQM;
	logic       	DRAM_WE_N;

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