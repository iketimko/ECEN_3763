// -------------------------------------------------
// -> TOP level File
// Isaac Timko
// ECEN 3763: FPGA Design
// Lab Week 7
// VGA Video Controller for 720p/1080p
// Created: 2/25/22
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
	output logic       VGA_VS,
	//////////// DRAM //////////
	output logic [12:0]	DRAM_ADDR,
	output logic  [1:0]	DRAM_BA,
	output logic       	DRAM_CAS_N,
	output logic       	DRAM_CKE,
	output logic       	DRAM_CLK,
	output logic       	DRAM_CS_N,
	inout  logic [15:0]	DRAM_DQ,
	output logic       	DRAM_LDQM,
	output logic       	DRAM_RAS_N,
	output logic       	DRAM_UDQM,
	output logic       	DRAM_WE_N
);
    
// import the parameters from the .svh file
`include "params.svh"

// set VGA blank and sync values 
assign VGA_BLANK_N = 'b1;
assign VGA_SYNC_N = 'b0;

// Enable the required clock
logic reset_n, pll_locked;

clock u1 (
	.refclk(CLOCK_50),
	.rst(1'b0),
	.outclk_0(VGA_CLK),
	.locked(pll_locked)
);
// Set up the reset Function

reset u0 (
	.clock(VGA_CLK),
	.ext_reset_n(KEY[0]),
	.pll_locked,
	.reset_n
);


// Enable the Video Timer
logic [31:0] V_pos, H_pos = 'b0;
logic valid_video;

timer u2 (
	.clk(VGA_CLK),
	.reset_ctr(~reset_n),
    .V_pos,
    .H_pos,
    .valid_video
);

// Instantiate the Platform designer block
logic FIFOdataV;
logic [31:0] FIFOdata;

PD_LAB_9 u4 (
	.clk_clk                  (CLOCK_50),                             //        clk.clk
	.pio_export               (),       //        pio.export
	.pll_locked_export        (),                      // pll_locked.export
	.reset_reset_n            (reset_n),                     //      reset.reset_n
	.sdram_if_addr            (DRAM_ADDR),                                  //   sdram_if.addr
	.sdram_if_ba              (DRAM_BA),                                    //           .ba
	.sdram_if_cas_n           (DRAM_CAS_N),                                 //           .cas_n
	.sdram_if_cke             (DRAM_CKE),                                   //           .cke
	.sdram_if_cs_n            (DRAM_CS_N),                                  //           .cs_n
	.sdram_if_dq              (DRAM_DQ),                                    //           .dq
	.sdram_if_dqm             ({DRAM_UDQM,DRAM_LDQM}),                                   //           .dqm 
	.sdram_if_ras_n           (DRAM_RAS_N),                                 //           .ras_n
	.sdram_if_we_n            (DRAM_WE_N),                                  //           .we_n
	.fifo_0_out_valid         (FIFOdataV),                            // fifo_0_out.valid
	.fifo_0_out_data          (FIFOdata),                           //           .data
	.fifo_0_out_ready         (valid_video),                           //           .ready
	.dram_clk_clk      		  (DRAM_CLK),
    .fifo_0_reset_out_reset_n (reset_n),      //   dram_clk.clk
    .fifo_pixel_clk_clk 	  (VGA_CLK),
	.dma_irq_irq              ()               //          dma_irq.irq

);

// Enable the pixel generator
pixelgen u3 (
	.valid_video,
	.in_data(FIFOdata),
	.clk(CLOCK_50),
	.H_pos,
	.V_pos,
	.VGA_HS,
	.VGA_VS,
	.VGA_R,
	.VGA_G,
	.VGA_B
);

endmodule

