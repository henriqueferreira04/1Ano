library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AmbientSimulator is
    port(
          enable : in std_logic;
			 speed : in std_logic;
          clk : in std_logic;
          tempAmb : out std_logic_vector(8 downto 0)
          );
end AmbientSimulator;

architecture Behavioral of AmbientSimulator is
    signal s_tempAmb : integer range 0 to 511 := 100;
    
    signal s_countOff : integer range 0 to 1 := 0;

begin
    process(clk, enable)

    begin
        if (rising_edge(clk)) then
				if(speed = '1') then
					if (enable = '1') then
						 
						  s_tempAmb <= s_tempAmb + 1;
							  
					else 
						 s_countOff <= s_countOff + 1;
						 if (s_countOff = 1) then
							  s_tempAmb <= s_tempAmb - 1;
							  s_countOff <= 0;

						 end if;

					end if;
				end if;
        end if;
    end process;

    tempAmb <= std_logic_vector(to_unsigned(s_tempAmb, 9));
end Behavioral;