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

-- DATE "04/04/2023 14:20:22"

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

ENTITY 	TimerN IS
    PORT (
	start : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	enable : IN std_logic;
	timerOut : OUT std_logic
	);
END TimerN;

ARCHITECTURE structure OF TimerN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_timerOut : std_logic;
SIGNAL \timerOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_count~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \s_count[1]~4_combout\ : std_logic;
SIGNAL \s_count[1]~5_combout\ : std_logic;
SIGNAL \s_count[2]~10_combout\ : std_logic;
SIGNAL \s_count[5]~3_combout\ : std_logic;
SIGNAL \s_count[1]~9_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \s_count~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s_count~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \s_count[3]~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \s_count[4]~7_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \s_count[5]~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \timerOut~0_combout\ : std_logic;
SIGNAL \timerOut~reg0_q\ : std_logic;
SIGNAL s_count : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_start <= start;
ww_reset <= reset;
ww_clk <= clk;
ww_enable <= enable;
timerOut <= ww_timerOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\timerOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timerOut~reg0_q\,
	devoe => ww_devoe,
	o => \timerOut~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~1_combout\ = (!\reset~input_o\ & ((\enable~input_o\ & (\start~input_o\)) # (!\enable~input_o\ & ((s_count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => s_count(0),
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \s_count~1_combout\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_count(0) $ (VCC)
-- \Add0~1\ = CARRY(s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (s_count(1) & (!\Add0~1\)) # (!s_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!s_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (s_count(2) & (\Add0~3\ $ (GND))) # (!s_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((s_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~4_combout\ = (\start~input_o\) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \enable~input_o\,
	combout => \s_count[1]~4_combout\);

\s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~5_combout\ = (!\reset~input_o\ & ((\s_count[1]~4_combout\) # ((\Equal0~0_combout\ & !\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[1]~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \reset~input_o\,
	combout => \s_count[1]~5_combout\);

\s_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[2]~10_combout\ = (\s_count[1]~5_combout\ & (s_count(2))) # (!\s_count[1]~5_combout\ & (((\Add0~4_combout\ & \s_count[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datab => \Add0~4_combout\,
	datac => \s_count[5]~3_combout\,
	datad => \s_count[1]~5_combout\,
	combout => \s_count[2]~10_combout\);

\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

\s_count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[5]~3_combout\ = (!\reset~input_o\ & (((!s_count(2)) # (!s_count(1))) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => s_count(1),
	datac => s_count(2),
	datad => \reset~input_o\,
	combout => \s_count[5]~3_combout\);

\s_count[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~9_combout\ = (\s_count[1]~5_combout\ & (s_count(1))) # (!\s_count[1]~5_combout\ & (((\Add0~2_combout\ & \s_count[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datab => \Add0~2_combout\,
	datac => \s_count[5]~3_combout\,
	datad => \s_count[1]~5_combout\,
	combout => \s_count[1]~9_combout\);

\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (s_count(1)) # (s_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datab => s_count(2),
	combout => \LessThan0~0_combout\);

\s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~0_combout\ = (\enable~input_o\ & (!\reset~input_o\ & ((\LessThan0~0_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \reset~input_o\,
	combout => \s_count~0_combout\);

\s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~2_combout\ = (\s_count~1_combout\) # ((\s_count~0_combout\ & (\Equal0~1_combout\ $ (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count~1_combout\,
	datab => \s_count~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \s_count~2_combout\);

\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (s_count(3) & (!\Add0~5\)) # (!s_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\s_count[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[3]~6_combout\ = (\s_count[1]~5_combout\ & (s_count(3))) # (!\s_count[1]~5_combout\ & (((\Add0~6_combout\ & \s_count[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datab => \Add0~6_combout\,
	datac => \s_count[5]~3_combout\,
	datad => \s_count[1]~5_combout\,
	combout => \s_count[3]~6_combout\);

\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (s_count(4) & (\Add0~7\ $ (GND))) # (!s_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((s_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\s_count[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[4]~7_combout\ = (\s_count[1]~5_combout\ & (s_count(4))) # (!\s_count[1]~5_combout\ & (((\s_count[5]~3_combout\ & \Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datab => \s_count[5]~3_combout\,
	datac => \Add0~8_combout\,
	datad => \s_count[1]~5_combout\,
	combout => \s_count[4]~7_combout\);

\s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(4));

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = s_count(5) $ (\Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

\s_count[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[5]~8_combout\ = (\s_count[1]~5_combout\ & (s_count(5))) # (!\s_count[1]~5_combout\ & (((\s_count[5]~3_combout\ & \Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datab => \s_count[5]~3_combout\,
	datac => \Add0~10_combout\,
	datad => \s_count[1]~5_combout\,
	combout => \s_count[5]~8_combout\);

\s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(5));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_count(0) & (!s_count(3) & (!s_count(4) & !s_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datab => s_count(3),
	datac => s_count(4),
	datad => s_count(5),
	combout => \Equal0~0_combout\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ((!s_count(2)) # (!s_count(1))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => s_count(1),
	datad => s_count(2),
	combout => \Equal0~1_combout\);

\timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOut~0_combout\ = (\s_count~0_combout\ & ((\start~input_o\ & (\timerOut~reg0_q\)) # (!\start~input_o\ & ((\Equal0~1_combout\))))) # (!\s_count~0_combout\ & (\timerOut~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOut~reg0_q\,
	datab => \Equal0~1_combout\,
	datac => \s_count~0_combout\,
	datad => \start~input_o\,
	combout => \timerOut~0_combout\);

\timerOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timerOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOut~reg0_q\);

ww_timerOut <= \timerOut~output_o\;
END structure;


