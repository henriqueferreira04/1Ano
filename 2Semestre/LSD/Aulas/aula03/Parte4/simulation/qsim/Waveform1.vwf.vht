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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/23/2023 15:56:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bin2BCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bin2BCD_vhd_vec_tst IS
END Bin2BCD_vhd_vec_tst;
ARCHITECTURE Bin2BCD_arch OF Bin2BCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bin_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dec_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
COMPONENT Bin2BCD
	PORT (
	bin_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dec_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Bin2BCD
	PORT MAP (
-- list connections between master ports and signals
	bin_in => bin_in,
	dec_out => dec_out,
	enable => enable
	);
-- bin_in[3]
t_prcs_bin_in_3: PROCESS
BEGIN
	bin_in(3) <= '1';
	WAIT FOR 70000 ps;
	bin_in(3) <= '0';
	WAIT FOR 210000 ps;
	bin_in(3) <= '1';
	WAIT FOR 70000 ps;
	bin_in(3) <= '0';
	WAIT FOR 210000 ps;
	bin_in(3) <= '1';
	WAIT FOR 70000 ps;
	bin_in(3) <= '0';
	WAIT FOR 70000 ps;
	bin_in(3) <= '1';
	WAIT FOR 70000 ps;
	bin_in(3) <= '0';
	WAIT FOR 70000 ps;
	bin_in(3) <= '1';
	WAIT FOR 70000 ps;
	bin_in(3) <= '0';
	WAIT FOR 70000 ps;
	bin_in(3) <= '1';
WAIT;
END PROCESS t_prcs_bin_in_3;
-- bin_in[2]
t_prcs_bin_in_2: PROCESS
BEGIN
	bin_in(2) <= '1';
	WAIT FOR 280000 ps;
	bin_in(2) <= '0';
	WAIT FOR 210000 ps;
	bin_in(2) <= '1';
	WAIT FOR 70000 ps;
	bin_in(2) <= '0';
	WAIT FOR 210000 ps;
	bin_in(2) <= '1';
	WAIT FOR 140000 ps;
	bin_in(2) <= '0';
	WAIT FOR 70000 ps;
	bin_in(2) <= '1';
WAIT;
END PROCESS t_prcs_bin_in_2;
-- bin_in[1]
t_prcs_bin_in_1: PROCESS
BEGIN
	bin_in(1) <= '0';
	WAIT FOR 70000 ps;
	bin_in(1) <= '1';
	WAIT FOR 70000 ps;
	bin_in(1) <= '0';
	WAIT FOR 140000 ps;
	bin_in(1) <= '1';
	WAIT FOR 70000 ps;
	bin_in(1) <= '0';
	WAIT FOR 70000 ps;
	bin_in(1) <= '1';
	WAIT FOR 210000 ps;
	bin_in(1) <= '0';
	WAIT FOR 280000 ps;
	bin_in(1) <= '1';
WAIT;
END PROCESS t_prcs_bin_in_1;
-- bin_in[0]
t_prcs_bin_in_0: PROCESS
BEGIN
	bin_in(0) <= '0';
	WAIT FOR 280000 ps;
	bin_in(0) <= '1';
	WAIT FOR 280000 ps;
	bin_in(0) <= '0';
	WAIT FOR 70000 ps;
	bin_in(0) <= '1';
	WAIT FOR 140000 ps;
	bin_in(0) <= '0';
	WAIT FOR 70000 ps;
	bin_in(0) <= '1';
	WAIT FOR 70000 ps;
	bin_in(0) <= '0';
	WAIT FOR 70000 ps;
	bin_in(0) <= '1';
WAIT;
END PROCESS t_prcs_bin_in_0;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 70000 ps;
	enable <= '1';
	WAIT FOR 70000 ps;
	enable <= '0';
	WAIT FOR 70000 ps;
	enable <= '1';
	WAIT FOR 280000 ps;
	enable <= '0';
	WAIT FOR 280000 ps;
	enable <= '1';
	WAIT FOR 140000 ps;
	enable <= '0';
	WAIT FOR 70000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
END Bin2BCD_arch;
