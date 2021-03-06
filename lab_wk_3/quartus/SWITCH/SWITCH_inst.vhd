	component SWITCH is
		port (
			source : out std_logic_vector(9 downto 0);                    -- source
			probe  : in  std_logic_vector(9 downto 0) := (others => 'X')  -- probe
		);
	end component SWITCH;

	u0 : component SWITCH
		port map (
			source => CONNECTED_TO_source, -- sources.source
			probe  => CONNECTED_TO_probe   --  probes.probe
		);

