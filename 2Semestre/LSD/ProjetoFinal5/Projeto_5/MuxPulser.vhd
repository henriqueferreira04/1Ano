library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MuxPulser is
    port(
        SW : in std_logic_vector(1 downto 0);
        pulseIn1, pulseIn2, pulseIn3, pulseIn4 : in std_logic;
        pulseOut : out std_logic
    );
end MuxPulser;

architecture Behavioral of MuxPulser is

begin
	process(SW, pulseIn1, pulseIn2, pulseIn3, pulseIn4)
	
	begin
    if (SW = "00") then
        pulseOut <= pulseIn1;
		  
    elsif (SW = "01") then
        pulseOut <= pulseIn2;
		  
    elsif (SW = "10") then
        pulseOut <= pulseIn3;
		  
    elsif (SW = "11") then
        pulseOut <= pulseIn4;
		  
	 else 
		  pulseOut <= '0';
		  
    end if;
	end process;

end Behavioral;