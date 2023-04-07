library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter4Bit is
    port (reset : in std_logic;
            updown : in std_logic;
            clock : in std_logic;
            count : out std_logic_vector(3 downto 0));

end counter4Bit;

architecture behavioral of counter4Bit is
    signal snum : unsigned(3 downto 0);
begin
    process(clock)
    begin
        if (rising_edge(clock)) then
            if (reset = '1') then
                snum <= (others => '0');
            else
                if (updown = '0') then
                    snum <= snum + 1;
                else
                    snum <= snum - 1;
                end if;
            end if;
        end if;
    end process;
    count <= std_logic_vector(snum);
end behavioral;