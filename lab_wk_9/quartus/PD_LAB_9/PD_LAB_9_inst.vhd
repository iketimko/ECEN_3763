	component PD_LAB_9 is
		port (
			clk_clk                  : in    std_logic                     := 'X';             -- clk
			dram_clk_clk             : out   std_logic;                                        -- clk
			fifo_0_out_valid         : out   std_logic;                                        -- valid
			fifo_0_out_data          : out   std_logic_vector(31 downto 0);                    -- data
			fifo_0_out_ready         : in    std_logic                     := 'X';             -- ready
			fifo_0_reset_out_reset_n : in    std_logic                     := 'X';             -- reset_n
			fifo_pixel_clk_clk       : in    std_logic                     := 'X';             -- clk
			pio_export               : out   std_logic;                                        -- export
			pll_locked_export        : out   std_logic;                                        -- export
			reset_reset_n            : in    std_logic                     := 'X';             -- reset_n
			sdram_if_addr            : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_if_ba              : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_if_cas_n           : out   std_logic;                                        -- cas_n
			sdram_if_cke             : out   std_logic;                                        -- cke
			sdram_if_cs_n            : out   std_logic;                                        -- cs_n
			sdram_if_dq              : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_if_dqm             : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_if_ras_n           : out   std_logic;                                        -- ras_n
			sdram_if_we_n            : out   std_logic;                                        -- we_n
			dma_irq_irq              : out   std_logic                                         -- irq
		);
	end component PD_LAB_9;

	u0 : component PD_LAB_9
		port map (
			clk_clk                  => CONNECTED_TO_clk_clk,                  --              clk.clk
			dram_clk_clk             => CONNECTED_TO_dram_clk_clk,             --         dram_clk.clk
			fifo_0_out_valid         => CONNECTED_TO_fifo_0_out_valid,         --       fifo_0_out.valid
			fifo_0_out_data          => CONNECTED_TO_fifo_0_out_data,          --                 .data
			fifo_0_out_ready         => CONNECTED_TO_fifo_0_out_ready,         --                 .ready
			fifo_0_reset_out_reset_n => CONNECTED_TO_fifo_0_reset_out_reset_n, -- fifo_0_reset_out.reset_n
			fifo_pixel_clk_clk       => CONNECTED_TO_fifo_pixel_clk_clk,       --   fifo_pixel_clk.clk
			pio_export               => CONNECTED_TO_pio_export,               --              pio.export
			pll_locked_export        => CONNECTED_TO_pll_locked_export,        --       pll_locked.export
			reset_reset_n            => CONNECTED_TO_reset_reset_n,            --            reset.reset_n
			sdram_if_addr            => CONNECTED_TO_sdram_if_addr,            --         sdram_if.addr
			sdram_if_ba              => CONNECTED_TO_sdram_if_ba,              --                 .ba
			sdram_if_cas_n           => CONNECTED_TO_sdram_if_cas_n,           --                 .cas_n
			sdram_if_cke             => CONNECTED_TO_sdram_if_cke,             --                 .cke
			sdram_if_cs_n            => CONNECTED_TO_sdram_if_cs_n,            --                 .cs_n
			sdram_if_dq              => CONNECTED_TO_sdram_if_dq,              --                 .dq
			sdram_if_dqm             => CONNECTED_TO_sdram_if_dqm,             --                 .dqm
			sdram_if_ras_n           => CONNECTED_TO_sdram_if_ras_n,           --                 .ras_n
			sdram_if_we_n            => CONNECTED_TO_sdram_if_we_n,            --                 .we_n
			dma_irq_irq              => CONNECTED_TO_dma_irq_irq               --          dma_irq.irq
		);

