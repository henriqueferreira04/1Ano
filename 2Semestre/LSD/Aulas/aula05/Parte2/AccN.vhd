library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AccN is

	generic(n : positive := 4);
	
	port(clk : in std_logic;
		  dataIn : in std_logic_vector((n-1) downto 0);
		  enable : in std_logic;
		  reset : in std_logic;
		  dataOut : out std_logic_vector((n-1) downto 0));
		  
end AccN;

architecture Shell of AccN is
	signal regDataOut, adderDataOut : std_logic_vector((n-1) downto 0);

begin 
	
		adder : entity work.AdderN(behavioral)
		generic map(n => n)
		port map(SumOut => adderDataOut,
					input0 => dataIn,
					input1 => regDataOut);
					
		
		reg : entity work.RegN(behavioral)
		generic map(n => n)
		port map(clk => clk,
					reset => reset,
					enable => enable,
					dataIn => adderDataOut,
					dataOut => regDataOut);
					
		dataOut <= regDataOut;
					
end Shell;