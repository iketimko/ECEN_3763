
module PLATFORM_DES_LAB_8 (
	clk_clk,
	reset_reset_n,
	clk_143_ps_clk,
	pll_locked_export,
	sdram_if_addr,
	sdram_if_ba,
	sdram_if_cas_n,
	sdram_if_cke,
	sdram_if_cs_n,
	sdram_if_dq,
	sdram_if_dqm,
	sdram_if_ras_n,
	sdram_if_we_n,
	pio_export);	

	input		clk_clk;
	input		reset_reset_n;
	output		clk_143_ps_clk;
	output		pll_locked_export;
	output	[12:0]	sdram_if_addr;
	output	[1:0]	sdram_if_ba;
	output		sdram_if_cas_n;
	output		sdram_if_cke;
	output		sdram_if_cs_n;
	inout	[15:0]	sdram_if_dq;
	output	[1:0]	sdram_if_dqm;
	output		sdram_if_ras_n;
	output		sdram_if_we_n;
	output	[9:0]	pio_export;
endmodule
