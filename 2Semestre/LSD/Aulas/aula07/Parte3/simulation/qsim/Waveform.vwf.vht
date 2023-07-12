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
-- Generated on "04/20/2023 14:54:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU16_vhd_vec_tst IS
END ALU16_vhd_vec_tst;
ARCHITECTURE ALU16_arch OF ALU16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL mHi : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL op0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL op1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL res : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ALU16
	PORT (
	mHi : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	op0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	op1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	res : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU16
	PORT MAP (
-- list connections between master ports and signals
	mHi => mHi,
	op => op,
	op0 => op0,
	op1 => op1,
	res => res
	);
-- op[2]
t_prcs_op_2: PROCESS
BEGIN
	op(2) <= '0';
	WAIT FOR 40000 ps;
	op(2) <= '1';
	WAIT FOR 120000 ps;
	op(2) <= '0';
	WAIT FOR 280000 ps;
	op(2) <= '1';
	WAIT FOR 80000 ps;
	op(2) <= '0';
	WAIT FOR 40000 ps;
	op(2) <= '1';
	WAIT FOR 40000 ps;
	op(2) <= '0';
	WAIT FOR 40000 ps;
	op(2) <= '1';
	WAIT FOR 40000 ps;
	op(2) <= '0';
	WAIT FOR 120000 ps;
	op(2) <= '1';
	WAIT FOR 160000 ps;
	op(2) <= '0';
WAIT;
END PROCESS t_prcs_op_2;
-- op[1]
t_prcs_op_1: PROCESS
BEGIN
	op(1) <= '0';
	WAIT FOR 240000 ps;
	op(1) <= '1';
	WAIT FOR 40000 ps;
	op(1) <= '0';
	WAIT FOR 40000 ps;
	op(1) <= '1';
	WAIT FOR 120000 ps;
	op(1) <= '0';
	WAIT FOR 40000 ps;
	op(1) <= '1';
	WAIT FOR 280000 ps;
	op(1) <= '0';
	WAIT FOR 40000 ps;
	op(1) <= '1';
	WAIT FOR 120000 ps;
	op(1) <= '0';
	WAIT FOR 40000 ps;
	op(1) <= '1';
WAIT;
END PROCESS t_prcs_op_1;
-- op[0]
t_prcs_op_0: PROCESS
BEGIN
	op(0) <= '0';
	WAIT FOR 40000 ps;
	op(0) <= '1';
	WAIT FOR 120000 ps;
	op(0) <= '0';
	WAIT FOR 40000 ps;
	op(0) <= '1';
	WAIT FOR 40000 ps;
	op(0) <= '0';
	WAIT FOR 80000 ps;
	op(0) <= '1';
	WAIT FOR 40000 ps;
	op(0) <= '0';
	WAIT FOR 80000 ps;
	op(0) <= '1';
	WAIT FOR 40000 ps;
	op(0) <= '0';
	WAIT FOR 200000 ps;
	op(0) <= '1';
	WAIT FOR 80000 ps;
	op(0) <= '0';
	WAIT FOR 40000 ps;
	op(0) <= '1';
	WAIT FOR 160000 ps;
	op(0) <= '0';
WAIT;
END PROCESS t_prcs_op_0;
-- op0[15]
t_prcs_op0_15: PROCESS
BEGIN
	op0(15) <= '0';
	WAIT FOR 40000 ps;
	op0(15) <= '1';
	WAIT FOR 80000 ps;
	op0(15) <= '0';
	WAIT FOR 120000 ps;
	op0(15) <= '1';
	WAIT FOR 40000 ps;
	op0(15) <= '0';
	WAIT FOR 40000 ps;
	op0(15) <= '1';
	WAIT FOR 120000 ps;
	op0(15) <= '0';
	WAIT FOR 40000 ps;
	op0(15) <= '1';
	WAIT FOR 40000 ps;
	op0(15) <= '0';
	WAIT FOR 120000 ps;
	op0(15) <= '1';
	WAIT FOR 40000 ps;
	op0(15) <= '0';
	WAIT FOR 80000 ps;
	op0(15) <= '1';
	WAIT FOR 40000 ps;
	op0(15) <= '0';
	WAIT FOR 80000 ps;
	op0(15) <= '1';
	WAIT FOR 40000 ps;
	op0(15) <= '0';
WAIT;
END PROCESS t_prcs_op0_15;
-- op0[14]
t_prcs_op0_14: PROCESS
BEGIN
	op0(14) <= '0';
	WAIT FOR 80000 ps;
	op0(14) <= '1';
	WAIT FOR 160000 ps;
	op0(14) <= '0';
	WAIT FOR 40000 ps;
	op0(14) <= '1';
	WAIT FOR 120000 ps;
	op0(14) <= '0';
	WAIT FOR 160000 ps;
	op0(14) <= '1';
	WAIT FOR 160000 ps;
	op0(14) <= '0';
	WAIT FOR 80000 ps;
	op0(14) <= '1';
	WAIT FOR 80000 ps;
	op0(14) <= '0';
WAIT;
END PROCESS t_prcs_op0_14;
-- op0[13]
t_prcs_op0_13: PROCESS
BEGIN
	op0(13) <= '1';
	WAIT FOR 280000 ps;
	op0(13) <= '0';
	WAIT FOR 40000 ps;
	op0(13) <= '1';
	WAIT FOR 80000 ps;
	op0(13) <= '0';
	WAIT FOR 80000 ps;
	op0(13) <= '1';
	WAIT FOR 80000 ps;
	op0(13) <= '0';
	WAIT FOR 160000 ps;
	op0(13) <= '1';
	WAIT FOR 40000 ps;
	op0(13) <= '0';
	WAIT FOR 40000 ps;
	op0(13) <= '1';
	WAIT FOR 80000 ps;
	op0(13) <= '0';
WAIT;
END PROCESS t_prcs_op0_13;
-- op0[12]
t_prcs_op0_12: PROCESS
BEGIN
	op0(12) <= '0';
	WAIT FOR 40000 ps;
	op0(12) <= '1';
	WAIT FOR 80000 ps;
	op0(12) <= '0';
	WAIT FOR 280000 ps;
	op0(12) <= '1';
	WAIT FOR 40000 ps;
	op0(12) <= '0';
	WAIT FOR 80000 ps;
	op0(12) <= '1';
	WAIT FOR 40000 ps;
	op0(12) <= '0';
	WAIT FOR 40000 ps;
	op0(12) <= '1';
	WAIT FOR 80000 ps;
	op0(12) <= '0';
	WAIT FOR 40000 ps;
	op0(12) <= '1';
	WAIT FOR 200000 ps;
	op0(12) <= '0';
	WAIT FOR 40000 ps;
	op0(12) <= '1';
WAIT;
END PROCESS t_prcs_op0_12;
-- op0[11]
t_prcs_op0_11: PROCESS
BEGIN
	op0(11) <= '1';
	WAIT FOR 40000 ps;
	op0(11) <= '0';
	WAIT FOR 40000 ps;
	op0(11) <= '1';
	WAIT FOR 40000 ps;
	op0(11) <= '0';
	WAIT FOR 40000 ps;
	op0(11) <= '1';
	WAIT FOR 40000 ps;
	op0(11) <= '0';
	WAIT FOR 40000 ps;
	op0(11) <= '1';
	WAIT FOR 40000 ps;
	op0(11) <= '0';
	WAIT FOR 120000 ps;
	op0(11) <= '1';
	WAIT FOR 40000 ps;
	op0(11) <= '0';
	WAIT FOR 40000 ps;
	op0(11) <= '1';
	WAIT FOR 40000 ps;
	op0(11) <= '0';
	WAIT FOR 80000 ps;
	op0(11) <= '1';
	WAIT FOR 40000 ps;
	op0(11) <= '0';
	WAIT FOR 40000 ps;
	op0(11) <= '1';
	WAIT FOR 40000 ps;
	op0(11) <= '0';
	WAIT FOR 40000 ps;
	op0(11) <= '1';
	WAIT FOR 40000 ps;
	op0(11) <= '0';
	WAIT FOR 80000 ps;
	op0(11) <= '1';
WAIT;
END PROCESS t_prcs_op0_11;
-- op0[10]
t_prcs_op0_10: PROCESS
BEGIN
	op0(10) <= '1';
	WAIT FOR 40000 ps;
	op0(10) <= '0';
	WAIT FOR 120000 ps;
	op0(10) <= '1';
	WAIT FOR 40000 ps;
	op0(10) <= '0';
	WAIT FOR 40000 ps;
	op0(10) <= '1';
	WAIT FOR 40000 ps;
	op0(10) <= '0';
	WAIT FOR 200000 ps;
	op0(10) <= '1';
	WAIT FOR 80000 ps;
	op0(10) <= '0';
	WAIT FOR 80000 ps;
	op0(10) <= '1';
	WAIT FOR 80000 ps;
	op0(10) <= '0';
	WAIT FOR 40000 ps;
	op0(10) <= '1';
	WAIT FOR 160000 ps;
	op0(10) <= '0';
WAIT;
END PROCESS t_prcs_op0_10;
-- op0[9]
t_prcs_op0_9: PROCESS
BEGIN
	op0(9) <= '1';
	WAIT FOR 40000 ps;
	op0(9) <= '0';
	WAIT FOR 80000 ps;
	op0(9) <= '1';
	WAIT FOR 40000 ps;
	op0(9) <= '0';
	WAIT FOR 40000 ps;
	op0(9) <= '1';
	WAIT FOR 40000 ps;
	op0(9) <= '0';
	WAIT FOR 80000 ps;
	op0(9) <= '1';
	WAIT FOR 40000 ps;
	op0(9) <= '0';
	WAIT FOR 40000 ps;
	op0(9) <= '1';
	WAIT FOR 200000 ps;
	op0(9) <= '0';
	WAIT FOR 40000 ps;
	op0(9) <= '1';
	WAIT FOR 120000 ps;
	op0(9) <= '0';
	WAIT FOR 40000 ps;
	op0(9) <= '1';
	WAIT FOR 40000 ps;
	op0(9) <= '0';
	WAIT FOR 120000 ps;
	op0(9) <= '1';
WAIT;
END PROCESS t_prcs_op0_9;
-- op0[8]
t_prcs_op0_8: PROCESS
BEGIN
	op0(8) <= '0';
	WAIT FOR 240000 ps;
	op0(8) <= '1';
	WAIT FOR 120000 ps;
	op0(8) <= '0';
	WAIT FOR 120000 ps;
	op0(8) <= '1';
	WAIT FOR 40000 ps;
	op0(8) <= '0';
	WAIT FOR 120000 ps;
	op0(8) <= '1';
	WAIT FOR 40000 ps;
	op0(8) <= '0';
	WAIT FOR 80000 ps;
	op0(8) <= '1';
	WAIT FOR 80000 ps;
	op0(8) <= '0';
	WAIT FOR 40000 ps;
	op0(8) <= '1';
WAIT;
END PROCESS t_prcs_op0_8;
-- op0[7]
t_prcs_op0_7: PROCESS
BEGIN
	op0(7) <= '1';
	WAIT FOR 80000 ps;
	op0(7) <= '0';
	WAIT FOR 80000 ps;
	op0(7) <= '1';
	WAIT FOR 40000 ps;
	op0(7) <= '0';
	WAIT FOR 40000 ps;
	op0(7) <= '1';
	WAIT FOR 40000 ps;
	op0(7) <= '0';
	WAIT FOR 40000 ps;
	op0(7) <= '1';
	WAIT FOR 40000 ps;
	op0(7) <= '0';
	WAIT FOR 80000 ps;
	op0(7) <= '1';
	WAIT FOR 40000 ps;
	op0(7) <= '0';
	WAIT FOR 120000 ps;
	op0(7) <= '1';
	WAIT FOR 40000 ps;
	op0(7) <= '0';
	WAIT FOR 80000 ps;
	op0(7) <= '1';
	WAIT FOR 80000 ps;
	op0(7) <= '0';
	WAIT FOR 40000 ps;
	op0(7) <= '1';
WAIT;
END PROCESS t_prcs_op0_7;
-- op0[6]
t_prcs_op0_6: PROCESS
BEGIN
	op0(6) <= '1';
	WAIT FOR 80000 ps;
	op0(6) <= '0';
	WAIT FOR 40000 ps;
	op0(6) <= '1';
	WAIT FOR 80000 ps;
	op0(6) <= '0';
	WAIT FOR 120000 ps;
	op0(6) <= '1';
	WAIT FOR 40000 ps;
	op0(6) <= '0';
	WAIT FOR 80000 ps;
	op0(6) <= '1';
	WAIT FOR 80000 ps;
	op0(6) <= '0';
	WAIT FOR 40000 ps;
	op0(6) <= '1';
	WAIT FOR 80000 ps;
	op0(6) <= '0';
	WAIT FOR 40000 ps;
	op0(6) <= '1';
	WAIT FOR 40000 ps;
	op0(6) <= '0';
	WAIT FOR 80000 ps;
	op0(6) <= '1';
	WAIT FOR 40000 ps;
	op0(6) <= '0';
WAIT;
END PROCESS t_prcs_op0_6;
-- op0[5]
t_prcs_op0_5: PROCESS
BEGIN
	op0(5) <= '0';
	WAIT FOR 160000 ps;
	op0(5) <= '1';
	WAIT FOR 40000 ps;
	op0(5) <= '0';
	WAIT FOR 120000 ps;
	op0(5) <= '1';
	WAIT FOR 40000 ps;
	op0(5) <= '0';
	WAIT FOR 40000 ps;
	op0(5) <= '1';
	WAIT FOR 40000 ps;
	op0(5) <= '0';
	WAIT FOR 80000 ps;
	op0(5) <= '1';
	WAIT FOR 80000 ps;
	op0(5) <= '0';
	WAIT FOR 40000 ps;
	op0(5) <= '1';
	WAIT FOR 40000 ps;
	op0(5) <= '0';
	WAIT FOR 120000 ps;
	op0(5) <= '1';
	WAIT FOR 80000 ps;
	op0(5) <= '0';
	WAIT FOR 40000 ps;
	op0(5) <= '1';
WAIT;
END PROCESS t_prcs_op0_5;
-- op0[4]
t_prcs_op0_4: PROCESS
BEGIN
	op0(4) <= '1';
	WAIT FOR 120000 ps;
	op0(4) <= '0';
	WAIT FOR 40000 ps;
	op0(4) <= '1';
	WAIT FOR 80000 ps;
	op0(4) <= '0';
	WAIT FOR 120000 ps;
	op0(4) <= '1';
	WAIT FOR 160000 ps;
	op0(4) <= '0';
	WAIT FOR 240000 ps;
	op0(4) <= '1';
	WAIT FOR 40000 ps;
	op0(4) <= '0';
	WAIT FOR 160000 ps;
	op0(4) <= '1';
WAIT;
END PROCESS t_prcs_op0_4;
-- op0[3]
t_prcs_op0_3: PROCESS
BEGIN
	op0(3) <= '0';
	WAIT FOR 120000 ps;
	op0(3) <= '1';
	WAIT FOR 40000 ps;
	op0(3) <= '0';
	WAIT FOR 80000 ps;
	op0(3) <= '1';
	WAIT FOR 40000 ps;
	op0(3) <= '0';
	WAIT FOR 120000 ps;
	op0(3) <= '1';
	WAIT FOR 40000 ps;
	op0(3) <= '0';
	WAIT FOR 40000 ps;
	op0(3) <= '1';
	WAIT FOR 80000 ps;
	op0(3) <= '0';
	WAIT FOR 80000 ps;
	op0(3) <= '1';
	WAIT FOR 120000 ps;
	op0(3) <= '0';
	WAIT FOR 120000 ps;
	op0(3) <= '1';
	WAIT FOR 80000 ps;
	op0(3) <= '0';
WAIT;
END PROCESS t_prcs_op0_3;
-- op0[2]
t_prcs_op0_2: PROCESS
BEGIN
	op0(2) <= '0';
	WAIT FOR 40000 ps;
	op0(2) <= '1';
	WAIT FOR 120000 ps;
	op0(2) <= '0';
	WAIT FOR 80000 ps;
	op0(2) <= '1';
	WAIT FOR 80000 ps;
	op0(2) <= '0';
	WAIT FOR 80000 ps;
	op0(2) <= '1';
	WAIT FOR 80000 ps;
	op0(2) <= '0';
	WAIT FOR 80000 ps;
	op0(2) <= '1';
	WAIT FOR 40000 ps;
	op0(2) <= '0';
	WAIT FOR 40000 ps;
	op0(2) <= '1';
	WAIT FOR 40000 ps;
	op0(2) <= '0';
	WAIT FOR 80000 ps;
	op0(2) <= '1';
	WAIT FOR 80000 ps;
	op0(2) <= '0';
	WAIT FOR 40000 ps;
	op0(2) <= '1';
	WAIT FOR 40000 ps;
	op0(2) <= '0';
WAIT;
END PROCESS t_prcs_op0_2;
-- op0[1]
t_prcs_op0_1: PROCESS
BEGIN
	op0(1) <= '0';
	WAIT FOR 40000 ps;
	op0(1) <= '1';
	WAIT FOR 120000 ps;
	op0(1) <= '0';
	WAIT FOR 40000 ps;
	op0(1) <= '1';
	WAIT FOR 40000 ps;
	op0(1) <= '0';
	WAIT FOR 160000 ps;
	op0(1) <= '1';
	WAIT FOR 120000 ps;
	op0(1) <= '0';
	WAIT FOR 80000 ps;
	op0(1) <= '1';
	WAIT FOR 80000 ps;
	op0(1) <= '0';
	WAIT FOR 40000 ps;
	op0(1) <= '1';
	WAIT FOR 40000 ps;
	op0(1) <= '0';
	WAIT FOR 40000 ps;
	op0(1) <= '1';
	WAIT FOR 40000 ps;
	op0(1) <= '0';
	WAIT FOR 80000 ps;
	op0(1) <= '1';
WAIT;
END PROCESS t_prcs_op0_1;
-- op0[0]
t_prcs_op0_0: PROCESS
BEGIN
	op0(0) <= '1';
	WAIT FOR 80000 ps;
	op0(0) <= '0';
	WAIT FOR 80000 ps;
	op0(0) <= '1';
	WAIT FOR 160000 ps;
	op0(0) <= '0';
	WAIT FOR 40000 ps;
	op0(0) <= '1';
	WAIT FOR 40000 ps;
	op0(0) <= '0';
	WAIT FOR 80000 ps;
	op0(0) <= '1';
	WAIT FOR 40000 ps;
	op0(0) <= '0';
	WAIT FOR 40000 ps;
	op0(0) <= '1';
	WAIT FOR 40000 ps;
	op0(0) <= '0';
	WAIT FOR 40000 ps;
	op0(0) <= '1';
	WAIT FOR 40000 ps;
	op0(0) <= '0';
	WAIT FOR 40000 ps;
	op0(0) <= '1';
	WAIT FOR 40000 ps;
	op0(0) <= '0';
	WAIT FOR 80000 ps;
	op0(0) <= '1';
	WAIT FOR 40000 ps;
	op0(0) <= '0';
WAIT;
END PROCESS t_prcs_op0_0;
-- op1[15]
t_prcs_op1_15: PROCESS
BEGIN
	op1(15) <= '1';
	WAIT FOR 80000 ps;
	op1(15) <= '0';
	WAIT FOR 80000 ps;
	op1(15) <= '1';
	WAIT FOR 80000 ps;
	op1(15) <= '0';
	WAIT FOR 120000 ps;
	op1(15) <= '1';
	WAIT FOR 80000 ps;
	op1(15) <= '0';
	WAIT FOR 160000 ps;
	op1(15) <= '1';
	WAIT FOR 40000 ps;
	op1(15) <= '0';
	WAIT FOR 40000 ps;
	op1(15) <= '1';
	WAIT FOR 40000 ps;
	op1(15) <= '0';
	WAIT FOR 40000 ps;
	op1(15) <= '1';
	WAIT FOR 40000 ps;
	op1(15) <= '0';
	WAIT FOR 40000 ps;
	op1(15) <= '1';
	WAIT FOR 40000 ps;
	op1(15) <= '0';
	WAIT FOR 80000 ps;
	op1(15) <= '1';
WAIT;
END PROCESS t_prcs_op1_15;
-- op1[14]
t_prcs_op1_14: PROCESS
BEGIN
	op1(14) <= '0';
	WAIT FOR 40000 ps;
	op1(14) <= '1';
	WAIT FOR 80000 ps;
	op1(14) <= '0';
	WAIT FOR 40000 ps;
	op1(14) <= '1';
	WAIT FOR 40000 ps;
	op1(14) <= '0';
	WAIT FOR 160000 ps;
	op1(14) <= '1';
	WAIT FOR 120000 ps;
	op1(14) <= '0';
	WAIT FOR 160000 ps;
	op1(14) <= '1';
	WAIT FOR 80000 ps;
	op1(14) <= '0';
	WAIT FOR 40000 ps;
	op1(14) <= '1';
	WAIT FOR 40000 ps;
	op1(14) <= '0';
	WAIT FOR 40000 ps;
	op1(14) <= '1';
	WAIT FOR 40000 ps;
	op1(14) <= '0';
	WAIT FOR 40000 ps;
	op1(14) <= '1';
	WAIT FOR 40000 ps;
	op1(14) <= '0';
WAIT;
END PROCESS t_prcs_op1_14;
-- op1[13]
t_prcs_op1_13: PROCESS
BEGIN
	op1(13) <= '0';
	WAIT FOR 40000 ps;
	op1(13) <= '1';
	WAIT FOR 40000 ps;
	op1(13) <= '0';
	WAIT FOR 40000 ps;
	op1(13) <= '1';
	WAIT FOR 240000 ps;
	op1(13) <= '0';
	WAIT FOR 40000 ps;
	op1(13) <= '1';
	WAIT FOR 40000 ps;
	op1(13) <= '0';
	WAIT FOR 40000 ps;
	op1(13) <= '1';
	WAIT FOR 80000 ps;
	op1(13) <= '0';
	WAIT FOR 40000 ps;
	op1(13) <= '1';
	WAIT FOR 40000 ps;
	op1(13) <= '0';
	WAIT FOR 40000 ps;
	op1(13) <= '1';
	WAIT FOR 40000 ps;
	op1(13) <= '0';
	WAIT FOR 120000 ps;
	op1(13) <= '1';
	WAIT FOR 40000 ps;
	op1(13) <= '0';
	WAIT FOR 40000 ps;
	op1(13) <= '1';
	WAIT FOR 40000 ps;
	op1(13) <= '0';
WAIT;
END PROCESS t_prcs_op1_13;
-- op1[12]
t_prcs_op1_12: PROCESS
BEGIN
	op1(12) <= '0';
	WAIT FOR 40000 ps;
	op1(12) <= '1';
	WAIT FOR 40000 ps;
	op1(12) <= '0';
	WAIT FOR 40000 ps;
	op1(12) <= '1';
	WAIT FOR 80000 ps;
	op1(12) <= '0';
	WAIT FOR 40000 ps;
	op1(12) <= '1';
	WAIT FOR 40000 ps;
	op1(12) <= '0';
	WAIT FOR 80000 ps;
	op1(12) <= '1';
	WAIT FOR 80000 ps;
	op1(12) <= '0';
	WAIT FOR 40000 ps;
	op1(12) <= '1';
	WAIT FOR 80000 ps;
	op1(12) <= '0';
	WAIT FOR 80000 ps;
	op1(12) <= '1';
	WAIT FOR 40000 ps;
	op1(12) <= '0';
	WAIT FOR 40000 ps;
	op1(12) <= '1';
	WAIT FOR 40000 ps;
	op1(12) <= '0';
	WAIT FOR 80000 ps;
	op1(12) <= '1';
	WAIT FOR 40000 ps;
	op1(12) <= '0';
	WAIT FOR 40000 ps;
	op1(12) <= '1';
WAIT;
END PROCESS t_prcs_op1_12;
-- op1[11]
t_prcs_op1_11: PROCESS
BEGIN
	op1(11) <= '0';
	WAIT FOR 40000 ps;
	op1(11) <= '1';
	WAIT FOR 80000 ps;
	op1(11) <= '0';
	WAIT FOR 40000 ps;
	op1(11) <= '1';
	WAIT FOR 40000 ps;
	op1(11) <= '0';
	WAIT FOR 40000 ps;
	op1(11) <= '1';
	WAIT FOR 120000 ps;
	op1(11) <= '0';
	WAIT FOR 160000 ps;
	op1(11) <= '1';
	WAIT FOR 40000 ps;
	op1(11) <= '0';
	WAIT FOR 240000 ps;
	op1(11) <= '1';
	WAIT FOR 40000 ps;
	op1(11) <= '0';
	WAIT FOR 120000 ps;
	op1(11) <= '1';
WAIT;
END PROCESS t_prcs_op1_11;
-- op1[10]
t_prcs_op1_10: PROCESS
BEGIN
	op1(10) <= '1';
	WAIT FOR 120000 ps;
	op1(10) <= '0';
	WAIT FOR 80000 ps;
	op1(10) <= '1';
	WAIT FOR 40000 ps;
	op1(10) <= '0';
	WAIT FOR 40000 ps;
	op1(10) <= '1';
	WAIT FOR 40000 ps;
	op1(10) <= '0';
	WAIT FOR 80000 ps;
	op1(10) <= '1';
	WAIT FOR 280000 ps;
	op1(10) <= '0';
	WAIT FOR 40000 ps;
	op1(10) <= '1';
	WAIT FOR 120000 ps;
	op1(10) <= '0';
	WAIT FOR 40000 ps;
	op1(10) <= '1';
WAIT;
END PROCESS t_prcs_op1_10;
-- op1[9]
t_prcs_op1_9: PROCESS
BEGIN
	op1(9) <= '0';
	WAIT FOR 80000 ps;
	op1(9) <= '1';
	WAIT FOR 80000 ps;
	op1(9) <= '0';
	WAIT FOR 40000 ps;
	op1(9) <= '1';
	WAIT FOR 40000 ps;
	op1(9) <= '0';
	WAIT FOR 40000 ps;
	op1(9) <= '1';
	WAIT FOR 40000 ps;
	op1(9) <= '0';
	WAIT FOR 320000 ps;
	op1(9) <= '1';
	WAIT FOR 40000 ps;
	op1(9) <= '0';
	WAIT FOR 120000 ps;
	op1(9) <= '1';
	WAIT FOR 80000 ps;
	op1(9) <= '0';
	WAIT FOR 40000 ps;
	op1(9) <= '1';
WAIT;
END PROCESS t_prcs_op1_9;
-- op1[8]
t_prcs_op1_8: PROCESS
BEGIN
	op1(8) <= '1';
	WAIT FOR 120000 ps;
	op1(8) <= '0';
	WAIT FOR 40000 ps;
	op1(8) <= '1';
	WAIT FOR 40000 ps;
	op1(8) <= '0';
	WAIT FOR 40000 ps;
	op1(8) <= '1';
	WAIT FOR 120000 ps;
	op1(8) <= '0';
	WAIT FOR 40000 ps;
	op1(8) <= '1';
	WAIT FOR 120000 ps;
	op1(8) <= '0';
	WAIT FOR 120000 ps;
	op1(8) <= '1';
	WAIT FOR 240000 ps;
	op1(8) <= '0';
	WAIT FOR 40000 ps;
	op1(8) <= '1';
	WAIT FOR 40000 ps;
	op1(8) <= '0';
WAIT;
END PROCESS t_prcs_op1_8;
-- op1[7]
t_prcs_op1_7: PROCESS
BEGIN
	op1(7) <= '1';
	WAIT FOR 160000 ps;
	op1(7) <= '0';
	WAIT FOR 40000 ps;
	op1(7) <= '1';
	WAIT FOR 160000 ps;
	op1(7) <= '0';
	WAIT FOR 120000 ps;
	op1(7) <= '1';
	WAIT FOR 40000 ps;
	op1(7) <= '0';
	WAIT FOR 80000 ps;
	op1(7) <= '1';
	WAIT FOR 40000 ps;
	op1(7) <= '0';
	WAIT FOR 40000 ps;
	op1(7) <= '1';
	WAIT FOR 80000 ps;
	op1(7) <= '0';
	WAIT FOR 40000 ps;
	op1(7) <= '1';
	WAIT FOR 40000 ps;
	op1(7) <= '0';
	WAIT FOR 80000 ps;
	op1(7) <= '1';
WAIT;
END PROCESS t_prcs_op1_7;
-- op1[6]
t_prcs_op1_6: PROCESS
BEGIN
	op1(6) <= '0';
	WAIT FOR 40000 ps;
	op1(6) <= '1';
	WAIT FOR 40000 ps;
	op1(6) <= '0';
	WAIT FOR 40000 ps;
	op1(6) <= '1';
	WAIT FOR 120000 ps;
	op1(6) <= '0';
	WAIT FOR 80000 ps;
	op1(6) <= '1';
	WAIT FOR 80000 ps;
	op1(6) <= '0';
	WAIT FOR 40000 ps;
	op1(6) <= '1';
	WAIT FOR 40000 ps;
	op1(6) <= '0';
	WAIT FOR 40000 ps;
	op1(6) <= '1';
	WAIT FOR 80000 ps;
	op1(6) <= '0';
	WAIT FOR 40000 ps;
	op1(6) <= '1';
	WAIT FOR 40000 ps;
	op1(6) <= '0';
	WAIT FOR 40000 ps;
	op1(6) <= '1';
	WAIT FOR 160000 ps;
	op1(6) <= '0';
	WAIT FOR 40000 ps;
	op1(6) <= '1';
	WAIT FOR 40000 ps;
	op1(6) <= '0';
WAIT;
END PROCESS t_prcs_op1_6;
-- op1[5]
t_prcs_op1_5: PROCESS
BEGIN
	op1(5) <= '1';
	WAIT FOR 40000 ps;
	op1(5) <= '0';
	WAIT FOR 40000 ps;
	op1(5) <= '1';
	WAIT FOR 40000 ps;
	op1(5) <= '0';
	WAIT FOR 280000 ps;
	op1(5) <= '1';
	WAIT FOR 40000 ps;
	op1(5) <= '0';
	WAIT FOR 40000 ps;
	op1(5) <= '1';
	WAIT FOR 40000 ps;
	op1(5) <= '0';
	WAIT FOR 40000 ps;
	op1(5) <= '1';
	WAIT FOR 40000 ps;
	op1(5) <= '0';
	WAIT FOR 40000 ps;
	op1(5) <= '1';
	WAIT FOR 40000 ps;
	op1(5) <= '0';
	WAIT FOR 80000 ps;
	op1(5) <= '1';
	WAIT FOR 40000 ps;
	op1(5) <= '0';
	WAIT FOR 80000 ps;
	op1(5) <= '1';
	WAIT FOR 80000 ps;
	op1(5) <= '0';
WAIT;
END PROCESS t_prcs_op1_5;
-- op1[4]
t_prcs_op1_4: PROCESS
BEGIN
	op1(4) <= '1';
	WAIT FOR 120000 ps;
	op1(4) <= '0';
	WAIT FOR 40000 ps;
	op1(4) <= '1';
	WAIT FOR 40000 ps;
	op1(4) <= '0';
	WAIT FOR 40000 ps;
	op1(4) <= '1';
	WAIT FOR 40000 ps;
	op1(4) <= '0';
	WAIT FOR 40000 ps;
	op1(4) <= '1';
	WAIT FOR 80000 ps;
	op1(4) <= '0';
	WAIT FOR 40000 ps;
	op1(4) <= '1';
	WAIT FOR 120000 ps;
	op1(4) <= '0';
	WAIT FOR 80000 ps;
	op1(4) <= '1';
	WAIT FOR 40000 ps;
	op1(4) <= '0';
	WAIT FOR 80000 ps;
	op1(4) <= '1';
WAIT;
END PROCESS t_prcs_op1_4;
-- op1[3]
t_prcs_op1_3: PROCESS
BEGIN
	op1(3) <= '1';
	WAIT FOR 120000 ps;
	op1(3) <= '0';
	WAIT FOR 40000 ps;
	op1(3) <= '1';
	WAIT FOR 120000 ps;
	op1(3) <= '0';
	WAIT FOR 40000 ps;
	op1(3) <= '1';
	WAIT FOR 80000 ps;
	op1(3) <= '0';
	WAIT FOR 80000 ps;
	op1(3) <= '1';
	WAIT FOR 80000 ps;
	op1(3) <= '0';
	WAIT FOR 40000 ps;
	op1(3) <= '1';
	WAIT FOR 80000 ps;
	op1(3) <= '0';
WAIT;
END PROCESS t_prcs_op1_3;
-- op1[2]
t_prcs_op1_2: PROCESS
BEGIN
	op1(2) <= '1';
	WAIT FOR 40000 ps;
	op1(2) <= '0';
	WAIT FOR 40000 ps;
	op1(2) <= '1';
	WAIT FOR 280000 ps;
	op1(2) <= '0';
	WAIT FOR 40000 ps;
	op1(2) <= '1';
	WAIT FOR 80000 ps;
	op1(2) <= '0';
	WAIT FOR 80000 ps;
	op1(2) <= '1';
	WAIT FOR 80000 ps;
	op1(2) <= '0';
	WAIT FOR 320000 ps;
	op1(2) <= '1';
WAIT;
END PROCESS t_prcs_op1_2;
-- op1[1]
t_prcs_op1_1: PROCESS
BEGIN
	op1(1) <= '0';
	WAIT FOR 80000 ps;
	op1(1) <= '1';
	WAIT FOR 200000 ps;
	op1(1) <= '0';
	WAIT FOR 40000 ps;
	op1(1) <= '1';
	WAIT FOR 40000 ps;
	op1(1) <= '0';
	WAIT FOR 40000 ps;
	op1(1) <= '1';
	WAIT FOR 120000 ps;
	op1(1) <= '0';
	WAIT FOR 240000 ps;
	op1(1) <= '1';
	WAIT FOR 40000 ps;
	op1(1) <= '0';
	WAIT FOR 80000 ps;
	op1(1) <= '1';
	WAIT FOR 80000 ps;
	op1(1) <= '0';
WAIT;
END PROCESS t_prcs_op1_1;
-- op1[0]
t_prcs_op1_0: PROCESS
BEGIN
	op1(0) <= '0';
	WAIT FOR 120000 ps;
	op1(0) <= '1';
	WAIT FOR 40000 ps;
	op1(0) <= '0';
	WAIT FOR 120000 ps;
	op1(0) <= '1';
	WAIT FOR 40000 ps;
	op1(0) <= '0';
	WAIT FOR 40000 ps;
	op1(0) <= '1';
	WAIT FOR 40000 ps;
	op1(0) <= '0';
	WAIT FOR 120000 ps;
	op1(0) <= '1';
	WAIT FOR 40000 ps;
	op1(0) <= '0';
	WAIT FOR 40000 ps;
	op1(0) <= '1';
	WAIT FOR 40000 ps;
	op1(0) <= '0';
	WAIT FOR 40000 ps;
	op1(0) <= '1';
	WAIT FOR 40000 ps;
	op1(0) <= '0';
	WAIT FOR 40000 ps;
	op1(0) <= '1';
	WAIT FOR 80000 ps;
	op1(0) <= '0';
	WAIT FOR 80000 ps;
	op1(0) <= '1';
	WAIT FOR 40000 ps;
	op1(0) <= '0';
WAIT;
END PROCESS t_prcs_op1_0;
END ALU16_arch;
