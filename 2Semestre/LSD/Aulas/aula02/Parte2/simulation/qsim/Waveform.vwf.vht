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
-- Generated on "03/19/2023 16:01:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux2_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux2_1_vhd_vec_tst IS
END Mux2_1_vhd_vec_tst;
ARCHITECTURE Mux2_1_arch OF Mux2_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dataIn0 : STD_LOGIC;
SIGNAL dataIn1 : STD_LOGIC;
SIGNAL dataOut : STD_LOGIC;
SIGNAL sel : STD_LOGIC;
COMPONENT Mux2_1
	PORT (
	dataIn0 : IN STD_LOGIC;
	dataIn1 : IN STD_LOGIC;
	dataOut : OUT STD_LOGIC;
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Mux2_1
	PORT MAP (
-- list connections between master ports and signals
	dataIn0 => dataIn0,
	dataIn1 => dataIn1,
	dataOut => dataOut,
	sel => sel
	);

-- dataIn0
t_prcs_dataIn0: PROCESS
BEGIN
	dataIn0 <= '0';
	WAIT FOR 30000 ps;
	dataIn0 <= '1';
	WAIT FOR 80000 ps;
	dataIn0 <= '0';
WAIT;
END PROCESS t_prcs_dataIn0;

-- dataIn1
t_prcs_dataIn1: PROCESS
BEGIN
	dataIn1 <= '0';
	WAIT FOR 100000 ps;
	dataIn1 <= '1';
	WAIT FOR 190000 ps;
	dataIn1 <= '0';
WAIT;
END PROCESS t_prcs_dataIn1;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
	WAIT FOR 90000 ps;
	sel <= '1';
	WAIT FOR 50000 ps;
	sel <= '0';
	WAIT FOR 190000 ps;
	sel <= '1';
	WAIT FOR 150000 ps;
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;
END Mux2_1_arch;
