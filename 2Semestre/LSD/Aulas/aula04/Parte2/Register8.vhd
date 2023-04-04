library IEEE;
use IEEE.STD_logic_1164.all;

entity Register8 is
    port (
        clock : in std_logic;
        wrEn : in std_logic;
        dataIn : in std_logic_vector(7 downto 0);
        dataOut : out std_logic_vector(7 downto 0)
    );
end Register8;

architecture Behavioral of Register8 is
begin
    process(clock)
    begin
        if (rising_edge(clock)) then
            if (wrEn = '1') then 
                dataOut <= dataIn;
            end if;
        end if;
    end process;
end Behavioral;
