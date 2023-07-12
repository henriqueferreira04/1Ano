library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MuxTempRef is
	port(
		choice : in std_logic_vector(1 downto 0);
		tempSol, tempLua, tempGelo : in std_logic_vector(8 downto 0);
		tempRef : out std_logic_vector(8 downto 0)
		);
		
end MuxTempRef;

architecture Behavioral of MuxTempRef is

begin
	process(choice, tempSol, tempLua, tempGelo)
	
	begin
	
		if (choice = "00") then
			tempRef <= tempGelo;
		
		elsif (choice = "01") then
			tempRef <= tempLua;
		
		elsif (choice = "10") then
			tempRef <= tempSol;
		else
			tempRef <= (others => '0');
		
		end if;
	end process;
end Behavioral;