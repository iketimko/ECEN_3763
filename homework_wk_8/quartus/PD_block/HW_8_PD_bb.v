
module HW_8_PD (
	clk_clk,
	pio_10_bit_export,
	pio_1_bit_export,
	pio_8_bit_export,
	reset_reset_n);	

	input		clk_clk;
	input	[9:0]	pio_10_bit_export;
	output		pio_1_bit_export;
	output	[7:0]	pio_8_bit_export;
	input		reset_reset_n;
endmodule
