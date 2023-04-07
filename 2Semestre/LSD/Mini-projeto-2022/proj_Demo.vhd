library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity proj_Demo is

	port(CLOCK_50 : in std_logic;
		  SW: in std_logic_vector(2 downto 0);
		  HEX0, HEX1, HEX2 : out std_logic_vector(6 downto 0));
	
end proj_Demo;

architecture Structural of proj_Demo is
	signal s_clkOut : std_logic;
	signal s_count : std_logic_vector(3 downto 0);
	signal s_bInout0 : std_logic_vector(3 downto 0);
	signal s_bInout1 : std_logic_vector(3 downto 0);
	signal s_bInout2 :std_logic_vector(3 downto 0);
	
begin	

	

	
	freq : entity work.Freq1Hz4Hz(Behavioral)
		port map(clkIn => CLOCK_50,
					clkTo4Hz => SW(0),
					clkOut => s_clkOut);
					
	
	counter : entity work.counter4Bit(behavioral)
		port map(reset => SW(2),
					updown => SW(1),
					clock => s_clkOut,
					count => s_count);
					
					
	decimal : entity work.Bin2BCD(Behavioral)
		port map(Inport => s_count,
					bInout0 => s_bInout0,
					bInout1 => s_bInout1,
					bInout2 => s_bInout2);
					
					
	decoder0 : entity work.bin7segdecoder(behavioral)
		port map(bininput => s_bInout0,
					decout_n => HEX0);
					
	decoder1 : entity work.bin7segdecoder(behavioral)
		port map(bininput => s_bInout1,
					decout_n => HEX1);
					
	decoder2 : entity work.bin7segdecoder(behavioral)
		port map(bininput => s_bInout2,
					decout_n => HEX2);
						

end Structural;