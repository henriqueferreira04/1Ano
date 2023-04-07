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

-- DATE "04/07/2023 12:44:33"

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
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \KEY[0]~padout\ : std_logic;
SIGNAL \KEY[1]~padout\ : std_logic;
SIGNAL \KEY[2]~padout\ : std_logic;
SIGNAL \KEY[3]~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \KEY[0]~ibuf_o\ : std_logic;
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL SW : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	proj_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END proj_Demo;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF proj_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freq|UpDown~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freq|counter[0]~26_combout\ : std_logic;
SIGNAL \freq|counter[15]~57\ : std_logic;
SIGNAL \freq|counter[16]~58_combout\ : std_logic;
SIGNAL \freq|counter[16]~59\ : std_logic;
SIGNAL \freq|counter[17]~60_combout\ : std_logic;
SIGNAL \freq|counter[17]~61\ : std_logic;
SIGNAL \freq|counter[18]~62_combout\ : std_logic;
SIGNAL \freq|counter[18]~63\ : std_logic;
SIGNAL \freq|counter[19]~64_combout\ : std_logic;
SIGNAL \freq|counter[19]~65\ : std_logic;
SIGNAL \freq|counter[20]~66_combout\ : std_logic;
SIGNAL \freq|counter[20]~67\ : std_logic;
SIGNAL \freq|counter[21]~68_combout\ : std_logic;
SIGNAL \freq|counter[21]~69\ : std_logic;
SIGNAL \freq|counter[22]~70_combout\ : std_logic;
SIGNAL \freq|UpDown~2_combout\ : std_logic;
SIGNAL \freq|counter[22]~71\ : std_logic;
SIGNAL \freq|counter[23]~72_combout\ : std_logic;
SIGNAL \freq|counter[23]~73\ : std_logic;
SIGNAL \freq|counter[24]~74_combout\ : std_logic;
SIGNAL \freq|counter[24]~75\ : std_logic;
SIGNAL \freq|counter[25]~76_combout\ : std_logic;
SIGNAL \freq|UpDown~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \freq|UpDown~0_combout\ : std_logic;
SIGNAL \freq|UpDown~3_combout\ : std_logic;
SIGNAL \freq|UpDown~6_combout\ : std_logic;
SIGNAL \freq|UpDown~5_combout\ : std_logic;
SIGNAL \freq|UpDown~4_combout\ : std_logic;
SIGNAL \freq|UpDown~7_combout\ : std_logic;
SIGNAL \freq|UpDown~14_combout\ : std_logic;
SIGNAL \freq|counter[0]~27\ : std_logic;
SIGNAL \freq|counter[1]~28_combout\ : std_logic;
SIGNAL \freq|counter[1]~29\ : std_logic;
SIGNAL \freq|counter[2]~30_combout\ : std_logic;
SIGNAL \freq|counter[2]~31\ : std_logic;
SIGNAL \freq|counter[3]~32_combout\ : std_logic;
SIGNAL \freq|counter[3]~33\ : std_logic;
SIGNAL \freq|counter[4]~34_combout\ : std_logic;
SIGNAL \freq|counter[4]~35\ : std_logic;
SIGNAL \freq|counter[5]~36_combout\ : std_logic;
SIGNAL \freq|counter[5]~37\ : std_logic;
SIGNAL \freq|counter[6]~38_combout\ : std_logic;
SIGNAL \freq|counter[6]~39\ : std_logic;
SIGNAL \freq|counter[7]~40_combout\ : std_logic;
SIGNAL \freq|counter[7]~41\ : std_logic;
SIGNAL \freq|counter[8]~42_combout\ : std_logic;
SIGNAL \freq|counter[8]~43\ : std_logic;
SIGNAL \freq|counter[9]~44_combout\ : std_logic;
SIGNAL \freq|counter[9]~45\ : std_logic;
SIGNAL \freq|counter[10]~46_combout\ : std_logic;
SIGNAL \freq|counter[10]~47\ : std_logic;
SIGNAL \freq|counter[11]~48_combout\ : std_logic;
SIGNAL \freq|counter[11]~49\ : std_logic;
SIGNAL \freq|counter[12]~50_combout\ : std_logic;
SIGNAL \freq|counter[12]~51\ : std_logic;
SIGNAL \freq|counter[13]~52_combout\ : std_logic;
SIGNAL \freq|counter[13]~53\ : std_logic;
SIGNAL \freq|counter[14]~54_combout\ : std_logic;
SIGNAL \freq|counter[14]~55\ : std_logic;
SIGNAL \freq|counter[15]~56_combout\ : std_logic;
SIGNAL \freq|UpDown~9_combout\ : std_logic;
SIGNAL \freq|UpDown~11_combout\ : std_logic;
SIGNAL \freq|UpDown~10_combout\ : std_logic;
SIGNAL \freq|UpDown~8_combout\ : std_logic;
SIGNAL \freq|UpDown~12_combout\ : std_logic;
SIGNAL \freq|UpDown~13_combout\ : std_logic;
SIGNAL \freq|UpDown~feeder_combout\ : std_logic;
SIGNAL \freq|UpDown~q\ : std_logic;
SIGNAL \freq|UpDown~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \counter|snum~11_combout\ : std_logic;
SIGNAL \counter|snum[1]~4_cout\ : std_logic;
SIGNAL \counter|snum[1]~5_combout\ : std_logic;
SIGNAL \counter|snum[1]~6\ : std_logic;
SIGNAL \counter|snum[2]~7_combout\ : std_logic;
SIGNAL \counter|snum[2]~8\ : std_logic;
SIGNAL \counter|snum[3]~9_combout\ : std_logic;
SIGNAL \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ : std_logic;
SIGNAL \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\ : std_logic;
SIGNAL \decoder0|decout_n[0]~0_combout\ : std_logic;
SIGNAL \decoder0|decout_n[1]~1_combout\ : std_logic;
SIGNAL \decoder0|decout_n[2]~2_combout\ : std_logic;
SIGNAL \decoder0|decout_n[3]~3_combout\ : std_logic;
SIGNAL \decoder0|decout_n[4]~4_combout\ : std_logic;
SIGNAL \decoder0|decout_n[5]~5_combout\ : std_logic;
SIGNAL \decoder0|decout_n[6]~6_combout\ : std_logic;
SIGNAL \decoder1|decout_n[0]~0_combout\ : std_logic;
SIGNAL \counter|snum\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freq|counter\ : std_logic_vector(25 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freq|UpDown~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freq|UpDown~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decout_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decout_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decout_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decout_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decout_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decout_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|decout_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decout_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decout_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decout_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|decout_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X60_Y14_N6
\freq|counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[0]~26_combout\ = \freq|counter\(0) $ (VCC)
-- \freq|counter[0]~27\ = CARRY(\freq|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(0),
	datad => VCC,
	combout => \freq|counter[0]~26_combout\,
	cout => \freq|counter[0]~27\);

-- Location: LCCOMB_X60_Y13_N4
\freq|counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[15]~56_combout\ = (\freq|counter\(15) & (!\freq|counter[14]~55\)) # (!\freq|counter\(15) & ((\freq|counter[14]~55\) # (GND)))
-- \freq|counter[15]~57\ = CARRY((!\freq|counter[14]~55\) # (!\freq|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(15),
	datad => VCC,
	cin => \freq|counter[14]~55\,
	combout => \freq|counter[15]~56_combout\,
	cout => \freq|counter[15]~57\);

-- Location: LCCOMB_X60_Y13_N6
\freq|counter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[16]~58_combout\ = (\freq|counter\(16) & (\freq|counter[15]~57\ $ (GND))) # (!\freq|counter\(16) & (!\freq|counter[15]~57\ & VCC))
-- \freq|counter[16]~59\ = CARRY((\freq|counter\(16) & !\freq|counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(16),
	datad => VCC,
	cin => \freq|counter[15]~57\,
	combout => \freq|counter[16]~58_combout\,
	cout => \freq|counter[16]~59\);

-- Location: FF_X60_Y13_N7
\freq|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[16]~58_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(16));

-- Location: LCCOMB_X60_Y13_N8
\freq|counter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[17]~60_combout\ = (\freq|counter\(17) & (!\freq|counter[16]~59\)) # (!\freq|counter\(17) & ((\freq|counter[16]~59\) # (GND)))
-- \freq|counter[17]~61\ = CARRY((!\freq|counter[16]~59\) # (!\freq|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(17),
	datad => VCC,
	cin => \freq|counter[16]~59\,
	combout => \freq|counter[17]~60_combout\,
	cout => \freq|counter[17]~61\);

-- Location: FF_X60_Y13_N9
\freq|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[17]~60_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(17));

-- Location: LCCOMB_X60_Y13_N10
\freq|counter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[18]~62_combout\ = (\freq|counter\(18) & (\freq|counter[17]~61\ $ (GND))) # (!\freq|counter\(18) & (!\freq|counter[17]~61\ & VCC))
-- \freq|counter[18]~63\ = CARRY((\freq|counter\(18) & !\freq|counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(18),
	datad => VCC,
	cin => \freq|counter[17]~61\,
	combout => \freq|counter[18]~62_combout\,
	cout => \freq|counter[18]~63\);

-- Location: FF_X60_Y13_N11
\freq|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[18]~62_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(18));

-- Location: LCCOMB_X60_Y13_N12
\freq|counter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[19]~64_combout\ = (\freq|counter\(19) & (!\freq|counter[18]~63\)) # (!\freq|counter\(19) & ((\freq|counter[18]~63\) # (GND)))
-- \freq|counter[19]~65\ = CARRY((!\freq|counter[18]~63\) # (!\freq|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(19),
	datad => VCC,
	cin => \freq|counter[18]~63\,
	combout => \freq|counter[19]~64_combout\,
	cout => \freq|counter[19]~65\);

-- Location: FF_X60_Y13_N13
\freq|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[19]~64_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(19));

-- Location: LCCOMB_X60_Y13_N14
\freq|counter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[20]~66_combout\ = (\freq|counter\(20) & (\freq|counter[19]~65\ $ (GND))) # (!\freq|counter\(20) & (!\freq|counter[19]~65\ & VCC))
-- \freq|counter[20]~67\ = CARRY((\freq|counter\(20) & !\freq|counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(20),
	datad => VCC,
	cin => \freq|counter[19]~65\,
	combout => \freq|counter[20]~66_combout\,
	cout => \freq|counter[20]~67\);

-- Location: FF_X60_Y13_N15
\freq|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[20]~66_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(20));

-- Location: LCCOMB_X60_Y13_N16
\freq|counter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[21]~68_combout\ = (\freq|counter\(21) & (!\freq|counter[20]~67\)) # (!\freq|counter\(21) & ((\freq|counter[20]~67\) # (GND)))
-- \freq|counter[21]~69\ = CARRY((!\freq|counter[20]~67\) # (!\freq|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(21),
	datad => VCC,
	cin => \freq|counter[20]~67\,
	combout => \freq|counter[21]~68_combout\,
	cout => \freq|counter[21]~69\);

-- Location: FF_X60_Y13_N17
\freq|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[21]~68_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(21));

-- Location: LCCOMB_X60_Y13_N18
\freq|counter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[22]~70_combout\ = (\freq|counter\(22) & (\freq|counter[21]~69\ $ (GND))) # (!\freq|counter\(22) & (!\freq|counter[21]~69\ & VCC))
-- \freq|counter[22]~71\ = CARRY((\freq|counter\(22) & !\freq|counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(22),
	datad => VCC,
	cin => \freq|counter[21]~69\,
	combout => \freq|counter[22]~70_combout\,
	cout => \freq|counter[22]~71\);

-- Location: FF_X60_Y13_N19
\freq|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[22]~70_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(22));

-- Location: LCCOMB_X59_Y13_N22
\freq|UpDown~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~2_combout\ = (\freq|counter\(11) & (\freq|counter\(18) & (!\freq|counter\(14) & !\freq|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(11),
	datab => \freq|counter\(18),
	datac => \freq|counter\(14),
	datad => \freq|counter\(22),
	combout => \freq|UpDown~2_combout\);

-- Location: LCCOMB_X60_Y13_N20
\freq|counter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[23]~72_combout\ = (\freq|counter\(23) & (!\freq|counter[22]~71\)) # (!\freq|counter\(23) & ((\freq|counter[22]~71\) # (GND)))
-- \freq|counter[23]~73\ = CARRY((!\freq|counter[22]~71\) # (!\freq|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(23),
	datad => VCC,
	cin => \freq|counter[22]~71\,
	combout => \freq|counter[23]~72_combout\,
	cout => \freq|counter[23]~73\);

-- Location: FF_X60_Y13_N21
\freq|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[23]~72_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(23));

-- Location: LCCOMB_X60_Y13_N22
\freq|counter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[24]~74_combout\ = (\freq|counter\(24) & (\freq|counter[23]~73\ $ (GND))) # (!\freq|counter\(24) & (!\freq|counter[23]~73\ & VCC))
-- \freq|counter[24]~75\ = CARRY((\freq|counter\(24) & !\freq|counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(24),
	datad => VCC,
	cin => \freq|counter[23]~73\,
	combout => \freq|counter[24]~74_combout\,
	cout => \freq|counter[24]~75\);

-- Location: FF_X60_Y13_N23
\freq|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[24]~74_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(24));

-- Location: LCCOMB_X60_Y13_N24
\freq|counter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[25]~76_combout\ = \freq|counter[24]~75\ $ (\freq|counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freq|counter\(25),
	cin => \freq|counter[24]~75\,
	combout => \freq|counter[25]~76_combout\);

-- Location: FF_X60_Y13_N25
\freq|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[25]~76_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(25));

-- Location: LCCOMB_X60_Y14_N4
\freq|UpDown~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~1_combout\ = (!\freq|counter\(3) & (!\freq|counter\(4) & (\freq|counter\(10) & !\freq|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(3),
	datab => \freq|counter\(4),
	datac => \freq|counter\(10),
	datad => \freq|counter\(6),
	combout => \freq|UpDown~1_combout\);

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

-- Location: LCCOMB_X59_Y13_N2
\freq|UpDown~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~0_combout\ = (\SW[0]~input_o\ & (!\freq|counter\(1) & (!\freq|counter\(2) & !\freq|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \freq|counter\(1),
	datac => \freq|counter\(2),
	datad => \freq|counter\(0),
	combout => \freq|UpDown~0_combout\);

-- Location: LCCOMB_X59_Y13_N4
\freq|UpDown~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~3_combout\ = (\freq|UpDown~2_combout\ & (!\freq|counter\(25) & (\freq|UpDown~1_combout\ & \freq|UpDown~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|UpDown~2_combout\,
	datab => \freq|counter\(25),
	datac => \freq|UpDown~1_combout\,
	datad => \freq|UpDown~0_combout\,
	combout => \freq|UpDown~3_combout\);

-- Location: LCCOMB_X59_Y13_N14
\freq|UpDown~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~6_combout\ = (!\freq|counter\(11) & (!\freq|counter\(18) & (\freq|counter\(14) & \freq|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(11),
	datab => \freq|counter\(18),
	datac => \freq|counter\(14),
	datad => \freq|counter\(22),
	combout => \freq|UpDown~6_combout\);

-- Location: LCCOMB_X60_Y14_N2
\freq|UpDown~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~5_combout\ = (\freq|counter\(3) & (\freq|counter\(4) & (!\freq|counter\(10) & \freq|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(3),
	datab => \freq|counter\(4),
	datac => \freq|counter\(10),
	datad => \freq|counter\(6),
	combout => \freq|UpDown~5_combout\);

-- Location: LCCOMB_X59_Y13_N8
\freq|UpDown~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~4_combout\ = (\freq|counter\(2) & (\freq|counter\(0) & (!\SW[0]~input_o\ & \freq|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(2),
	datab => \freq|counter\(0),
	datac => \SW[0]~input_o\,
	datad => \freq|counter\(1),
	combout => \freq|UpDown~4_combout\);

-- Location: LCCOMB_X59_Y13_N6
\freq|UpDown~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~7_combout\ = (\freq|counter\(25) & (\freq|UpDown~6_combout\ & (\freq|UpDown~5_combout\ & \freq|UpDown~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(25),
	datab => \freq|UpDown~6_combout\,
	datac => \freq|UpDown~5_combout\,
	datad => \freq|UpDown~4_combout\,
	combout => \freq|UpDown~7_combout\);

-- Location: LCCOMB_X59_Y13_N0
\freq|UpDown~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~14_combout\ = (\freq|UpDown~12_combout\ & ((\freq|UpDown~3_combout\) # (\freq|UpDown~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|UpDown~12_combout\,
	datac => \freq|UpDown~3_combout\,
	datad => \freq|UpDown~7_combout\,
	combout => \freq|UpDown~14_combout\);

-- Location: FF_X60_Y14_N7
\freq|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[0]~26_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(0));

-- Location: LCCOMB_X60_Y14_N8
\freq|counter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[1]~28_combout\ = (\freq|counter\(1) & (!\freq|counter[0]~27\)) # (!\freq|counter\(1) & ((\freq|counter[0]~27\) # (GND)))
-- \freq|counter[1]~29\ = CARRY((!\freq|counter[0]~27\) # (!\freq|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(1),
	datad => VCC,
	cin => \freq|counter[0]~27\,
	combout => \freq|counter[1]~28_combout\,
	cout => \freq|counter[1]~29\);

-- Location: FF_X60_Y14_N9
\freq|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[1]~28_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(1));

-- Location: LCCOMB_X60_Y14_N10
\freq|counter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[2]~30_combout\ = (\freq|counter\(2) & (\freq|counter[1]~29\ $ (GND))) # (!\freq|counter\(2) & (!\freq|counter[1]~29\ & VCC))
-- \freq|counter[2]~31\ = CARRY((\freq|counter\(2) & !\freq|counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(2),
	datad => VCC,
	cin => \freq|counter[1]~29\,
	combout => \freq|counter[2]~30_combout\,
	cout => \freq|counter[2]~31\);

-- Location: FF_X60_Y14_N11
\freq|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[2]~30_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(2));

-- Location: LCCOMB_X60_Y14_N12
\freq|counter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[3]~32_combout\ = (\freq|counter\(3) & (!\freq|counter[2]~31\)) # (!\freq|counter\(3) & ((\freq|counter[2]~31\) # (GND)))
-- \freq|counter[3]~33\ = CARRY((!\freq|counter[2]~31\) # (!\freq|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(3),
	datad => VCC,
	cin => \freq|counter[2]~31\,
	combout => \freq|counter[3]~32_combout\,
	cout => \freq|counter[3]~33\);

-- Location: FF_X60_Y14_N13
\freq|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[3]~32_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(3));

-- Location: LCCOMB_X60_Y14_N14
\freq|counter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[4]~34_combout\ = (\freq|counter\(4) & (\freq|counter[3]~33\ $ (GND))) # (!\freq|counter\(4) & (!\freq|counter[3]~33\ & VCC))
-- \freq|counter[4]~35\ = CARRY((\freq|counter\(4) & !\freq|counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(4),
	datad => VCC,
	cin => \freq|counter[3]~33\,
	combout => \freq|counter[4]~34_combout\,
	cout => \freq|counter[4]~35\);

-- Location: FF_X60_Y14_N15
\freq|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[4]~34_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(4));

-- Location: LCCOMB_X60_Y14_N16
\freq|counter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[5]~36_combout\ = (\freq|counter\(5) & (!\freq|counter[4]~35\)) # (!\freq|counter\(5) & ((\freq|counter[4]~35\) # (GND)))
-- \freq|counter[5]~37\ = CARRY((!\freq|counter[4]~35\) # (!\freq|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(5),
	datad => VCC,
	cin => \freq|counter[4]~35\,
	combout => \freq|counter[5]~36_combout\,
	cout => \freq|counter[5]~37\);

-- Location: FF_X60_Y14_N17
\freq|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[5]~36_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(5));

-- Location: LCCOMB_X60_Y14_N18
\freq|counter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[6]~38_combout\ = (\freq|counter\(6) & (\freq|counter[5]~37\ $ (GND))) # (!\freq|counter\(6) & (!\freq|counter[5]~37\ & VCC))
-- \freq|counter[6]~39\ = CARRY((\freq|counter\(6) & !\freq|counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(6),
	datad => VCC,
	cin => \freq|counter[5]~37\,
	combout => \freq|counter[6]~38_combout\,
	cout => \freq|counter[6]~39\);

-- Location: FF_X60_Y14_N19
\freq|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[6]~38_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(6));

-- Location: LCCOMB_X60_Y14_N20
\freq|counter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[7]~40_combout\ = (\freq|counter\(7) & (!\freq|counter[6]~39\)) # (!\freq|counter\(7) & ((\freq|counter[6]~39\) # (GND)))
-- \freq|counter[7]~41\ = CARRY((!\freq|counter[6]~39\) # (!\freq|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(7),
	datad => VCC,
	cin => \freq|counter[6]~39\,
	combout => \freq|counter[7]~40_combout\,
	cout => \freq|counter[7]~41\);

-- Location: FF_X60_Y14_N21
\freq|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[7]~40_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(7));

-- Location: LCCOMB_X60_Y14_N22
\freq|counter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[8]~42_combout\ = (\freq|counter\(8) & (\freq|counter[7]~41\ $ (GND))) # (!\freq|counter\(8) & (!\freq|counter[7]~41\ & VCC))
-- \freq|counter[8]~43\ = CARRY((\freq|counter\(8) & !\freq|counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(8),
	datad => VCC,
	cin => \freq|counter[7]~41\,
	combout => \freq|counter[8]~42_combout\,
	cout => \freq|counter[8]~43\);

-- Location: FF_X60_Y14_N23
\freq|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[8]~42_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(8));

-- Location: LCCOMB_X60_Y14_N24
\freq|counter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[9]~44_combout\ = (\freq|counter\(9) & (!\freq|counter[8]~43\)) # (!\freq|counter\(9) & ((\freq|counter[8]~43\) # (GND)))
-- \freq|counter[9]~45\ = CARRY((!\freq|counter[8]~43\) # (!\freq|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(9),
	datad => VCC,
	cin => \freq|counter[8]~43\,
	combout => \freq|counter[9]~44_combout\,
	cout => \freq|counter[9]~45\);

-- Location: FF_X60_Y14_N25
\freq|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[9]~44_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(9));

-- Location: LCCOMB_X60_Y14_N26
\freq|counter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[10]~46_combout\ = (\freq|counter\(10) & (\freq|counter[9]~45\ $ (GND))) # (!\freq|counter\(10) & (!\freq|counter[9]~45\ & VCC))
-- \freq|counter[10]~47\ = CARRY((\freq|counter\(10) & !\freq|counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(10),
	datad => VCC,
	cin => \freq|counter[9]~45\,
	combout => \freq|counter[10]~46_combout\,
	cout => \freq|counter[10]~47\);

-- Location: FF_X60_Y14_N27
\freq|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[10]~46_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(10));

-- Location: LCCOMB_X60_Y14_N28
\freq|counter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[11]~48_combout\ = (\freq|counter\(11) & (!\freq|counter[10]~47\)) # (!\freq|counter\(11) & ((\freq|counter[10]~47\) # (GND)))
-- \freq|counter[11]~49\ = CARRY((!\freq|counter[10]~47\) # (!\freq|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(11),
	datad => VCC,
	cin => \freq|counter[10]~47\,
	combout => \freq|counter[11]~48_combout\,
	cout => \freq|counter[11]~49\);

-- Location: FF_X59_Y13_N13
\freq|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freq|counter[11]~48_combout\,
	sclr => \freq|UpDown~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(11));

-- Location: LCCOMB_X60_Y14_N30
\freq|counter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[12]~50_combout\ = (\freq|counter\(12) & (\freq|counter[11]~49\ $ (GND))) # (!\freq|counter\(12) & (!\freq|counter[11]~49\ & VCC))
-- \freq|counter[12]~51\ = CARRY((\freq|counter\(12) & !\freq|counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(12),
	datad => VCC,
	cin => \freq|counter[11]~49\,
	combout => \freq|counter[12]~50_combout\,
	cout => \freq|counter[12]~51\);

-- Location: FF_X59_Y13_N25
\freq|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freq|counter[12]~50_combout\,
	sclr => \freq|UpDown~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(12));

-- Location: LCCOMB_X60_Y13_N0
\freq|counter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[13]~52_combout\ = (\freq|counter\(13) & (!\freq|counter[12]~51\)) # (!\freq|counter\(13) & ((\freq|counter[12]~51\) # (GND)))
-- \freq|counter[13]~53\ = CARRY((!\freq|counter[12]~51\) # (!\freq|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(13),
	datad => VCC,
	cin => \freq|counter[12]~51\,
	combout => \freq|counter[13]~52_combout\,
	cout => \freq|counter[13]~53\);

-- Location: FF_X60_Y13_N1
\freq|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[13]~52_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(13));

-- Location: LCCOMB_X60_Y13_N2
\freq|counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|counter[14]~54_combout\ = (\freq|counter\(14) & (\freq|counter[13]~53\ $ (GND))) # (!\freq|counter\(14) & (!\freq|counter[13]~53\ & VCC))
-- \freq|counter[14]~55\ = CARRY((\freq|counter\(14) & !\freq|counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|counter\(14),
	datad => VCC,
	cin => \freq|counter[13]~53\,
	combout => \freq|counter[14]~54_combout\,
	cout => \freq|counter[14]~55\);

-- Location: FF_X60_Y13_N3
\freq|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[14]~54_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(14));

-- Location: FF_X60_Y13_N5
\freq|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|counter[15]~56_combout\,
	sclr => \freq|UpDown~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|counter\(15));

-- Location: LCCOMB_X59_Y13_N10
\freq|UpDown~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~9_combout\ = (\freq|counter\(15) & (\freq|counter\(12) & (\freq|counter\(13) & !\freq|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(15),
	datab => \freq|counter\(12),
	datac => \freq|counter\(13),
	datad => \freq|counter\(16),
	combout => \freq|UpDown~9_combout\);

-- Location: LCCOMB_X60_Y13_N28
\freq|UpDown~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~11_combout\ = (!\freq|counter\(24) & \freq|counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|counter\(24),
	datad => \freq|counter\(23),
	combout => \freq|UpDown~11_combout\);

-- Location: LCCOMB_X60_Y13_N30
\freq|UpDown~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~10_combout\ = (\freq|counter\(19) & (\freq|counter\(17) & (\freq|counter\(20) & \freq|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(19),
	datab => \freq|counter\(17),
	datac => \freq|counter\(20),
	datad => \freq|counter\(21),
	combout => \freq|UpDown~10_combout\);

-- Location: LCCOMB_X60_Y14_N0
\freq|UpDown~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~8_combout\ = (!\freq|counter\(8) & (\freq|counter\(5) & (!\freq|counter\(9) & !\freq|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|counter\(8),
	datab => \freq|counter\(5),
	datac => \freq|counter\(9),
	datad => \freq|counter\(7),
	combout => \freq|UpDown~8_combout\);

-- Location: LCCOMB_X59_Y13_N30
\freq|UpDown~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~12_combout\ = (\freq|UpDown~9_combout\ & (\freq|UpDown~11_combout\ & (\freq|UpDown~10_combout\ & \freq|UpDown~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|UpDown~9_combout\,
	datab => \freq|UpDown~11_combout\,
	datac => \freq|UpDown~10_combout\,
	datad => \freq|UpDown~8_combout\,
	combout => \freq|UpDown~12_combout\);

-- Location: LCCOMB_X59_Y13_N28
\freq|UpDown~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~13_combout\ = \freq|UpDown~q\ $ (((\freq|UpDown~12_combout\ & ((\freq|UpDown~3_combout\) # (\freq|UpDown~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|UpDown~12_combout\,
	datab => \freq|UpDown~q\,
	datac => \freq|UpDown~3_combout\,
	datad => \freq|UpDown~7_combout\,
	combout => \freq|UpDown~13_combout\);

-- Location: LCCOMB_X59_Y13_N26
\freq|UpDown~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|UpDown~feeder_combout\ = \freq|UpDown~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \freq|UpDown~13_combout\,
	combout => \freq|UpDown~feeder_combout\);

-- Location: FF_X59_Y13_N27
\freq|UpDown\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|UpDown~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|UpDown~q\);

-- Location: CLKCTRL_G17
\freq|UpDown~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freq|UpDown~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freq|UpDown~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y50_N26
\counter|snum~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|snum~11_combout\ = (!\SW[2]~input_o\ & !\counter|snum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \counter|snum\(0),
	combout => \counter|snum~11_combout\);

-- Location: FF_X114_Y50_N27
\counter|snum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|UpDown~clkctrl_outclk\,
	d => \counter|snum~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|snum\(0));

-- Location: LCCOMB_X114_Y50_N8
\counter|snum[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|snum[1]~4_cout\ = CARRY(\counter|snum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|snum\(0),
	datad => VCC,
	cout => \counter|snum[1]~4_cout\);

-- Location: LCCOMB_X114_Y50_N10
\counter|snum[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|snum[1]~5_combout\ = (\counter|snum\(1) & ((\SW[1]~input_o\ & (\counter|snum[1]~4_cout\ & VCC)) # (!\SW[1]~input_o\ & (!\counter|snum[1]~4_cout\)))) # (!\counter|snum\(1) & ((\SW[1]~input_o\ & (!\counter|snum[1]~4_cout\)) # (!\SW[1]~input_o\ & 
-- ((\counter|snum[1]~4_cout\) # (GND)))))
-- \counter|snum[1]~6\ = CARRY((\counter|snum\(1) & (!\SW[1]~input_o\ & !\counter|snum[1]~4_cout\)) # (!\counter|snum\(1) & ((!\counter|snum[1]~4_cout\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|snum\(1),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \counter|snum[1]~4_cout\,
	combout => \counter|snum[1]~5_combout\,
	cout => \counter|snum[1]~6\);

-- Location: FF_X114_Y50_N11
\counter|snum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|UpDown~clkctrl_outclk\,
	d => \counter|snum[1]~5_combout\,
	sclr => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|snum\(1));

-- Location: LCCOMB_X114_Y50_N12
\counter|snum[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|snum[2]~7_combout\ = ((\counter|snum\(2) $ (\SW[1]~input_o\ $ (!\counter|snum[1]~6\)))) # (GND)
-- \counter|snum[2]~8\ = CARRY((\counter|snum\(2) & ((\SW[1]~input_o\) # (!\counter|snum[1]~6\))) # (!\counter|snum\(2) & (\SW[1]~input_o\ & !\counter|snum[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|snum\(2),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \counter|snum[1]~6\,
	combout => \counter|snum[2]~7_combout\,
	cout => \counter|snum[2]~8\);

-- Location: FF_X114_Y50_N13
\counter|snum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|UpDown~clkctrl_outclk\,
	d => \counter|snum[2]~7_combout\,
	sclr => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|snum\(2));

-- Location: LCCOMB_X114_Y50_N14
\counter|snum[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|snum[3]~9_combout\ = \counter|snum\(3) $ (\counter|snum[2]~8\ $ (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|snum\(3),
	datad => \SW[1]~input_o\,
	cin => \counter|snum[2]~8\,
	combout => \counter|snum[3]~9_combout\);

-- Location: FF_X114_Y50_N15
\counter|snum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|UpDown~clkctrl_outclk\,
	d => \counter|snum[3]~9_combout\,
	sclr => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|snum\(3));

-- Location: LCCOMB_X114_Y50_N18
\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \counter|snum\(1) $ (VCC)
-- \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\counter|snum\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|snum\(1),
	datad => VCC,
	combout => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X114_Y50_N20
\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\counter|snum\(2) & (\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\counter|snum\(2) & 
-- (!\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\counter|snum\(2) & !\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|snum\(2),
	datad => VCC,
	cin => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X114_Y50_N22
\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\counter|snum\(3) & (\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\counter|snum\(3) & 
-- (!\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\counter|snum\(3) & !\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter|snum\(3),
	datad => VCC,
	cin => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X114_Y50_N24
\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X114_Y50_N16
\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\counter|snum\(3))) # 
-- (!\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|snum\(3),
	datac => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X114_Y50_N2
\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ = (\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\counter|snum\(2))) # 
-- (!\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|snum\(2),
	datab => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\);

-- Location: LCCOMB_X114_Y50_N4
\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\ = (\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\counter|snum\(1)))) # 
-- (!\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \counter|snum\(1),
	datad => \decimal|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\);

-- Location: LCCOMB_X114_Y54_N16
\decoder0|decout_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|decout_n[0]~0_combout\ = (\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\counter|snum\(0) & (\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ $ 
-- (\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\)))) # (!\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & (!\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\ & 
-- (\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ $ (\counter|snum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datac => \counter|snum\(0),
	datad => \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\,
	combout => \decoder0|decout_n[0]~0_combout\);

-- Location: LCCOMB_X114_Y54_N6
\decoder0|decout_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|decout_n[1]~1_combout\ = (\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & ((\counter|snum\(0) & ((\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\))) # (!\counter|snum\(0) & 
-- (\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\)))) # (!\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ & (\counter|snum\(0) $ 
-- (\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datac => \counter|snum\(0),
	datad => \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\,
	combout => \decoder0|decout_n[1]~1_combout\);

-- Location: LCCOMB_X114_Y54_N28
\decoder0|decout_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|decout_n[2]~2_combout\ = (\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ & ((\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\) # 
-- (!\counter|snum\(0))))) # (!\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & (!\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ & (!\counter|snum\(0) & 
-- \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datac => \counter|snum\(0),
	datad => \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\,
	combout => \decoder0|decout_n[2]~2_combout\);

-- Location: LCCOMB_X114_Y50_N28
\decoder0|decout_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|decout_n[3]~3_combout\ = (\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ & ((\counter|snum\(0)))) # 
-- (!\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ & (\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & !\counter|snum\(0))))) # (!\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\ & 
-- (!\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ $ (\counter|snum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datac => \counter|snum\(0),
	datad => \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\,
	combout => \decoder0|decout_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y54_N2
\decoder0|decout_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|decout_n[4]~4_combout\ = (\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\ & (!\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & ((\counter|snum\(0))))) # 
-- (!\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ & (!\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\)) # 
-- (!\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ & ((\counter|snum\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datac => \counter|snum\(0),
	datad => \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\,
	combout => \decoder0|decout_n[4]~4_combout\);

-- Location: LCCOMB_X114_Y54_N12
\decoder0|decout_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|decout_n[5]~5_combout\ = (\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ & (\counter|snum\(0) & (\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ $ 
-- (\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\)))) # (!\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ & (!\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & ((\counter|snum\(0)) # 
-- (\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datac => \counter|snum\(0),
	datad => \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\,
	combout => \decoder0|decout_n[5]~5_combout\);

-- Location: LCCOMB_X114_Y54_N26
\decoder0|decout_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|decout_n[6]~6_combout\ = (\counter|snum\(0) & (!\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\ $ 
-- (!\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\)))) # (!\counter|snum\(0) & (!\decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\ & (\decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ $ 
-- (!\decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decimal|Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \decimal|Mod1|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datac => \counter|snum\(0),
	datad => \decimal|Mod1|auto_generated|divider|divider|StageOut[13]~1_combout\,
	combout => \decoder0|decout_n[6]~6_combout\);

-- Location: LCCOMB_X114_Y50_N6
\decoder1|decout_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|decout_n[0]~0_combout\ = (\counter|snum\(3) & ((\counter|snum\(1)) # (\counter|snum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|snum\(1),
	datac => \counter|snum\(3),
	datad => \counter|snum\(2),
	combout => \decoder1|decout_n[0]~0_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;
END structure;


