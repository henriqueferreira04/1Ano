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
-- Generated on "03/19/2023 16:25:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux4_1Demo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux4_1Demo_vhd_vec_tst IS
END Mux4_1Demo_vhd_vec_tst;
ARCHITECTURE Mux4_1Demo_arch OF Mux4_1Demo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL KEY : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Mux4_1Demo
	PORT (
	KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux4_1Demo
	PORT MAP (
-- list connections between master ports and signals
	KEY => KEY,
	LEDR => LEDR,
	SW => SW
	);
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '1';
	WAIT FOR 40000 ps;
	KEY(1) <= '0';
	WAIT FOR 200000 ps;
	KEY(1) <= '1';
	WAIT FOR 40000 ps;
	KEY(1) <= '0';
	WAIT FOR 40000 ps;
	KEY(1) <= '1';
	WAIT FOR 40000 ps;
	KEY(1) <= '0';
	WAIT FOR 40000 ps;
	KEY(1) <= '1';
	WAIT FOR 40000 ps;
	KEY(1) <= '0';
	WAIT FOR 80000 ps;
	KEY(1) <= '1';
	WAIT FOR 160000 ps;
	KEY(1) <= '0';
	WAIT FOR 80000 ps;
	KEY(1) <= '1';
	WAIT FOR 80000 ps;
	KEY(1) <= '0';
	WAIT FOR 40000 ps;
	KEY(1) <= '1';
	WAIT FOR 40000 ps;
	KEY(1) <= '0';
	WAIT FOR 40000 ps;
	KEY(1) <= '1';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 80000 ps;
	KEY(0) <= '1';
	WAIT FOR 80000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 80000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 120000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
	WAIT FOR 30000 ps;
	SW(3) <= '1';
	WAIT FOR 30000 ps;
	SW(3) <= '0';
	WAIT FOR 30000 ps;
	SW(3) <= '1';
	WAIT FOR 60000 ps;
	SW(3) <= '0';
	WAIT FOR 90000 ps;
	SW(3) <= '1';
	WAIT FOR 30000 ps;
	SW(3) <= '0';
	WAIT FOR 60000 ps;
	SW(3) <= '1';
	WAIT FOR 60000 ps;
	SW(3) <= '0';
	WAIT FOR 90000 ps;
	SW(3) <= '1';
	WAIT FOR 90000 ps;
	SW(3) <= '0';
	WAIT FOR 30000 ps;
	SW(3) <= '1';
	WAIT FOR 90000 ps;
	SW(3) <= '0';
	WAIT FOR 30000 ps;
	SW(3) <= '1';
	WAIT FOR 90000 ps;
	SW(3) <= '0';
	WAIT FOR 30000 ps;
	SW(3) <= '1';
	WAIT FOR 60000 ps;
	SW(3) <= '0';
	WAIT FOR 60000 ps;
	SW(3) <= '1';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '1';
	WAIT FOR 30000 ps;
	SW(2) <= '0';
	WAIT FOR 30000 ps;
	SW(2) <= '1';
	WAIT FOR 120000 ps;
	SW(2) <= '0';
	WAIT FOR 30000 ps;
	SW(2) <= '1';
	WAIT FOR 30000 ps;
	SW(2) <= '0';
	WAIT FOR 90000 ps;
	SW(2) <= '1';
	WAIT FOR 30000 ps;
	SW(2) <= '0';
	WAIT FOR 30000 ps;
	SW(2) <= '1';
	WAIT FOR 30000 ps;
	SW(2) <= '0';
	WAIT FOR 30000 ps;
	SW(2) <= '1';
	WAIT FOR 30000 ps;
	SW(2) <= '0';
	WAIT FOR 60000 ps;
	SW(2) <= '1';
	WAIT FOR 30000 ps;
	SW(2) <= '0';
	WAIT FOR 30000 ps;
	SW(2) <= '1';
	WAIT FOR 60000 ps;
	SW(2) <= '0';
	WAIT FOR 30000 ps;
	SW(2) <= '1';
	WAIT FOR 30000 ps;
	SW(2) <= '0';
	WAIT FOR 60000 ps;
	SW(2) <= '1';
	WAIT FOR 120000 ps;
	SW(2) <= '0';
	WAIT FOR 30000 ps;
	SW(2) <= '1';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '1';
	WAIT FOR 60000 ps;
	SW(1) <= '0';
	WAIT FOR 30000 ps;
	SW(1) <= '1';
	WAIT FOR 30000 ps;
	SW(1) <= '0';
	WAIT FOR 30000 ps;
	SW(1) <= '1';
	WAIT FOR 60000 ps;
	SW(1) <= '0';
	WAIT FOR 30000 ps;
	SW(1) <= '1';
	WAIT FOR 30000 ps;
	SW(1) <= '0';
	WAIT FOR 90000 ps;
	SW(1) <= '1';
	WAIT FOR 30000 ps;
	SW(1) <= '0';
	WAIT FOR 150000 ps;
	SW(1) <= '1';
	WAIT FOR 30000 ps;
	SW(1) <= '0';
	WAIT FOR 60000 ps;
	SW(1) <= '1';
	WAIT FOR 60000 ps;
	SW(1) <= '0';
	WAIT FOR 30000 ps;
	SW(1) <= '1';
	WAIT FOR 30000 ps;
	SW(1) <= '0';
	WAIT FOR 60000 ps;
	SW(1) <= '1';
	WAIT FOR 90000 ps;
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
	WAIT FOR 240000 ps;
	SW(0) <= '1';
	WAIT FOR 90000 ps;
	SW(0) <= '0';
	WAIT FOR 30000 ps;
	SW(0) <= '1';
	WAIT FOR 30000 ps;
	SW(0) <= '0';
	WAIT FOR 30000 ps;
	SW(0) <= '1';
	WAIT FOR 60000 ps;
	SW(0) <= '0';
	WAIT FOR 30000 ps;
	SW(0) <= '1';
	WAIT FOR 90000 ps;
	SW(0) <= '0';
	WAIT FOR 60000 ps;
	SW(0) <= '1';
	WAIT FOR 60000 ps;
	SW(0) <= '0';
	WAIT FOR 30000 ps;
	SW(0) <= '1';
	WAIT FOR 90000 ps;
	SW(0) <= '0';
	WAIT FOR 30000 ps;
	SW(0) <= '1';
	WAIT FOR 120000 ps;
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END Mux4_1Demo_arch;
