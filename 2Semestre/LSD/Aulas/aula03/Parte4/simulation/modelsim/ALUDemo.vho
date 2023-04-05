-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "04/05/2023 12:27:16"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Bin2Bcd IS
    PORT (
	rInport : IN std_logic_vector(3 DOWNTO 0);
	mInport : IN std_logic_vector(3 DOWNTO 0);
	bInout0 : BUFFER std_logic_vector(3 DOWNTO 0);
	bInout1 : BUFFER std_logic_vector(3 DOWNTO 0);
	bInout2 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Bin2Bcd;

-- Design Ports Information
-- bInout0[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout0[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout0[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout0[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout1[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout1[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout1[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout1[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout2[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout2[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout2[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bInout2[3]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rInport[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mInport[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mInport[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mInport[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mInport[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rInport[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rInport[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rInport[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Bin2Bcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rInport : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mInport : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bInout0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bInout1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bInout2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \bInout0[0]~output_o\ : std_logic;
SIGNAL \bInout0[1]~output_o\ : std_logic;
SIGNAL \bInout0[2]~output_o\ : std_logic;
SIGNAL \bInout0[3]~output_o\ : std_logic;
SIGNAL \bInout1[0]~output_o\ : std_logic;
SIGNAL \bInout1[1]~output_o\ : std_logic;
SIGNAL \bInout1[2]~output_o\ : std_logic;
SIGNAL \bInout1[3]~output_o\ : std_logic;
SIGNAL \bInout2[0]~output_o\ : std_logic;
SIGNAL \bInout2[1]~output_o\ : std_logic;
SIGNAL \bInout2[2]~output_o\ : std_logic;
SIGNAL \bInout2[3]~output_o\ : std_logic;
SIGNAL \rInport[0]~input_o\ : std_logic;
SIGNAL \mInport[3]~input_o\ : std_logic;
SIGNAL \mInport[2]~input_o\ : std_logic;
SIGNAL \mInport[1]~input_o\ : std_logic;
SIGNAL \mInport[0]~input_o\ : std_logic;
SIGNAL \rInport[3]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ : std_logic;
SIGNAL \rInport[2]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~53_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ : std_logic;
SIGNAL \rInport[1]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rInport <= rInport;
ww_mInport <= mInport;
bInout0 <= ww_bInout0;
bInout1 <= ww_bInout1;
bInout2 <= ww_bInout2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~10_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N2
\bInout0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	devoe => ww_devoe,
	o => \bInout0[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\bInout0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	devoe => ww_devoe,
	o => \bInout0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\bInout0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	devoe => ww_devoe,
	o => \bInout0[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\bInout0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	devoe => ww_devoe,
	o => \bInout0[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\bInout1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \bInout1[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\bInout1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \bInout1[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\bInout1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \bInout1[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\bInout1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \bInout1[3]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\bInout2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devoe => ww_devoe,
	o => \bInout2[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\bInout2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~10_combout\,
	devoe => ww_devoe,
	o => \bInout2[1]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\bInout2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bInout2[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\bInout2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bInout2[3]~output_o\);

-- Location: IOIBUF_X67_Y73_N15
\rInport[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rInport(0),
	o => \rInport[0]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\mInport[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mInport(3),
	o => \mInport[3]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\mInport[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mInport(2),
	o => \mInport[2]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\mInport[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mInport(1),
	o => \mInport[1]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\mInport[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mInport(0),
	o => \mInport[0]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\rInport[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rInport(3),
	o => \rInport[3]~input_o\);

-- Location: LCCOMB_X66_Y70_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \rInport[3]~input_o\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\rInport[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rInport[3]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X66_Y70_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\mInport[0]~input_o\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\mInport[0]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\mInport[0]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mInport[0]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X66_Y70_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\mInport[1]~input_o\ & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\mInport[1]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\mInport[1]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mInport[1]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X66_Y70_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\mInport[2]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\mInport[2]~input_o\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\mInport[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mInport[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X66_Y70_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\mInport[3]~input_o\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\mInport[3]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\mInport[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mInport[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X66_Y70_N28
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X67_Y70_N26
\Mod0|auto_generated|divider|divider|StageOut[54]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\);

-- Location: LCCOMB_X67_Y70_N0
\Mod0|auto_generated|divider|divider|StageOut[54]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ = (\mInport[3]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mInport[3]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\);

-- Location: LCCOMB_X67_Y70_N20
\Mod0|auto_generated|divider|divider|StageOut[53]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\);

-- Location: LCCOMB_X67_Y70_N18
\Mod0|auto_generated|divider|divider|StageOut[53]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \mInport[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \mInport[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\);

-- Location: LCCOMB_X66_Y70_N8
\Mod0|auto_generated|divider|divider|StageOut[52]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \mInport[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \mInport[1]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\);

-- Location: LCCOMB_X66_Y70_N10
\Mod0|auto_generated|divider|divider|StageOut[52]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X66_Y70_N12
\Mod0|auto_generated|divider|divider|StageOut[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \mInport[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \mInport[0]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X66_Y70_N6
\Mod0|auto_generated|divider|divider|StageOut[51]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\);

-- Location: LCCOMB_X66_Y70_N2
\Mod0|auto_generated|divider|divider|StageOut[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\);

-- Location: LCCOMB_X66_Y70_N16
\Mod0|auto_generated|divider|divider|StageOut[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ = (\rInport[3]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rInport[3]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\);

-- Location: IOIBUF_X67_Y73_N8
\rInport[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rInport(2),
	o => \rInport[2]~input_o\);

-- Location: LCCOMB_X67_Y70_N30
\Mod0|auto_generated|divider|divider|StageOut[49]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \rInport[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \rInport[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\);

-- Location: LCCOMB_X67_Y70_N24
\Mod0|auto_generated|divider|divider|StageOut[49]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \rInport[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \rInport[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\);

-- Location: LCCOMB_X67_Y70_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X67_Y70_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X67_Y70_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X67_Y70_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X67_Y70_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X67_Y70_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X67_Y70_N16
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X67_Y69_N16
\Mod0|auto_generated|divider|divider|StageOut[56]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\ = (\rInport[0]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rInport[0]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\);

-- Location: LCCOMB_X67_Y69_N26
\Mod0|auto_generated|divider|divider|StageOut[56]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~53_combout\ = (\rInport[0]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rInport[0]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~53_combout\);

-- Location: LCCOMB_X67_Y69_N0
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[56]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[56]~53_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\);

-- Location: LCCOMB_X67_Y70_N28
\Mod0|auto_generated|divider|divider|StageOut[63]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\mInport[3]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mInport[3]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\);

-- Location: LCCOMB_X67_Y72_N24
\Mod0|auto_generated|divider|divider|StageOut[63]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\);

-- Location: LCCOMB_X67_Y70_N22
\Mod0|auto_generated|divider|divider|StageOut[62]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\mInport[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \mInport[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\);

-- Location: LCCOMB_X68_Y72_N0
\Mod0|auto_generated|divider|divider|StageOut[62]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\);

-- Location: LCCOMB_X67_Y72_N26
\Mod0|auto_generated|divider|divider|StageOut[61]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\);

-- Location: LCCOMB_X66_Y70_N4
\Mod0|auto_generated|divider|divider|StageOut[61]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\mInport[1]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mInport[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\);

-- Location: LCCOMB_X68_Y72_N12
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X68_Y72_N14
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X68_Y72_N16
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X68_Y72_N18
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X68_Y72_N26
\Mod1|auto_generated|divider|divider|StageOut[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\);

-- Location: LCCOMB_X69_Y69_N20
\Mod1|auto_generated|divider|divider|StageOut[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\);

-- Location: LCCOMB_X69_Y69_N30
\Mod1|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X68_Y72_N20
\Mod1|auto_generated|divider|divider|StageOut[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\);

-- Location: LCCOMB_X68_Y72_N22
\Mod1|auto_generated|divider|divider|StageOut[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\);

-- Location: LCCOMB_X69_Y69_N8
\Mod1|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X66_Y70_N30
\Mod0|auto_generated|divider|divider|StageOut[60]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\mInport[0]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \mInport[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\);

-- Location: LCCOMB_X69_Y69_N26
\Mod1|auto_generated|divider|divider|StageOut[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\);

-- Location: LCCOMB_X69_Y69_N28
\Mod0|auto_generated|divider|divider|StageOut[60]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\);

-- Location: LCCOMB_X69_Y69_N24
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X69_Y69_N22
\Mod1|auto_generated|divider|divider|StageOut[24]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\);

-- Location: LCCOMB_X69_Y69_N10
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X69_Y69_N12
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X69_Y69_N14
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X69_Y69_N16
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X69_Y69_N18
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y71_N8
\Mod1|auto_generated|divider|divider|StageOut[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X69_Y71_N16
\Mod1|auto_generated|divider|divider|StageOut[36]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\);

-- Location: LCCOMB_X69_Y71_N10
\Mod1|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X69_Y71_N2
\Mod1|auto_generated|divider|divider|StageOut[35]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\);

-- Location: LCCOMB_X69_Y71_N12
\Mod1|auto_generated|divider|divider|StageOut[34]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\);

-- Location: LCCOMB_X68_Y72_N24
\Mod1|auto_generated|divider|divider|StageOut[34]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\);

-- Location: LCCOMB_X69_Y69_N4
\Mod1|auto_generated|divider|divider|StageOut[33]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\);

-- Location: LCCOMB_X69_Y69_N0
\Mod1|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X66_Y70_N0
\Mod0|auto_generated|divider|divider|StageOut[59]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\rInport[3]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rInport[3]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\);

-- Location: LCCOMB_X67_Y71_N8
\Mod1|auto_generated|divider|divider|StageOut[32]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\);

-- Location: LCCOMB_X67_Y71_N6
\Mod0|auto_generated|divider|divider|StageOut[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\);

-- Location: LCCOMB_X67_Y71_N24
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X69_Y71_N14
\Mod1|auto_generated|divider|divider|StageOut[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\);

-- Location: LCCOMB_X69_Y71_N20
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X69_Y71_N22
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X69_Y71_N24
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X69_Y71_N26
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X69_Y71_N28
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X69_Y71_N30
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X69_Y71_N4
\Mod1|auto_generated|divider|divider|StageOut[45]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\);

-- Location: LCCOMB_X68_Y71_N24
\Mod1|auto_generated|divider|divider|StageOut[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\);

-- Location: LCCOMB_X69_Y71_N6
\Mod1|auto_generated|divider|divider|StageOut[44]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\);

-- Location: LCCOMB_X68_Y71_N2
\Mod1|auto_generated|divider|divider|StageOut[44]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\);

-- Location: LCCOMB_X68_Y71_N26
\Mod1|auto_generated|divider|divider|StageOut[43]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\);

-- Location: LCCOMB_X69_Y71_N0
\Mod1|auto_generated|divider|divider|StageOut[43]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\);

-- Location: LCCOMB_X68_Y71_N28
\Mod1|auto_generated|divider|divider|StageOut[42]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\);

-- Location: LCCOMB_X69_Y69_N6
\Mod1|auto_generated|divider|divider|StageOut[42]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\);

-- Location: LCCOMB_X68_Y71_N22
\Mod1|auto_generated|divider|divider|StageOut[41]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\);

-- Location: LCCOMB_X69_Y71_N18
\Mod1|auto_generated|divider|divider|StageOut[41]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\);

-- Location: LCCOMB_X67_Y71_N12
\Mod1|auto_generated|divider|divider|StageOut[40]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\rInport[2]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rInport[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\);

-- Location: LCCOMB_X67_Y71_N26
\Mod0|auto_generated|divider|divider|StageOut[58]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\);

-- Location: LCCOMB_X67_Y71_N16
\Mod0|auto_generated|divider|divider|StageOut[58]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \rInport[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \rInport[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\);

-- Location: LCCOMB_X67_Y71_N10
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X67_Y71_N28
\Mod1|auto_generated|divider|divider|StageOut[40]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\);

-- Location: LCCOMB_X68_Y71_N4
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X68_Y71_N6
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X68_Y71_N8
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X68_Y71_N10
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X68_Y71_N12
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X68_Y71_N14
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X68_Y71_N16
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X68_Y69_N8
\Mod1|auto_generated|divider|divider|StageOut[54]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\);

-- Location: LCCOMB_X68_Y71_N0
\Mod1|auto_generated|divider|divider|StageOut[54]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\);

-- Location: LCCOMB_X68_Y71_N18
\Mod1|auto_generated|divider|divider|StageOut[53]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\);

-- Location: LCCOMB_X68_Y69_N2
\Mod1|auto_generated|divider|divider|StageOut[53]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\);

-- Location: LCCOMB_X68_Y69_N28
\Mod1|auto_generated|divider|divider|StageOut[52]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\);

-- Location: LCCOMB_X68_Y71_N20
\Mod1|auto_generated|divider|divider|StageOut[52]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\);

-- Location: LCCOMB_X68_Y70_N18
\Mod1|auto_generated|divider|divider|StageOut[51]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\);

-- Location: LCCOMB_X68_Y70_N8
\Mod1|auto_generated|divider|divider|StageOut[51]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\);

-- Location: LCCOMB_X68_Y69_N30
\Mod1|auto_generated|divider|divider|StageOut[50]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\);

-- Location: LCCOMB_X68_Y71_N30
\Mod1|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X67_Y71_N18
\Mod1|auto_generated|divider|divider|StageOut[49]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\);

-- Location: LCCOMB_X68_Y69_N0
\Mod1|auto_generated|divider|divider|StageOut[49]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\);

-- Location: IOIBUF_X67_Y73_N22
\rInport[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rInport(1),
	o => \rInport[1]~input_o\);

-- Location: LCCOMB_X67_Y69_N24
\Mod0|auto_generated|divider|divider|StageOut[48]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \rInport[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \rInport[1]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\);

-- Location: LCCOMB_X67_Y69_N6
\Mod0|auto_generated|divider|divider|StageOut[48]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \rInport[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \rInport[1]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\);

-- Location: LCCOMB_X67_Y69_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X67_Y69_N18
\Mod0|auto_generated|divider|divider|StageOut[57]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\);

-- Location: LCCOMB_X67_Y69_N28
\Mod0|auto_generated|divider|divider|StageOut[57]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \rInport[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \rInport[1]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\);

-- Location: LCCOMB_X67_Y69_N20
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X67_Y69_N12
\Mod1|auto_generated|divider|divider|StageOut[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X67_Y69_N2
\Mod1|auto_generated|divider|divider|StageOut[48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\rInport[1]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rInport[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\);

-- Location: LCCOMB_X68_Y69_N10
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X68_Y69_N12
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (!\Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X68_Y69_N14
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((((\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X68_Y69_N16
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X68_Y69_N18
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X68_Y69_N20
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X68_Y69_N22
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X68_Y69_N24
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X67_Y69_N14
\Mod1|auto_generated|divider|divider|StageOut[56]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\rInport[0]~input_o\))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datac => \rInport[0]~input_o\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\);

-- Location: LCCOMB_X68_Y69_N26
\Mod1|auto_generated|divider|divider|StageOut[57]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\);

-- Location: LCCOMB_X68_Y69_N4
\Mod1|auto_generated|divider|divider|StageOut[58]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\);

-- Location: LCCOMB_X68_Y69_N6
\Mod1|auto_generated|divider|divider|StageOut[59]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\);

-- Location: LCCOMB_X68_Y72_N2
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X68_Y72_N4
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X68_Y72_N6
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X68_Y72_N8
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X68_Y72_N10
\Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X67_Y72_N20
\Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X67_Y72_N30
\Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X68_Y72_N28
\Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X68_Y72_N30
\Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X67_Y72_N0
\Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X69_Y69_N2
\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X67_Y72_N28
\Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X67_Y70_N2
\Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X67_Y72_N10
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X67_Y72_N12
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X67_Y72_N14
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X67_Y72_N16
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X67_Y72_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X67_Y72_N22
\Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X66_Y72_N0
\Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X67_Y72_N8
\Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X61_Y72_N26
\Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X67_Y72_N2
\Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X61_Y72_N28
\Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X61_Y72_N6
\Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X61_Y72_N8
\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X61_Y72_N30
\Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X61_Y72_N10
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~51_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X61_Y72_N12
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X61_Y72_N14
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X61_Y72_N16
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y72_N18
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X65_Y72_N10
\Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X61_Y72_N24
\Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X61_Y72_N20
\Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X61_Y72_N2
\Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X67_Y71_N22
\Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\rInport[2]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rInport[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X67_Y71_N20
\Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X66_Y72_N2
\Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X65_Y72_N20
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X65_Y72_N22
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~54_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X65_Y72_N24
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X61_Y72_N0
\Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X63_Y72_N24
\Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X65_Y72_N26
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X65_Y72_N28
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X65_Y72_N12
\Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X65_Y72_N18
\Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X65_Y72_N30
\Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X61_Y72_N4
\Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X65_Y72_N14
\Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X65_Y72_N16
\Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X67_Y69_N4
\Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\rInport[1]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \rInport[1]~input_o\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X67_Y69_N30
\Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X67_Y69_N8
\Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X65_Y72_N0
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~75_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X65_Y72_N2
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X65_Y72_N4
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X65_Y72_N6
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X65_Y72_N8
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X65_Y69_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \rInport[3]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\rInport[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rInport[3]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X65_Y69_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\mInport[0]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\mInport[0]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\mInport[0]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mInport[0]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X65_Y69_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\mInport[1]~input_o\ & ((GND) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\mInport[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\mInport[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mInport[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X65_Y69_N26
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\mInport[2]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\mInport[2]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\mInport[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mInport[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X65_Y69_N28
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\mInport[3]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\mInport[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\mInport[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mInport[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X65_Y69_N30
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X65_Y69_N8
\Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \mInport[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \mInport[3]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X65_Y69_N18
\Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X65_Y69_N4
\Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\mInport[2]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mInport[2]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X65_Y69_N6
\Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X66_Y69_N30
\Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X65_Y69_N16
\Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \mInport[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \mInport[1]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X65_Y69_N10
\Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \mInport[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \mInport[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X66_Y69_N24
\Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X65_Y69_N12
\Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\rInport[3]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rInport[3]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X65_Y69_N14
\Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X65_Y69_N0
\Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\rInport[2]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rInport[2]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X67_Y71_N14
\Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\rInport[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rInport[2]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X66_Y69_N0
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~10_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X66_Y69_N2
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X66_Y69_N4
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X66_Y69_N6
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ & !\Div0|auto_generated|divider|divider|StageOut[52]~4_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X66_Y69_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X66_Y69_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X66_Y69_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

ww_bInout0(0) <= \bInout0[0]~output_o\;

ww_bInout0(1) <= \bInout0[1]~output_o\;

ww_bInout0(2) <= \bInout0[2]~output_o\;

ww_bInout0(3) <= \bInout0[3]~output_o\;

ww_bInout1(0) <= \bInout1[0]~output_o\;

ww_bInout1(1) <= \bInout1[1]~output_o\;

ww_bInout1(2) <= \bInout1[2]~output_o\;

ww_bInout1(3) <= \bInout1[3]~output_o\;

ww_bInout2(0) <= \bInout2[0]~output_o\;

ww_bInout2(1) <= \bInout2[1]~output_o\;

ww_bInout2(2) <= \bInout2[2]~output_o\;

ww_bInout2(3) <= \bInout2[3]~output_o\;
END structure;


