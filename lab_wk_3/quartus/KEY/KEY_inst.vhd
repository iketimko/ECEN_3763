	component KEY is
		port (
			probe  : in  std_logic_vector(3 downto 0) := (others => 'X'); -- probe
			source : out std_logic_vector(3 downto 0)                     -- source
		);
	end component KEY;

	u0 : component KEY
		port map (
			probe  => CONNECTED_TO_probe,  --  probes.probe
			source => CONNECTED_TO_source  -- sources.source
		);

