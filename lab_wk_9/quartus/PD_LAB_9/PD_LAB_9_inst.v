	PD_LAB_9 u0 (
		.clk_clk                  (<connected-to-clk_clk>),                  //              clk.clk
		.dram_clk_clk             (<connected-to-dram_clk_clk>),             //         dram_clk.clk
		.fifo_0_out_valid         (<connected-to-fifo_0_out_valid>),         //       fifo_0_out.valid
		.fifo_0_out_data          (<connected-to-fifo_0_out_data>),          //                 .data
		.fifo_0_out_ready         (<connected-to-fifo_0_out_ready>),         //                 .ready
		.fifo_0_reset_out_reset_n (<connected-to-fifo_0_reset_out_reset_n>), // fifo_0_reset_out.reset_n
		.fifo_pixel_clk_clk       (<connected-to-fifo_pixel_clk_clk>),       //   fifo_pixel_clk.clk
		.pio_export               (<connected-to-pio_export>),               //              pio.export
		.pll_locked_export        (<connected-to-pll_locked_export>),        //       pll_locked.export
		.reset_reset_n            (<connected-to-reset_reset_n>),            //            reset.reset_n
		.sdram_if_addr            (<connected-to-sdram_if_addr>),            //         sdram_if.addr
		.sdram_if_ba              (<connected-to-sdram_if_ba>),              //                 .ba
		.sdram_if_cas_n           (<connected-to-sdram_if_cas_n>),           //                 .cas_n
		.sdram_if_cke             (<connected-to-sdram_if_cke>),             //                 .cke
		.sdram_if_cs_n            (<connected-to-sdram_if_cs_n>),            //                 .cs_n
		.sdram_if_dq              (<connected-to-sdram_if_dq>),              //                 .dq
		.sdram_if_dqm             (<connected-to-sdram_if_dqm>),             //                 .dqm
		.sdram_if_ras_n           (<connected-to-sdram_if_ras_n>),           //                 .ras_n
		.sdram_if_we_n            (<connected-to-sdram_if_we_n>),            //                 .we_n
		.dma_irq_irq              (<connected-to-dma_irq_irq>)               //          dma_irq.irq
	);

