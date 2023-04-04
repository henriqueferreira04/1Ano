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

-- DATE "04/04/2023 13:12:16"

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

ENTITY 	AccN IS
    PORT (
	clk : IN std_logic;
	dataIn : IN std_logic_vector(3 DOWNTO 0);
	enable : IN std_logic;
	reset : IN std_logic;
	dataOut : OUT std_logic_vector(3 DOWNTO 0)
	);
END AccN;

ARCHITECTURE structure OF AccN IS
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
SIGNAL ww_dataIn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_dataOut : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \reg|dataOut[0]~4_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \reg|dataOut[0]~6_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \reg|dataOut[0]~5\ : std_logic;
SIGNAL \reg|dataOut[1]~7_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \reg|dataOut[1]~8\ : std_logic;
SIGNAL \reg|dataOut[2]~9_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \reg|dataOut[2]~10\ : std_logic;
SIGNAL \reg|dataOut[3]~11_combout\ : std_logic;
SIGNAL \reg|dataOut\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_dataIn <= dataIn;
ww_enable <= enable;
ww_reset <= reset;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(0),
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(1),
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(2),
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(3),
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\reg|dataOut[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[0]~4_combout\ = (\reg|dataOut\(0) & (\dataIn[0]~input_o\ $ (VCC))) # (!\reg|dataOut\(0) & (\dataIn[0]~input_o\ & VCC))
-- \reg|dataOut[0]~5\ = CARRY((\reg|dataOut\(0) & \dataIn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|dataOut\(0),
	datab => \dataIn[0]~input_o\,
	datad => VCC,
	combout => \reg|dataOut[0]~4_combout\,
	cout => \reg|dataOut[0]~5\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\reg|dataOut[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[0]~6_combout\ = (\reset~input_o\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \enable~input_o\,
	combout => \reg|dataOut[0]~6_combout\);

\reg|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg|dataOut[0]~4_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(0));

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\reg|dataOut[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[1]~7_combout\ = (\reg|dataOut\(1) & ((\dataIn[1]~input_o\ & (\reg|dataOut[0]~5\ & VCC)) # (!\dataIn[1]~input_o\ & (!\reg|dataOut[0]~5\)))) # (!\reg|dataOut\(1) & ((\dataIn[1]~input_o\ & (!\reg|dataOut[0]~5\)) # (!\dataIn[1]~input_o\ & 
-- ((\reg|dataOut[0]~5\) # (GND)))))
-- \reg|dataOut[1]~8\ = CARRY((\reg|dataOut\(1) & (!\dataIn[1]~input_o\ & !\reg|dataOut[0]~5\)) # (!\reg|dataOut\(1) & ((!\reg|dataOut[0]~5\) # (!\dataIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|dataOut\(1),
	datab => \dataIn[1]~input_o\,
	datad => VCC,
	cin => \reg|dataOut[0]~5\,
	combout => \reg|dataOut[1]~7_combout\,
	cout => \reg|dataOut[1]~8\);

\reg|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg|dataOut[1]~7_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(1));

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\reg|dataOut[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[2]~9_combout\ = ((\reg|dataOut\(2) $ (\dataIn[2]~input_o\ $ (!\reg|dataOut[1]~8\)))) # (GND)
-- \reg|dataOut[2]~10\ = CARRY((\reg|dataOut\(2) & ((\dataIn[2]~input_o\) # (!\reg|dataOut[1]~8\))) # (!\reg|dataOut\(2) & (\dataIn[2]~input_o\ & !\reg|dataOut[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|dataOut\(2),
	datab => \dataIn[2]~input_o\,
	datad => VCC,
	cin => \reg|dataOut[1]~8\,
	combout => \reg|dataOut[2]~9_combout\,
	cout => \reg|dataOut[2]~10\);

\reg|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg|dataOut[2]~9_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(2));

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\reg|dataOut[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[3]~11_combout\ = \reg|dataOut\(3) $ (\dataIn[3]~input_o\ $ (\reg|dataOut[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|dataOut\(3),
	datab => \dataIn[3]~input_o\,
	cin => \reg|dataOut[2]~10\,
	combout => \reg|dataOut[3]~11_combout\);

\reg|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg|dataOut[3]~11_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(3));

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;
END structure;


