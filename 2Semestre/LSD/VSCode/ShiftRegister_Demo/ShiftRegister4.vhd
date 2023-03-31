library IEEE;
use IEEE.std_logic_1164.all;

entity ShiftRegister4 is
    Port ( clock : in STD_LOGIC;
           sin : in STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR (3 downto 0));
end ShiftRegister4;

architecture Behavioral of ShiftRegister4 is
    signal shift_reg : std_logic_vector(3 downto 0) := (others => '0');
begin
    process(clock)
    begin
        if rising_edge(clock) then
            -- Deslocar para a esquerda, com a entrada serial na posição mais significativa
            shift_reg <= sin & shift_reg(3 downto 1);
            -- Saída serial é o bit menos significativo do registrador
            dataOut <= shift_reg(0);
        end if;
    end process;
end Behavioral;
