library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AddSub4 is
		port(a,b : in std_logic_vector(3 downto 0);
			  cin : in std_logic;
			  sub : in std_logic;
			  cout : out std_logic;
			  s : out std_logic_vector(3 downto 0));
end AddSub4;

architecture Structural of AddSub4 is

	signal carryOut: std_logic_vector(3 downto 0);
	signal s_b: std_logic_vector(3 downto 0);
	
begin

	
							
end Structural;
	