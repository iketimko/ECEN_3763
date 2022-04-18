	component HW_8_PD is
		port (
			clk_clk           : in  std_logic                    := 'X';             -- clk
			pio_10_bit_export : in  std_logic_vector(9 downto 0) := (others => 'X'); -- export
			pio_1_bit_export  : out std_logic;                                       -- export
			pio_8_bit_export  : out std_logic_vector(7 downto 0);                    -- export
			reset_reset_n     : in  std_logic                    := 'X'              -- reset_n
		);
	end component HW_8_PD;

	u0 : component HW_8_PD
		port map (
			clk_clk           => CONNECTED_TO_clk_clk,           --        clk.clk
			pio_10_bit_export => CONNECTED_TO_pio_10_bit_export, -- pio_10_bit.export
			pio_1_bit_export  => CONNECTED_TO_pio_1_bit_export,  --  pio_1_bit.export
			pio_8_bit_export  => CONNECTED_TO_pio_8_bit_export,  --  pio_8_bit.export
			reset_reset_n     => CONNECTED_TO_reset_reset_n      --      reset.reset_n
		);

