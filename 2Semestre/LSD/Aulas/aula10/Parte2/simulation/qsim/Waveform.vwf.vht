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
-- Generated on "05/22/2023 18:42:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM_1P_16_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM_1P_16_8_vhd_vec_tst IS
END RAM_1P_16_8_vhd_vec_tst;
ARCHITECTURE RAM_1P_16_8_arch OF RAM_1P_16_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL readData : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL writeData : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL writeEnable : STD_LOGIC;
COMPONENT RAM_1P_16_8
	PORT (
	address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	readData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	writeData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	writeEnable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RAM_1P_16_8
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clk => clk,
	readData => readData,
	writeData => writeData,
	writeEnable => writeEnable
	);
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
	WAIT FOR 120000 ps;
	address(3) <= '1';
	WAIT FOR 40000 ps;
	address(3) <= '0';
	WAIT FOR 40000 ps;
	address(3) <= '1';
	WAIT FOR 40000 ps;
	address(3) <= '0';
	WAIT FOR 40000 ps;
	address(3) <= '1';
	WAIT FOR 40000 ps;
	address(3) <= '0';
	WAIT FOR 160000 ps;
	address(3) <= '1';
	WAIT FOR 80000 ps;
	address(3) <= '0';
	WAIT FOR 40000 ps;
	address(3) <= '1';
	WAIT FOR 80000 ps;
	address(3) <= '0';
	WAIT FOR 40000 ps;
	address(3) <= '1';
	WAIT FOR 80000 ps;
	address(3) <= '0';
	WAIT FOR 80000 ps;
	address(3) <= '1';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '1';
	WAIT FOR 80000 ps;
	address(2) <= '0';
	WAIT FOR 80000 ps;
	address(2) <= '1';
	WAIT FOR 80000 ps;
	address(2) <= '0';
	WAIT FOR 40000 ps;
	address(2) <= '1';
	WAIT FOR 40000 ps;
	address(2) <= '0';
	WAIT FOR 80000 ps;
	address(2) <= '1';
	WAIT FOR 200000 ps;
	address(2) <= '0';
	WAIT FOR 40000 ps;
	address(2) <= '1';
	WAIT FOR 40000 ps;
	address(2) <= '0';
	WAIT FOR 80000 ps;
	address(2) <= '1';
	WAIT FOR 40000 ps;
	address(2) <= '0';
	WAIT FOR 40000 ps;
	address(2) <= '1';
	WAIT FOR 40000 ps;
	address(2) <= '0';
	WAIT FOR 40000 ps;
	address(2) <= '1';
	WAIT FOR 40000 ps;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
	WAIT FOR 40000 ps;
	address(1) <= '1';
	WAIT FOR 40000 ps;
	address(1) <= '0';
	WAIT FOR 80000 ps;
	address(1) <= '1';
	WAIT FOR 200000 ps;
	address(1) <= '0';
	WAIT FOR 40000 ps;
	address(1) <= '1';
	WAIT FOR 40000 ps;
	address(1) <= '0';
	WAIT FOR 40000 ps;
	address(1) <= '1';
	WAIT FOR 80000 ps;
	address(1) <= '0';
	WAIT FOR 400000 ps;
	address(1) <= '1';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '1';
	WAIT FOR 40000 ps;
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 200000 ps;
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 80000 ps;
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 40000 ps;
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 120000 ps;
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 120000 ps;
	address(0) <= '0';
	WAIT FOR 120000 ps;
	address(0) <= '1';
WAIT;
END PROCESS t_prcs_address_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- writeData[7]
t_prcs_writeData_7: PROCESS
BEGIN
	writeData(7) <= '1';
	WAIT FOR 30000 ps;
	writeData(7) <= '0';
	WAIT FOR 210000 ps;
	writeData(7) <= '1';
	WAIT FOR 60000 ps;
	writeData(7) <= '0';
	WAIT FOR 30000 ps;
	writeData(7) <= '1';
	WAIT FOR 60000 ps;
	writeData(7) <= '0';
	WAIT FOR 30000 ps;
	writeData(7) <= '1';
	WAIT FOR 30000 ps;
	writeData(7) <= '0';
	WAIT FOR 60000 ps;
	writeData(7) <= '1';
	WAIT FOR 60000 ps;
	writeData(7) <= '0';
	WAIT FOR 30000 ps;
	writeData(7) <= '1';
	WAIT FOR 90000 ps;
	writeData(7) <= '0';
	WAIT FOR 60000 ps;
	writeData(7) <= '1';
	WAIT FOR 30000 ps;
	writeData(7) <= '0';
	WAIT FOR 30000 ps;
	writeData(7) <= '1';
	WAIT FOR 120000 ps;
	writeData(7) <= '0';
	WAIT FOR 30000 ps;
	writeData(7) <= '1';
WAIT;
END PROCESS t_prcs_writeData_7;
-- writeData[6]
t_prcs_writeData_6: PROCESS
BEGIN
	writeData(6) <= '0';
	WAIT FOR 30000 ps;
	writeData(6) <= '1';
	WAIT FOR 90000 ps;
	writeData(6) <= '0';
	WAIT FOR 60000 ps;
	writeData(6) <= '1';
	WAIT FOR 60000 ps;
	writeData(6) <= '0';
	WAIT FOR 60000 ps;
	writeData(6) <= '1';
	WAIT FOR 60000 ps;
	writeData(6) <= '0';
	WAIT FOR 150000 ps;
	writeData(6) <= '1';
	WAIT FOR 120000 ps;
	writeData(6) <= '0';
	WAIT FOR 30000 ps;
	writeData(6) <= '1';
	WAIT FOR 60000 ps;
	writeData(6) <= '0';
	WAIT FOR 60000 ps;
	writeData(6) <= '1';
	WAIT FOR 210000 ps;
	writeData(6) <= '0';
WAIT;
END PROCESS t_prcs_writeData_6;
-- writeData[5]
t_prcs_writeData_5: PROCESS
BEGIN
	writeData(5) <= '0';
	WAIT FOR 30000 ps;
	writeData(5) <= '1';
	WAIT FOR 30000 ps;
	writeData(5) <= '0';
	WAIT FOR 60000 ps;
	writeData(5) <= '1';
	WAIT FOR 90000 ps;
	writeData(5) <= '0';
	WAIT FOR 90000 ps;
	writeData(5) <= '1';
	WAIT FOR 30000 ps;
	writeData(5) <= '0';
	WAIT FOR 60000 ps;
	writeData(5) <= '1';
	WAIT FOR 30000 ps;
	writeData(5) <= '0';
	WAIT FOR 60000 ps;
	writeData(5) <= '1';
	WAIT FOR 30000 ps;
	writeData(5) <= '0';
	WAIT FOR 30000 ps;
	writeData(5) <= '1';
	WAIT FOR 30000 ps;
	writeData(5) <= '0';
	WAIT FOR 90000 ps;
	writeData(5) <= '1';
	WAIT FOR 30000 ps;
	writeData(5) <= '0';
	WAIT FOR 30000 ps;
	writeData(5) <= '1';
	WAIT FOR 90000 ps;
	writeData(5) <= '0';
	WAIT FOR 30000 ps;
	writeData(5) <= '1';
	WAIT FOR 30000 ps;
	writeData(5) <= '0';
	WAIT FOR 60000 ps;
	writeData(5) <= '1';
	WAIT FOR 60000 ps;
	writeData(5) <= '0';
WAIT;
END PROCESS t_prcs_writeData_5;
-- writeData[4]
t_prcs_writeData_4: PROCESS
BEGIN
	writeData(4) <= '0';
	WAIT FOR 30000 ps;
	writeData(4) <= '1';
	WAIT FOR 210000 ps;
	writeData(4) <= '0';
	WAIT FOR 60000 ps;
	writeData(4) <= '1';
	WAIT FOR 30000 ps;
	writeData(4) <= '0';
	WAIT FOR 30000 ps;
	writeData(4) <= '1';
	WAIT FOR 30000 ps;
	writeData(4) <= '0';
	WAIT FOR 90000 ps;
	writeData(4) <= '1';
	WAIT FOR 60000 ps;
	writeData(4) <= '0';
	WAIT FOR 120000 ps;
	writeData(4) <= '1';
	WAIT FOR 60000 ps;
	writeData(4) <= '0';
	WAIT FOR 90000 ps;
	writeData(4) <= '1';
	WAIT FOR 30000 ps;
	writeData(4) <= '0';
	WAIT FOR 30000 ps;
	writeData(4) <= '1';
	WAIT FOR 30000 ps;
	writeData(4) <= '0';
WAIT;
END PROCESS t_prcs_writeData_4;
-- writeData[3]
t_prcs_writeData_3: PROCESS
BEGIN
	writeData(3) <= '0';
	WAIT FOR 60000 ps;
	writeData(3) <= '1';
	WAIT FOR 30000 ps;
	writeData(3) <= '0';
	WAIT FOR 60000 ps;
	writeData(3) <= '1';
	WAIT FOR 30000 ps;
	writeData(3) <= '0';
	WAIT FOR 30000 ps;
	writeData(3) <= '1';
	WAIT FOR 30000 ps;
	writeData(3) <= '0';
	WAIT FOR 30000 ps;
	writeData(3) <= '1';
	WAIT FOR 30000 ps;
	writeData(3) <= '0';
	WAIT FOR 30000 ps;
	writeData(3) <= '1';
	WAIT FOR 30000 ps;
	writeData(3) <= '0';
	WAIT FOR 30000 ps;
	writeData(3) <= '1';
	WAIT FOR 30000 ps;
	writeData(3) <= '0';
	WAIT FOR 30000 ps;
	writeData(3) <= '1';
	WAIT FOR 60000 ps;
	writeData(3) <= '0';
	WAIT FOR 90000 ps;
	writeData(3) <= '1';
	WAIT FOR 30000 ps;
	writeData(3) <= '0';
	WAIT FOR 60000 ps;
	writeData(3) <= '1';
	WAIT FOR 60000 ps;
	writeData(3) <= '0';
	WAIT FOR 30000 ps;
	writeData(3) <= '1';
	WAIT FOR 150000 ps;
	writeData(3) <= '0';
	WAIT FOR 30000 ps;
	writeData(3) <= '1';
WAIT;
END PROCESS t_prcs_writeData_3;
-- writeData[2]
t_prcs_writeData_2: PROCESS
BEGIN
	writeData(2) <= '0';
	WAIT FOR 60000 ps;
	writeData(2) <= '1';
	WAIT FOR 30000 ps;
	writeData(2) <= '0';
	WAIT FOR 60000 ps;
	writeData(2) <= '1';
	WAIT FOR 60000 ps;
	writeData(2) <= '0';
	WAIT FOR 30000 ps;
	writeData(2) <= '1';
	WAIT FOR 30000 ps;
	writeData(2) <= '0';
	WAIT FOR 30000 ps;
	writeData(2) <= '1';
	WAIT FOR 60000 ps;
	writeData(2) <= '0';
	WAIT FOR 30000 ps;
	writeData(2) <= '1';
	WAIT FOR 30000 ps;
	writeData(2) <= '0';
	WAIT FOR 90000 ps;
	writeData(2) <= '1';
	WAIT FOR 60000 ps;
	writeData(2) <= '0';
	WAIT FOR 30000 ps;
	writeData(2) <= '1';
	WAIT FOR 30000 ps;
	writeData(2) <= '0';
	WAIT FOR 30000 ps;
	writeData(2) <= '1';
	WAIT FOR 30000 ps;
	writeData(2) <= '0';
	WAIT FOR 60000 ps;
	writeData(2) <= '1';
	WAIT FOR 30000 ps;
	writeData(2) <= '0';
	WAIT FOR 30000 ps;
	writeData(2) <= '1';
	WAIT FOR 60000 ps;
	writeData(2) <= '0';
	WAIT FOR 90000 ps;
	writeData(2) <= '1';
	WAIT FOR 30000 ps;
	writeData(2) <= '0';
WAIT;
END PROCESS t_prcs_writeData_2;
-- writeData[1]
t_prcs_writeData_1: PROCESS
BEGIN
	writeData(1) <= '0';
	WAIT FOR 30000 ps;
	writeData(1) <= '1';
	WAIT FOR 30000 ps;
	writeData(1) <= '0';
	WAIT FOR 60000 ps;
	writeData(1) <= '1';
	WAIT FOR 30000 ps;
	writeData(1) <= '0';
	WAIT FOR 60000 ps;
	writeData(1) <= '1';
	WAIT FOR 30000 ps;
	writeData(1) <= '0';
	WAIT FOR 30000 ps;
	writeData(1) <= '1';
	WAIT FOR 60000 ps;
	writeData(1) <= '0';
	WAIT FOR 60000 ps;
	writeData(1) <= '1';
	WAIT FOR 60000 ps;
	writeData(1) <= '0';
	WAIT FOR 30000 ps;
	writeData(1) <= '1';
	WAIT FOR 60000 ps;
	writeData(1) <= '0';
	WAIT FOR 30000 ps;
	writeData(1) <= '1';
	WAIT FOR 30000 ps;
	writeData(1) <= '0';
	WAIT FOR 30000 ps;
	writeData(1) <= '1';
	WAIT FOR 60000 ps;
	writeData(1) <= '0';
	WAIT FOR 30000 ps;
	writeData(1) <= '1';
	WAIT FOR 60000 ps;
	writeData(1) <= '0';
	WAIT FOR 30000 ps;
	writeData(1) <= '1';
	WAIT FOR 30000 ps;
	writeData(1) <= '0';
	WAIT FOR 120000 ps;
	writeData(1) <= '1';
WAIT;
END PROCESS t_prcs_writeData_1;
-- writeData[0]
t_prcs_writeData_0: PROCESS
BEGIN
	writeData(0) <= '0';
	WAIT FOR 90000 ps;
	writeData(0) <= '1';
	WAIT FOR 30000 ps;
	writeData(0) <= '0';
	WAIT FOR 60000 ps;
	writeData(0) <= '1';
	WAIT FOR 60000 ps;
	writeData(0) <= '0';
	WAIT FOR 30000 ps;
	writeData(0) <= '1';
	WAIT FOR 60000 ps;
	writeData(0) <= '0';
	WAIT FOR 60000 ps;
	writeData(0) <= '1';
	WAIT FOR 120000 ps;
	writeData(0) <= '0';
	WAIT FOR 180000 ps;
	writeData(0) <= '1';
	WAIT FOR 90000 ps;
	writeData(0) <= '0';
	WAIT FOR 30000 ps;
	writeData(0) <= '1';
	WAIT FOR 90000 ps;
	writeData(0) <= '0';
	WAIT FOR 30000 ps;
	writeData(0) <= '1';
	WAIT FOR 30000 ps;
	writeData(0) <= '0';
WAIT;
END PROCESS t_prcs_writeData_0;

-- writeEnable
t_prcs_writeEnable: PROCESS
BEGIN
	writeEnable <= '0';
	WAIT FOR 90000 ps;
	writeEnable <= '1';
	WAIT FOR 450000 ps;
	writeEnable <= '0';
WAIT;
END PROCESS t_prcs_writeEnable;
END RAM_1P_16_8_arch;
