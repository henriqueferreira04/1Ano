library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2 is
    port(
        decodeIn : in std_logic_vector(3 downto 0);
        encodedOut : out std_logic_vector(1 downto 0)
    );
end entity PEnc4_2;

architecture Behavioral of PEnc4_2 is

begin

    process(decodeIn)
    begin
        if decodeIn(3) = '1' then
            encodedOut <= "11";
        elsif decodeIn(2) = '1' then
            encodedOut <= "10";
        elsif decodeIn(1) = '1' then
            encodedOut <= "01";
        elsif decodeIn(0) = '1' then
            encodedOut <= "00";
        end if;
    end process;

end architecture Behavioral;