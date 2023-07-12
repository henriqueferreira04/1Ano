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

-- DATE "05/22/2023 18:52:38"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM_2P_16_8 IS
    PORT (
	clk : IN std_logic;
	writeEnable : IN std_logic;
	writeAddress : IN std_logic_vector(3 DOWNTO 0);
	writeData : IN std_logic_vector(7 DOWNTO 0);
	readAddress : IN std_logic_vector(3 DOWNTO 0);
	readData : OUT std_logic_vector(7 DOWNTO 0)
	);
END RAM_2P_16_8;

ARCHITECTURE structure OF RAM_2P_16_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_writeEnable : std_logic;
SIGNAL ww_writeAddress : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_writeData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_readAddress : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_readData : std_logic_vector(7 DOWNTO 0);
SIGNAL \readData[0]~output_o\ : std_logic;
SIGNAL \readData[1]~output_o\ : std_logic;
SIGNAL \readData[2]~output_o\ : std_logic;
SIGNAL \readData[3]~output_o\ : std_logic;
SIGNAL \readData[4]~output_o\ : std_logic;
SIGNAL \readData[5]~output_o\ : std_logic;
SIGNAL \readData[6]~output_o\ : std_logic;
SIGNAL \readData[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \writeData[0]~input_o\ : std_logic;
SIGNAL \writeEnable~input_o\ : std_logic;
SIGNAL \writeAddress[0]~input_o\ : std_logic;
SIGNAL \writeAddress[1]~input_o\ : std_logic;
SIGNAL \writeAddress[2]~input_o\ : std_logic;
SIGNAL \writeAddress[3]~input_o\ : std_logic;
SIGNAL \ram_content~221_combout\ : std_logic;
SIGNAL \ram_content~222_combout\ : std_logic;
SIGNAL \ram_content~93_q\ : std_logic;
SIGNAL \readAddress[1]~input_o\ : std_logic;
SIGNAL \ram_content~223_combout\ : std_logic;
SIGNAL \ram_content~224_combout\ : std_logic;
SIGNAL \ram_content~85_q\ : std_logic;
SIGNAL \readAddress[0]~input_o\ : std_logic;
SIGNAL \ram_content~225_combout\ : std_logic;
SIGNAL \ram_content~226_combout\ : std_logic;
SIGNAL \ram_content~77_q\ : std_logic;
SIGNAL \ram_content~141_combout\ : std_logic;
SIGNAL \ram_content~227_combout\ : std_logic;
SIGNAL \ram_content~228_combout\ : std_logic;
SIGNAL \ram_content~101_q\ : std_logic;
SIGNAL \ram_content~142_combout\ : std_logic;
SIGNAL \readAddress[3]~input_o\ : std_logic;
SIGNAL \ram_content~229_combout\ : std_logic;
SIGNAL \ram_content~230_combout\ : std_logic;
SIGNAL \ram_content~53_q\ : std_logic;
SIGNAL \ram_content~231_combout\ : std_logic;
SIGNAL \ram_content~232_combout\ : std_logic;
SIGNAL \ram_content~61_q\ : std_logic;
SIGNAL \ram_content~233_combout\ : std_logic;
SIGNAL \ram_content~234_combout\ : std_logic;
SIGNAL \ram_content~45_q\ : std_logic;
SIGNAL \ram_content~143_combout\ : std_logic;
SIGNAL \ram_content~235_combout\ : std_logic;
SIGNAL \ram_content~236_combout\ : std_logic;
SIGNAL \ram_content~69_q\ : std_logic;
SIGNAL \ram_content~144_combout\ : std_logic;
SIGNAL \readAddress[2]~input_o\ : std_logic;
SIGNAL \ram_content~237_combout\ : std_logic;
SIGNAL \ram_content~238_combout\ : std_logic;
SIGNAL \ram_content~29_q\ : std_logic;
SIGNAL \ram_content~239_combout\ : std_logic;
SIGNAL \ram_content~240_combout\ : std_logic;
SIGNAL \ram_content~21_q\ : std_logic;
SIGNAL \ram_content~241_combout\ : std_logic;
SIGNAL \ram_content~242_combout\ : std_logic;
SIGNAL \ram_content~13_q\ : std_logic;
SIGNAL \ram_content~145_combout\ : std_logic;
SIGNAL \ram_content~243_combout\ : std_logic;
SIGNAL \ram_content~244_combout\ : std_logic;
SIGNAL \ram_content~37_q\ : std_logic;
SIGNAL \ram_content~146_combout\ : std_logic;
SIGNAL \ram_content~147_combout\ : std_logic;
SIGNAL \ram_content~245_combout\ : std_logic;
SIGNAL \ram_content~246_combout\ : std_logic;
SIGNAL \ram_content~117_q\ : std_logic;
SIGNAL \ram_content~247_combout\ : std_logic;
SIGNAL \ram_content~248_combout\ : std_logic;
SIGNAL \ram_content~125_q\ : std_logic;
SIGNAL \ram_content~249_combout\ : std_logic;
SIGNAL \ram_content~250_combout\ : std_logic;
SIGNAL \ram_content~109_q\ : std_logic;
SIGNAL \ram_content~148_combout\ : std_logic;
SIGNAL \ram_content~251_combout\ : std_logic;
SIGNAL \ram_content~252_combout\ : std_logic;
SIGNAL \ram_content~133_q\ : std_logic;
SIGNAL \ram_content~149_combout\ : std_logic;
SIGNAL \ram_content~150_combout\ : std_logic;
SIGNAL \writeData[1]~input_o\ : std_logic;
SIGNAL \ram_content~62_q\ : std_logic;
SIGNAL \ram_content~94_q\ : std_logic;
SIGNAL \ram_content~30_q\ : std_logic;
SIGNAL \ram_content~151_combout\ : std_logic;
SIGNAL \ram_content~126_q\ : std_logic;
SIGNAL \ram_content~152_combout\ : std_logic;
SIGNAL \ram_content~86_q\ : std_logic;
SIGNAL \ram_content~54_q\ : std_logic;
SIGNAL \ram_content~22_q\ : std_logic;
SIGNAL \ram_content~153_combout\ : std_logic;
SIGNAL \ram_content~118_q\ : std_logic;
SIGNAL \ram_content~154_combout\ : std_logic;
SIGNAL \ram_content~46_q\ : std_logic;
SIGNAL \ram_content~78_q\ : std_logic;
SIGNAL \ram_content~14_q\ : std_logic;
SIGNAL \ram_content~155_combout\ : std_logic;
SIGNAL \ram_content~110_q\ : std_logic;
SIGNAL \ram_content~156_combout\ : std_logic;
SIGNAL \ram_content~157_combout\ : std_logic;
SIGNAL \ram_content~102_q\ : std_logic;
SIGNAL \ram_content~70_q\ : std_logic;
SIGNAL \ram_content~38_q\ : std_logic;
SIGNAL \ram_content~158_combout\ : std_logic;
SIGNAL \ram_content~134_q\ : std_logic;
SIGNAL \ram_content~159_combout\ : std_logic;
SIGNAL \ram_content~160_combout\ : std_logic;
SIGNAL \writeData[2]~input_o\ : std_logic;
SIGNAL \ram_content~63_q\ : std_logic;
SIGNAL \ram_content~55_q\ : std_logic;
SIGNAL \ram_content~47_q\ : std_logic;
SIGNAL \ram_content~161_combout\ : std_logic;
SIGNAL \ram_content~71_q\ : std_logic;
SIGNAL \ram_content~162_combout\ : std_logic;
SIGNAL \ram_content~87_q\ : std_logic;
SIGNAL \ram_content~95_q\ : std_logic;
SIGNAL \ram_content~79_q\ : std_logic;
SIGNAL \ram_content~163_combout\ : std_logic;
SIGNAL \ram_content~103_q\ : std_logic;
SIGNAL \ram_content~164_combout\ : std_logic;
SIGNAL \ram_content~23_q\ : std_logic;
SIGNAL \ram_content~31_q\ : std_logic;
SIGNAL \ram_content~15_q\ : std_logic;
SIGNAL \ram_content~165_combout\ : std_logic;
SIGNAL \ram_content~39_q\ : std_logic;
SIGNAL \ram_content~166_combout\ : std_logic;
SIGNAL \ram_content~167_combout\ : std_logic;
SIGNAL \ram_content~127_q\ : std_logic;
SIGNAL \ram_content~119_q\ : std_logic;
SIGNAL \ram_content~111_q\ : std_logic;
SIGNAL \ram_content~168_combout\ : std_logic;
SIGNAL \ram_content~135_q\ : std_logic;
SIGNAL \ram_content~169_combout\ : std_logic;
SIGNAL \ram_content~170_combout\ : std_logic;
SIGNAL \writeData[3]~input_o\ : std_logic;
SIGNAL \ram_content~56_q\ : std_logic;
SIGNAL \ram_content~88_q\ : std_logic;
SIGNAL \ram_content~24_q\ : std_logic;
SIGNAL \ram_content~171_combout\ : std_logic;
SIGNAL \ram_content~120_q\ : std_logic;
SIGNAL \ram_content~172_combout\ : std_logic;
SIGNAL \ram_content~96_q\ : std_logic;
SIGNAL \ram_content~64_q\ : std_logic;
SIGNAL \ram_content~32_q\ : std_logic;
SIGNAL \ram_content~173_combout\ : std_logic;
SIGNAL \ram_content~128_q\ : std_logic;
SIGNAL \ram_content~174_combout\ : std_logic;
SIGNAL \ram_content~80_q\ : std_logic;
SIGNAL \ram_content~48_q\ : std_logic;
SIGNAL \ram_content~16_q\ : std_logic;
SIGNAL \ram_content~175_combout\ : std_logic;
SIGNAL \ram_content~112_q\ : std_logic;
SIGNAL \ram_content~176_combout\ : std_logic;
SIGNAL \ram_content~177_combout\ : std_logic;
SIGNAL \ram_content~72_q\ : std_logic;
SIGNAL \ram_content~104_q\ : std_logic;
SIGNAL \ram_content~40_q\ : std_logic;
SIGNAL \ram_content~178_combout\ : std_logic;
SIGNAL \ram_content~136_q\ : std_logic;
SIGNAL \ram_content~179_combout\ : std_logic;
SIGNAL \ram_content~180_combout\ : std_logic;
SIGNAL \writeData[4]~input_o\ : std_logic;
SIGNAL \ram_content~97_q\ : std_logic;
SIGNAL \ram_content~89_q\ : std_logic;
SIGNAL \ram_content~81_q\ : std_logic;
SIGNAL \ram_content~181_combout\ : std_logic;
SIGNAL \ram_content~105_q\ : std_logic;
SIGNAL \ram_content~182_combout\ : std_logic;
SIGNAL \ram_content~57_q\ : std_logic;
SIGNAL \ram_content~65_q\ : std_logic;
SIGNAL \ram_content~49_q\ : std_logic;
SIGNAL \ram_content~183_combout\ : std_logic;
SIGNAL \ram_content~73_q\ : std_logic;
SIGNAL \ram_content~184_combout\ : std_logic;
SIGNAL \ram_content~33_q\ : std_logic;
SIGNAL \ram_content~25_q\ : std_logic;
SIGNAL \ram_content~17_q\ : std_logic;
SIGNAL \ram_content~185_combout\ : std_logic;
SIGNAL \ram_content~41_q\ : std_logic;
SIGNAL \ram_content~186_combout\ : std_logic;
SIGNAL \ram_content~187_combout\ : std_logic;
SIGNAL \ram_content~121_q\ : std_logic;
SIGNAL \ram_content~129_q\ : std_logic;
SIGNAL \ram_content~113_q\ : std_logic;
SIGNAL \ram_content~188_combout\ : std_logic;
SIGNAL \ram_content~137_q\ : std_logic;
SIGNAL \ram_content~189_combout\ : std_logic;
SIGNAL \ram_content~190_combout\ : std_logic;
SIGNAL \writeData[5]~input_o\ : std_logic;
SIGNAL \ram_content~66_q\ : std_logic;
SIGNAL \ram_content~98_q\ : std_logic;
SIGNAL \ram_content~34_q\ : std_logic;
SIGNAL \ram_content~191_combout\ : std_logic;
SIGNAL \ram_content~130_q\ : std_logic;
SIGNAL \ram_content~192_combout\ : std_logic;
SIGNAL \ram_content~90_q\ : std_logic;
SIGNAL \ram_content~58_q\ : std_logic;
SIGNAL \ram_content~26_q\ : std_logic;
SIGNAL \ram_content~193_combout\ : std_logic;
SIGNAL \ram_content~122_q\ : std_logic;
SIGNAL \ram_content~194_combout\ : std_logic;
SIGNAL \ram_content~50_q\ : std_logic;
SIGNAL \ram_content~82_q\ : std_logic;
SIGNAL \ram_content~18_q\ : std_logic;
SIGNAL \ram_content~195_combout\ : std_logic;
SIGNAL \ram_content~114_q\ : std_logic;
SIGNAL \ram_content~196_combout\ : std_logic;
SIGNAL \ram_content~197_combout\ : std_logic;
SIGNAL \ram_content~106_q\ : std_logic;
SIGNAL \ram_content~74_q\ : std_logic;
SIGNAL \ram_content~42_q\ : std_logic;
SIGNAL \ram_content~198_combout\ : std_logic;
SIGNAL \ram_content~138_q\ : std_logic;
SIGNAL \ram_content~199_combout\ : std_logic;
SIGNAL \ram_content~200_combout\ : std_logic;
SIGNAL \writeData[6]~input_o\ : std_logic;
SIGNAL \ram_content~67_q\ : std_logic;
SIGNAL \ram_content~59_q\ : std_logic;
SIGNAL \ram_content~51_q\ : std_logic;
SIGNAL \ram_content~201_combout\ : std_logic;
SIGNAL \ram_content~75_q\ : std_logic;
SIGNAL \ram_content~202_combout\ : std_logic;
SIGNAL \ram_content~91_q\ : std_logic;
SIGNAL \ram_content~99_q\ : std_logic;
SIGNAL \ram_content~83_q\ : std_logic;
SIGNAL \ram_content~203_combout\ : std_logic;
SIGNAL \ram_content~107_q\ : std_logic;
SIGNAL \ram_content~204_combout\ : std_logic;
SIGNAL \ram_content~27_q\ : std_logic;
SIGNAL \ram_content~35_q\ : std_logic;
SIGNAL \ram_content~19_q\ : std_logic;
SIGNAL \ram_content~205_combout\ : std_logic;
SIGNAL \ram_content~43_q\ : std_logic;
SIGNAL \ram_content~206_combout\ : std_logic;
SIGNAL \ram_content~207_combout\ : std_logic;
SIGNAL \ram_content~131_q\ : std_logic;
SIGNAL \ram_content~123_q\ : std_logic;
SIGNAL \ram_content~115_q\ : std_logic;
SIGNAL \ram_content~208_combout\ : std_logic;
SIGNAL \ram_content~139_q\ : std_logic;
SIGNAL \ram_content~209_combout\ : std_logic;
SIGNAL \ram_content~210_combout\ : std_logic;
SIGNAL \writeData[7]~input_o\ : std_logic;
SIGNAL \ram_content~60_q\ : std_logic;
SIGNAL \ram_content~92_q\ : std_logic;
SIGNAL \ram_content~28_q\ : std_logic;
SIGNAL \ram_content~211_combout\ : std_logic;
SIGNAL \ram_content~124_q\ : std_logic;
SIGNAL \ram_content~212_combout\ : std_logic;
SIGNAL \ram_content~100_q\ : std_logic;
SIGNAL \ram_content~68_q\ : std_logic;
SIGNAL \ram_content~36_q\ : std_logic;
SIGNAL \ram_content~213_combout\ : std_logic;
SIGNAL \ram_content~132_q\ : std_logic;
SIGNAL \ram_content~214_combout\ : std_logic;
SIGNAL \ram_content~84_q\ : std_logic;
SIGNAL \ram_content~52_q\ : std_logic;
SIGNAL \ram_content~20_q\ : std_logic;
SIGNAL \ram_content~215_combout\ : std_logic;
SIGNAL \ram_content~116_q\ : std_logic;
SIGNAL \ram_content~216_combout\ : std_logic;
SIGNAL \ram_content~217_combout\ : std_logic;
SIGNAL \ram_content~76_q\ : std_logic;
SIGNAL \ram_content~108_q\ : std_logic;
SIGNAL \ram_content~44_q\ : std_logic;
SIGNAL \ram_content~218_combout\ : std_logic;
SIGNAL \ram_content~140_q\ : std_logic;
SIGNAL \ram_content~219_combout\ : std_logic;
SIGNAL \ram_content~220_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_writeEnable <= writeEnable;
ww_writeAddress <= writeAddress;
ww_writeData <= writeData;
ww_readAddress <= readAddress;
readData <= ww_readData;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\readData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_content~150_combout\,
	devoe => ww_devoe,
	o => \readData[0]~output_o\);

\readData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_content~160_combout\,
	devoe => ww_devoe,
	o => \readData[1]~output_o\);

\readData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_content~170_combout\,
	devoe => ww_devoe,
	o => \readData[2]~output_o\);

\readData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_content~180_combout\,
	devoe => ww_devoe,
	o => \readData[3]~output_o\);

\readData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_content~190_combout\,
	devoe => ww_devoe,
	o => \readData[4]~output_o\);

\readData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_content~200_combout\,
	devoe => ww_devoe,
	o => \readData[5]~output_o\);

\readData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_content~210_combout\,
	devoe => ww_devoe,
	o => \readData[6]~output_o\);

\readData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_content~220_combout\,
	devoe => ww_devoe,
	o => \readData[7]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\writeData[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(0),
	o => \writeData[0]~input_o\);

\writeEnable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeEnable,
	o => \writeEnable~input_o\);

\writeAddress[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeAddress(0),
	o => \writeAddress[0]~input_o\);

\writeAddress[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeAddress(1),
	o => \writeAddress[1]~input_o\);

\writeAddress[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeAddress(2),
	o => \writeAddress[2]~input_o\);

\writeAddress[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeAddress(3),
	o => \writeAddress[3]~input_o\);

\ram_content~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~221_combout\ = (!\writeAddress[0]~input_o\ & (\writeAddress[1]~input_o\ & (!\writeAddress[2]~input_o\ & \writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~221_combout\);

\ram_content~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~222_combout\ = (\writeEnable~input_o\ & \ram_content~221_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~221_combout\,
	combout => \ram_content~222_combout\);

\ram_content~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~93_q\);

\readAddress[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readAddress(1),
	o => \readAddress[1]~input_o\);

\ram_content~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~223_combout\ = (\writeAddress[0]~input_o\ & (!\writeAddress[1]~input_o\ & (!\writeAddress[2]~input_o\ & \writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~223_combout\);

\ram_content~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~224_combout\ = (\writeEnable~input_o\ & \ram_content~223_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~223_combout\,
	combout => \ram_content~224_combout\);

\ram_content~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~85_q\);

\readAddress[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readAddress(0),
	o => \readAddress[0]~input_o\);

\ram_content~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~225_combout\ = (!\writeAddress[0]~input_o\ & (!\writeAddress[1]~input_o\ & (!\writeAddress[2]~input_o\ & \writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~225_combout\);

\ram_content~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~226_combout\ = (\writeEnable~input_o\ & \ram_content~225_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~225_combout\,
	combout => \ram_content~226_combout\);

\ram_content~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~77_q\);

\ram_content~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~141_combout\ = (\readAddress[1]~input_o\ & (((\readAddress[0]~input_o\)))) # (!\readAddress[1]~input_o\ & ((\readAddress[0]~input_o\ & (\ram_content~85_q\)) # (!\readAddress[0]~input_o\ & ((\ram_content~77_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[1]~input_o\,
	datab => \ram_content~85_q\,
	datac => \readAddress[0]~input_o\,
	datad => \ram_content~77_q\,
	combout => \ram_content~141_combout\);

\ram_content~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~227_combout\ = (\writeAddress[0]~input_o\ & (\writeAddress[1]~input_o\ & (!\writeAddress[2]~input_o\ & \writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~227_combout\);

\ram_content~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~228_combout\ = (\writeEnable~input_o\ & \ram_content~227_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~227_combout\,
	combout => \ram_content~228_combout\);

\ram_content~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~101_q\);

\ram_content~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~142_combout\ = (\readAddress[1]~input_o\ & ((\ram_content~141_combout\ & ((\ram_content~101_q\))) # (!\ram_content~141_combout\ & (\ram_content~93_q\)))) # (!\readAddress[1]~input_o\ & (((\ram_content~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~93_q\,
	datab => \readAddress[1]~input_o\,
	datac => \ram_content~141_combout\,
	datad => \ram_content~101_q\,
	combout => \ram_content~142_combout\);

\readAddress[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readAddress(3),
	o => \readAddress[3]~input_o\);

\ram_content~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~229_combout\ = (\writeAddress[0]~input_o\ & (!\writeAddress[1]~input_o\ & (\writeAddress[2]~input_o\ & !\writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~229_combout\);

\ram_content~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~230_combout\ = (\writeEnable~input_o\ & \ram_content~229_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~229_combout\,
	combout => \ram_content~230_combout\);

\ram_content~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~53_q\);

\ram_content~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~231_combout\ = (!\writeAddress[0]~input_o\ & (\writeAddress[1]~input_o\ & (\writeAddress[2]~input_o\ & !\writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~231_combout\);

\ram_content~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~232_combout\ = (\writeEnable~input_o\ & \ram_content~231_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~231_combout\,
	combout => \ram_content~232_combout\);

\ram_content~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~61_q\);

\ram_content~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~233_combout\ = (!\writeAddress[0]~input_o\ & (!\writeAddress[1]~input_o\ & (\writeAddress[2]~input_o\ & !\writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~233_combout\);

\ram_content~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~234_combout\ = (\writeEnable~input_o\ & \ram_content~233_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~233_combout\,
	combout => \ram_content~234_combout\);

\ram_content~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~45_q\);

\ram_content~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~143_combout\ = (\readAddress[0]~input_o\ & (((\readAddress[1]~input_o\)))) # (!\readAddress[0]~input_o\ & ((\readAddress[1]~input_o\ & (\ram_content~61_q\)) # (!\readAddress[1]~input_o\ & ((\ram_content~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[0]~input_o\,
	datab => \ram_content~61_q\,
	datac => \readAddress[1]~input_o\,
	datad => \ram_content~45_q\,
	combout => \ram_content~143_combout\);

\ram_content~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~235_combout\ = (\writeAddress[0]~input_o\ & (\writeAddress[1]~input_o\ & (\writeAddress[2]~input_o\ & !\writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~235_combout\);

\ram_content~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~236_combout\ = (\writeEnable~input_o\ & \ram_content~235_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~235_combout\,
	combout => \ram_content~236_combout\);

\ram_content~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~69_q\);

\ram_content~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~144_combout\ = (\readAddress[0]~input_o\ & ((\ram_content~143_combout\ & ((\ram_content~69_q\))) # (!\ram_content~143_combout\ & (\ram_content~53_q\)))) # (!\readAddress[0]~input_o\ & (((\ram_content~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~53_q\,
	datab => \readAddress[0]~input_o\,
	datac => \ram_content~143_combout\,
	datad => \ram_content~69_q\,
	combout => \ram_content~144_combout\);

\readAddress[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readAddress(2),
	o => \readAddress[2]~input_o\);

\ram_content~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~237_combout\ = (!\writeAddress[0]~input_o\ & (\writeAddress[1]~input_o\ & (!\writeAddress[2]~input_o\ & !\writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~237_combout\);

\ram_content~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~238_combout\ = (\writeEnable~input_o\ & \ram_content~237_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~237_combout\,
	combout => \ram_content~238_combout\);

\ram_content~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~29_q\);

\ram_content~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~239_combout\ = (\writeAddress[0]~input_o\ & (!\writeAddress[1]~input_o\ & (!\writeAddress[2]~input_o\ & !\writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~239_combout\);

\ram_content~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~240_combout\ = (\writeEnable~input_o\ & \ram_content~239_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~239_combout\,
	combout => \ram_content~240_combout\);

\ram_content~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~21_q\);

\ram_content~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~241_combout\ = (!\writeAddress[0]~input_o\ & (!\writeAddress[1]~input_o\ & (!\writeAddress[2]~input_o\ & !\writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~241_combout\);

\ram_content~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~242_combout\ = (\writeEnable~input_o\ & \ram_content~241_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~241_combout\,
	combout => \ram_content~242_combout\);

\ram_content~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~13_q\);

\ram_content~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~145_combout\ = (\readAddress[1]~input_o\ & (((\readAddress[0]~input_o\)))) # (!\readAddress[1]~input_o\ & ((\readAddress[0]~input_o\ & (\ram_content~21_q\)) # (!\readAddress[0]~input_o\ & ((\ram_content~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[1]~input_o\,
	datab => \ram_content~21_q\,
	datac => \readAddress[0]~input_o\,
	datad => \ram_content~13_q\,
	combout => \ram_content~145_combout\);

\ram_content~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~243_combout\ = (\writeAddress[0]~input_o\ & (\writeAddress[1]~input_o\ & (!\writeAddress[2]~input_o\ & !\writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~243_combout\);

\ram_content~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~244_combout\ = (\writeEnable~input_o\ & \ram_content~243_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~243_combout\,
	combout => \ram_content~244_combout\);

\ram_content~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~37_q\);

\ram_content~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~146_combout\ = (\readAddress[1]~input_o\ & ((\ram_content~145_combout\ & ((\ram_content~37_q\))) # (!\ram_content~145_combout\ & (\ram_content~29_q\)))) # (!\readAddress[1]~input_o\ & (((\ram_content~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~29_q\,
	datab => \readAddress[1]~input_o\,
	datac => \ram_content~145_combout\,
	datad => \ram_content~37_q\,
	combout => \ram_content~146_combout\);

\ram_content~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~147_combout\ = (\readAddress[3]~input_o\ & (((\readAddress[2]~input_o\)))) # (!\readAddress[3]~input_o\ & ((\readAddress[2]~input_o\ & (\ram_content~144_combout\)) # (!\readAddress[2]~input_o\ & ((\ram_content~146_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[3]~input_o\,
	datab => \ram_content~144_combout\,
	datac => \readAddress[2]~input_o\,
	datad => \ram_content~146_combout\,
	combout => \ram_content~147_combout\);

\ram_content~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~245_combout\ = (\writeAddress[0]~input_o\ & (!\writeAddress[1]~input_o\ & (\writeAddress[2]~input_o\ & \writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~245_combout\);

\ram_content~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~246_combout\ = (\writeEnable~input_o\ & \ram_content~245_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~245_combout\,
	combout => \ram_content~246_combout\);

\ram_content~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~117_q\);

\ram_content~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~247_combout\ = (!\writeAddress[0]~input_o\ & (\writeAddress[1]~input_o\ & (\writeAddress[2]~input_o\ & \writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~247_combout\);

\ram_content~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~248_combout\ = (\writeEnable~input_o\ & \ram_content~247_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~247_combout\,
	combout => \ram_content~248_combout\);

\ram_content~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~125_q\);

\ram_content~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~249_combout\ = (!\writeAddress[0]~input_o\ & (!\writeAddress[1]~input_o\ & (\writeAddress[2]~input_o\ & \writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~249_combout\);

\ram_content~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~250_combout\ = (\writeEnable~input_o\ & \ram_content~249_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~249_combout\,
	combout => \ram_content~250_combout\);

\ram_content~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~109_q\);

\ram_content~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~148_combout\ = (\readAddress[0]~input_o\ & (((\readAddress[1]~input_o\)))) # (!\readAddress[0]~input_o\ & ((\readAddress[1]~input_o\ & (\ram_content~125_q\)) # (!\readAddress[1]~input_o\ & ((\ram_content~109_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[0]~input_o\,
	datab => \ram_content~125_q\,
	datac => \readAddress[1]~input_o\,
	datad => \ram_content~109_q\,
	combout => \ram_content~148_combout\);

\ram_content~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~251_combout\ = (\writeAddress[0]~input_o\ & (\writeAddress[1]~input_o\ & (\writeAddress[2]~input_o\ & \writeAddress[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeAddress[0]~input_o\,
	datab => \writeAddress[1]~input_o\,
	datac => \writeAddress[2]~input_o\,
	datad => \writeAddress[3]~input_o\,
	combout => \ram_content~251_combout\);

\ram_content~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~252_combout\ = (\writeEnable~input_o\ & \ram_content~251_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datab => \ram_content~251_combout\,
	combout => \ram_content~252_combout\);

\ram_content~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[0]~input_o\,
	ena => \ram_content~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~133_q\);

\ram_content~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~149_combout\ = (\readAddress[0]~input_o\ & ((\ram_content~148_combout\ & ((\ram_content~133_q\))) # (!\ram_content~148_combout\ & (\ram_content~117_q\)))) # (!\readAddress[0]~input_o\ & (((\ram_content~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~117_q\,
	datab => \readAddress[0]~input_o\,
	datac => \ram_content~148_combout\,
	datad => \ram_content~133_q\,
	combout => \ram_content~149_combout\);

\ram_content~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~150_combout\ = (\readAddress[3]~input_o\ & ((\ram_content~147_combout\ & ((\ram_content~149_combout\))) # (!\ram_content~147_combout\ & (\ram_content~142_combout\)))) # (!\readAddress[3]~input_o\ & (((\ram_content~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~142_combout\,
	datab => \readAddress[3]~input_o\,
	datac => \ram_content~147_combout\,
	datad => \ram_content~149_combout\,
	combout => \ram_content~150_combout\);

\writeData[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(1),
	o => \writeData[1]~input_o\);

\ram_content~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~62_q\);

\ram_content~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~94_q\);

\ram_content~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~30_q\);

\ram_content~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~151_combout\ = (\readAddress[2]~input_o\ & (((\readAddress[3]~input_o\)))) # (!\readAddress[2]~input_o\ & ((\readAddress[3]~input_o\ & (\ram_content~94_q\)) # (!\readAddress[3]~input_o\ & ((\ram_content~30_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[2]~input_o\,
	datab => \ram_content~94_q\,
	datac => \readAddress[3]~input_o\,
	datad => \ram_content~30_q\,
	combout => \ram_content~151_combout\);

\ram_content~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~126_q\);

\ram_content~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~152_combout\ = (\readAddress[2]~input_o\ & ((\ram_content~151_combout\ & ((\ram_content~126_q\))) # (!\ram_content~151_combout\ & (\ram_content~62_q\)))) # (!\readAddress[2]~input_o\ & (((\ram_content~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~62_q\,
	datab => \readAddress[2]~input_o\,
	datac => \ram_content~151_combout\,
	datad => \ram_content~126_q\,
	combout => \ram_content~152_combout\);

\ram_content~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~86_q\);

\ram_content~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~54_q\);

\ram_content~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~22_q\);

\ram_content~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~153_combout\ = (\readAddress[3]~input_o\ & (((\readAddress[2]~input_o\)))) # (!\readAddress[3]~input_o\ & ((\readAddress[2]~input_o\ & (\ram_content~54_q\)) # (!\readAddress[2]~input_o\ & ((\ram_content~22_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[3]~input_o\,
	datab => \ram_content~54_q\,
	datac => \readAddress[2]~input_o\,
	datad => \ram_content~22_q\,
	combout => \ram_content~153_combout\);

\ram_content~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~118_q\);

\ram_content~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~154_combout\ = (\readAddress[3]~input_o\ & ((\ram_content~153_combout\ & ((\ram_content~118_q\))) # (!\ram_content~153_combout\ & (\ram_content~86_q\)))) # (!\readAddress[3]~input_o\ & (((\ram_content~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~86_q\,
	datab => \readAddress[3]~input_o\,
	datac => \ram_content~153_combout\,
	datad => \ram_content~118_q\,
	combout => \ram_content~154_combout\);

\ram_content~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~46_q\);

\ram_content~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~78_q\);

\ram_content~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~14_q\);

\ram_content~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~155_combout\ = (\readAddress[2]~input_o\ & (((\readAddress[3]~input_o\)))) # (!\readAddress[2]~input_o\ & ((\readAddress[3]~input_o\ & (\ram_content~78_q\)) # (!\readAddress[3]~input_o\ & ((\ram_content~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[2]~input_o\,
	datab => \ram_content~78_q\,
	datac => \readAddress[3]~input_o\,
	datad => \ram_content~14_q\,
	combout => \ram_content~155_combout\);

\ram_content~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~110_q\);

\ram_content~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~156_combout\ = (\readAddress[2]~input_o\ & ((\ram_content~155_combout\ & ((\ram_content~110_q\))) # (!\ram_content~155_combout\ & (\ram_content~46_q\)))) # (!\readAddress[2]~input_o\ & (((\ram_content~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~46_q\,
	datab => \readAddress[2]~input_o\,
	datac => \ram_content~155_combout\,
	datad => \ram_content~110_q\,
	combout => \ram_content~156_combout\);

\ram_content~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~157_combout\ = (\readAddress[1]~input_o\ & (((\readAddress[0]~input_o\)))) # (!\readAddress[1]~input_o\ & ((\readAddress[0]~input_o\ & (\ram_content~154_combout\)) # (!\readAddress[0]~input_o\ & ((\ram_content~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[1]~input_o\,
	datab => \ram_content~154_combout\,
	datac => \readAddress[0]~input_o\,
	datad => \ram_content~156_combout\,
	combout => \ram_content~157_combout\);

\ram_content~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~102_q\);

\ram_content~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~70_q\);

\ram_content~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~38_q\);

\ram_content~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~158_combout\ = (\readAddress[3]~input_o\ & (((\readAddress[2]~input_o\)))) # (!\readAddress[3]~input_o\ & ((\readAddress[2]~input_o\ & (\ram_content~70_q\)) # (!\readAddress[2]~input_o\ & ((\ram_content~38_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[3]~input_o\,
	datab => \ram_content~70_q\,
	datac => \readAddress[2]~input_o\,
	datad => \ram_content~38_q\,
	combout => \ram_content~158_combout\);

\ram_content~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[1]~input_o\,
	ena => \ram_content~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~134_q\);

\ram_content~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~159_combout\ = (\readAddress[3]~input_o\ & ((\ram_content~158_combout\ & ((\ram_content~134_q\))) # (!\ram_content~158_combout\ & (\ram_content~102_q\)))) # (!\readAddress[3]~input_o\ & (((\ram_content~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~102_q\,
	datab => \readAddress[3]~input_o\,
	datac => \ram_content~158_combout\,
	datad => \ram_content~134_q\,
	combout => \ram_content~159_combout\);

\ram_content~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~160_combout\ = (\readAddress[1]~input_o\ & ((\ram_content~157_combout\ & ((\ram_content~159_combout\))) # (!\ram_content~157_combout\ & (\ram_content~152_combout\)))) # (!\readAddress[1]~input_o\ & (((\ram_content~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~152_combout\,
	datab => \readAddress[1]~input_o\,
	datac => \ram_content~157_combout\,
	datad => \ram_content~159_combout\,
	combout => \ram_content~160_combout\);

\writeData[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(2),
	o => \writeData[2]~input_o\);

\ram_content~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~63_q\);

\ram_content~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~55_q\);

\ram_content~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~47_q\);

\ram_content~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~161_combout\ = (\readAddress[1]~input_o\ & (((\readAddress[0]~input_o\)))) # (!\readAddress[1]~input_o\ & ((\readAddress[0]~input_o\ & (\ram_content~55_q\)) # (!\readAddress[0]~input_o\ & ((\ram_content~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[1]~input_o\,
	datab => \ram_content~55_q\,
	datac => \readAddress[0]~input_o\,
	datad => \ram_content~47_q\,
	combout => \ram_content~161_combout\);

\ram_content~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~71_q\);

\ram_content~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~162_combout\ = (\readAddress[1]~input_o\ & ((\ram_content~161_combout\ & ((\ram_content~71_q\))) # (!\ram_content~161_combout\ & (\ram_content~63_q\)))) # (!\readAddress[1]~input_o\ & (((\ram_content~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~63_q\,
	datab => \readAddress[1]~input_o\,
	datac => \ram_content~161_combout\,
	datad => \ram_content~71_q\,
	combout => \ram_content~162_combout\);

\ram_content~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~87_q\);

\ram_content~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~95_q\);

\ram_content~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~79_q\);

\ram_content~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~163_combout\ = (\readAddress[0]~input_o\ & (((\readAddress[1]~input_o\)))) # (!\readAddress[0]~input_o\ & ((\readAddress[1]~input_o\ & (\ram_content~95_q\)) # (!\readAddress[1]~input_o\ & ((\ram_content~79_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[0]~input_o\,
	datab => \ram_content~95_q\,
	datac => \readAddress[1]~input_o\,
	datad => \ram_content~79_q\,
	combout => \ram_content~163_combout\);

\ram_content~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~103_q\);

\ram_content~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~164_combout\ = (\readAddress[0]~input_o\ & ((\ram_content~163_combout\ & ((\ram_content~103_q\))) # (!\ram_content~163_combout\ & (\ram_content~87_q\)))) # (!\readAddress[0]~input_o\ & (((\ram_content~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~87_q\,
	datab => \readAddress[0]~input_o\,
	datac => \ram_content~163_combout\,
	datad => \ram_content~103_q\,
	combout => \ram_content~164_combout\);

\ram_content~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~23_q\);

\ram_content~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~31_q\);

\ram_content~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~15_q\);

\ram_content~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~165_combout\ = (\readAddress[0]~input_o\ & (((\readAddress[1]~input_o\)))) # (!\readAddress[0]~input_o\ & ((\readAddress[1]~input_o\ & (\ram_content~31_q\)) # (!\readAddress[1]~input_o\ & ((\ram_content~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[0]~input_o\,
	datab => \ram_content~31_q\,
	datac => \readAddress[1]~input_o\,
	datad => \ram_content~15_q\,
	combout => \ram_content~165_combout\);

\ram_content~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~39_q\);

\ram_content~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~166_combout\ = (\readAddress[0]~input_o\ & ((\ram_content~165_combout\ & ((\ram_content~39_q\))) # (!\ram_content~165_combout\ & (\ram_content~23_q\)))) # (!\readAddress[0]~input_o\ & (((\ram_content~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~23_q\,
	datab => \readAddress[0]~input_o\,
	datac => \ram_content~165_combout\,
	datad => \ram_content~39_q\,
	combout => \ram_content~166_combout\);

\ram_content~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~167_combout\ = (\readAddress[2]~input_o\ & (((\readAddress[3]~input_o\)))) # (!\readAddress[2]~input_o\ & ((\readAddress[3]~input_o\ & (\ram_content~164_combout\)) # (!\readAddress[3]~input_o\ & ((\ram_content~166_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[2]~input_o\,
	datab => \ram_content~164_combout\,
	datac => \readAddress[3]~input_o\,
	datad => \ram_content~166_combout\,
	combout => \ram_content~167_combout\);

\ram_content~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~127_q\);

\ram_content~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~119_q\);

\ram_content~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~111_q\);

\ram_content~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~168_combout\ = (\readAddress[1]~input_o\ & (((\readAddress[0]~input_o\)))) # (!\readAddress[1]~input_o\ & ((\readAddress[0]~input_o\ & (\ram_content~119_q\)) # (!\readAddress[0]~input_o\ & ((\ram_content~111_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[1]~input_o\,
	datab => \ram_content~119_q\,
	datac => \readAddress[0]~input_o\,
	datad => \ram_content~111_q\,
	combout => \ram_content~168_combout\);

\ram_content~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[2]~input_o\,
	ena => \ram_content~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~135_q\);

\ram_content~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~169_combout\ = (\readAddress[1]~input_o\ & ((\ram_content~168_combout\ & ((\ram_content~135_q\))) # (!\ram_content~168_combout\ & (\ram_content~127_q\)))) # (!\readAddress[1]~input_o\ & (((\ram_content~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~127_q\,
	datab => \readAddress[1]~input_o\,
	datac => \ram_content~168_combout\,
	datad => \ram_content~135_q\,
	combout => \ram_content~169_combout\);

\ram_content~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~170_combout\ = (\readAddress[2]~input_o\ & ((\ram_content~167_combout\ & ((\ram_content~169_combout\))) # (!\ram_content~167_combout\ & (\ram_content~162_combout\)))) # (!\readAddress[2]~input_o\ & (((\ram_content~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~162_combout\,
	datab => \readAddress[2]~input_o\,
	datac => \ram_content~167_combout\,
	datad => \ram_content~169_combout\,
	combout => \ram_content~170_combout\);

\writeData[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(3),
	o => \writeData[3]~input_o\);

\ram_content~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~56_q\);

\ram_content~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~88_q\);

\ram_content~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~24_q\);

\ram_content~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~171_combout\ = (\readAddress[2]~input_o\ & (((\readAddress[3]~input_o\)))) # (!\readAddress[2]~input_o\ & ((\readAddress[3]~input_o\ & (\ram_content~88_q\)) # (!\readAddress[3]~input_o\ & ((\ram_content~24_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[2]~input_o\,
	datab => \ram_content~88_q\,
	datac => \readAddress[3]~input_o\,
	datad => \ram_content~24_q\,
	combout => \ram_content~171_combout\);

\ram_content~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~120_q\);

\ram_content~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~172_combout\ = (\readAddress[2]~input_o\ & ((\ram_content~171_combout\ & ((\ram_content~120_q\))) # (!\ram_content~171_combout\ & (\ram_content~56_q\)))) # (!\readAddress[2]~input_o\ & (((\ram_content~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~56_q\,
	datab => \readAddress[2]~input_o\,
	datac => \ram_content~171_combout\,
	datad => \ram_content~120_q\,
	combout => \ram_content~172_combout\);

\ram_content~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~96_q\);

\ram_content~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~64_q\);

\ram_content~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~32_q\);

\ram_content~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~173_combout\ = (\readAddress[3]~input_o\ & (((\readAddress[2]~input_o\)))) # (!\readAddress[3]~input_o\ & ((\readAddress[2]~input_o\ & (\ram_content~64_q\)) # (!\readAddress[2]~input_o\ & ((\ram_content~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[3]~input_o\,
	datab => \ram_content~64_q\,
	datac => \readAddress[2]~input_o\,
	datad => \ram_content~32_q\,
	combout => \ram_content~173_combout\);

\ram_content~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~128_q\);

\ram_content~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~174_combout\ = (\readAddress[3]~input_o\ & ((\ram_content~173_combout\ & ((\ram_content~128_q\))) # (!\ram_content~173_combout\ & (\ram_content~96_q\)))) # (!\readAddress[3]~input_o\ & (((\ram_content~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~96_q\,
	datab => \readAddress[3]~input_o\,
	datac => \ram_content~173_combout\,
	datad => \ram_content~128_q\,
	combout => \ram_content~174_combout\);

\ram_content~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~80_q\);

\ram_content~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~48_q\);

\ram_content~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~16_q\);

\ram_content~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~175_combout\ = (\readAddress[3]~input_o\ & (((\readAddress[2]~input_o\)))) # (!\readAddress[3]~input_o\ & ((\readAddress[2]~input_o\ & (\ram_content~48_q\)) # (!\readAddress[2]~input_o\ & ((\ram_content~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[3]~input_o\,
	datab => \ram_content~48_q\,
	datac => \readAddress[2]~input_o\,
	datad => \ram_content~16_q\,
	combout => \ram_content~175_combout\);

\ram_content~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~112_q\);

\ram_content~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~176_combout\ = (\readAddress[3]~input_o\ & ((\ram_content~175_combout\ & ((\ram_content~112_q\))) # (!\ram_content~175_combout\ & (\ram_content~80_q\)))) # (!\readAddress[3]~input_o\ & (((\ram_content~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~80_q\,
	datab => \readAddress[3]~input_o\,
	datac => \ram_content~175_combout\,
	datad => \ram_content~112_q\,
	combout => \ram_content~176_combout\);

\ram_content~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~177_combout\ = (\readAddress[0]~input_o\ & (((\readAddress[1]~input_o\)))) # (!\readAddress[0]~input_o\ & ((\readAddress[1]~input_o\ & (\ram_content~174_combout\)) # (!\readAddress[1]~input_o\ & ((\ram_content~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[0]~input_o\,
	datab => \ram_content~174_combout\,
	datac => \readAddress[1]~input_o\,
	datad => \ram_content~176_combout\,
	combout => \ram_content~177_combout\);

\ram_content~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~72_q\);

\ram_content~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~104_q\);

\ram_content~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~40_q\);

\ram_content~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~178_combout\ = (\readAddress[2]~input_o\ & (((\readAddress[3]~input_o\)))) # (!\readAddress[2]~input_o\ & ((\readAddress[3]~input_o\ & (\ram_content~104_q\)) # (!\readAddress[3]~input_o\ & ((\ram_content~40_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[2]~input_o\,
	datab => \ram_content~104_q\,
	datac => \readAddress[3]~input_o\,
	datad => \ram_content~40_q\,
	combout => \ram_content~178_combout\);

\ram_content~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[3]~input_o\,
	ena => \ram_content~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~136_q\);

\ram_content~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~179_combout\ = (\readAddress[2]~input_o\ & ((\ram_content~178_combout\ & ((\ram_content~136_q\))) # (!\ram_content~178_combout\ & (\ram_content~72_q\)))) # (!\readAddress[2]~input_o\ & (((\ram_content~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~72_q\,
	datab => \readAddress[2]~input_o\,
	datac => \ram_content~178_combout\,
	datad => \ram_content~136_q\,
	combout => \ram_content~179_combout\);

\ram_content~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~180_combout\ = (\readAddress[0]~input_o\ & ((\ram_content~177_combout\ & ((\ram_content~179_combout\))) # (!\ram_content~177_combout\ & (\ram_content~172_combout\)))) # (!\readAddress[0]~input_o\ & (((\ram_content~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~172_combout\,
	datab => \readAddress[0]~input_o\,
	datac => \ram_content~177_combout\,
	datad => \ram_content~179_combout\,
	combout => \ram_content~180_combout\);

\writeData[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(4),
	o => \writeData[4]~input_o\);

\ram_content~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~97_q\);

\ram_content~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~89_q\);

\ram_content~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~81_q\);

\ram_content~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~181_combout\ = (\readAddress[1]~input_o\ & (((\readAddress[0]~input_o\)))) # (!\readAddress[1]~input_o\ & ((\readAddress[0]~input_o\ & (\ram_content~89_q\)) # (!\readAddress[0]~input_o\ & ((\ram_content~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[1]~input_o\,
	datab => \ram_content~89_q\,
	datac => \readAddress[0]~input_o\,
	datad => \ram_content~81_q\,
	combout => \ram_content~181_combout\);

\ram_content~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~105_q\);

\ram_content~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~182_combout\ = (\readAddress[1]~input_o\ & ((\ram_content~181_combout\ & ((\ram_content~105_q\))) # (!\ram_content~181_combout\ & (\ram_content~97_q\)))) # (!\readAddress[1]~input_o\ & (((\ram_content~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~97_q\,
	datab => \readAddress[1]~input_o\,
	datac => \ram_content~181_combout\,
	datad => \ram_content~105_q\,
	combout => \ram_content~182_combout\);

\ram_content~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~57_q\);

\ram_content~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~65_q\);

\ram_content~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~49_q\);

\ram_content~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~183_combout\ = (\readAddress[0]~input_o\ & (((\readAddress[1]~input_o\)))) # (!\readAddress[0]~input_o\ & ((\readAddress[1]~input_o\ & (\ram_content~65_q\)) # (!\readAddress[1]~input_o\ & ((\ram_content~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[0]~input_o\,
	datab => \ram_content~65_q\,
	datac => \readAddress[1]~input_o\,
	datad => \ram_content~49_q\,
	combout => \ram_content~183_combout\);

\ram_content~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~73_q\);

\ram_content~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~184_combout\ = (\readAddress[0]~input_o\ & ((\ram_content~183_combout\ & ((\ram_content~73_q\))) # (!\ram_content~183_combout\ & (\ram_content~57_q\)))) # (!\readAddress[0]~input_o\ & (((\ram_content~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~57_q\,
	datab => \readAddress[0]~input_o\,
	datac => \ram_content~183_combout\,
	datad => \ram_content~73_q\,
	combout => \ram_content~184_combout\);

\ram_content~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~33_q\);

\ram_content~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~25_q\);

\ram_content~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~17_q\);

\ram_content~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~185_combout\ = (\readAddress[1]~input_o\ & (((\readAddress[0]~input_o\)))) # (!\readAddress[1]~input_o\ & ((\readAddress[0]~input_o\ & (\ram_content~25_q\)) # (!\readAddress[0]~input_o\ & ((\ram_content~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[1]~input_o\,
	datab => \ram_content~25_q\,
	datac => \readAddress[0]~input_o\,
	datad => \ram_content~17_q\,
	combout => \ram_content~185_combout\);

\ram_content~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~41_q\);

\ram_content~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~186_combout\ = (\readAddress[1]~input_o\ & ((\ram_content~185_combout\ & ((\ram_content~41_q\))) # (!\ram_content~185_combout\ & (\ram_content~33_q\)))) # (!\readAddress[1]~input_o\ & (((\ram_content~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~33_q\,
	datab => \readAddress[1]~input_o\,
	datac => \ram_content~185_combout\,
	datad => \ram_content~41_q\,
	combout => \ram_content~186_combout\);

\ram_content~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~187_combout\ = (\readAddress[3]~input_o\ & (((\readAddress[2]~input_o\)))) # (!\readAddress[3]~input_o\ & ((\readAddress[2]~input_o\ & (\ram_content~184_combout\)) # (!\readAddress[2]~input_o\ & ((\ram_content~186_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[3]~input_o\,
	datab => \ram_content~184_combout\,
	datac => \readAddress[2]~input_o\,
	datad => \ram_content~186_combout\,
	combout => \ram_content~187_combout\);

\ram_content~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~121_q\);

\ram_content~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~129_q\);

\ram_content~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~113_q\);

\ram_content~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~188_combout\ = (\readAddress[0]~input_o\ & (((\readAddress[1]~input_o\)))) # (!\readAddress[0]~input_o\ & ((\readAddress[1]~input_o\ & (\ram_content~129_q\)) # (!\readAddress[1]~input_o\ & ((\ram_content~113_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[0]~input_o\,
	datab => \ram_content~129_q\,
	datac => \readAddress[1]~input_o\,
	datad => \ram_content~113_q\,
	combout => \ram_content~188_combout\);

\ram_content~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[4]~input_o\,
	ena => \ram_content~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~137_q\);

\ram_content~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~189_combout\ = (\readAddress[0]~input_o\ & ((\ram_content~188_combout\ & ((\ram_content~137_q\))) # (!\ram_content~188_combout\ & (\ram_content~121_q\)))) # (!\readAddress[0]~input_o\ & (((\ram_content~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~121_q\,
	datab => \readAddress[0]~input_o\,
	datac => \ram_content~188_combout\,
	datad => \ram_content~137_q\,
	combout => \ram_content~189_combout\);

\ram_content~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~190_combout\ = (\readAddress[3]~input_o\ & ((\ram_content~187_combout\ & ((\ram_content~189_combout\))) # (!\ram_content~187_combout\ & (\ram_content~182_combout\)))) # (!\readAddress[3]~input_o\ & (((\ram_content~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~182_combout\,
	datab => \readAddress[3]~input_o\,
	datac => \ram_content~187_combout\,
	datad => \ram_content~189_combout\,
	combout => \ram_content~190_combout\);

\writeData[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(5),
	o => \writeData[5]~input_o\);

\ram_content~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~66_q\);

\ram_content~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~98_q\);

\ram_content~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~34_q\);

\ram_content~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~191_combout\ = (\readAddress[2]~input_o\ & (((\readAddress[3]~input_o\)))) # (!\readAddress[2]~input_o\ & ((\readAddress[3]~input_o\ & (\ram_content~98_q\)) # (!\readAddress[3]~input_o\ & ((\ram_content~34_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[2]~input_o\,
	datab => \ram_content~98_q\,
	datac => \readAddress[3]~input_o\,
	datad => \ram_content~34_q\,
	combout => \ram_content~191_combout\);

\ram_content~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~130_q\);

\ram_content~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~192_combout\ = (\readAddress[2]~input_o\ & ((\ram_content~191_combout\ & ((\ram_content~130_q\))) # (!\ram_content~191_combout\ & (\ram_content~66_q\)))) # (!\readAddress[2]~input_o\ & (((\ram_content~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~66_q\,
	datab => \readAddress[2]~input_o\,
	datac => \ram_content~191_combout\,
	datad => \ram_content~130_q\,
	combout => \ram_content~192_combout\);

\ram_content~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~90_q\);

\ram_content~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~58_q\);

\ram_content~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~26_q\);

\ram_content~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~193_combout\ = (\readAddress[3]~input_o\ & (((\readAddress[2]~input_o\)))) # (!\readAddress[3]~input_o\ & ((\readAddress[2]~input_o\ & (\ram_content~58_q\)) # (!\readAddress[2]~input_o\ & ((\ram_content~26_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[3]~input_o\,
	datab => \ram_content~58_q\,
	datac => \readAddress[2]~input_o\,
	datad => \ram_content~26_q\,
	combout => \ram_content~193_combout\);

\ram_content~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~122_q\);

\ram_content~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~194_combout\ = (\readAddress[3]~input_o\ & ((\ram_content~193_combout\ & ((\ram_content~122_q\))) # (!\ram_content~193_combout\ & (\ram_content~90_q\)))) # (!\readAddress[3]~input_o\ & (((\ram_content~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~90_q\,
	datab => \readAddress[3]~input_o\,
	datac => \ram_content~193_combout\,
	datad => \ram_content~122_q\,
	combout => \ram_content~194_combout\);

\ram_content~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~50_q\);

\ram_content~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~82_q\);

\ram_content~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~18_q\);

\ram_content~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~195_combout\ = (\readAddress[2]~input_o\ & (((\readAddress[3]~input_o\)))) # (!\readAddress[2]~input_o\ & ((\readAddress[3]~input_o\ & (\ram_content~82_q\)) # (!\readAddress[3]~input_o\ & ((\ram_content~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[2]~input_o\,
	datab => \ram_content~82_q\,
	datac => \readAddress[3]~input_o\,
	datad => \ram_content~18_q\,
	combout => \ram_content~195_combout\);

\ram_content~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~114_q\);

\ram_content~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~196_combout\ = (\readAddress[2]~input_o\ & ((\ram_content~195_combout\ & ((\ram_content~114_q\))) # (!\ram_content~195_combout\ & (\ram_content~50_q\)))) # (!\readAddress[2]~input_o\ & (((\ram_content~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~50_q\,
	datab => \readAddress[2]~input_o\,
	datac => \ram_content~195_combout\,
	datad => \ram_content~114_q\,
	combout => \ram_content~196_combout\);

\ram_content~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~197_combout\ = (\readAddress[1]~input_o\ & (((\readAddress[0]~input_o\)))) # (!\readAddress[1]~input_o\ & ((\readAddress[0]~input_o\ & (\ram_content~194_combout\)) # (!\readAddress[0]~input_o\ & ((\ram_content~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[1]~input_o\,
	datab => \ram_content~194_combout\,
	datac => \readAddress[0]~input_o\,
	datad => \ram_content~196_combout\,
	combout => \ram_content~197_combout\);

\ram_content~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~106_q\);

\ram_content~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~74_q\);

\ram_content~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~42_q\);

\ram_content~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~198_combout\ = (\readAddress[3]~input_o\ & (((\readAddress[2]~input_o\)))) # (!\readAddress[3]~input_o\ & ((\readAddress[2]~input_o\ & (\ram_content~74_q\)) # (!\readAddress[2]~input_o\ & ((\ram_content~42_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[3]~input_o\,
	datab => \ram_content~74_q\,
	datac => \readAddress[2]~input_o\,
	datad => \ram_content~42_q\,
	combout => \ram_content~198_combout\);

\ram_content~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[5]~input_o\,
	ena => \ram_content~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~138_q\);

\ram_content~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~199_combout\ = (\readAddress[3]~input_o\ & ((\ram_content~198_combout\ & ((\ram_content~138_q\))) # (!\ram_content~198_combout\ & (\ram_content~106_q\)))) # (!\readAddress[3]~input_o\ & (((\ram_content~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~106_q\,
	datab => \readAddress[3]~input_o\,
	datac => \ram_content~198_combout\,
	datad => \ram_content~138_q\,
	combout => \ram_content~199_combout\);

\ram_content~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~200_combout\ = (\readAddress[1]~input_o\ & ((\ram_content~197_combout\ & ((\ram_content~199_combout\))) # (!\ram_content~197_combout\ & (\ram_content~192_combout\)))) # (!\readAddress[1]~input_o\ & (((\ram_content~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~192_combout\,
	datab => \readAddress[1]~input_o\,
	datac => \ram_content~197_combout\,
	datad => \ram_content~199_combout\,
	combout => \ram_content~200_combout\);

\writeData[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(6),
	o => \writeData[6]~input_o\);

\ram_content~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~67_q\);

\ram_content~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~59_q\);

\ram_content~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~51_q\);

\ram_content~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~201_combout\ = (\readAddress[1]~input_o\ & (((\readAddress[0]~input_o\)))) # (!\readAddress[1]~input_o\ & ((\readAddress[0]~input_o\ & (\ram_content~59_q\)) # (!\readAddress[0]~input_o\ & ((\ram_content~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[1]~input_o\,
	datab => \ram_content~59_q\,
	datac => \readAddress[0]~input_o\,
	datad => \ram_content~51_q\,
	combout => \ram_content~201_combout\);

\ram_content~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~75_q\);

\ram_content~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~202_combout\ = (\readAddress[1]~input_o\ & ((\ram_content~201_combout\ & ((\ram_content~75_q\))) # (!\ram_content~201_combout\ & (\ram_content~67_q\)))) # (!\readAddress[1]~input_o\ & (((\ram_content~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~67_q\,
	datab => \readAddress[1]~input_o\,
	datac => \ram_content~201_combout\,
	datad => \ram_content~75_q\,
	combout => \ram_content~202_combout\);

\ram_content~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~91_q\);

\ram_content~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~99_q\);

\ram_content~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~83_q\);

\ram_content~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~203_combout\ = (\readAddress[0]~input_o\ & (((\readAddress[1]~input_o\)))) # (!\readAddress[0]~input_o\ & ((\readAddress[1]~input_o\ & (\ram_content~99_q\)) # (!\readAddress[1]~input_o\ & ((\ram_content~83_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[0]~input_o\,
	datab => \ram_content~99_q\,
	datac => \readAddress[1]~input_o\,
	datad => \ram_content~83_q\,
	combout => \ram_content~203_combout\);

\ram_content~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~107_q\);

\ram_content~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~204_combout\ = (\readAddress[0]~input_o\ & ((\ram_content~203_combout\ & ((\ram_content~107_q\))) # (!\ram_content~203_combout\ & (\ram_content~91_q\)))) # (!\readAddress[0]~input_o\ & (((\ram_content~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~91_q\,
	datab => \readAddress[0]~input_o\,
	datac => \ram_content~203_combout\,
	datad => \ram_content~107_q\,
	combout => \ram_content~204_combout\);

\ram_content~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~27_q\);

\ram_content~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~35_q\);

\ram_content~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~19_q\);

\ram_content~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~205_combout\ = (\readAddress[0]~input_o\ & (((\readAddress[1]~input_o\)))) # (!\readAddress[0]~input_o\ & ((\readAddress[1]~input_o\ & (\ram_content~35_q\)) # (!\readAddress[1]~input_o\ & ((\ram_content~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[0]~input_o\,
	datab => \ram_content~35_q\,
	datac => \readAddress[1]~input_o\,
	datad => \ram_content~19_q\,
	combout => \ram_content~205_combout\);

\ram_content~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~43_q\);

\ram_content~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~206_combout\ = (\readAddress[0]~input_o\ & ((\ram_content~205_combout\ & ((\ram_content~43_q\))) # (!\ram_content~205_combout\ & (\ram_content~27_q\)))) # (!\readAddress[0]~input_o\ & (((\ram_content~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~27_q\,
	datab => \readAddress[0]~input_o\,
	datac => \ram_content~205_combout\,
	datad => \ram_content~43_q\,
	combout => \ram_content~206_combout\);

\ram_content~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~207_combout\ = (\readAddress[2]~input_o\ & (((\readAddress[3]~input_o\)))) # (!\readAddress[2]~input_o\ & ((\readAddress[3]~input_o\ & (\ram_content~204_combout\)) # (!\readAddress[3]~input_o\ & ((\ram_content~206_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[2]~input_o\,
	datab => \ram_content~204_combout\,
	datac => \readAddress[3]~input_o\,
	datad => \ram_content~206_combout\,
	combout => \ram_content~207_combout\);

\ram_content~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~131_q\);

\ram_content~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~123_q\);

\ram_content~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~115_q\);

\ram_content~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~208_combout\ = (\readAddress[1]~input_o\ & (((\readAddress[0]~input_o\)))) # (!\readAddress[1]~input_o\ & ((\readAddress[0]~input_o\ & (\ram_content~123_q\)) # (!\readAddress[0]~input_o\ & ((\ram_content~115_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[1]~input_o\,
	datab => \ram_content~123_q\,
	datac => \readAddress[0]~input_o\,
	datad => \ram_content~115_q\,
	combout => \ram_content~208_combout\);

\ram_content~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[6]~input_o\,
	ena => \ram_content~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~139_q\);

\ram_content~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~209_combout\ = (\readAddress[1]~input_o\ & ((\ram_content~208_combout\ & ((\ram_content~139_q\))) # (!\ram_content~208_combout\ & (\ram_content~131_q\)))) # (!\readAddress[1]~input_o\ & (((\ram_content~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~131_q\,
	datab => \readAddress[1]~input_o\,
	datac => \ram_content~208_combout\,
	datad => \ram_content~139_q\,
	combout => \ram_content~209_combout\);

\ram_content~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~210_combout\ = (\readAddress[2]~input_o\ & ((\ram_content~207_combout\ & ((\ram_content~209_combout\))) # (!\ram_content~207_combout\ & (\ram_content~202_combout\)))) # (!\readAddress[2]~input_o\ & (((\ram_content~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~202_combout\,
	datab => \readAddress[2]~input_o\,
	datac => \ram_content~207_combout\,
	datad => \ram_content~209_combout\,
	combout => \ram_content~210_combout\);

\writeData[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(7),
	o => \writeData[7]~input_o\);

\ram_content~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~60_q\);

\ram_content~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~92_q\);

\ram_content~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~28_q\);

\ram_content~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~211_combout\ = (\readAddress[2]~input_o\ & (((\readAddress[3]~input_o\)))) # (!\readAddress[2]~input_o\ & ((\readAddress[3]~input_o\ & (\ram_content~92_q\)) # (!\readAddress[3]~input_o\ & ((\ram_content~28_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[2]~input_o\,
	datab => \ram_content~92_q\,
	datac => \readAddress[3]~input_o\,
	datad => \ram_content~28_q\,
	combout => \ram_content~211_combout\);

\ram_content~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~124_q\);

\ram_content~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~212_combout\ = (\readAddress[2]~input_o\ & ((\ram_content~211_combout\ & ((\ram_content~124_q\))) # (!\ram_content~211_combout\ & (\ram_content~60_q\)))) # (!\readAddress[2]~input_o\ & (((\ram_content~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~60_q\,
	datab => \readAddress[2]~input_o\,
	datac => \ram_content~211_combout\,
	datad => \ram_content~124_q\,
	combout => \ram_content~212_combout\);

\ram_content~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~100_q\);

\ram_content~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~68_q\);

\ram_content~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~36_q\);

\ram_content~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~213_combout\ = (\readAddress[3]~input_o\ & (((\readAddress[2]~input_o\)))) # (!\readAddress[3]~input_o\ & ((\readAddress[2]~input_o\ & (\ram_content~68_q\)) # (!\readAddress[2]~input_o\ & ((\ram_content~36_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[3]~input_o\,
	datab => \ram_content~68_q\,
	datac => \readAddress[2]~input_o\,
	datad => \ram_content~36_q\,
	combout => \ram_content~213_combout\);

\ram_content~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~132_q\);

\ram_content~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~214_combout\ = (\readAddress[3]~input_o\ & ((\ram_content~213_combout\ & ((\ram_content~132_q\))) # (!\ram_content~213_combout\ & (\ram_content~100_q\)))) # (!\readAddress[3]~input_o\ & (((\ram_content~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~100_q\,
	datab => \readAddress[3]~input_o\,
	datac => \ram_content~213_combout\,
	datad => \ram_content~132_q\,
	combout => \ram_content~214_combout\);

\ram_content~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~84_q\);

\ram_content~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~52_q\);

\ram_content~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~20_q\);

\ram_content~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~215_combout\ = (\readAddress[3]~input_o\ & (((\readAddress[2]~input_o\)))) # (!\readAddress[3]~input_o\ & ((\readAddress[2]~input_o\ & (\ram_content~52_q\)) # (!\readAddress[2]~input_o\ & ((\ram_content~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[3]~input_o\,
	datab => \ram_content~52_q\,
	datac => \readAddress[2]~input_o\,
	datad => \ram_content~20_q\,
	combout => \ram_content~215_combout\);

\ram_content~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~116_q\);

\ram_content~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~216_combout\ = (\readAddress[3]~input_o\ & ((\ram_content~215_combout\ & ((\ram_content~116_q\))) # (!\ram_content~215_combout\ & (\ram_content~84_q\)))) # (!\readAddress[3]~input_o\ & (((\ram_content~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~84_q\,
	datab => \readAddress[3]~input_o\,
	datac => \ram_content~215_combout\,
	datad => \ram_content~116_q\,
	combout => \ram_content~216_combout\);

\ram_content~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~217_combout\ = (\readAddress[0]~input_o\ & (((\readAddress[1]~input_o\)))) # (!\readAddress[0]~input_o\ & ((\readAddress[1]~input_o\ & (\ram_content~214_combout\)) # (!\readAddress[1]~input_o\ & ((\ram_content~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[0]~input_o\,
	datab => \ram_content~214_combout\,
	datac => \readAddress[1]~input_o\,
	datad => \ram_content~216_combout\,
	combout => \ram_content~217_combout\);

\ram_content~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~76_q\);

\ram_content~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~108_q\);

\ram_content~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~44_q\);

\ram_content~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~218_combout\ = (\readAddress[2]~input_o\ & (((\readAddress[3]~input_o\)))) # (!\readAddress[2]~input_o\ & ((\readAddress[3]~input_o\ & (\ram_content~108_q\)) # (!\readAddress[3]~input_o\ & ((\ram_content~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readAddress[2]~input_o\,
	datab => \ram_content~108_q\,
	datac => \readAddress[3]~input_o\,
	datad => \ram_content~44_q\,
	combout => \ram_content~218_combout\);

\ram_content~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \writeData[7]~input_o\,
	ena => \ram_content~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_content~140_q\);

\ram_content~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~219_combout\ = (\readAddress[2]~input_o\ & ((\ram_content~218_combout\ & ((\ram_content~140_q\))) # (!\ram_content~218_combout\ & (\ram_content~76_q\)))) # (!\readAddress[2]~input_o\ & (((\ram_content~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~76_q\,
	datab => \readAddress[2]~input_o\,
	datac => \ram_content~218_combout\,
	datad => \ram_content~140_q\,
	combout => \ram_content~219_combout\);

\ram_content~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_content~220_combout\ = (\readAddress[0]~input_o\ & ((\ram_content~217_combout\ & ((\ram_content~219_combout\))) # (!\ram_content~217_combout\ & (\ram_content~212_combout\)))) # (!\readAddress[0]~input_o\ & (((\ram_content~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_content~212_combout\,
	datab => \readAddress[0]~input_o\,
	datac => \ram_content~217_combout\,
	datad => \ram_content~219_combout\,
	combout => \ram_content~220_combout\);

ww_readData(0) <= \readData[0]~output_o\;

ww_readData(1) <= \readData[1]~output_o\;

ww_readData(2) <= \readData[2]~output_o\;

ww_readData(3) <= \readData[3]~output_o\;

ww_readData(4) <= \readData[4]~output_o\;

ww_readData(5) <= \readData[5]~output_o\;

ww_readData(6) <= \readData[6]~output_o\;

ww_readData(7) <= \readData[7]~output_o\;
END structure;


