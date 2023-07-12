library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ShiftRegister_Demo is
	generic(N : positive := 8;
			  d : positive := 50_000_000);
	port(CLOCK_50 : in std_logic;
		  SW : in std_logic;
		  LEDR : out std_logic_vector(3 downto 0));
		  
end ShiftRegister_Demo;

architecture Structural of ShiftRegister_Demo is
	signal s_clkout : std_logic;
begin
	
	clkdivider : entity work.ClkDividerN(Behavioral)
		generic map (divfactor => d)
		port map(clkin => clock_50,
					clkout => s_clkout);

	
	sreg : entity work.ShiftRegisterN(Behavioral)
		generic map (n => N)
		port map(sin => SW,
					clk  => s_clkout,
					dataOut => LEDR);
					
end Structural;
		  