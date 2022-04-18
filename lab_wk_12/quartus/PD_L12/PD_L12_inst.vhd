	component PD_L12 is
		port (
			clk_clk             : in  std_logic := 'X'; -- clk
			reset_reset_n       : in  std_logic := 'X'; -- reset_n
			pll_0_locked_export : out std_logic;        -- export
			pll_0_outclk0_clk   : out std_logic         -- clk
		);
	end component PD_L12;

	u0 : component PD_L12
		port map (
			clk_clk             => CONNECTED_TO_clk_clk,             --           clk.clk
			reset_reset_n       => CONNECTED_TO_reset_reset_n,       --         reset.reset_n
			pll_0_locked_export => CONNECTED_TO_pll_0_locked_export, --  pll_0_locked.export
			pll_0_outclk0_clk   => CONNECTED_TO_pll_0_outclk0_clk    -- pll_0_outclk0.clk
		);

