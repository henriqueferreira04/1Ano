library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM_16_8 is
    port (
        address : in std_logic_vector(3 downto 0);
        data_out : out std_logic_vector(7 downto 0)
    );
end entity ROM_16_8;

architecture behavioral of ROM_16_8 is
    type rom_array is array (0 to 15) of std_logic_vector(7 downto 0);
	 
    constant rom_content : rom_array := (
        "00000000", -- Endereço 0
        "00000001", -- Endereço 1
        "00000010", -- Endereço 2
        "00000011", -- Endereço 3
        "00000100", -- Endereço 4
        "00000101", -- Endereço 5
        "00000110", -- Endereço 6
        "00000111", -- Endereço 7
        "00001000", -- Endereço 8
        "00001001", -- Endereço 9
        "00001010", -- Endereço 10
        "00001011", -- Endereço 11
        "00001100", -- Endereço 12
        "00001101", -- Endereço 13
        "00001110", -- Endereço 14
        "00001111"  -- Endereço 15
    );
begin
    process(address)
    begin
        data_out <= rom_content(to_integer(unsigned(address)));
    end process;
end architecture behavioral;
