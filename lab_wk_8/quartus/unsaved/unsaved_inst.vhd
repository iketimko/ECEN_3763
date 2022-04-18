	component unsaved is
		port (
			clk_clk                  : in    std_logic                     := 'X';             -- clk
			reset_reset_n            : in    std_logic                     := 'X';             -- reset_n
			clk_143_ps_clk           : out   std_logic;                                        -- clk
			pll_locked_export        : out   std_logic;                                        -- export
			sdram_if_addr            : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_if_ba              : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_if_cas_n           : out   std_logic;                                        -- cas_n
			sdram_if_cke             : out   std_logic;                                        -- cke
			sdram_if_cs_n            : out   std_logic;                                        -- cs_n
			sdram_if_dq              : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_if_dqm             : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_if_ras_n           : out   std_logic;                                        -- ras_n
			sdram_if_we_n            : out   std_logic;                                        -- we_n
			pio_export               : out   std_logic_vector(9 downto 0);                     -- export
			master_0_clk_reset_reset : in    std_logic                     := 'X'              -- reset
		);
	end component unsaved;

	u0 : component unsaved
		port map (
			clk_clk                  => CONNECTED_TO_clk_clk,                  --                clk.clk
			reset_reset_n            => CONNECTED_TO_reset_reset_n,            --              reset.reset_n
			clk_143_ps_clk           => CONNECTED_TO_clk_143_ps_clk,           --         clk_143_ps.clk
			pll_locked_export        => CONNECTED_TO_pll_locked_export,        --         pll_locked.export
			sdram_if_addr            => CONNECTED_TO_sdram_if_addr,            --           sdram_if.addr
			sdram_if_ba              => CONNECTED_TO_sdram_if_ba,              --                   .ba
			sdram_if_cas_n           => CONNECTED_TO_sdram_if_cas_n,           --                   .cas_n
			sdram_if_cke             => CONNECTED_TO_sdram_if_cke,             --                   .cke
			sdram_if_cs_n            => CONNECTED_TO_sdram_if_cs_n,            --                   .cs_n
			sdram_if_dq              => CONNECTED_TO_sdram_if_dq,              --                   .dq
			sdram_if_dqm             => CONNECTED_TO_sdram_if_dqm,             --                   .dqm
			sdram_if_ras_n           => CONNECTED_TO_sdram_if_ras_n,           --                   .ras_n
			sdram_if_we_n            => CONNECTED_TO_sdram_if_we_n,            --                   .we_n
			pio_export               => CONNECTED_TO_pio_export,               --                pio.export
			master_0_clk_reset_reset => CONNECTED_TO_master_0_clk_reset_reset  -- master_0_clk_reset.reset
		);

