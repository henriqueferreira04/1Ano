library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PulseGeneratorN is

    port(clkIn : in std_logic;
          modeOut1, modeOut2, modeOut3, modeOut4 : out std_logic);

end PulseGeneratorN;

architecture Behavioral of PulseGeneratorN is

    signal counter1, counter2, counter3, counter4 : integer range 0 to 49999999 := 0;
    signal upDown1, upDown2, upDown3, upDown4 : std_logic;
    signal times : integer range 0 to 59 := 0;



begin
    process(clkIn)
    begin
        if (rising_edge(clkIn)) then
            counter1 <= counter1 + 1;
            counter2 <= counter2 + 1;
            counter3 <= counter3 + 1;
            counter4 <= counter4 + 1;
--1 por minuto---
            if (counter1 = 49999999 and times = 59) then
                counter1 <= 0;
                times <= 0;
                upDown1 <= '1';
            else
                upDown1 <= '0';
            end if;
            if (counter1 = 49999999) then
                counter1 <= 0;
                times <= times + 1;
            end if;
-------------------------------------------------------1 por segundo
            if (counter2 = 49999999) then
                counter2 <= 0;
                upDown2 <= '1';
            else
                upDown2 <= '0';
            end if;
-------------------------------------------------------10 por segundo
            if (counter3 = 49999999/10) then
                counter3 <= 0;
                upDown3 <= '1';
            else
                upDown3 <= '0';
            end if;
----------------------------------------------------- 60 por segundo
            if (counter4 = 49999999/60) then
                counter4 <= 0;
                upDown4 <= '1';
            else
                upDown4 <= '0';
            end if;

        end if;
    end process;

    modeOut1 <= upDown1;
    modeOut2 <= upDown2;
    modeOut3 <= upDown3;
    modeOut4 <= upDown4;


end Behavioral;