library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PulseGeneratorN_Tb is
end PulseGeneratorN_Tb;

architecture Stimulus of PulseGeneratorN_Tb is
    component PulseGeneratorN is
        port (
            clkIn     : in std_logic;
            modeOut1  : out std_logic;
            modeOut2  : out std_logic;
            modeOut3  : out std_logic;
            modeOut4  : out std_logic
        );
    end component;

    signal clk_tb       : std_logic := '0';
    signal modeOut1_tb  : std_logic;
    signal modeOut2_tb  : std_logic;
    signal modeOut3_tb  : std_logic;
    signal modeOut4_tb  : std_logic;

    constant clock_period : time := 20 ns;  

begin
    DUT: PulseGeneratorN
    port map (
        clkIn     => clk_tb,
        modeOut1  => modeOut1_tb,
        modeOut2  => modeOut2_tb,
        modeOut3  => modeOut3_tb,
        modeOut4  => modeOut4_tb
    );

    clk_process: process
    begin
        while now < 1000 ns loop 
            clk_tb <= '0';
            wait for clock_period / 2;
            clk_tb <= '1';
            wait for clock_period / 2;
        end loop;
        wait;
    end process;

    monitor_process: process
    begin
        while now < 2000 ns loop  
            report "modeOut1 = " & std_logic'image(modeOut1_tb);
            report "modeOut2 = " & std_logic'image(modeOut2_tb);
            report "modeOut3 = " & std_logic'image(modeOut3_tb);
            report "modeOut4 = " & std_logic'image(modeOut4_tb);
            wait for 10 ns; 
        end loop;
        wait;
    end process;

end Stimulus;

