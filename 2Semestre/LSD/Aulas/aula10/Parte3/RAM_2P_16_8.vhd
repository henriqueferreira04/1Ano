library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM_2P_16_8 is
    port (
        clk : in std_logic;
        writeEnable : in std_logic;
        writeAddress : in std_logic_vector(3 downto 0);
        writeData : in std_logic_vector(7 downto 0);
        readAddress : in std_logic_vector(3 downto 0);
        readData : out std_logic_vector(7 downto 0)
    );
end entity RAM_2P_16_8;

architecture behavioral of RAM_2P_16_8 is
    type ram_array is array (0 to 15) of std_logic_vector(7 downto 0);
    signal ram_content : ram_array;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if writeEnable = '1' then
                ram_content(to_integer(unsigned(writeAddress))) <= writeData;
            end if;
        end if;
    end process;

    readData <= ram_content(to_integer(unsigned(readAddress)));
end architecture behavioral;
