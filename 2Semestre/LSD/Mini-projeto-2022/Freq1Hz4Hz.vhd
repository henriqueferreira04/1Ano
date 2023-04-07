library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Freq1Hz4Hz is
	 
	port(clkIn : in std_logic;
		  clkTo4Hz : in std_logic;
		  clkOut : out std_logic);
		  
end Freq1Hz4Hz;

architecture Behavioral of Freq1Hz4Hz is

	signal counter : integer range 0 to 49999999 := 0;
	signal UpDown : std_logic;
	
begin	
	process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			counter <= counter + 1;
			
			if (clkTo4Hz = '0') then
				if (counter = 49999999) then
					counter <= 0;
					UpDown <= not UpDown;
					
				end if;
			
			elsif (clkTo4Hz = '1') then
				if (counter = 12500000) then
					counter <= 0;
					UpDown <= not UpDown;
					
				end if;
			end if;
		end if;
	end process;
	
	clkOut <= UpDown;
	
end Behavioral;