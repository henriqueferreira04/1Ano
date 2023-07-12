library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Clock24h is
    port(
        clk : in std_logic;
        enable : in std_logic;
		  modeAcert : in std_logic_vector(1 downto 0);
		  increment, decrement : std_logic;
        min : out std_logic_vector(5 downto 0);
        hours : out std_logic_vector(5 downto 0)
    );

end Clock24h;

architecture Behavioral of Clock24h is
    signal min_count : unsigned(5 downto 0) := (others => '0');
    signal hours_count : unsigned(5 downto 0) := (others => '0');
	 signal count : integer range 0 to 49999999 := 0;
	 signal hold : std_logic := '0';

begin
    process(clk)

    begin
        if (rising_edge(clk)) then
				if (modeAcert = "00") then
					if (enable = '1') then
						 
						 min_count <= min_count + 1;
						 if (min_count = 59) then
							  min_count <= (others => '0');
							  hours_count <= hours_count + 1;
							  if (hours_count = 23) then
									hours_count <= (others => '0');
							  end if;
						 end if;
					end if;
			   elsif (modeAcert = "01") then
				  if (increment = '1') then
					  hours_count <= hours_count + 1;
					  count <= count + 1;
					  
					  if (hours_count = 23) then
							hours_count <= (others => '0');
					  end if;
					
				  elsif (decrement = '1') then
					  hours_count <= hours_count - 1;
					  if (hours_count = 0) then
							hours_count <= "010111";
					  end if;
					
				  end if;
				
			   elsif (modeAcert = "10") then
				  if (increment = '1') then
					  min_count <= min_count + 1;
					  if (min_count = 59) then
							  min_count <= (others => '0');
					  end if;
					
				  elsif (decrement = '1') then
					  min_count <= min_count - 1;
					  if (min_count = 0) then
							min_count <= "111011";
					  end if;
					
				  end if;
			 
            end if;
        end if;

    end process;
	 
	 min <= std_logic_vector(min_count);
    hours <= std_logic_vector(hours_count);

end Behavioral;