library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TimerN is

	generic(n : integer := 6);
	
	port(start : in std_logic;
		  reset : in std_logic;
		  clk : in std_logic;
		  enable : in std_logic;
		  timerOut : out std_logic);
		  
end TimerN;

architecture behavioral of TimerN is

	signal s_count : unsigned((n-1) downto 0);

begin
	process(clk)
		begin

			if (rising_edge(clk)) then
				if (reset = '1') then
					s_count <= (others => '0');
					
				elsif (enable = '1') then
					if (start = '1') then
						s_count <= s_count((n-1) downto 1) & '1';
					
					elsif (s_count > 0) then
					
						if (s_count = n) then
							timerOut <= '0';
							s_count <= (others => '0');
						else
							s_count <= s_count + 1;
							timerOut <= '1';
					
						end if;
					end if;
				end if;
			end if;
	end process;

end behavioral;