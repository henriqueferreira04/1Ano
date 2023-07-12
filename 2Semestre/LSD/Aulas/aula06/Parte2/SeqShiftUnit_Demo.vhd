library IEEE;
use IEEE.std_logic_1164.all;

entity SeqShiftUnit_Demo is
	port(CLOCK_50 : in std_logic;
		  SW : in std_logic_vector(13 downto 0);
		  LEDR : out std_logic_vector(7 downto 0));
		 
end SeqShiftUnit_Demo;

architecture Structural of SeqShiftUnit_Demo is

begin
	
	shift : entity work.SeqShiftUnit(Behavioral)
		port map(clk => CLOCK_50,
					dataIn => SW(7 downto 0),
					siLeft => SW(8),
					siRight => SW(9),
					loadEn => SW(10),
					rotate => SW(11),
					dirLeft => SW(12),
					shArith => SW(13));

end Structural;
