library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FlipFlopD_Demo is
   port(SW   : std_logic_vector(2 downto 0);
        KEY  : std_logic;
        LEDR : out std_logic);
		  
end FlipFlopD_Demo;

architecture Shell of FlipFlopD_Demo is
begin
   ff_d : work.FlipFlopD
               port map(clk => KEY,
								d => SW(0),
								set => SW(1),
								reset => SW(2),
								q     => LEDR);

	
end Shell;
