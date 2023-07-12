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
-- Generated on "05/22/2023 18:52:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM_2P_16_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM_2P_16_8_vhd_vec_tst IS
END RAM_2P_16_8_vhd_vec_tst;
ARCHITECTURE RAM_2P_16_8_arch OF RAM_2P_16_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL readAddress : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL readData : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL writeAddress : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL writeData : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL writeEnable : STD_LOGIC;
COMPONENT RAM_2P_16_8
	PORT (
	clk : IN STD_LOGIC;
	readAddress : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	readData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	writeAddress : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	writeData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	writeEnable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RAM_2P_16_8
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	readAddress => readAddress,
	readData => readData,
	writeAddress => writeAddress,
	writeData => writeData,
	writeEnable => writeEnable
	);

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
-- readAddress[3]
t_prcs_readAddress_3: PROCESS
BEGIN
	readAddress(3) <= '0';
	WAIT FOR 50000 ps;
	readAddress(3) <= '1';
	WAIT FOR 50000 ps;
	readAddress(3) <= '0';
	WAIT FOR 100000 ps;
	readAddress(3) <= '1';
	WAIT FOR 50000 ps;
	readAddress(3) <= '0';
	WAIT FOR 250000 ps;
	readAddress(3) <= '1';
	WAIT FOR 50000 ps;
	readAddress(3) <= '0';
	WAIT FOR 200000 ps;
	readAddress(3) <= '1';
	WAIT FOR 50000 ps;
	readAddress(3) <= '0';
	WAIT FOR 100000 ps;
	readAddress(3) <= '1';
	WAIT FOR 50000 ps;
	readAddress(3) <= '0';
WAIT;
END PROCESS t_prcs_readAddress_3;
-- readAddress[2]
t_prcs_readAddress_2: PROCESS
BEGIN
	readAddress(2) <= '0';
	WAIT FOR 100000 ps;
	readAddress(2) <= '1';
	WAIT FOR 50000 ps;
	readAddress(2) <= '0';
	WAIT FOR 200000 ps;
	readAddress(2) <= '1';
	WAIT FOR 100000 ps;
	readAddress(2) <= '0';
	WAIT FOR 100000 ps;
	readAddress(2) <= '1';
	WAIT FOR 50000 ps;
	readAddress(2) <= '0';
	WAIT FOR 150000 ps;
	readAddress(2) <= '1';
	WAIT FOR 50000 ps;
	readAddress(2) <= '0';
	WAIT FOR 100000 ps;
	readAddress(2) <= '1';
	WAIT FOR 50000 ps;
	readAddress(2) <= '0';
WAIT;
END PROCESS t_prcs_readAddress_2;
-- readAddress[1]
t_prcs_readAddress_1: PROCESS
BEGIN
	readAddress(1) <= '0';
	WAIT FOR 50000 ps;
	readAddress(1) <= '1';
	WAIT FOR 150000 ps;
	readAddress(1) <= '0';
	WAIT FOR 50000 ps;
	readAddress(1) <= '1';
	WAIT FOR 50000 ps;
	readAddress(1) <= '0';
	WAIT FOR 50000 ps;
	readAddress(1) <= '1';
	WAIT FOR 50000 ps;
	readAddress(1) <= '0';
	WAIT FOR 50000 ps;
	readAddress(1) <= '1';
	WAIT FOR 250000 ps;
	readAddress(1) <= '0';
	WAIT FOR 50000 ps;
	readAddress(1) <= '1';
	WAIT FOR 50000 ps;
	readAddress(1) <= '0';
	WAIT FOR 100000 ps;
	readAddress(1) <= '1';
	WAIT FOR 50000 ps;
	readAddress(1) <= '0';
WAIT;
END PROCESS t_prcs_readAddress_1;
-- readAddress[0]
t_prcs_readAddress_0: PROCESS
BEGIN
	readAddress(0) <= '0';
	WAIT FOR 100000 ps;
	readAddress(0) <= '1';
	WAIT FOR 150000 ps;
	readAddress(0) <= '0';
	WAIT FOR 100000 ps;
	readAddress(0) <= '1';
	WAIT FOR 150000 ps;
	readAddress(0) <= '0';
	WAIT FOR 50000 ps;
	readAddress(0) <= '1';
	WAIT FOR 100000 ps;
	readAddress(0) <= '0';
	WAIT FOR 50000 ps;
	readAddress(0) <= '1';
	WAIT FOR 100000 ps;
	readAddress(0) <= '0';
	WAIT FOR 50000 ps;
	readAddress(0) <= '1';
	WAIT FOR 50000 ps;
	readAddress(0) <= '0';
	WAIT FOR 50000 ps;
	readAddress(0) <= '1';
WAIT;
END PROCESS t_prcs_readAddress_0;
-- writeAddress[3]
t_prcs_writeAddress_3: PROCESS
BEGIN
	writeAddress(3) <= '1';
	WAIT FOR 80000 ps;
	writeAddress(3) <= '0';
	WAIT FOR 320000 ps;
	writeAddress(3) <= '1';
	WAIT FOR 80000 ps;
	writeAddress(3) <= '0';
	WAIT FOR 80000 ps;
	writeAddress(3) <= '1';
	WAIT FOR 80000 ps;
	writeAddress(3) <= '0';
	WAIT FOR 160000 ps;
	writeAddress(3) <= '1';
	WAIT FOR 80000 ps;
	writeAddress(3) <= '0';
	WAIT FOR 80000 ps;
	writeAddress(3) <= '1';
WAIT;
END PROCESS t_prcs_writeAddress_3;
-- writeAddress[2]
t_prcs_writeAddress_2: PROCESS
BEGIN
	writeAddress(2) <= '1';
	WAIT FOR 80000 ps;
	writeAddress(2) <= '0';
	WAIT FOR 320000 ps;
	writeAddress(2) <= '1';
	WAIT FOR 160000 ps;
	writeAddress(2) <= '0';
	WAIT FOR 80000 ps;
	writeAddress(2) <= '1';
	WAIT FOR 80000 ps;
	writeAddress(2) <= '0';
	WAIT FOR 80000 ps;
	writeAddress(2) <= '1';
WAIT;
END PROCESS t_prcs_writeAddress_2;
-- writeAddress[1]
t_prcs_writeAddress_1: PROCESS
BEGIN
	writeAddress(1) <= '0';
	WAIT FOR 80000 ps;
	writeAddress(1) <= '1';
	WAIT FOR 160000 ps;
	writeAddress(1) <= '0';
	WAIT FOR 80000 ps;
	writeAddress(1) <= '1';
	WAIT FOR 80000 ps;
	writeAddress(1) <= '0';
	WAIT FOR 80000 ps;
	writeAddress(1) <= '1';
	WAIT FOR 160000 ps;
	writeAddress(1) <= '0';
	WAIT FOR 80000 ps;
	writeAddress(1) <= '1';
	WAIT FOR 160000 ps;
	writeAddress(1) <= '0';
WAIT;
END PROCESS t_prcs_writeAddress_1;
-- writeAddress[0]
t_prcs_writeAddress_0: PROCESS
BEGIN
	writeAddress(0) <= '1';
	WAIT FOR 80000 ps;
	writeAddress(0) <= '0';
	WAIT FOR 240000 ps;
	writeAddress(0) <= '1';
	WAIT FOR 160000 ps;
	writeAddress(0) <= '0';
	WAIT FOR 80000 ps;
	writeAddress(0) <= '1';
WAIT;
END PROCESS t_prcs_writeAddress_0;
-- writeData[7]
t_prcs_writeData_7: PROCESS
BEGIN
	writeData(7) <= '1';
	WAIT FOR 40000 ps;
	writeData(7) <= '0';
	WAIT FOR 40000 ps;
	writeData(7) <= '1';
	WAIT FOR 40000 ps;
	writeData(7) <= '0';
	WAIT FOR 40000 ps;
	writeData(7) <= '1';
	WAIT FOR 40000 ps;
	writeData(7) <= '0';
	WAIT FOR 160000 ps;
	writeData(7) <= '1';
	WAIT FOR 40000 ps;
	writeData(7) <= '0';
	WAIT FOR 40000 ps;
	writeData(7) <= '1';
	WAIT FOR 160000 ps;
	writeData(7) <= '0';
	WAIT FOR 40000 ps;
	writeData(7) <= '1';
	WAIT FOR 120000 ps;
	writeData(7) <= '0';
	WAIT FOR 160000 ps;
	writeData(7) <= '1';
WAIT;
END PROCESS t_prcs_writeData_7;
-- writeData[6]
t_prcs_writeData_6: PROCESS
BEGIN
	writeData(6) <= '1';
	WAIT FOR 120000 ps;
	writeData(6) <= '0';
	WAIT FOR 40000 ps;
	writeData(6) <= '1';
	WAIT FOR 80000 ps;
	writeData(6) <= '0';
	WAIT FOR 40000 ps;
	writeData(6) <= '1';
	WAIT FOR 80000 ps;
	writeData(6) <= '0';
	WAIT FOR 80000 ps;
	writeData(6) <= '1';
	WAIT FOR 120000 ps;
	writeData(6) <= '0';
	WAIT FOR 200000 ps;
	writeData(6) <= '1';
	WAIT FOR 40000 ps;
	writeData(6) <= '0';
	WAIT FOR 40000 ps;
	writeData(6) <= '1';
	WAIT FOR 40000 ps;
	writeData(6) <= '0';
WAIT;
END PROCESS t_prcs_writeData_6;
-- writeData[5]
t_prcs_writeData_5: PROCESS
BEGIN
	writeData(5) <= '1';
	WAIT FOR 120000 ps;
	writeData(5) <= '0';
	WAIT FOR 80000 ps;
	writeData(5) <= '1';
	WAIT FOR 40000 ps;
	writeData(5) <= '0';
	WAIT FOR 40000 ps;
	writeData(5) <= '1';
	WAIT FOR 40000 ps;
	writeData(5) <= '0';
	WAIT FOR 120000 ps;
	writeData(5) <= '1';
	WAIT FOR 40000 ps;
	writeData(5) <= '0';
	WAIT FOR 120000 ps;
	writeData(5) <= '1';
	WAIT FOR 40000 ps;
	writeData(5) <= '0';
	WAIT FOR 40000 ps;
	writeData(5) <= '1';
	WAIT FOR 80000 ps;
	writeData(5) <= '0';
	WAIT FOR 40000 ps;
	writeData(5) <= '1';
	WAIT FOR 160000 ps;
	writeData(5) <= '0';
WAIT;
END PROCESS t_prcs_writeData_5;
-- writeData[4]
t_prcs_writeData_4: PROCESS
BEGIN
	writeData(4) <= '0';
	WAIT FOR 40000 ps;
	writeData(4) <= '1';
	WAIT FOR 80000 ps;
	writeData(4) <= '0';
	WAIT FOR 80000 ps;
	writeData(4) <= '1';
	WAIT FOR 80000 ps;
	writeData(4) <= '0';
	WAIT FOR 240000 ps;
	writeData(4) <= '1';
	WAIT FOR 120000 ps;
	writeData(4) <= '0';
	WAIT FOR 120000 ps;
	writeData(4) <= '1';
	WAIT FOR 120000 ps;
	writeData(4) <= '0';
	WAIT FOR 40000 ps;
	writeData(4) <= '1';
	WAIT FOR 40000 ps;
	writeData(4) <= '0';
WAIT;
END PROCESS t_prcs_writeData_4;
-- writeData[3]
t_prcs_writeData_3: PROCESS
BEGIN
	writeData(3) <= '1';
	WAIT FOR 80000 ps;
	writeData(3) <= '0';
	WAIT FOR 40000 ps;
	writeData(3) <= '1';
	WAIT FOR 40000 ps;
	writeData(3) <= '0';
	WAIT FOR 200000 ps;
	writeData(3) <= '1';
	WAIT FOR 40000 ps;
	writeData(3) <= '0';
	WAIT FOR 40000 ps;
	writeData(3) <= '1';
	WAIT FOR 40000 ps;
	writeData(3) <= '0';
	WAIT FOR 80000 ps;
	writeData(3) <= '1';
	WAIT FOR 40000 ps;
	writeData(3) <= '0';
	WAIT FOR 40000 ps;
	writeData(3) <= '1';
	WAIT FOR 40000 ps;
	writeData(3) <= '0';
	WAIT FOR 80000 ps;
	writeData(3) <= '1';
	WAIT FOR 120000 ps;
	writeData(3) <= '0';
	WAIT FOR 40000 ps;
	writeData(3) <= '1';
WAIT;
END PROCESS t_prcs_writeData_3;
-- writeData[2]
t_prcs_writeData_2: PROCESS
BEGIN
	writeData(2) <= '0';
	WAIT FOR 160000 ps;
	writeData(2) <= '1';
	WAIT FOR 40000 ps;
	writeData(2) <= '0';
	WAIT FOR 120000 ps;
	writeData(2) <= '1';
	WAIT FOR 40000 ps;
	writeData(2) <= '0';
	WAIT FOR 80000 ps;
	writeData(2) <= '1';
	WAIT FOR 200000 ps;
	writeData(2) <= '0';
	WAIT FOR 40000 ps;
	writeData(2) <= '1';
	WAIT FOR 40000 ps;
	writeData(2) <= '0';
	WAIT FOR 40000 ps;
	writeData(2) <= '1';
	WAIT FOR 80000 ps;
	writeData(2) <= '0';
	WAIT FOR 80000 ps;
	writeData(2) <= '1';
WAIT;
END PROCESS t_prcs_writeData_2;
-- writeData[1]
t_prcs_writeData_1: PROCESS
BEGIN
	writeData(1) <= '0';
	WAIT FOR 40000 ps;
	writeData(1) <= '1';
	WAIT FOR 120000 ps;
	writeData(1) <= '0';
	WAIT FOR 80000 ps;
	writeData(1) <= '1';
	WAIT FOR 40000 ps;
	writeData(1) <= '0';
	WAIT FOR 80000 ps;
	writeData(1) <= '1';
	WAIT FOR 80000 ps;
	writeData(1) <= '0';
	WAIT FOR 120000 ps;
	writeData(1) <= '1';
	WAIT FOR 40000 ps;
	writeData(1) <= '0';
	WAIT FOR 120000 ps;
	writeData(1) <= '1';
	WAIT FOR 40000 ps;
	writeData(1) <= '0';
	WAIT FOR 40000 ps;
	writeData(1) <= '1';
	WAIT FOR 40000 ps;
	writeData(1) <= '0';
	WAIT FOR 40000 ps;
	writeData(1) <= '1';
	WAIT FOR 80000 ps;
	writeData(1) <= '0';
WAIT;
END PROCESS t_prcs_writeData_1;
-- writeData[0]
t_prcs_writeData_0: PROCESS
BEGIN
	writeData(0) <= '0';
	WAIT FOR 40000 ps;
	writeData(0) <= '1';
	WAIT FOR 80000 ps;
	writeData(0) <= '0';
	WAIT FOR 40000 ps;
	writeData(0) <= '1';
	WAIT FOR 40000 ps;
	writeData(0) <= '0';
	WAIT FOR 40000 ps;
	writeData(0) <= '1';
	WAIT FOR 120000 ps;
	writeData(0) <= '0';
	WAIT FOR 40000 ps;
	writeData(0) <= '1';
	WAIT FOR 80000 ps;
	writeData(0) <= '0';
	WAIT FOR 120000 ps;
	writeData(0) <= '1';
	WAIT FOR 80000 ps;
	writeData(0) <= '0';
	WAIT FOR 40000 ps;
	writeData(0) <= '1';
	WAIT FOR 120000 ps;
	writeData(0) <= '0';
	WAIT FOR 40000 ps;
	writeData(0) <= '1';
	WAIT FOR 40000 ps;
	writeData(0) <= '0';
WAIT;
END PROCESS t_prcs_writeData_0;

-- writeEnable
t_prcs_writeEnable: PROCESS
BEGIN
	writeEnable <= '0';
	WAIT FOR 20000 ps;
	writeEnable <= '1';
	WAIT FOR 350000 ps;
	writeEnable <= '0';
	WAIT FOR 210000 ps;
	writeEnable <= '1';
	WAIT FOR 280000 ps;
	writeEnable <= '0';
WAIT;
END PROCESS t_prcs_writeEnable;
END RAM_2P_16_8_arch;
