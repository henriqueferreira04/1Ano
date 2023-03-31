library IEEE;
use IEEE.std_logic_1164.all;

entity ShiftRegister_Demo is
    generic (
        size : natural := 8
    );
    Port ( 
        clk : in STD_LOGIC;
        switch1 : in STD_LOGIC;
        switch2 : in STD_LOGIC;
        dataOut : out STD_LOGIC_VECTOR (size-1 downto 0);
        led : out STD_LOGIC_VECTOR (size-1 downto 0)
    );
end ShiftRegister_Demo;

architecture Behavioral of ShiftRegister_Demo is
    constant divFactor : integer := 25000000; -- Para gerar 1Hz a partir de um relógio de 50MHz
    signal clkDiv : std_logic := '0';
    signal sin : std_logic := '0';
begin
    -- Gerar relógio de 1Hz a partir do relógio da FPGA
    clkDiv <= not clkDiv when rising_edge(clk) else clkDiv;
    process(clkDiv)
    begin
        if rising_edge(clkDiv) then
            -- Atualizar entrada serial com o estado dos interruptores
            sin <= switch1 & switch2 & sin(size-3 downto 0);
            -- Ligar saídas do shift register às saídas do módulo
            dataOut <= sin;
            led <= sin;
        end if;
    end process;

    shift_reg_inst : entity work.ShiftRegisterN generic map (size => size)
        port map (
            clock => clkDiv,
            sin => sin,
            dataOut => open -- Não usada, já que estamos usando a saída do processo
        );
end Behavioral;
