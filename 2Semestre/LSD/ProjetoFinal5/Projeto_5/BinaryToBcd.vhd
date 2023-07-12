library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BinaryToBcd is
	port(
		dataIn : in std_logic_vector(5 downto 0);
		dataOut0 : out std_logic_vector(3 downto 0);
		dataOut1 : out std_logic_vector(3 downto 0)
	);
end BinaryToBcd;


architecture Behavioral of BinaryToBcd is
	signal s_dataIn : unsigned(5 downto 0);
	

begin
	s_dataIn <= unsigned(dataIn);
	dataOut0 <= std_logic_vector(s_dataIn rem 10)(3 downto 0);
	dataOut1 <= std_logic_vector(s_dataIn / 10)(3 downto 0);
	
end Behavioral;
