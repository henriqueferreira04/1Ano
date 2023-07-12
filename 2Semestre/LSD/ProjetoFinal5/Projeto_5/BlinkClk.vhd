library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BlinkClk is 
    port(
        clk : in std_logic;
        modeIn : in std_logic_vector(1 downto 0);
        blinkOutmin : out std_logic;
        blinkOuthours : out std_logic
        );

end BlinkClk;

architecture Behavioral of BlinkClk is

    signal s_blinkOutmin : std_logic;
    signal s_blinkOuthours : std_logic;
    signal s_count : integer range 0 to 49999999 := 0;

begin
    process(clk, modeIn)

    begin

        if(rising_edge(clk)) then

            if (modeIn = "00") then
                blinkOutmin <= '1';
                blinkOuthours <= '1';

            elsif (modeIn = "01") then
                blinkOutmin <= '1';
                s_count <= s_count + 1;
                if (s_count = 18000000) then
                    blinkOuthours <= '1';
					 elsif (s_count = 49999999) then
						  blinkOuthours <= '0';
                    s_count <= 0;

                end if;
            elsif (modeIn = "10") then
                blinkOuthours <= '1';
                s_count <= s_count + 1;
                if (s_count = 18000000) then
                    blinkOutmin <= '1';
					 elsif (s_count = 49999999) then
						  blinkOutmin <= '0';
                    s_count <= 0;

                end if;

            end if;
        end if;
    end process;

end Behavioral;