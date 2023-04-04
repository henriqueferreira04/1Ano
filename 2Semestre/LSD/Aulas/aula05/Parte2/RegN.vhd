library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity RegN is
	
	generic(n : positive := 4);
	
	port(clk : in std_logic;
		  dataIn : in std_logic_vector((n-1) downto 0);
		  enable : in std_logic;
		  reset : in std_logic;
		  dataOut : out std_logic_vector((n-1) downto 0));
		  
end RegN;

architecture behavioral of RegN is

begin
	process(clk)
	begin
	
		if (rising_edge(clk)) then
			if (reset = '1') then
				dataOut <= (others => '0');
				
			elsif (enable = '1') then
				
				dataOut <= dataIn;
				
			end if;
		end if;
	end process;

end behavioral;