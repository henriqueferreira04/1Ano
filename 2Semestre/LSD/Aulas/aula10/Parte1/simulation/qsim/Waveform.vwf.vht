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
-- Generated on "05/22/2023 18:35:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROM_16_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_16_8_vhd_vec_tst IS
END ROM_16_8_vhd_vec_tst;
ARCHITECTURE ROM_16_8_arch OF ROM_16_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ROM_16_8
	PORT (
	address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ROM_16_8
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	data_out => data_out
	);
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
	WAIT FOR 20000 ps;
	address(3) <= '1';
	WAIT FOR 70000 ps;
	address(3) <= '0';
	WAIT FOR 50000 ps;
	address(3) <= '1';
	WAIT FOR 210000 ps;
	address(3) <= '0';
	WAIT FOR 130000 ps;
	address(3) <= '1';
	WAIT FOR 300000 ps;
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
	WAIT FOR 140000 ps;
	address(2) <= '1';
	WAIT FOR 500000 ps;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
	WAIT FOR 20000 ps;
	address(1) <= '1';
	WAIT FOR 70000 ps;
	address(1) <= '0';
	WAIT FOR 50000 ps;
	address(1) <= '1';
	WAIT FOR 640000 ps;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '0';
	WAIT FOR 480000 ps;
	address(0) <= '1';
	WAIT FOR 160000 ps;
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;
END ROM_16_8_arch;
