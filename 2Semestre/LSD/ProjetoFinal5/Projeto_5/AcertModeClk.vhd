library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AcertModeClk is
    port(clk : in std_logic;
        changeMode : in std_logic;
        mode : out std_logic_vector(1 downto 0)
        );

end AcertModeClk;

architecture Behavioral of AcertModeClk is
     type StateType is (Mode1, Mode2, Mode3);
    signal state : StateType := Mode1;
     signal prevChangeMode : std_logic := '0';

begin
    process(clk)
    begin
    if (rising_edge(clk)) then
        if (changeMode = '1' and prevChangeMode = '0') then
            case state is
              when Mode1 =>
                    mode <= "00";
                    state <= Mode2;
              when Mode2 =>
                    mode <= "01";
                    state <= Mode3;
              when Mode3 =>
                    mode <= "10";
						  state <= Mode1;
              when others =>
                    null;
            end case;
         end if;
         prevChangeMode <= changeMode;
    end if;
     end process;
end Behavioral;