library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MuxModeOut is
    port(
		  clkIn : in std_logic;
        tempMode1, tempMode2, tempMode3, tempModeNormal : in std_logic_vector(8 downto 0);
        mode : in std_logic_vector(1 downto 0);
        tempOut : out std_logic_vector(8 downto 0);
		  onOff : out std_logic
    );

end MuxModeOut;

architecture Behavioral of MuxModeOut is
	signal count : integer range 0 to 49000000 := 0;
	
	signal s_tempOut : std_logic_vector(8 downto 0);
	
	signal s_onOff : std_logic;
	

begin
    process(mode, tempMode1, tempMode2, tempMode3, tempModeNormal, count,clkIn)

    begin
		  if (rising_edge(clkIn)) then
			  if (mode = "00") then
					s_onOff <= '1';
					count <= 0;
					
			  else
					count <= count + 1;
					if (count = 18000000) then
						s_onOff <= '1';
						
					elsif (count = 49999999) then
						count <= 0;
						s_onOff <= '0';
					end if;
				
						
				end if;
					
				end if;
		  if (mode = "00") then
				s_tempOut <= tempModeNormal;
				
				
        elsif (mode = "01") then
            s_tempOut <= tempMode1;
				
        elsif (mode = "10") then
            s_tempOut <= tempMode2;

        elsif (mode = "11") then
            s_tempOut <= tempMode3;
			
		  else
				s_tempOut <= (others => '0');

        end if;
    end process;
	 
	 tempOut <= s_tempOut;
	 onOff <= s_onOff;

end Behavioral;