library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AmbientSimulator_Tb is
end AmbientSimulator_Tb;

architecture Stimulus of AmbientSimulator_Tb is

    signal enable_tb  : std_logic := '0';
    signal speed_tb   : std_logic := '0';
    signal clk_tb     : std_logic := '0';
    signal tempAmb_tb : std_logic_vector(8 downto 0);

    constant clk_period : time := 20 ns;  

begin
    DUT: entity work.AmbientSimulator
    port map (
        enable  => enable_tb,
        speed   => speed_tb,
        clk     => clk_tb,
        tempAmb => tempAmb_tb
    );


    clk_process: process
    begin
        clk_tb <= '0';
        wait for clk_period / 2;
        clk_tb <= '1';
        wait for clk_period / 2;
    end process;

    
    stimulus_process: process
    begin
        wait for 20 ns;
        
        enable_tb <= '1';
		  speed_tb <= '1';
        wait for 100 ns;
        
        
		  enable_tb <= '1';
		 
		  wait for 100 ns;
        speed_tb <= '0';
		  enable_tb <= '1';
		  

        wait;
    end process;

    


end Stimulus;