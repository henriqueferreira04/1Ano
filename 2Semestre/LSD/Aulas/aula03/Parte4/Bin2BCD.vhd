library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; 

entity Bin2BCD is
  Port (
	 enable : in std_logic;
    bin_in : in std_logic_vector(3 downto 0);
    dec_out : out integer range 0 to 15);
end Bin2BCD;

architecture Behavioral of Bin2BCD is
begin

  process (enable, bin_in)
    variable temp_dec : integer range 0 to 15;
  begin
  
	 if enable = '1' then
		 case bin_in is
			when "0000" => temp_dec := 0;
			when "0001" => temp_dec := 1;
			when "0010" => temp_dec := 2;
			when "0011" => temp_dec := 3;
			when "0100" => temp_dec := 4;
			when "0101" => temp_dec := 5;
			when "0110" => temp_dec := 6;
			when "0111" => temp_dec := 7;
			when "1000" => temp_dec := 8;
			when "1001" => temp_dec := 9;
			when "1010" => temp_dec := 10;
			when "1011" => temp_dec := 11;
			when "1100" => temp_dec := 12;
			when "1101" => temp_dec := 13;
			when "1110" => temp_dec := 14;
			when "1111" => temp_dec := 15;
			when others => temp_dec := 0;
		 end case;
	else
		temp_dec := 0;
	end if;
    dec_out <= temp_dec;
  end process;

end Behavioral;
