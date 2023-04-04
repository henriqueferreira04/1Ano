library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_std.all;

entity AdderN is
	
	generic(n : integer := 4);
	
	port(input0 : in std_logic_vector((n-1) downto 0);
		  input1 : in std_logic_vector((n-1) downto 0);
		  SumOut : out std_logic_vector((n-1) downto 0));
		  
end AdderN;

architecture Behavioral of AdderN is

	signal s_input0, s_input1, s_SumOut : unsigned((n-1) downto 0);
begin 

	s_input0 <= unsigned(input0);
	s_input1 <= unsigned(input1);
	s_SumOut <= s_input0 + s_input1;
	
	SumOut <= std_logic_vector(s_SumOut);
	
end Behavioral;