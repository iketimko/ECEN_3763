
module PD_LAB_9 (
	clk_clk,
	dram_clk_clk,
	fifo_0_out_valid,
	fifo_0_out_data,
	fifo_0_out_ready,
	fifo_0_reset_out_reset_n,
	fifo_pixel_clk_clk,
	pio_export,
	pll_locked_export,
	reset_reset_n,
	sdram_if_addr,
	sdram_if_ba,
	sdram_if_cas_n,
	sdram_if_cke,
	sdram_if_cs_n,
	sdram_if_dq,
	sdram_if_dqm,
	sdram_if_ras_n,
	sdram_if_we_n,
	dma_irq_irq);	

	input		clk_clk;
	output		dram_clk_clk;
	output		fifo_0_out_valid;
	output	[31:0]	fifo_0_out_data;
	input		fifo_0_out_ready;
	input		fifo_0_reset_out_reset_n;
	input		fifo_pixel_clk_clk;
	output		pio_export;
	output		pll_locked_export;
	input		reset_reset_n;
	output	[12:0]	sdram_if_addr;
	output	[1:0]	sdram_if_ba;
	output		sdram_if_cas_n;
	output		sdram_if_cke;
	output		sdram_if_cs_n;
	inout	[15:0]	sdram_if_dq;
	output	[1:0]	sdram_if_dqm;
	output		sdram_if_ras_n;
	output		sdram_if_we_n;
	output		dma_irq_irq;
endmodule
