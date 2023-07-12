library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Clock24h_Tb is
end Clock24h_Tb;

architecture Stimulus of Clock24h_Tb is


    signal clk_tb : std_logic := '0';
    signal enable_tb : std_logic := '0';
    signal modeAcert_tb : std_logic_vector(1 downto 0) := "00";
    signal increment_tb, decrement_tb : std_logic := '0';
    signal min_tb : std_logic_vector(5 downto 0);
    signal hours_tb : std_logic_vector(5 downto 0);


    constant clk_period : time := 10 ns;
	 
begin

	uut: entity work.Clock24h
        port map (
            clk => clk_tb,
            enable => enable_tb,
            modeAcert => modeAcert_tb,
            increment => increment_tb,
            decrement => decrement_tb,
            min => min_tb,
            hours => hours_tb
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

			enable_tb <= '1';


			modeAcert_tb <= "00";
			wait for 50 ns;
			modeAcert_tb <= "01";
			increment_tb <= '1';
			increment_tb <= '0';
			wait for 20 ns;
			increment_tb <= '1';
			
			wait for 20 ns;
			modeAcert_tb <= "10";
			increment_tb <= '0';
			decrement_tb <= '1';
			wait for 20 ns;
			decrement_tb <= '0';
			
			wait for 20 ns;
						modeAcert_tb <= "00";
			wait for 200 ns;

		wait;
	
	end process;
           

end Stimulus;
