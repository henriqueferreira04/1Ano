library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM is
    port (
        address : in std_logic_vector(5 downto 0);
        dataOut : out std_logic_vector(1 downto 0)
    );
end entity ROM;

architecture behavioral of ROM is
    type rom_array is array (0 to 23) of std_logic_vector(1 downto 0);
	 
    constant rom_content : rom_array := (
        "00", --temp sol
        "00", 
        "00", 
        "00",
        "00",
        "01", --temp Lua
        "01",
        "10", --temp Gelo
        "10",
        "10",
        "10",
        "10",
        "10",
        "10",
        "10",
        "10",
        "10",
        "10",
        "01",
        "01",
        "00",
        "00",
        "00",
        "00"
    );
begin
    process(address)
    begin
        dataOut <= rom_content(to_integer(unsigned(address)));
    end process;
end behavioral;
