LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Bin2Bcd IS
	PORT (
		Inport : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		bInout0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		bInout1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		bInout2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END Bin2Bcd;

ARCHITECTURE Behavioral OF Bin2Bcd IS
	SIGNAL rmSignal : unsigned(7 DOWNTO 0);
BEGIN
	rmsignal <= unsigned(rInport);
	bInout2 <= STD_LOGIC_VECTOR(rmSignal/100)(3 DOWNTO 0);
	bInout1 <= STD_LOGIC_VECTOR((rmSignal REM 100)/10)(3 DOWNTO 0);
	bInout0 <= STD_LOGIC_VECTOR((rmSignal REM 100) REM 10)(3 DOWNTO 0);
END Behavioral;