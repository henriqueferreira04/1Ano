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

-- DATE "03/19/2023 17:12:26"

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

ENTITY 	DisplayDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(6 DOWNTO 0)
	);
END DisplayDemo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DisplayDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(6 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|decOut_n[6]~22_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|decOut_n[6]~39_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~36_combout\ : std_logic;
SIGNAL \inst|comb~12_combout\ : std_logic;
SIGNAL \inst|comb~13_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~13_combout\ : std_logic;
SIGNAL \inst|decOut_n[5]~38_combout\ : std_logic;
SIGNAL \inst|comb~15_combout\ : std_logic;
SIGNAL \inst|comb~14_combout\ : std_logic;
SIGNAL \inst|decOut_n[4]~9_combout\ : std_logic;
SIGNAL \inst|decOut_n[4]~37_combout\ : std_logic;
SIGNAL \inst|comb~16_combout\ : std_logic;
SIGNAL \inst|comb~17_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~28_combout\ : std_logic;
SIGNAL \inst|Equal14~1_combout\ : std_logic;
SIGNAL \inst|Equal14~0_combout\ : std_logic;
SIGNAL \inst|decOut_n[4]~29_combout\ : std_logic;
SIGNAL \inst|Equal14~2_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~30_combout\ : std_logic;
SIGNAL \inst|comb~19_combout\ : std_logic;
SIGNAL \inst|comb~18_combout\ : std_logic;
SIGNAL \inst|comb~2_combout\ : std_logic;
SIGNAL \inst|comb~24_combout\ : std_logic;
SIGNAL \inst|comb~6_combout\ : std_logic;
SIGNAL \inst|comb~25_combout\ : std_logic;
SIGNAL \inst|decOut_n[1]~32_combout\ : std_logic;
SIGNAL \inst|decOut_n[1]~31_combout\ : std_logic;
SIGNAL \inst|decOut_n[1]~33_combout\ : std_logic;
SIGNAL \inst|comb~21_combout\ : std_logic;
SIGNAL \inst|comb~20_combout\ : std_logic;
SIGNAL \inst|decOut_n[0]~34_combout\ : std_logic;
SIGNAL \inst|decOut_n[0]~35_combout\ : std_logic;
SIGNAL \inst|comb~23_combout\ : std_logic;
SIGNAL \inst|comb~22_combout\ : std_logic;
SIGNAL \inst|decOut_n\ : std_logic_vector(6 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(5),
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(4),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(2),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(1),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(0),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X111_Y50_N10
\inst|decOut_n[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~22_combout\ = (\KEY[0]~input_o\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \inst|decOut_n[6]~22_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X111_Y50_N28
\inst|decOut_n[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~39_combout\ = (\inst|decOut_n[6]~22_combout\) # ((\SW[1]~input_o\) # ((\SW[2]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n[6]~22_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[6]~39_combout\);

-- Location: LCCOMB_X111_Y50_N22
\inst|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~6_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & (\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[6]~6_combout\);

-- Location: LCCOMB_X111_Y50_N16
\inst|decOut_n[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~36_combout\ = (!\KEY[0]~input_o\ & \inst|decOut_n[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst|decOut_n[6]~6_combout\,
	combout => \inst|decOut_n[6]~36_combout\);

-- Location: LCCOMB_X110_Y50_N24
\inst|comb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~12_combout\ = (\inst|decOut_n[6]~39_combout\ & !\inst|decOut_n[6]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[6]~36_combout\,
	combout => \inst|comb~12_combout\);

-- Location: LCCOMB_X110_Y50_N26
\inst|comb~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~13_combout\ = (\inst|decOut_n[6]~39_combout\ & \inst|decOut_n[6]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[6]~36_combout\,
	combout => \inst|comb~13_combout\);

-- Location: LCCOMB_X110_Y50_N16
\inst|decOut_n[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n\(6) = (!\inst|comb~12_combout\ & ((\inst|comb~13_combout\) # (\inst|decOut_n\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|comb~12_combout\,
	datac => \inst|comb~13_combout\,
	datad => \inst|decOut_n\(6),
	combout => \inst|decOut_n\(6));

-- Location: LCCOMB_X112_Y50_N12
\inst|decOut_n[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~13_combout\ = (\SW[1]~input_o\) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n[5]~13_combout\);

-- Location: LCCOMB_X112_Y50_N6
\inst|decOut_n[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[5]~38_combout\ = (!\SW[3]~input_o\ & (\inst|decOut_n[5]~13_combout\ & (\SW[0]~input_o\ & !\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|decOut_n[5]~13_combout\,
	datac => \SW[0]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \inst|decOut_n[5]~38_combout\);

-- Location: LCCOMB_X112_Y50_N26
\inst|comb~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~15_combout\ = (\inst|decOut_n[6]~39_combout\ & \inst|decOut_n[5]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[5]~38_combout\,
	combout => \inst|comb~15_combout\);

-- Location: LCCOMB_X112_Y50_N8
\inst|comb~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~14_combout\ = (\inst|decOut_n[6]~39_combout\ & !\inst|decOut_n[5]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[5]~38_combout\,
	combout => \inst|comb~14_combout\);

-- Location: LCCOMB_X112_Y50_N16
\inst|decOut_n[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n\(5) = (!\inst|comb~14_combout\ & ((\inst|comb~15_combout\) # (\inst|decOut_n\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|comb~15_combout\,
	datac => \inst|comb~14_combout\,
	datad => \inst|decOut_n\(5),
	combout => \inst|decOut_n\(5));

-- Location: LCCOMB_X112_Y50_N24
\inst|decOut_n[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[4]~9_combout\ = (\SW[0]~input_o\ & (((!\SW[3]~input_o\) # (!\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|decOut_n[4]~9_combout\);

-- Location: LCCOMB_X112_Y50_N10
\inst|decOut_n[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[4]~37_combout\ = (\inst|decOut_n[4]~9_combout\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[4]~9_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|decOut_n[4]~37_combout\);

-- Location: LCCOMB_X112_Y50_N20
\inst|comb~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~16_combout\ = (\inst|decOut_n[6]~39_combout\ & !\inst|decOut_n[4]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[4]~37_combout\,
	combout => \inst|comb~16_combout\);

-- Location: LCCOMB_X112_Y50_N22
\inst|comb~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~17_combout\ = (\inst|decOut_n[6]~39_combout\ & \inst|decOut_n[4]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[4]~37_combout\,
	combout => \inst|comb~17_combout\);

-- Location: LCCOMB_X112_Y50_N18
\inst|decOut_n[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n\(4) = (!\inst|comb~16_combout\ & ((\inst|comb~17_combout\) # (\inst|decOut_n\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|comb~16_combout\,
	datac => \inst|comb~17_combout\,
	datad => \inst|decOut_n\(4),
	combout => \inst|decOut_n\(4));

-- Location: LCCOMB_X111_Y50_N6
\inst|decOut_n[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~28_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((!\SW[0]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\) # (!\SW[3]~input_o\))))) # (!\SW[1]~input_o\ & (((\SW[3]~input_o\) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[3]~28_combout\);

-- Location: LCCOMB_X111_Y50_N2
\inst|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal14~1_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Equal14~1_combout\);

-- Location: LCCOMB_X111_Y50_N0
\inst|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal14~0_combout\ = (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Equal14~0_combout\);

-- Location: LCCOMB_X111_Y50_N8
\inst|decOut_n[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[4]~29_combout\ = (!\inst|Equal14~1_combout\ & !\inst|Equal14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal14~1_combout\,
	datad => \inst|Equal14~0_combout\,
	combout => \inst|decOut_n[4]~29_combout\);

-- Location: LCCOMB_X111_Y50_N12
\inst|Equal14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal14~2_combout\ = (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Equal14~2_combout\);

-- Location: LCCOMB_X111_Y50_N18
\inst|decOut_n[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~30_combout\ = (!\KEY[0]~input_o\ & (((!\inst|decOut_n[3]~28_combout\ & !\inst|Equal14~2_combout\)) # (!\inst|decOut_n[4]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n[3]~28_combout\,
	datab => \inst|decOut_n[4]~29_combout\,
	datac => \KEY[0]~input_o\,
	datad => \inst|Equal14~2_combout\,
	combout => \inst|decOut_n[3]~30_combout\);

-- Location: LCCOMB_X110_Y50_N6
\inst|comb~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~19_combout\ = (\inst|decOut_n[6]~39_combout\ & \inst|decOut_n[3]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[3]~30_combout\,
	combout => \inst|comb~19_combout\);

-- Location: LCCOMB_X110_Y50_N20
\inst|comb~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~18_combout\ = (\inst|decOut_n[6]~39_combout\ & !\inst|decOut_n[3]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[3]~30_combout\,
	combout => \inst|comb~18_combout\);

-- Location: LCCOMB_X110_Y50_N2
\inst|decOut_n[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n\(3) = (!\inst|comb~18_combout\ & ((\inst|comb~19_combout\) # (\inst|decOut_n\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|comb~19_combout\,
	datab => \inst|comb~18_combout\,
	datad => \inst|decOut_n\(3),
	combout => \inst|decOut_n\(3));

-- Location: LCCOMB_X112_Y50_N0
\inst|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~2_combout\ = (\SW[1]~input_o\ & (((!\SW[3]~input_o\)) # (!\SW[2]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\SW[2]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|comb~2_combout\);

-- Location: LCCOMB_X112_Y50_N2
\inst|comb~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~24_combout\ = (\inst|comb~2_combout\) # (\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|comb~2_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|comb~24_combout\);

-- Location: LCCOMB_X112_Y50_N4
\inst|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~6_combout\ = (\SW[1]~input_o\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \inst|comb~6_combout\);

-- Location: LCCOMB_X112_Y50_N30
\inst|comb~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~25_combout\ = (\SW[3]~input_o\ & (\inst|comb~6_combout\ & (\SW[2]~input_o\ & !\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|comb~6_combout\,
	datac => \SW[2]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \inst|comb~25_combout\);

-- Location: LCCOMB_X112_Y50_N28
\inst|decOut_n[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n\(2) = (!\inst|comb~24_combout\ & ((\inst|comb~25_combout\) # (\inst|decOut_n\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|comb~24_combout\,
	datac => \inst|comb~25_combout\,
	datad => \inst|decOut_n\(2),
	combout => \inst|decOut_n\(2));

-- Location: LCCOMB_X111_Y50_N30
\inst|decOut_n[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[1]~32_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((!\SW[3]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[3]~input_o\) # (!\SW[2]~input_o\))))) # (!\SW[0]~input_o\ & (\SW[2]~input_o\ $ (((\SW[1]~input_o\) # (\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[1]~32_combout\);

-- Location: LCCOMB_X111_Y50_N20
\inst|decOut_n[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[1]~31_combout\ = (!\inst|Equal14~1_combout\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal14~1_combout\,
	datac => \KEY[0]~input_o\,
	combout => \inst|decOut_n[1]~31_combout\);

-- Location: LCCOMB_X111_Y50_N24
\inst|decOut_n[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[1]~33_combout\ = (\inst|decOut_n[1]~31_combout\ & ((\inst|Equal14~0_combout\) # ((!\inst|Equal14~2_combout\ & !\inst|decOut_n[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal14~2_combout\,
	datab => \inst|Equal14~0_combout\,
	datac => \inst|decOut_n[1]~32_combout\,
	datad => \inst|decOut_n[1]~31_combout\,
	combout => \inst|decOut_n[1]~33_combout\);

-- Location: LCCOMB_X110_Y50_N10
\inst|comb~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~21_combout\ = (\inst|decOut_n[6]~39_combout\ & \inst|decOut_n[1]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[1]~33_combout\,
	combout => \inst|comb~21_combout\);

-- Location: LCCOMB_X110_Y50_N8
\inst|comb~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~20_combout\ = (\inst|decOut_n[6]~39_combout\ & !\inst|decOut_n[1]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[1]~33_combout\,
	combout => \inst|comb~20_combout\);

-- Location: LCCOMB_X110_Y50_N28
\inst|decOut_n[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n\(1) = (!\inst|comb~20_combout\ & ((\inst|comb~21_combout\) # (\inst|decOut_n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|comb~21_combout\,
	datac => \inst|comb~20_combout\,
	datad => \inst|decOut_n\(1),
	combout => \inst|decOut_n\(1));

-- Location: LCCOMB_X111_Y50_N26
\inst|decOut_n[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[0]~34_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|decOut_n[0]~34_combout\);

-- Location: LCCOMB_X111_Y50_N4
\inst|decOut_n[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[0]~35_combout\ = (!\KEY[0]~input_o\ & (((\inst|decOut_n[0]~34_combout\ & !\inst|Equal14~2_combout\)) # (!\inst|decOut_n[4]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n[0]~34_combout\,
	datab => \inst|decOut_n[4]~29_combout\,
	datac => \KEY[0]~input_o\,
	datad => \inst|Equal14~2_combout\,
	combout => \inst|decOut_n[0]~35_combout\);

-- Location: LCCOMB_X110_Y50_N14
\inst|comb~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~23_combout\ = (\inst|decOut_n[6]~39_combout\ & \inst|decOut_n[0]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[0]~35_combout\,
	combout => \inst|comb~23_combout\);

-- Location: LCCOMB_X110_Y50_N12
\inst|comb~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~22_combout\ = (\inst|decOut_n[6]~39_combout\ & !\inst|decOut_n[0]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[6]~39_combout\,
	datad => \inst|decOut_n[0]~35_combout\,
	combout => \inst|comb~22_combout\);

-- Location: LCCOMB_X110_Y50_N22
\inst|decOut_n[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n\(0) = (!\inst|comb~22_combout\ & ((\inst|comb~23_combout\) # (\inst|decOut_n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|comb~23_combout\,
	datac => \inst|decOut_n\(0),
	datad => \inst|comb~22_combout\,
	combout => \inst|decOut_n\(0));

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


