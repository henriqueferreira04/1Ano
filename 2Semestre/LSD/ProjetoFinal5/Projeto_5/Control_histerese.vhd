library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Control_histerese is
    port(ref : in std_logic_vector(8 downto 0);
          amb : in std_logic_vector(8 downto 0);
          clk : in std_logic;
          led : out std_logic;
          radiatorOn_Off : out std_logic
          );

end Control_histerese;

architecture Behavioral of Control_histerese is

	constant histerese : std_logic_vector(2 downto 0) := "101";
	signal max : std_logic_vector(8 downto 0) := std_logic_vector(unsigned(ref) + unsigned(histerese));
	signal min : std_logic_vector(8 downto 0) := std_logic_vector(unsigned(ref) - unsigned(histerese));

	signal s_radiatorOn_Off : std_logic := '0';
	signal s_led : std_logic := '0';
	


begin
    process(clk, ref, amb)

    begin
		  
        if (rising_edge(clk)) then
			
		  
				if (amb >= max) then
					
					s_radiatorOn_Off <= '0';
					s_led <= '0';
					
				elsif (amb <= min) then
					s_radiatorOn_Off <= '1';
					s_led <= '1';
				
				else 
					s_radiatorOn_Off <= s_radiatorOn_Off;
					s_led <= s_led;
					
				end if;
		  end if;
						 
    end process;
	 
		led <= s_led;
		radiatorOn_Off <= s_radiatorOn_Off;
end Behavioral;