library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TempChange is
	port(clk : in std_logic;
		modeIn : in std_logic_vector(1 downto 0);
		increment, decrement : in std_logic;
		
		newTempComfort, newTempEconomy, newTempFrezze : out std_logic_vector(8 downto 0));

end TempChange;

architecture Behavioral of TempChange is
	signal tempComfort : integer := 200;
	signal tempEconomy : integer := 160;
	signal tempFrezze : integer := 40;
	signal count : integer range 0 to 12500000 := 0;

begin
				
	process(clk)
	begin
		
		if (rising_edge(clk)) then
			if (modeIn = "01") then
				if(increment = '1') then
					tempComfort <= tempComfort + 1;

		
				elsif(decrement = '1') then
						tempComfort <= tempComfort - 1;

					
				end if;
			
			elsif (modeIn = "10") then
				if(increment = '1') then
						tempEconomy <= tempEconomy + 1;

			
				elsif(decrement = '1') then
						tempEconomy <= tempEconomy - 1;

					
				end if;
			elsif (modeIn = "11") then
				if(increment = '1') then
						tempFrezze <= tempFrezze + 1;

				elsif(decrement = '1') then
						tempFrezze <= tempFrezze - 1;
 
				end if;

			end if;
		end if;
	end process;
	newTempComfort <= std_logic_vector(to_unsigned(integer(tempComfort), 9));
	newTempEconomy <= std_logic_vector(to_unsigned(integer(tempEconomy), 9));
	newTempFrezze <= std_logic_vector(to_unsigned(integer(tempFrezze), 9));

end Behavioral;