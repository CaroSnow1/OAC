-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "05/19/2023 08:04:42"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	m68hc11 IS
    PORT (
	Z : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	IRQn : IN std_logic;
	XIRQn : IN std_logic;
	csnn : OUT std_logic;
	N : OUT std_logic;
	ACCA_D : OUT std_logic_vector(7 DOWNTO 0);
	ACCB_D : OUT std_logic_vector(7 DOWNTO 0);
	AP_D : OUT std_logic_vector(15 DOWNTO 0);
	AUX_D : OUT std_logic_vector(15 DOWNTO 0);
	Debug_Q : OUT std_logic_vector(7 DOWNTO 0);
	Debug_Yupa : OUT std_logic_vector(7 DOWNTO 0);
	Edo_Pres : OUT std_logic_vector(11 DOWNTO 0);
	IX : OUT std_logic_vector(15 DOWNTO 0);
	PC_D : OUT std_logic_vector(15 DOWNTO 0);
	X_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END m68hc11;

-- Design Ports Information
-- Z	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csnn	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[15]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[14]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[13]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[12]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[11]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[10]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[9]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[8]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[7]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[3]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[1]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[7]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[7]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[6]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[2]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[11]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[10]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[9]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[8]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[15]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[14]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[13]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[12]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[11]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[10]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[9]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[14]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[13]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[12]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[9]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[8]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[15]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[14]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[12]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[10]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[9]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[8]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[6]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[5]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQn	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XIRQn	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m68hc11 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_IRQn : std_logic;
SIGNAL ww_XIRQn : std_logic;
SIGNAL ww_csnn : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_ACCA_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ACCB_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AUX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Debug_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Debug_Yupa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Edo_Pres : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_IX : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_X_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|inst13|nCRI~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|inst13|nCBD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \csnn~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \ACCA_D[7]~output_o\ : std_logic;
SIGNAL \ACCA_D[6]~output_o\ : std_logic;
SIGNAL \ACCA_D[5]~output_o\ : std_logic;
SIGNAL \ACCA_D[4]~output_o\ : std_logic;
SIGNAL \ACCA_D[3]~output_o\ : std_logic;
SIGNAL \ACCA_D[2]~output_o\ : std_logic;
SIGNAL \ACCA_D[1]~output_o\ : std_logic;
SIGNAL \ACCA_D[0]~output_o\ : std_logic;
SIGNAL \ACCB_D[7]~output_o\ : std_logic;
SIGNAL \ACCB_D[6]~output_o\ : std_logic;
SIGNAL \ACCB_D[5]~output_o\ : std_logic;
SIGNAL \ACCB_D[4]~output_o\ : std_logic;
SIGNAL \ACCB_D[3]~output_o\ : std_logic;
SIGNAL \ACCB_D[2]~output_o\ : std_logic;
SIGNAL \ACCB_D[1]~output_o\ : std_logic;
SIGNAL \ACCB_D[0]~output_o\ : std_logic;
SIGNAL \AP_D[15]~output_o\ : std_logic;
SIGNAL \AP_D[14]~output_o\ : std_logic;
SIGNAL \AP_D[13]~output_o\ : std_logic;
SIGNAL \AP_D[12]~output_o\ : std_logic;
SIGNAL \AP_D[11]~output_o\ : std_logic;
SIGNAL \AP_D[10]~output_o\ : std_logic;
SIGNAL \AP_D[9]~output_o\ : std_logic;
SIGNAL \AP_D[8]~output_o\ : std_logic;
SIGNAL \AP_D[7]~output_o\ : std_logic;
SIGNAL \AP_D[6]~output_o\ : std_logic;
SIGNAL \AP_D[5]~output_o\ : std_logic;
SIGNAL \AP_D[4]~output_o\ : std_logic;
SIGNAL \AP_D[3]~output_o\ : std_logic;
SIGNAL \AP_D[2]~output_o\ : std_logic;
SIGNAL \AP_D[1]~output_o\ : std_logic;
SIGNAL \AP_D[0]~output_o\ : std_logic;
SIGNAL \AUX_D[15]~output_o\ : std_logic;
SIGNAL \AUX_D[14]~output_o\ : std_logic;
SIGNAL \AUX_D[13]~output_o\ : std_logic;
SIGNAL \AUX_D[12]~output_o\ : std_logic;
SIGNAL \AUX_D[11]~output_o\ : std_logic;
SIGNAL \AUX_D[10]~output_o\ : std_logic;
SIGNAL \AUX_D[9]~output_o\ : std_logic;
SIGNAL \AUX_D[8]~output_o\ : std_logic;
SIGNAL \AUX_D[7]~output_o\ : std_logic;
SIGNAL \AUX_D[6]~output_o\ : std_logic;
SIGNAL \AUX_D[5]~output_o\ : std_logic;
SIGNAL \AUX_D[4]~output_o\ : std_logic;
SIGNAL \AUX_D[3]~output_o\ : std_logic;
SIGNAL \AUX_D[2]~output_o\ : std_logic;
SIGNAL \AUX_D[1]~output_o\ : std_logic;
SIGNAL \AUX_D[0]~output_o\ : std_logic;
SIGNAL \Debug_Q[7]~output_o\ : std_logic;
SIGNAL \Debug_Q[6]~output_o\ : std_logic;
SIGNAL \Debug_Q[5]~output_o\ : std_logic;
SIGNAL \Debug_Q[4]~output_o\ : std_logic;
SIGNAL \Debug_Q[3]~output_o\ : std_logic;
SIGNAL \Debug_Q[2]~output_o\ : std_logic;
SIGNAL \Debug_Q[1]~output_o\ : std_logic;
SIGNAL \Debug_Q[0]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[7]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[6]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[5]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[4]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[3]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[2]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[1]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[0]~output_o\ : std_logic;
SIGNAL \Edo_Pres[11]~output_o\ : std_logic;
SIGNAL \Edo_Pres[10]~output_o\ : std_logic;
SIGNAL \Edo_Pres[9]~output_o\ : std_logic;
SIGNAL \Edo_Pres[8]~output_o\ : std_logic;
SIGNAL \Edo_Pres[7]~output_o\ : std_logic;
SIGNAL \Edo_Pres[6]~output_o\ : std_logic;
SIGNAL \Edo_Pres[5]~output_o\ : std_logic;
SIGNAL \Edo_Pres[4]~output_o\ : std_logic;
SIGNAL \Edo_Pres[3]~output_o\ : std_logic;
SIGNAL \Edo_Pres[2]~output_o\ : std_logic;
SIGNAL \Edo_Pres[1]~output_o\ : std_logic;
SIGNAL \Edo_Pres[0]~output_o\ : std_logic;
SIGNAL \IX[15]~output_o\ : std_logic;
SIGNAL \IX[14]~output_o\ : std_logic;
SIGNAL \IX[13]~output_o\ : std_logic;
SIGNAL \IX[12]~output_o\ : std_logic;
SIGNAL \IX[11]~output_o\ : std_logic;
SIGNAL \IX[10]~output_o\ : std_logic;
SIGNAL \IX[9]~output_o\ : std_logic;
SIGNAL \IX[8]~output_o\ : std_logic;
SIGNAL \IX[7]~output_o\ : std_logic;
SIGNAL \IX[6]~output_o\ : std_logic;
SIGNAL \IX[5]~output_o\ : std_logic;
SIGNAL \IX[4]~output_o\ : std_logic;
SIGNAL \IX[3]~output_o\ : std_logic;
SIGNAL \IX[2]~output_o\ : std_logic;
SIGNAL \IX[1]~output_o\ : std_logic;
SIGNAL \IX[0]~output_o\ : std_logic;
SIGNAL \PC_D[15]~output_o\ : std_logic;
SIGNAL \PC_D[14]~output_o\ : std_logic;
SIGNAL \PC_D[13]~output_o\ : std_logic;
SIGNAL \PC_D[12]~output_o\ : std_logic;
SIGNAL \PC_D[11]~output_o\ : std_logic;
SIGNAL \PC_D[10]~output_o\ : std_logic;
SIGNAL \PC_D[9]~output_o\ : std_logic;
SIGNAL \PC_D[8]~output_o\ : std_logic;
SIGNAL \PC_D[7]~output_o\ : std_logic;
SIGNAL \PC_D[6]~output_o\ : std_logic;
SIGNAL \PC_D[5]~output_o\ : std_logic;
SIGNAL \PC_D[4]~output_o\ : std_logic;
SIGNAL \PC_D[3]~output_o\ : std_logic;
SIGNAL \PC_D[2]~output_o\ : std_logic;
SIGNAL \PC_D[1]~output_o\ : std_logic;
SIGNAL \PC_D[0]~output_o\ : std_logic;
SIGNAL \X_D[15]~output_o\ : std_logic;
SIGNAL \X_D[14]~output_o\ : std_logic;
SIGNAL \X_D[13]~output_o\ : std_logic;
SIGNAL \X_D[12]~output_o\ : std_logic;
SIGNAL \X_D[11]~output_o\ : std_logic;
SIGNAL \X_D[10]~output_o\ : std_logic;
SIGNAL \X_D[9]~output_o\ : std_logic;
SIGNAL \X_D[8]~output_o\ : std_logic;
SIGNAL \X_D[7]~output_o\ : std_logic;
SIGNAL \X_D[6]~output_o\ : std_logic;
SIGNAL \X_D[5]~output_o\ : std_logic;
SIGNAL \X_D[4]~output_o\ : std_logic;
SIGNAL \X_D[3]~output_o\ : std_logic;
SIGNAL \X_D[2]~output_o\ : std_logic;
SIGNAL \X_D[1]~output_o\ : std_logic;
SIGNAL \X_D[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[7]~24\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[1]~12\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal1~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal1~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~28_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ : std_logic;
SIGNAL \inst14|inst13|nCRI~q\ : std_logic;
SIGNAL \inst14|inst13|nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst9|Equal3~1_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[14]~38_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal23~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal11~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal11~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal20~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal20~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~46_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[14]~8_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal7~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal7~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[75]~54_combout\ : std_logic;
SIGNAL \inst14|inst9|data[75]~55_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal8~0_combout\ : std_logic;
SIGNAL \inst14|inst13|nWB~feeder_combout\ : std_logic;
SIGNAL \inst14|inst13|nWB~q\ : std_logic;
SIGNAL \ACCB|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal24~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal15~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal4~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~6_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~62_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal27~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal27~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~4_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal29~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[34]~49_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal26~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~15_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal25~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal22~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~16_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~17_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal18~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal19~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[48]~7_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~10_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~11_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~12_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~13_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~14_combout\ : std_logic;
SIGNAL \inst14|inst13|prueba[4]~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~42_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~43_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~52_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal4~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal18~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[34]~50_combout\ : std_logic;
SIGNAL \inst14|inst9|data[34]~51_combout\ : std_logic;
SIGNAL \PC|Add0~16_combout\ : std_logic;
SIGNAL \inst14|inst9|data[35]~53_combout\ : std_logic;
SIGNAL \inst14|inst13|nEPC0~q\ : std_logic;
SIGNAL \PC|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \ACCB|C[0]~7_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal17~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~18_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~34_combout\ : std_logic;
SIGNAL \inst14|inst9|data[24]~35_combout\ : std_logic;
SIGNAL \inst14|inst9|data[24]~36_combout\ : std_logic;
SIGNAL \inst14|inst13|BD~q\ : std_logic;
SIGNAL \inst14|inst9|data[48]~57_combout\ : std_logic;
SIGNAL \inst14|inst13|nERA1~q\ : std_logic;
SIGNAL \ACCB|B[7]~0_combout\ : std_logic;
SIGNAL \IRX|C[7]~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~19_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~q\ : std_logic;
SIGNAL \inst6|data[7]~en_q\ : std_logic;
SIGNAL \inst14|inst9|Equal12~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[58]~56_combout\ : std_logic;
SIGNAL \inst14|inst13|nDUPA~q\ : std_logic;
SIGNAL \inst14|inst13|nEX~q\ : std_logic;
SIGNAL \inst14|inst9|data[72]~47_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~48_combout\ : std_logic;
SIGNAL \inst14|inst13|nWA~q\ : std_logic;
SIGNAL \inst14|inst9|data[72]~64_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~45_combout\ : std_logic;
SIGNAL \ACCA|B[7]~0_combout\ : std_logic;
SIGNAL \IRX|C[7]~4_combout\ : std_logic;
SIGNAL \IRX|C[7]~5_combout\ : std_logic;
SIGNAL \PC|data_out[15]~0_combout\ : std_logic;
SIGNAL \ACCB|C[6]~1_combout\ : std_logic;
SIGNAL \ACCB|data_out[6]~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal9~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal5~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data~26_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~59_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~22_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~21_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~63_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~23_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~24_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~60_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~61_combout\ : std_logic;
SIGNAL \inst14|inst13|nCBD~q\ : std_logic;
SIGNAL \inst14|inst13|nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \PC|Add0~25\ : std_logic;
SIGNAL \PC|Add0~26_combout\ : std_logic;
SIGNAL \ACCA|data_out[5]~2_combout\ : std_logic;
SIGNAL \PC|data_out[13]~2_combout\ : std_logic;
SIGNAL \ACCA|data_out[4]~3_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~8_combout\ : std_logic;
SIGNAL \ACCA|C[4]~3_combout\ : std_logic;
SIGNAL \ACCB|data_out[4]~3_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~8_combout\ : std_logic;
SIGNAL \ACCB|C[4]~3_combout\ : std_logic;
SIGNAL \inst14|inst13|ACCSEC~q\ : std_logic;
SIGNAL \inst1|Add0~3_combout\ : std_logic;
SIGNAL \ACCA|C[3]~4_combout\ : std_logic;
SIGNAL \AUX|data_out~10_combout\ : std_logic;
SIGNAL \AUX|data_out~11_combout\ : std_logic;
SIGNAL \AUX|data_out~12_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~44_combout\ : std_logic;
SIGNAL \inst14|inst13|nERA0~q\ : std_logic;
SIGNAL \AUX|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \ACCA|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~1_combout\ : std_logic;
SIGNAL \inst|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem~31_combout\ : std_logic;
SIGNAL \inst6|data[3]~reg0_q\ : std_logic;
SIGNAL \AUX|data_out~13_combout\ : std_logic;
SIGNAL \IRX|D[2]~32_combout\ : std_logic;
SIGNAL \ACCB|C[2]~5_combout\ : std_logic;
SIGNAL \IRX|C[2]~24_combout\ : std_logic;
SIGNAL \AUX|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \PC|data_out[10]~5_combout\ : std_logic;
SIGNAL \IRX|C[1]~29_combout\ : std_logic;
SIGNAL \ACCA|C[1]~6_combout\ : std_logic;
SIGNAL \AUX|data_out~14_combout\ : std_logic;
SIGNAL \IRX|D[1]~36_combout\ : std_logic;
SIGNAL \ACCB|C[1]~6_combout\ : std_logic;
SIGNAL \ACCB|data_out[1]~6_combout\ : std_logic;
SIGNAL \IRX|D[1]~37_combout\ : std_logic;
SIGNAL \inst6|mem~27_combout\ : std_logic;
SIGNAL \inst6|mem~28_combout\ : std_logic;
SIGNAL \inst6|data[1]~reg0_q\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~7_combout\ : std_logic;
SIGNAL \ACCA|C[0]~7_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~58_combout\ : std_logic;
SIGNAL \inst14|inst13|CC~q\ : std_logic;
SIGNAL \ACCA|data_out[7]~0_combout\ : std_logic;
SIGNAL \ACCA|C[7]~0_combout\ : std_logic;
SIGNAL \ACCB|data_out[7]~0_combout\ : std_logic;
SIGNAL \ACCB|C[7]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \ACCA|data_out[6]~1_combout\ : std_logic;
SIGNAL \ACCA|C[6]~1_combout\ : std_logic;
SIGNAL \ACCB|data_out[5]~2_combout\ : std_logic;
SIGNAL \ACCB|C[5]~2_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst5|inst|valor_interno~q\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~9_cout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \IRX|D[1]~38_combout\ : std_logic;
SIGNAL \IRX|D[1]~48_combout\ : std_logic;
SIGNAL \IRX|D[7]~15_combout\ : std_logic;
SIGNAL \IRX|D[7]~16_combout\ : std_logic;
SIGNAL \IRX|D[7]~17_combout\ : std_logic;
SIGNAL \IRX|D[1]~39_combout\ : std_logic;
SIGNAL \ACCA|data_out[1]~6_combout\ : std_logic;
SIGNAL \IRX|C[1]~28_combout\ : std_logic;
SIGNAL \IRX|C[1]~30_combout\ : std_logic;
SIGNAL \IRX|C[1]~31_combout\ : std_logic;
SIGNAL \PC|data_out[9]~6_combout\ : std_logic;
SIGNAL \PC|data_out[8]~7_combout\ : std_logic;
SIGNAL \PC|Add0~29\ : std_logic;
SIGNAL \PC|Add0~30_combout\ : std_logic;
SIGNAL \PC|Add0~48_combout\ : std_logic;
SIGNAL \PC|Add0~31\ : std_logic;
SIGNAL \PC|Add0~32_combout\ : std_logic;
SIGNAL \PC|Equal0~0_combout\ : std_logic;
SIGNAL \PC|Add0~33\ : std_logic;
SIGNAL \PC|Add0~34_combout\ : std_logic;
SIGNAL \PC|Add0~35\ : std_logic;
SIGNAL \PC|Add0~36_combout\ : std_logic;
SIGNAL \IRX|C[2]~25_combout\ : std_logic;
SIGNAL \inst|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem~25_combout\ : std_logic;
SIGNAL \inst6|mem~26_combout\ : std_logic;
SIGNAL \inst6|data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \inst6|data[2]~reg0_q\ : std_logic;
SIGNAL \inst1|Add0~5_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \IRX|D[2]~34_combout\ : std_logic;
SIGNAL \IRX|C[2]~26_combout\ : std_logic;
SIGNAL \IRX|C[2]~27_combout\ : std_logic;
SIGNAL \ACCB|data_out[2]~5_combout\ : std_logic;
SIGNAL \IRX|D[2]~33_combout\ : std_logic;
SIGNAL \IRX|D[2]~47_combout\ : std_logic;
SIGNAL \IRX|D[2]~35_combout\ : std_logic;
SIGNAL \ACCA|data_out[2]~5_combout\ : std_logic;
SIGNAL \ACCA|C[2]~5_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst6|data[7]~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~2_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~3_combout\ : std_logic;
SIGNAL \ACCA|data_out[3]~4_combout\ : std_logic;
SIGNAL \IRX|C[3]~19_combout\ : std_logic;
SIGNAL \PC|data_out[11]~4_combout\ : std_logic;
SIGNAL \PC|Add0~37\ : std_logic;
SIGNAL \PC|Add0~38_combout\ : std_logic;
SIGNAL \IRX|C[3]~20_combout\ : std_logic;
SIGNAL \IRX|C[3]~21_combout\ : std_logic;
SIGNAL \IRX|C[3]~22_combout\ : std_logic;
SIGNAL \IRX|C[3]~23_combout\ : std_logic;
SIGNAL \ACCB|data_out[3]~4_combout\ : std_logic;
SIGNAL \ACCB|C[3]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \IRX|D[4]~29_combout\ : std_logic;
SIGNAL \inst6|data[4]~reg0_q\ : std_logic;
SIGNAL \IRX|C[4]~17_combout\ : std_logic;
SIGNAL \IRX|C[4]~15_combout\ : std_logic;
SIGNAL \IRX|C[4]~16_combout\ : std_logic;
SIGNAL \IRX|C[4]~18_combout\ : std_logic;
SIGNAL \PC|data_out[12]~3_combout\ : std_logic;
SIGNAL \PC|Add0~39\ : std_logic;
SIGNAL \PC|Add0~40_combout\ : std_logic;
SIGNAL \PC|Add0~41\ : std_logic;
SIGNAL \PC|Add0~42_combout\ : std_logic;
SIGNAL \IRX|C[5]~12_combout\ : std_logic;
SIGNAL \IRX|C[5]~11_combout\ : std_logic;
SIGNAL \inst6|mem~23_combout\ : std_logic;
SIGNAL \inst6|mem~24_combout\ : std_logic;
SIGNAL \inst6|data[5]~reg0_q\ : std_logic;
SIGNAL \IRX|C[5]~13_combout\ : std_logic;
SIGNAL \IRX|C[5]~14_combout\ : std_logic;
SIGNAL \ACCA|C[5]~2_combout\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \IRX|D[5]~25_combout\ : std_logic;
SIGNAL \IRX|D[5]~46_combout\ : std_logic;
SIGNAL \IRX|D[5]~23_combout\ : std_logic;
SIGNAL \IRX|D[5]~24_combout\ : std_logic;
SIGNAL \IRX|D[5]~26_combout\ : std_logic;
SIGNAL \PC|Add0~50_combout\ : std_logic;
SIGNAL \PC|Add0~27\ : std_logic;
SIGNAL \PC|Add0~28_combout\ : std_logic;
SIGNAL \PC|Add0~49_combout\ : std_logic;
SIGNAL \inst|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem~19_combout\ : std_logic;
SIGNAL \inst6|mem~20_combout\ : std_logic;
SIGNAL \inst6|data[7]~reg0_q\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \IRX|D[7]~14_combout\ : std_logic;
SIGNAL \IRX|D[7]~44_combout\ : std_logic;
SIGNAL \IRX|D[7]~13_combout\ : std_logic;
SIGNAL \IRX|D[7]~12_combout\ : std_logic;
SIGNAL \IRX|D[7]~18_combout\ : std_logic;
SIGNAL \AUX|data_out~8_combout\ : std_logic;
SIGNAL \AUX|data_out~9_combout\ : std_logic;
SIGNAL \IRX|D[6]~19_combout\ : std_logic;
SIGNAL \IRX|D[6]~20_combout\ : std_logic;
SIGNAL \inst6|mem~21_combout\ : std_logic;
SIGNAL \inst6|mem~22_combout\ : std_logic;
SIGNAL \inst6|data[6]~reg0_q\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \IRX|D[6]~21_combout\ : std_logic;
SIGNAL \IRX|D[6]~45_combout\ : std_logic;
SIGNAL \IRX|D[6]~22_combout\ : std_logic;
SIGNAL \IRX|C[6]~7_combout\ : std_logic;
SIGNAL \IRX|C[6]~8_combout\ : std_logic;
SIGNAL \IRX|C[6]~9_combout\ : std_logic;
SIGNAL \IRX|C[6]~10_combout\ : std_logic;
SIGNAL \PC|data_out[14]~1_combout\ : std_logic;
SIGNAL \PC|Add0~43\ : std_logic;
SIGNAL \PC|Add0~44_combout\ : std_logic;
SIGNAL \PC|Add0~45\ : std_logic;
SIGNAL \PC|Add0~46_combout\ : std_logic;
SIGNAL \IRX|C[7]~1_combout\ : std_logic;
SIGNAL \IRX|C[7]~0_combout\ : std_logic;
SIGNAL \IRX|C[7]~2_combout\ : std_logic;
SIGNAL \IRX|C[7]~6_combout\ : std_logic;
SIGNAL \AUX|data_out~0_combout\ : std_logic;
SIGNAL \AUX|data_out~1_combout\ : std_logic;
SIGNAL \AUX|data_out~2_combout\ : std_logic;
SIGNAL \AUX|data_out~3_combout\ : std_logic;
SIGNAL \AUX|data_out~4_combout\ : std_logic;
SIGNAL \AUX|data_out~5_combout\ : std_logic;
SIGNAL \AUX|data_out~6_combout\ : std_logic;
SIGNAL \AUX|data_out~7_combout\ : std_logic;
SIGNAL \IRX|C[0]~33_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \IRX|D[0]~42_combout\ : std_logic;
SIGNAL \inst6|mem~29_combout\ : std_logic;
SIGNAL \inst6|mem~30_combout\ : std_logic;
SIGNAL \inst6|data[0]~reg0_q\ : std_logic;
SIGNAL \IRX|C[0]~34_combout\ : std_logic;
SIGNAL \IRX|C[0]~32_combout\ : std_logic;
SIGNAL \IRX|C[0]~35_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~7_combout\ : std_logic;
SIGNAL \IRX|D[0]~41_combout\ : std_logic;
SIGNAL \AUX|data_out~15_combout\ : std_logic;
SIGNAL \IRX|D[0]~40_combout\ : std_logic;
SIGNAL \IRX|D[0]~49_combout\ : std_logic;
SIGNAL \IRX|D[0]~43_combout\ : std_logic;
SIGNAL \PC|Add0~55_combout\ : std_logic;
SIGNAL \PC|Add0~17\ : std_logic;
SIGNAL \PC|Add0~18_combout\ : std_logic;
SIGNAL \PC|Add0~54_combout\ : std_logic;
SIGNAL \PC|Add0~19\ : std_logic;
SIGNAL \PC|Add0~20_combout\ : std_logic;
SIGNAL \PC|Add0~53_combout\ : std_logic;
SIGNAL \PC|Add0~21\ : std_logic;
SIGNAL \PC|Add0~22_combout\ : std_logic;
SIGNAL \PC|Add0~52_combout\ : std_logic;
SIGNAL \PC|Add0~23\ : std_logic;
SIGNAL \PC|Add0~24_combout\ : std_logic;
SIGNAL \PC|Add0~51_combout\ : std_logic;
SIGNAL \IRX|D[4]~28_combout\ : std_logic;
SIGNAL \IRX|D[4]~27_combout\ : std_logic;
SIGNAL \IRX|D[4]~30_combout\ : std_logic;
SIGNAL \IRX|D[4]~31_combout\ : std_logic;
SIGNAL \inst8|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[8]~26\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \IRQn~input_o\ : std_logic;
SIGNAL \inst3|IRQ_flag~0_combout\ : std_logic;
SIGNAL \inst3|IRQ_flag~q\ : std_logic;
SIGNAL \XIRQn~input_o\ : std_logic;
SIGNAL \inst3|XIRQ_flag~0_combout\ : std_logic;
SIGNAL \inst3|XIRQ_flag~q\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[9]~28\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst8|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[10]~30\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst8|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal29~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal27~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~30_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~29_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~31_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~5_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[2]~14\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[3]~16\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[4]~18\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst8|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[5]~20\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst8|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[6]~22\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst8|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~20_combout\ : std_logic;
SIGNAL \inst14|inst9|data~25_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~27_combout\ : std_logic;
SIGNAL \inst14|inst13|prueba[0]~feeder_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~32_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~33_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~2_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~3_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~4_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \inst14|inst9|data[78]~37_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal6~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~9_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~40_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~41_combout\ : std_logic;
SIGNAL \inst14|inst13|CZ~q\ : std_logic;
SIGNAL \inst14|inst9|data[14]~39_combout\ : std_logic;
SIGNAL \inst14|inst13|B4~q\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|WideOr0~1_combout\ : std_logic;
SIGNAL \inst1|WideOr0~combout\ : std_logic;
SIGNAL \inst14|inst13|B3~q\ : std_logic;
SIGNAL \inst5|inst10|output~0_combout\ : std_logic;
SIGNAL \inst5|inst10|output~1_combout\ : std_logic;
SIGNAL \inst5|inst10|output~2_combout\ : std_logic;
SIGNAL \inst5|inst10|output~4_combout\ : std_logic;
SIGNAL \inst5|inst10|output~3_combout\ : std_logic;
SIGNAL \inst5|inst10|output~5_combout\ : std_logic;
SIGNAL \inst5|inst10|output~6_combout\ : std_logic;
SIGNAL \inst5|inst2|valor_interno~q\ : std_logic;
SIGNAL \inst14|inst13|CN~q\ : std_logic;
SIGNAL \inst5|inst11|output~0_combout\ : std_logic;
SIGNAL \inst5|inst11|output~1_combout\ : std_logic;
SIGNAL \inst5|inst3|valor_interno~q\ : std_logic;
SIGNAL \inst1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \ACCA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACCB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|inst4|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \AUX|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst14|inst13|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|inst13|RA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst13|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst14|inst13|EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|PC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst13|EB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_CC~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nDUPA~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_CN~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_CZ~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nAS~q\ : std_logic;
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Z <= ww_Z;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_IRQn <= IRQn;
ww_XIRQn <= XIRQn;
csnn <= ww_csnn;
N <= ww_N;
ACCA_D <= ww_ACCA_D;
ACCB_D <= ww_ACCB_D;
AP_D <= ww_AP_D;
AUX_D <= ww_AUX_D;
Debug_Q <= ww_Debug_Q;
Debug_Yupa <= ww_Debug_Yupa;
Edo_Pres <= ww_Edo_Pres;
IX <= ww_IX;
PC_D <= ww_PC_D;
X_D <= ww_X_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst14|inst13|nCRI~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|inst13|nCRI~q\);

\inst14|inst13|nCBD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|inst13|nCBD~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\inst14|inst13|ALT_INV_CC~q\ <= NOT \inst14|inst13|CC~q\;
\inst14|inst13|ALT_INV_nDUPA~q\ <= NOT \inst14|inst13|nDUPA~q\;
\inst14|inst13|ALT_INV_EA\(1) <= NOT \inst14|inst13|EA\(1);
\inst14|inst13|ALT_INV_EA\(0) <= NOT \inst14|inst13|EA\(0);
\inst14|inst13|ALT_INV_CN~q\ <= NOT \inst14|inst13|CN~q\;
\inst14|inst13|ALT_INV_CZ~q\ <= NOT \inst14|inst13|CZ~q\;
\inst14|inst13|ALT_INV_nAS~q\ <= NOT \inst14|inst13|nAS~q\;
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
\inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\ <= NOT \inst14|inst13|nCBD~clkctrl_outclk\;
\inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\ <= NOT \inst14|inst13|nCRI~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y16_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X17_Y0_N9
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst2|valor_interno~q\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X31_Y17_N23
\csnn~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst13|ALT_INV_nAS~q\,
	devoe => ww_devoe,
	o => \csnn~output_o\);

-- Location: IOOBUF_X10_Y15_N2
\N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst3|valor_interno~q\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X10_Y19_N9
\ACCA_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(7),
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

-- Location: IOOBUF_X10_Y22_N16
\ACCA_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(6),
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\ACCA_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(5),
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

-- Location: IOOBUF_X13_Y25_N23
\ACCA_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(4),
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\ACCA_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(3),
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\ACCA_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(2),
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

-- Location: IOOBUF_X17_Y25_N2
\ACCA_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(1),
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

-- Location: IOOBUF_X15_Y25_N2
\ACCA_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCA|data_out\(0),
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

-- Location: IOOBUF_X31_Y17_N9
\ACCB_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

-- Location: IOOBUF_X10_Y22_N9
\ACCB_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

-- Location: IOOBUF_X31_Y20_N16
\ACCB_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

-- Location: IOOBUF_X10_Y20_N2
\ACCB_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N2
\ACCB_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\ACCB_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
\ACCB_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\ACCB_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\AP_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[15]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\AP_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[14]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\AP_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[13]~output_o\);

-- Location: IOOBUF_X27_Y25_N2
\AP_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[12]~output_o\);

-- Location: IOOBUF_X27_Y25_N23
\AP_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[11]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\AP_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[10]~output_o\);

-- Location: IOOBUF_X31_Y19_N23
\AP_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[9]~output_o\);

-- Location: IOOBUF_X31_Y17_N16
\AP_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[8]~output_o\);

-- Location: IOOBUF_X31_Y14_N23
\AP_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[7]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\AP_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[6]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\AP_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[5]~output_o\);

-- Location: IOOBUF_X31_Y9_N2
\AP_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\AP_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\AP_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\AP_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\AP_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[0]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\AUX_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(15),
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

-- Location: IOOBUF_X19_Y25_N30
\AUX_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(14),
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

-- Location: IOOBUF_X11_Y25_N16
\AUX_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(13),
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

-- Location: IOOBUF_X10_Y20_N16
\AUX_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(12),
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

-- Location: IOOBUF_X10_Y20_N9
\AUX_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(11),
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\AUX_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(10),
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\AUX_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(9),
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\AUX_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(8),
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

-- Location: IOOBUF_X17_Y25_N23
\AUX_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(7),
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

-- Location: IOOBUF_X10_Y19_N2
\AUX_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(6),
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

-- Location: IOOBUF_X10_Y19_N23
\AUX_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(5),
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

-- Location: IOOBUF_X17_Y25_N9
\AUX_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(4),
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

-- Location: IOOBUF_X31_Y15_N2
\AUX_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(3),
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

-- Location: IOOBUF_X10_Y18_N23
\AUX_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(2),
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

-- Location: IOOBUF_X17_Y25_N16
\AUX_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(1),
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\AUX_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AUX|data_out\(0),
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\Debug_Q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Q[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N16
\Debug_Q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(6),
	devoe => ww_devoe,
	o => \Debug_Q[6]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\Debug_Q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(5),
	devoe => ww_devoe,
	o => \Debug_Q[5]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\Debug_Q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(4),
	devoe => ww_devoe,
	o => \Debug_Q[4]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\Debug_Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(3),
	devoe => ww_devoe,
	o => \Debug_Q[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N30
\Debug_Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(2),
	devoe => ww_devoe,
	o => \Debug_Q[2]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\Debug_Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(1),
	devoe => ww_devoe,
	o => \Debug_Q[1]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\Debug_Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Q[0]~output_o\);

-- Location: IOOBUF_X31_Y22_N2
\Debug_Yupa[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[7]~output_o\);

-- Location: IOOBUF_X17_Y25_N30
\Debug_Yupa[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(6),
	devoe => ww_devoe,
	o => \Debug_Yupa[6]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
\Debug_Yupa[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(5),
	devoe => ww_devoe,
	o => \Debug_Yupa[5]~output_o\);

-- Location: IOOBUF_X19_Y25_N16
\Debug_Yupa[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(4),
	devoe => ww_devoe,
	o => \Debug_Yupa[4]~output_o\);

-- Location: IOOBUF_X31_Y21_N2
\Debug_Yupa[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(3),
	devoe => ww_devoe,
	o => \Debug_Yupa[3]~output_o\);

-- Location: IOOBUF_X31_Y21_N23
\Debug_Yupa[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[2]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\Debug_Yupa[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(1),
	devoe => ww_devoe,
	o => \Debug_Yupa[1]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\Debug_Yupa[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Yupa[0]~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\Edo_Pres[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[11]~output_o\);

-- Location: IOOBUF_X6_Y10_N16
\Edo_Pres[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[10]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\Edo_Pres[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[9]~output_o\);

-- Location: IOOBUF_X10_Y18_N2
\Edo_Pres[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[8]~output_o\);

-- Location: IOOBUF_X10_Y16_N9
\Edo_Pres[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[7]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\Edo_Pres[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[6]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\Edo_Pres[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[5]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\Edo_Pres[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[4]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\Edo_Pres[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[3]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\Edo_Pres[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[2]~output_o\);

-- Location: IOOBUF_X10_Y18_N9
\Edo_Pres[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[1]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\Edo_Pres[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\IX[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[15]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\IX[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\IX[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[13]~output_o\);

-- Location: IOOBUF_X31_Y19_N16
\IX[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[12]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\IX[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[11]~output_o\);

-- Location: IOOBUF_X31_Y2_N2
\IX[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[10]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\IX[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[9]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\IX[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[8]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\IX[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[7]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\IX[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\IX[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\IX[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\IX[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \IX[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\IX[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[2]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\IX[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[1]~output_o\);

-- Location: IOOBUF_X31_Y9_N16
\IX[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX[0]~output_o\);

-- Location: IOOBUF_X22_Y25_N2
\PC_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(15),
	devoe => ww_devoe,
	o => \PC_D[15]~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\PC_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(14),
	devoe => ww_devoe,
	o => \PC_D[14]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\PC_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(13),
	devoe => ww_devoe,
	o => \PC_D[13]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\PC_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(12),
	devoe => ww_devoe,
	o => \PC_D[12]~output_o\);

-- Location: IOOBUF_X27_Y25_N30
\PC_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(11),
	devoe => ww_devoe,
	o => \PC_D[11]~output_o\);

-- Location: IOOBUF_X27_Y25_N9
\PC_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(10),
	devoe => ww_devoe,
	o => \PC_D[10]~output_o\);

-- Location: IOOBUF_X31_Y20_N23
\PC_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(9),
	devoe => ww_devoe,
	o => \PC_D[9]~output_o\);

-- Location: IOOBUF_X24_Y25_N2
\PC_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(8),
	devoe => ww_devoe,
	o => \PC_D[8]~output_o\);

-- Location: IOOBUF_X24_Y25_N30
\PC_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(7),
	devoe => ww_devoe,
	o => \PC_D[7]~output_o\);

-- Location: IOOBUF_X24_Y25_N16
\PC_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(6),
	devoe => ww_devoe,
	o => \PC_D[6]~output_o\);

-- Location: IOOBUF_X24_Y25_N23
\PC_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(5),
	devoe => ww_devoe,
	o => \PC_D[5]~output_o\);

-- Location: IOOBUF_X22_Y25_N23
\PC_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(4),
	devoe => ww_devoe,
	o => \PC_D[4]~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\PC_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(3),
	devoe => ww_devoe,
	o => \PC_D[3]~output_o\);

-- Location: IOOBUF_X22_Y25_N9
\PC_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(2),
	devoe => ww_devoe,
	o => \PC_D[2]~output_o\);

-- Location: IOOBUF_X22_Y25_N30
\PC_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(1),
	devoe => ww_devoe,
	o => \PC_D[1]~output_o\);

-- Location: IOOBUF_X24_Y25_N9
\PC_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(0),
	devoe => ww_devoe,
	o => \PC_D[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\X_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[15]~output_o\);

-- Location: IOOBUF_X3_Y10_N2
\X_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[14]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\X_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[13]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\X_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[12]~output_o\);

-- Location: IOOBUF_X31_Y4_N9
\X_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\X_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[10]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\X_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[9]~output_o\);

-- Location: IOOBUF_X29_Y25_N23
\X_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[8]~output_o\);

-- Location: IOOBUF_X31_Y22_N16
\X_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[7]~output_o\);

-- Location: IOOBUF_X31_Y3_N2
\X_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[6]~output_o\);

-- Location: IOOBUF_X31_Y9_N9
\X_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\X_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[4]~output_o\);

-- Location: IOOBUF_X29_Y25_N30
\X_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[3]~output_o\);

-- Location: IOOBUF_X31_Y1_N2
\X_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[2]~output_o\);

-- Location: IOOBUF_X31_Y3_N9
\X_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\X_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[0]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y16_N16
\inst14|inst4|valor_interno[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[7]~23_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & (\inst14|inst4|valor_interno[6]~22\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & 
-- (!\inst14|inst4|valor_interno[6]~22\ & VCC))
-- \inst14|inst4|valor_interno[7]~24\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & !\inst14|inst4|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[6]~22\,
	combout => \inst14|inst4|valor_interno[7]~23_combout\,
	cout => \inst14|inst4|valor_interno[7]~24\);

-- Location: LCCOMB_X13_Y16_N18
\inst14|inst4|valor_interno[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[8]~25_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & (!\inst14|inst4|valor_interno[7]~24\)) # (!\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & 
-- ((\inst14|inst4|valor_interno[7]~24\) # (GND)))
-- \inst14|inst4|valor_interno[8]~26\ = CARRY((!\inst14|inst4|valor_interno[7]~24\) # (!\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[7]~24\,
	combout => \inst14|inst4|valor_interno[8]~25_combout\,
	cout => \inst14|inst4|valor_interno[8]~26\);

-- Location: IOIBUF_X0_Y6_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G1
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X13_Y16_N19
\inst14|inst4|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[8]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(8));

-- Location: LCCOMB_X13_Y16_N4
\inst14|inst4|valor_interno[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[1]~11_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ $ (VCC))) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & 
-- (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & VCC))
-- \inst14|inst4|valor_interno[1]~12\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => VCC,
	combout => \inst14|inst4|valor_interno[1]~11_combout\,
	cout => \inst14|inst4|valor_interno[1]~12\);

-- Location: FF_X13_Y16_N5
\inst14|inst4|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[1]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(1));

-- Location: LCCOMB_X12_Y17_N6
\inst14|inst5|$00000|auto_generated|result_node[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ = (\inst14|inst4|valor_interno\(1) & (!\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst13|instruccion\(0)) # (!\inst14|inst13|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(0),
	datab => \inst14|inst4|valor_interno\(1),
	datac => \inst14|inst13|instruccion\(1),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\);

-- Location: LCCOMB_X13_Y17_N4
\inst14|inst9|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	combout => \inst14|inst9|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y16_N6
\inst14|inst4|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[2]~13_combout\ = (\inst14|inst4|valor_interno[1]~12\ & (((\inst14|inst3|SELECTOR~5_combout\)) # (!\inst14|inst4|valor_interno\(2)))) # (!\inst14|inst4|valor_interno[1]~12\ & (((\inst14|inst4|valor_interno\(2) & 
-- !\inst14|inst3|SELECTOR~5_combout\)) # (GND)))
-- \inst14|inst4|valor_interno[2]~14\ = CARRY(((\inst14|inst3|SELECTOR~5_combout\) # (!\inst14|inst4|valor_interno[1]~12\)) # (!\inst14|inst4|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(2),
	datab => \inst14|inst3|SELECTOR~5_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[1]~12\,
	combout => \inst14|inst4|valor_interno[2]~13_combout\,
	cout => \inst14|inst4|valor_interno[2]~14\);

-- Location: FF_X13_Y16_N7
\inst14|inst4|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[2]~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(2));

-- Location: LCCOMB_X14_Y17_N16
\inst14|inst5|$00000|auto_generated|result_node[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ = (\inst14|inst4|valor_interno\(2) & (!\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst13|instruccion\(0)) # (!\inst14|inst13|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(0),
	datab => \inst14|inst13|instruccion\(1),
	datac => \inst14|inst4|valor_interno\(2),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\);

-- Location: LCCOMB_X14_Y17_N12
\inst14|inst9|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal1~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & 
-- \inst14|inst9|Equal29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datad => \inst14|inst9|Equal29~0_combout\,
	combout => \inst14|inst9|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y17_N20
\inst14|inst9|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst9|Equal0~1_combout\ & \inst14|inst9|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal0~1_combout\,
	datad => \inst14|inst9|Equal1~0_combout\,
	combout => \inst14|inst9|Equal2~0_combout\);

-- Location: LCCOMB_X13_Y17_N0
\inst14|inst9|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	combout => \inst14|inst9|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y17_N10
\inst14|inst9|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal1~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst9|Equal0~0_combout\ & \inst14|inst9|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal0~0_combout\,
	datad => \inst14|inst9|Equal1~0_combout\,
	combout => \inst14|inst9|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y17_N18
\inst14|inst9|data[91]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~28_combout\ = (\inst14|inst9|data[91]~27_combout\) # ((\inst14|inst9|Equal2~0_combout\ & (!\inst14|inst9|Equal0~3_combout\ & !\inst14|inst9|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~0_combout\,
	datab => \inst14|inst9|Equal0~3_combout\,
	datac => \inst14|inst9|Equal1~1_combout\,
	datad => \inst14|inst9|data[91]~27_combout\,
	combout => \inst14|inst9|data[91]~28_combout\);

-- Location: FF_X20_Y17_N19
\inst14|inst13|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[91]~28_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|instruccion\(1));

-- Location: LCCOMB_X14_Y17_N14
\inst14|inst5|$00000|auto_generated|result_node[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ = (!\inst14|inst13|instruccion\(0) & \inst14|inst13|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst13|instruccion\(1),
	combout => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\);

-- Location: FF_X14_Y17_N1
\inst14|inst13|nCRI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|Equal1~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nCRI~q\);

-- Location: CLKCTRL_G5
\inst14|inst13|nCRI~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|inst13|nCRI~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|inst13|nCRI~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y17_N6
\inst14|inst9|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	combout => \inst14|inst9|Equal3~1_combout\);

-- Location: LCCOMB_X14_Y17_N24
\inst14|inst5|$00000|auto_generated|result_node[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\ = (\inst14|inst4|valor_interno\(3) & (!\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst13|instruccion\(0)) # (!\inst14|inst13|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(0),
	datab => \inst14|inst4|valor_interno\(3),
	datac => \inst14|inst13|instruccion\(1),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\);

-- Location: LCCOMB_X13_Y17_N10
\inst14|inst9|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & 
-- \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\,
	combout => \inst14|inst9|Equal3~0_combout\);

-- Location: LCCOMB_X15_Y17_N8
\inst14|inst9|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & (\inst14|inst9|Equal3~1_combout\ & \inst14|inst9|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datac => \inst14|inst9|Equal3~1_combout\,
	datad => \inst14|inst9|Equal3~0_combout\,
	combout => \inst14|inst9|Equal3~2_combout\);

-- Location: LCCOMB_X17_Y17_N8
\inst14|inst9|data[14]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~38_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ $ (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\)) # (!\inst14|inst9|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst9|Equal3~2_combout\,
	combout => \inst14|inst9|data[14]~38_combout\);

-- Location: LCCOMB_X15_Y17_N20
\inst14|inst9|Equal23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal23~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & 
-- \inst14|inst9|Equal29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datad => \inst14|inst9|Equal29~0_combout\,
	combout => \inst14|inst9|Equal23~0_combout\);

-- Location: LCCOMB_X15_Y17_N30
\inst14|inst9|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal11~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & 
-- \inst14|inst9|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datad => \inst14|inst9|Equal23~0_combout\,
	combout => \inst14|inst9|Equal11~0_combout\);

-- Location: LCCOMB_X15_Y17_N26
\inst14|inst9|Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal11~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst9|Equal11~0_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst9|Equal11~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal11~1_combout\);

-- Location: LCCOMB_X15_Y17_N28
\inst14|inst9|Equal20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal20~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & 
-- \inst14|inst9|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datad => \inst14|inst9|Equal23~0_combout\,
	combout => \inst14|inst9|Equal20~0_combout\);

-- Location: LCCOMB_X16_Y17_N18
\inst14|inst9|Equal20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal20~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & \inst14|inst9|Equal20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst9|Equal20~0_combout\,
	combout => \inst14|inst9|Equal20~1_combout\);

-- Location: LCCOMB_X17_Y17_N6
\inst14|inst9|data[73]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~46_combout\ = (\inst14|inst9|data[72]~9_combout\ & (\inst14|inst9|data[14]~38_combout\ & ((\inst14|inst9|Equal11~1_combout\) # (\inst14|inst9|Equal20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~9_combout\,
	datab => \inst14|inst9|data[14]~38_combout\,
	datac => \inst14|inst9|Equal11~1_combout\,
	datad => \inst14|inst9|Equal20~1_combout\,
	combout => \inst14|inst9|data[73]~46_combout\);

-- Location: FF_X17_Y17_N7
\inst14|inst13|EA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[73]~46_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EA\(1));

-- Location: LCCOMB_X15_Y17_N14
\inst14|inst9|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst9|Equal3~2_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst9|Equal3~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal3~3_combout\);

-- Location: LCCOMB_X16_Y17_N6
\inst14|inst9|data[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~8_combout\ = (!\inst14|inst9|Equal2~0_combout\ & (!\inst14|inst9|Equal1~1_combout\ & (!\inst14|inst9|Equal0~3_combout\ & !\inst14|inst9|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~0_combout\,
	datab => \inst14|inst9|Equal1~1_combout\,
	datac => \inst14|inst9|Equal0~3_combout\,
	datad => \inst14|inst9|Equal3~3_combout\,
	combout => \inst14|inst9|data[14]~8_combout\);

-- Location: LCCOMB_X13_Y17_N24
\inst14|inst9|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal7~0_combout\ = (\inst14|inst9|Equal3~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & \inst14|inst9|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal3~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datad => \inst14|inst9|Equal3~1_combout\,
	combout => \inst14|inst9|Equal7~0_combout\);

-- Location: LCCOMB_X17_Y17_N14
\inst14|inst9|Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal7~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal7~0_combout\,
	combout => \inst14|inst9|Equal7~1_combout\);

-- Location: LCCOMB_X17_Y17_N18
\inst14|inst9|data[75]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~54_combout\ = (!\inst14|inst9|Equal6~0_combout\ & (\inst14|inst9|data[14]~38_combout\ & (\inst14|inst9|data[14]~8_combout\ & !\inst14|inst9|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal6~0_combout\,
	datab => \inst14|inst9|data[14]~38_combout\,
	datac => \inst14|inst9|data[14]~8_combout\,
	datad => \inst14|inst9|Equal7~1_combout\,
	combout => \inst14|inst9|data[75]~54_combout\);

-- Location: LCCOMB_X17_Y17_N4
\inst14|inst9|data[75]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~55_combout\ = (\inst14|inst9|data[73]~46_combout\) # ((\inst14|inst9|data[75]~54_combout\ & ((!\inst14|inst9|data[72]~9_combout\) # (!\inst14|inst9|data[14]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[73]~46_combout\,
	datab => \inst14|inst9|data[14]~38_combout\,
	datac => \inst14|inst9|data[72]~9_combout\,
	datad => \inst14|inst9|data[75]~54_combout\,
	combout => \inst14|inst9|data[75]~55_combout\);

-- Location: FF_X17_Y17_N5
\inst14|inst13|EB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[75]~55_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EB\(0));

-- Location: LCCOMB_X12_Y17_N2
\inst14|inst9|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal8~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal7~0_combout\,
	combout => \inst14|inst9|Equal8~0_combout\);

-- Location: LCCOMB_X12_Y17_N10
\inst14|inst13|nWB~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst13|nWB~feeder_combout\ = \inst14|inst9|Equal8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst9|Equal8~0_combout\,
	combout => \inst14|inst13|nWB~feeder_combout\);

-- Location: FF_X12_Y17_N11
\inst14|inst13|nWB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst13|nWB~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nWB~q\);

-- Location: LCCOMB_X18_Y17_N4
\ACCB|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|TRI_STATE~0_combout\ = (!\inst14|inst13|EA\(1) & (\inst14|inst13|EB\(0) & !\inst14|inst13|nWB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|nWB~q\,
	combout => \ACCB|TRI_STATE~0_combout\);

-- Location: LCCOMB_X15_Y17_N22
\inst14|inst9|Equal24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal24~0_combout\ = (\inst14|inst9|Equal0~0_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal23~0_combout\,
	combout => \inst14|inst9|Equal24~0_combout\);

-- Location: LCCOMB_X13_Y17_N26
\inst14|inst9|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	combout => \inst14|inst9|Equal14~0_combout\);

-- Location: LCCOMB_X12_Y17_N20
\inst14|inst9|Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (\inst14|inst9|Equal3~0_combout\ & \inst14|inst9|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datac => \inst14|inst9|Equal3~0_combout\,
	datad => \inst14|inst9|Equal14~0_combout\,
	combout => \inst14|inst9|Equal14~1_combout\);

-- Location: LCCOMB_X12_Y17_N26
\inst14|inst9|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal15~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|Equal15~0_combout\);

-- Location: LCCOMB_X17_Y17_N0
\inst14|inst9|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal4~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal3~2_combout\,
	combout => \inst14|inst9|Equal4~0_combout\);

-- Location: LCCOMB_X12_Y17_N12
\inst14|inst9|data[26]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~6_combout\ = (!\inst14|inst9|Equal24~0_combout\ & (!\inst14|inst9|Equal8~0_combout\ & (!\inst14|inst9|Equal15~0_combout\ & !\inst14|inst9|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal24~0_combout\,
	datab => \inst14|inst9|Equal8~0_combout\,
	datac => \inst14|inst9|Equal15~0_combout\,
	datad => \inst14|inst9|Equal4~0_combout\,
	combout => \inst14|inst9|data[26]~6_combout\);

-- Location: LCCOMB_X12_Y17_N0
\inst14|inst9|data[26]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~62_combout\ = (\inst14|inst9|data[26]~6_combout\ & (((!\inst14|inst9|Equal0~0_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)) # (!\inst14|inst9|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal1~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal0~0_combout\,
	datad => \inst14|inst9|data[26]~6_combout\,
	combout => \inst14|inst9|data[26]~62_combout\);

-- Location: LCCOMB_X13_Y17_N22
\inst14|inst9|Equal27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal27~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal27~0_combout\);

-- Location: LCCOMB_X13_Y17_N12
\inst14|inst9|Equal27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal27~1_combout\ = (\inst14|inst9|Equal0~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst9|Equal27~0_combout\ & \inst14|inst9|Equal29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal27~0_combout\,
	datad => \inst14|inst9|Equal29~0_combout\,
	combout => \inst14|inst9|Equal27~1_combout\);

-- Location: LCCOMB_X14_Y17_N0
\inst14|inst9|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~4_combout\ = (\inst14|inst9|Equal0~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y17_N28
\inst14|inst9|Equal29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal29~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & (\inst14|inst9|Equal0~4_combout\ & (\inst14|inst9|Equal29~0_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datab => \inst14|inst9|Equal0~4_combout\,
	datac => \inst14|inst9|Equal29~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	combout => \inst14|inst9|Equal29~1_combout\);

-- Location: LCCOMB_X19_Y17_N6
\inst14|inst9|data[34]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[34]~49_combout\ = (\inst14|inst9|Equal27~1_combout\) # (\inst14|inst9|Equal29~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal27~1_combout\,
	datad => \inst14|inst9|Equal29~1_combout\,
	combout => \inst14|inst9|data[34]~49_combout\);

-- Location: LCCOMB_X20_Y17_N8
\inst14|inst9|Equal26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal26~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst9|Equal0~1_combout\ & \inst14|inst9|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst9|Equal0~1_combout\,
	datad => \inst14|inst9|Equal23~0_combout\,
	combout => \inst14|inst9|Equal26~0_combout\);

-- Location: LCCOMB_X15_Y17_N6
\inst14|inst9|data[97]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~15_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\) # (((!\inst14|inst9|Equal11~0_combout\ & !\inst14|inst9|Equal20~0_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal11~0_combout\,
	datad => \inst14|inst9|Equal20~0_combout\,
	combout => \inst14|inst9|data[97]~15_combout\);

-- Location: LCCOMB_X20_Y17_N28
\inst14|inst9|Equal25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal25~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst9|Equal0~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal23~0_combout\,
	combout => \inst14|inst9|Equal25~0_combout\);

-- Location: LCCOMB_X15_Y17_N24
\inst14|inst9|Equal22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal22~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & \inst14|inst9|Equal20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst9|Equal20~0_combout\,
	combout => \inst14|inst9|Equal22~0_combout\);

-- Location: LCCOMB_X15_Y17_N2
\inst14|inst9|data[31]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~16_combout\ = (!\inst14|inst9|Equal22~0_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # (!\inst14|inst9|Equal23~0_combout\)) # (!\inst14|inst9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal23~0_combout\,
	datad => \inst14|inst9|Equal22~0_combout\,
	combout => \inst14|inst9|data[31]~16_combout\);

-- Location: LCCOMB_X15_Y17_N0
\inst14|inst9|data[26]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~17_combout\ = (\inst14|inst9|data[97]~15_combout\ & (!\inst14|inst9|Equal24~0_combout\ & (!\inst14|inst9|Equal25~0_combout\ & \inst14|inst9|data[31]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[97]~15_combout\,
	datab => \inst14|inst9|Equal24~0_combout\,
	datac => \inst14|inst9|Equal25~0_combout\,
	datad => \inst14|inst9|data[31]~16_combout\,
	combout => \inst14|inst9|data[26]~17_combout\);

-- Location: LCCOMB_X12_Y17_N30
\inst14|inst9|Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal18~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (\inst14|inst9|Equal3~0_combout\ & \inst14|inst9|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datac => \inst14|inst9|Equal3~0_combout\,
	datad => \inst14|inst9|Equal14~0_combout\,
	combout => \inst14|inst9|Equal18~0_combout\);

-- Location: LCCOMB_X12_Y17_N14
\inst14|inst9|Equal19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal19~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst9|Equal18~0_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst9|Equal18~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal19~2_combout\);

-- Location: LCCOMB_X12_Y17_N28
\inst14|inst9|data[48]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[48]~7_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & ((!\inst14|inst9|Equal14~1_combout\))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst9|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal18~0_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|data[48]~7_combout\);

-- Location: LCCOMB_X12_Y17_N22
\inst14|inst9|data[72]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~10_combout\ = ((!\inst14|inst9|Equal7~0_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # (!\inst14|inst9|Equal3~2_combout\)))) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal3~2_combout\,
	datad => \inst14|inst9|Equal7~0_combout\,
	combout => \inst14|inst9|data[72]~10_combout\);

-- Location: LCCOMB_X15_Y17_N12
\inst14|inst9|data[26]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~11_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (((!\inst14|inst9|Equal14~1_combout\)))) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & 
-- ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (!\inst14|inst9|Equal3~2_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & ((!\inst14|inst9|Equal14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal3~2_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|data[26]~11_combout\);

-- Location: LCCOMB_X15_Y17_N16
\inst14|inst9|data[26]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~12_combout\ = (\inst14|inst9|data[26]~11_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # (!\inst14|inst9|Equal11~0_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal11~0_combout\,
	datad => \inst14|inst9|data[26]~11_combout\,
	combout => \inst14|inst9|data[26]~12_combout\);

-- Location: LCCOMB_X16_Y17_N0
\inst14|inst9|data[26]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~13_combout\ = (!\inst14|inst9|Equal11~1_combout\ & (\inst14|inst9|data[72]~10_combout\ & (\inst14|inst9|data[26]~12_combout\ & \inst14|inst9|data[72]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal11~1_combout\,
	datab => \inst14|inst9|data[72]~10_combout\,
	datac => \inst14|inst9|data[26]~12_combout\,
	datad => \inst14|inst9|data[72]~9_combout\,
	combout => \inst14|inst9|data[26]~13_combout\);

-- Location: LCCOMB_X16_Y17_N20
\inst14|inst9|data[97]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~14_combout\ = (!\inst14|inst9|Equal19~2_combout\ & (!\inst14|inst9|Equal20~1_combout\ & (\inst14|inst9|data[48]~7_combout\ & \inst14|inst9|data[26]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal19~2_combout\,
	datab => \inst14|inst9|Equal20~1_combout\,
	datac => \inst14|inst9|data[48]~7_combout\,
	datad => \inst14|inst9|data[26]~13_combout\,
	combout => \inst14|inst9|data[97]~14_combout\);

-- Location: LCCOMB_X16_Y17_N24
\inst14|inst13|prueba[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst13|prueba[4]~0_combout\ = (!\inst14|inst9|Equal26~0_combout\ & (\inst14|inst9|data[26]~17_combout\ & \inst14|inst9|data[97]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal26~0_combout\,
	datac => \inst14|inst9|data[26]~17_combout\,
	datad => \inst14|inst9|data[97]~14_combout\,
	combout => \inst14|inst13|prueba[4]~0_combout\);

-- Location: LCCOMB_X12_Y17_N8
\inst14|inst9|data[47]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~42_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (((!\inst14|inst9|Equal14~1_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # ((!\inst14|inst9|Equal18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal18~0_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|data[47]~42_combout\);

-- Location: LCCOMB_X19_Y17_N24
\inst14|inst9|data[47]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~43_combout\ = (\inst14|inst9|data[47]~42_combout\ & (((!\inst14|inst9|data[97]~14_combout\) # (!\inst14|inst9|data[26]~17_combout\)) # (!\inst14|inst9|Equal26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[47]~42_combout\,
	datab => \inst14|inst9|Equal26~0_combout\,
	datac => \inst14|inst9|data[26]~17_combout\,
	datad => \inst14|inst9|data[97]~14_combout\,
	combout => \inst14|inst9|data[47]~43_combout\);

-- Location: LCCOMB_X19_Y17_N0
\inst14|inst9|data[32]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~52_combout\ = (((\inst14|inst9|data[34]~49_combout\ & \inst14|inst13|prueba[4]~0_combout\)) # (!\inst14|inst9|data[47]~43_combout\)) # (!\inst14|inst9|data[26]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~62_combout\,
	datab => \inst14|inst9|data[34]~49_combout\,
	datac => \inst14|inst13|prueba[4]~0_combout\,
	datad => \inst14|inst9|data[47]~43_combout\,
	combout => \inst14|inst9|data[32]~52_combout\);

-- Location: FF_X19_Y17_N1
\inst14|inst13|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[32]~52_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(0));

-- Location: LCCOMB_X20_Y17_N20
\inst14|inst9|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal4~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal4~1_combout\);

-- Location: LCCOMB_X12_Y17_N24
\inst14|inst9|Equal18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal18~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst9|Equal18~0_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst9|Equal18~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst9|Equal18~1_combout\);

-- Location: LCCOMB_X15_Y17_N10
\inst14|inst9|data[34]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[34]~50_combout\ = (\inst14|inst9|Equal18~1_combout\ & (!\inst14|inst9|Equal15~0_combout\ & ((!\inst14|inst9|Equal4~1_combout\) # (!\inst14|inst9|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal11~0_combout\,
	datab => \inst14|inst9|Equal4~1_combout\,
	datac => \inst14|inst9|Equal18~1_combout\,
	datad => \inst14|inst9|Equal15~0_combout\,
	combout => \inst14|inst9|data[34]~50_combout\);

-- Location: LCCOMB_X16_Y17_N10
\inst14|inst9|data[34]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[34]~51_combout\ = (\inst14|inst9|data[34]~50_combout\ & ((\inst14|inst9|data[26]~13_combout\) # ((\inst14|inst9|data[34]~49_combout\ & \inst14|inst13|prueba[4]~0_combout\)))) # (!\inst14|inst9|data[34]~50_combout\ & 
-- (((\inst14|inst9|data[34]~49_combout\ & \inst14|inst13|prueba[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[34]~50_combout\,
	datab => \inst14|inst9|data[26]~13_combout\,
	datac => \inst14|inst9|data[34]~49_combout\,
	datad => \inst14|inst13|prueba[4]~0_combout\,
	combout => \inst14|inst9|data[34]~51_combout\);

-- Location: FF_X16_Y17_N11
\inst14|inst13|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[34]~51_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(2));

-- Location: LCCOMB_X20_Y20_N0
\PC|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~16_combout\ = \PC|data_out\(0) $ (VCC)
-- \PC|Add0~17\ = CARRY(\PC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(0),
	datad => VCC,
	combout => \PC|Add0~16_combout\,
	cout => \PC|Add0~17\);

-- Location: LCCOMB_X16_Y17_N16
\inst14|inst9|data[35]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[35]~53_combout\ = (\inst14|inst9|Equal18~1_combout\) # ((\inst14|inst13|prueba[4]~0_combout\ & ((\inst14|inst9|Equal29~1_combout\) # (\inst14|inst9|Equal27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal29~1_combout\,
	datab => \inst14|inst9|Equal27~1_combout\,
	datac => \inst14|inst9|Equal18~1_combout\,
	datad => \inst14|inst13|prueba[4]~0_combout\,
	combout => \inst14|inst9|data[35]~53_combout\);

-- Location: FF_X16_Y17_N17
\inst14|inst13|nEPC0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[35]~53_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nEPC0~q\);

-- Location: LCCOMB_X17_Y18_N30
\PC|TRI_STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|TRI_STATE_D~0_combout\ = ((\inst14|inst13|PC\(0)) # (\inst14|inst13|PC\(2))) # (!\inst14|inst13|nEPC0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|nEPC0~q\,
	datac => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|PC\(2),
	combout => \PC|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X16_Y20_N22
\ACCB|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[0]~7_combout\ = ((\ACCB|data_out\(0)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EA\(1)))) # (!\inst14|inst13|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|data_out\(0),
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|nWB~q\,
	combout => \ACCB|C[0]~7_combout\);

-- Location: LCCOMB_X12_Y17_N16
\inst14|inst9|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal17~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|Equal17~0_combout\);

-- Location: LCCOMB_X19_Y17_N22
\inst14|inst9|data[26]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~18_combout\ = (\inst14|inst9|Equal17~0_combout\) # ((\inst14|inst9|Equal26~0_combout\ & (\inst14|inst9|data[26]~17_combout\ & \inst14|inst9|data[97]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal17~0_combout\,
	datab => \inst14|inst9|Equal26~0_combout\,
	datac => \inst14|inst9|data[26]~17_combout\,
	datad => \inst14|inst9|data[97]~14_combout\,
	combout => \inst14|inst9|data[26]~18_combout\);

-- Location: FF_X19_Y17_N21
\inst14|inst13|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|data[26]~18_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|RA\(0));

-- Location: LCCOMB_X16_Y17_N28
\inst14|inst9|data[97]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~34_combout\ = (!\inst14|inst9|Equal20~1_combout\ & (!\inst14|inst9|Equal19~2_combout\ & \inst14|inst9|data[26]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal20~1_combout\,
	datac => \inst14|inst9|Equal19~2_combout\,
	datad => \inst14|inst9|data[26]~13_combout\,
	combout => \inst14|inst9|data[97]~34_combout\);

-- Location: LCCOMB_X16_Y17_N22
\inst14|inst9|data[24]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[24]~35_combout\ = (\inst14|inst9|data[31]~16_combout\ & (\inst14|inst9|Equal24~0_combout\ & (\inst14|inst9|data[97]~15_combout\ & \inst14|inst9|data[97]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[31]~16_combout\,
	datab => \inst14|inst9|Equal24~0_combout\,
	datac => \inst14|inst9|data[97]~15_combout\,
	datad => \inst14|inst9|data[97]~34_combout\,
	combout => \inst14|inst9|data[24]~35_combout\);

-- Location: LCCOMB_X19_Y17_N8
\inst14|inst9|data[24]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[24]~36_combout\ = (\inst14|inst9|Equal15~0_combout\) # ((!\inst14|inst9|Equal18~1_combout\ & \inst14|inst9|data[24]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal15~0_combout\,
	datac => \inst14|inst9|Equal18~1_combout\,
	datad => \inst14|inst9|data[24]~35_combout\,
	combout => \inst14|inst9|data[24]~36_combout\);

-- Location: FF_X19_Y17_N9
\inst14|inst13|BD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[24]~36_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|BD~q\);

-- Location: LCCOMB_X16_Y17_N30
\inst14|inst9|data[48]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[48]~57_combout\ = ((\inst14|inst9|data[24]~35_combout\) # ((\inst14|inst9|Equal27~1_combout\ & \inst14|inst13|prueba[4]~0_combout\))) # (!\inst14|inst9|data[48]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[48]~7_combout\,
	datab => \inst14|inst9|Equal27~1_combout\,
	datac => \inst14|inst9|data[24]~35_combout\,
	datad => \inst14|inst13|prueba[4]~0_combout\,
	combout => \inst14|inst9|data[48]~57_combout\);

-- Location: FF_X16_Y17_N31
\inst14|inst13|nERA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[48]~57_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nERA1~q\);

-- Location: LCCOMB_X14_Y20_N30
\ACCB|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|B[7]~0_combout\ = ((\inst14|inst13|EB\(0)) # (\inst14|inst13|nWB~q\)) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	combout => \ACCB|B[7]~0_combout\);

-- Location: LCCOMB_X19_Y20_N18
\IRX|C[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~3_combout\ = ((!\inst14|inst13|BD~q\ & (\inst14|inst13|nERA1~q\ & !\inst14|inst13|RA\(0)))) # (!\ACCB|B[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst14|inst13|nERA1~q\,
	datac => \inst14|inst13|RA\(0),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[7]~3_combout\);

-- Location: LCCOMB_X19_Y17_N30
\inst14|inst9|data[26]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~19_combout\ = (\inst14|inst9|data[26]~18_combout\) # (!\inst14|inst9|data[26]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|data[26]~18_combout\,
	datad => \inst14|inst9|data[26]~62_combout\,
	combout => \inst14|inst9|data[26]~19_combout\);

-- Location: FF_X19_Y17_N31
\inst14|inst13|nAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[26]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nAS~q\);

-- Location: FF_X19_Y17_N3
\inst6|data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst13|nAS~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[7]~en_q\);

-- Location: LCCOMB_X16_Y16_N4
\inst14|inst9|Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal12~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal11~0_combout\,
	combout => \inst14|inst9|Equal12~2_combout\);

-- Location: LCCOMB_X16_Y16_N16
\inst14|inst9|data[58]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[58]~56_combout\ = (\inst14|inst9|Equal12~2_combout\) # ((\inst14|inst9|Equal20~0_combout\ & (\inst14|inst9|Equal4~1_combout\ & \inst14|inst9|data[97]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal20~0_combout\,
	datab => \inst14|inst9|Equal4~1_combout\,
	datac => \inst14|inst9|Equal12~2_combout\,
	datad => \inst14|inst9|data[97]~14_combout\,
	combout => \inst14|inst9|data[58]~56_combout\);

-- Location: FF_X16_Y16_N17
\inst14|inst13|nDUPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[58]~56_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nDUPA~q\);

-- Location: FF_X14_Y17_N29
\inst14|inst13|nEX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|Equal29~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nEX~q\);

-- Location: LCCOMB_X16_Y19_N12
\inst14|inst9|data[72]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~47_combout\ = (\inst14|inst9|data[72]~10_combout\ & \inst14|inst9|data[72]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~10_combout\,
	datad => \inst14|inst9|data[72]~9_combout\,
	combout => \inst14|inst9|data[72]~47_combout\);

-- Location: LCCOMB_X16_Y19_N10
\inst14|inst9|data[71]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~48_combout\ = (\inst14|inst9|Equal4~0_combout\) # ((!\inst14|inst9|Equal11~1_combout\ & (\inst14|inst9|Equal12~2_combout\ & \inst14|inst9|data[72]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal11~1_combout\,
	datab => \inst14|inst9|Equal12~2_combout\,
	datac => \inst14|inst9|Equal4~0_combout\,
	datad => \inst14|inst9|data[72]~47_combout\,
	combout => \inst14|inst9|data[71]~48_combout\);

-- Location: FF_X16_Y19_N11
\inst14|inst13|nWA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[71]~48_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nWA~q\);

-- Location: LCCOMB_X16_Y16_N22
\inst14|inst9|data[72]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~64_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & ((\inst14|inst9|Equal11~0_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal3~2_combout\,
	datad => \inst14|inst9|Equal11~0_combout\,
	combout => \inst14|inst9|data[72]~64_combout\);

-- Location: LCCOMB_X16_Y19_N4
\inst14|inst9|data[72]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~45_combout\ = (\inst14|inst9|data[72]~64_combout\) # ((\inst14|inst9|data[72]~9_combout\ & (\inst14|inst9|Equal20~1_combout\ & \inst14|inst9|data[72]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~64_combout\,
	datab => \inst14|inst9|data[72]~9_combout\,
	datac => \inst14|inst9|Equal20~1_combout\,
	datad => \inst14|inst9|data[72]~10_combout\,
	combout => \inst14|inst9|data[72]~45_combout\);

-- Location: FF_X16_Y19_N5
\inst14|inst13|EA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[72]~45_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EA\(0));

-- Location: LCCOMB_X16_Y19_N8
\ACCA|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|B[7]~0_combout\ = (\inst14|inst13|nWA~q\) # ((\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|B[7]~0_combout\);

-- Location: LCCOMB_X17_Y18_N4
\IRX|C[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~4_combout\ = (\inst14|inst13|nDUPA~q\) # ((\inst14|inst13|nEX~q\) # ((!\ACCA|B[7]~0_combout\) # (!\PC|TRI_STATE_D~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datab => \inst14|inst13|nEX~q\,
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCA|B[7]~0_combout\,
	combout => \IRX|C[7]~4_combout\);

-- Location: LCCOMB_X19_Y20_N20
\IRX|C[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~5_combout\ = (\IRX|C[7]~3_combout\) # ((\IRX|C[7]~4_combout\) # ((\inst14|inst13|BD~q\ & \inst6|data[7]~en_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \IRX|C[7]~3_combout\,
	datac => \inst6|data[7]~en_q\,
	datad => \IRX|C[7]~4_combout\,
	combout => \IRX|C[7]~5_combout\);

-- Location: LCCOMB_X15_Y20_N20
\PC|data_out[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[15]~0_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[7]~6_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(15),
	datad => \IRX|C[7]~6_combout\,
	combout => \PC|data_out[15]~0_combout\);

-- Location: LCCOMB_X14_Y20_N12
\ACCB|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[6]~1_combout\ = (((\inst14|inst13|nWB~q\) # (\ACCB|data_out\(6))) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|nWB~q\,
	datad => \ACCB|data_out\(6),
	combout => \ACCB|C[6]~1_combout\);

-- Location: LCCOMB_X14_Y20_N28
\ACCB|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[6]~1_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[6]~1_combout\)) # (!\inst14|inst13|EB\(0) & ((\IRX|C[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[6]~1_combout\,
	datab => \inst14|inst13|EB\(0),
	datad => \IRX|C[6]~10_combout\,
	combout => \ACCB|data_out[6]~1_combout\);

-- Location: LCCOMB_X17_Y17_N24
\inst14|inst9|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal9~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & \inst14|inst9|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst9|Equal7~0_combout\,
	combout => \inst14|inst9|Equal9~0_combout\);

-- Location: LCCOMB_X17_Y17_N12
\inst14|inst9|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal5~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst9|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal3~2_combout\,
	combout => \inst14|inst9|Equal5~0_combout\);

-- Location: LCCOMB_X15_Y17_N18
\inst14|inst9|data~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~26_combout\ = (\inst14|inst9|data[97]~15_combout\ & (!\inst14|inst9|Equal18~1_combout\ & (!\inst14|inst9|Equal9~0_combout\ & !\inst14|inst9|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[97]~15_combout\,
	datab => \inst14|inst9|Equal18~1_combout\,
	datac => \inst14|inst9|Equal9~0_combout\,
	datad => \inst14|inst9|Equal5~0_combout\,
	combout => \inst14|inst9|data~26_combout\);

-- Location: LCCOMB_X20_Y17_N22
\inst14|inst9|data[31]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~59_combout\ = (\inst14|inst9|Equal2~0_combout\) # (((\inst14|inst9|Equal1~1_combout\) # (!\inst14|inst9|data~26_combout\)) # (!\inst14|inst9|Equal25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal2~0_combout\,
	datab => \inst14|inst9|Equal25~0_combout\,
	datac => \inst14|inst9|Equal1~1_combout\,
	datad => \inst14|inst9|data~26_combout\,
	combout => \inst14|inst9|data[31]~59_combout\);

-- Location: LCCOMB_X17_Y17_N26
\inst14|inst9|data[31]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~22_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\) # ((!\inst14|inst9|Equal14~1_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\) # (!\inst14|inst9|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal3~2_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|data[31]~22_combout\);

-- Location: LCCOMB_X16_Y16_N18
\inst14|inst9|data[31]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~21_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & ((\inst14|inst9|Equal3~2_combout\) # ((\inst14|inst9|Equal7~0_combout\)))) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & 
-- (((\inst14|inst9|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal3~2_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal7~0_combout\,
	datad => \inst14|inst9|Equal11~0_combout\,
	combout => \inst14|inst9|data[31]~21_combout\);

-- Location: LCCOMB_X16_Y16_N0
\inst14|inst9|data[31]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~63_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (((!\inst14|inst9|data[31]~21_combout\)))) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & (((!\inst14|inst9|Equal18~0_combout\)) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal18~0_combout\,
	datad => \inst14|inst9|data[31]~21_combout\,
	combout => \inst14|inst9|data[31]~63_combout\);

-- Location: LCCOMB_X20_Y17_N26
\inst14|inst9|data[31]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~23_combout\ = (\inst14|inst9|data[31]~16_combout\ & (!\inst14|inst9|Equal7~1_combout\ & (\inst14|inst9|data[31]~22_combout\ & \inst14|inst9|data[31]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[31]~16_combout\,
	datab => \inst14|inst9|Equal7~1_combout\,
	datac => \inst14|inst9|data[31]~22_combout\,
	datad => \inst14|inst9|data[31]~63_combout\,
	combout => \inst14|inst9|data[31]~23_combout\);

-- Location: LCCOMB_X20_Y17_N6
\inst14|inst9|data[31]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~24_combout\ = (!\inst14|inst9|Equal17~0_combout\ & (!\inst14|inst9|Equal11~1_combout\ & (!\inst14|inst9|Equal20~1_combout\ & \inst14|inst9|data[26]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal17~0_combout\,
	datab => \inst14|inst9|Equal11~1_combout\,
	datac => \inst14|inst9|Equal20~1_combout\,
	datad => \inst14|inst9|data[26]~6_combout\,
	combout => \inst14|inst9|data[31]~24_combout\);

-- Location: LCCOMB_X20_Y17_N12
\inst14|inst9|data[31]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~60_combout\ = (!\inst14|inst9|Equal0~3_combout\ & (\inst14|inst9|data[31]~23_combout\ & ((\inst14|inst9|data[31]~59_combout\) # (!\inst14|inst9|data[31]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[31]~59_combout\,
	datab => \inst14|inst9|Equal0~3_combout\,
	datac => \inst14|inst9|data[31]~23_combout\,
	datad => \inst14|inst9|data[31]~24_combout\,
	combout => \inst14|inst9|data[31]~60_combout\);

-- Location: LCCOMB_X20_Y17_N10
\inst14|inst9|data[31]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~61_combout\ = ((\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst9|Equal27~2_combout\ & \inst14|inst13|prueba[4]~0_combout\))) # (!\inst14|inst9|data[31]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datab => \inst14|inst9|Equal27~2_combout\,
	datac => \inst14|inst13|prueba[4]~0_combout\,
	datad => \inst14|inst9|data[31]~60_combout\,
	combout => \inst14|inst9|data[31]~61_combout\);

-- Location: FF_X20_Y17_N11
\inst14|inst13|nCBD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[31]~61_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nCBD~q\);

-- Location: CLKCTRL_G9
\inst14|inst13|nCBD~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|inst13|nCBD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|inst13|nCBD~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y18_N10
\inst|valor_interno[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|valor_interno[3]~feeder_combout\ = \PC|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(3),
	combout => \inst|valor_interno[3]~feeder_combout\);

-- Location: FF_X18_Y18_N11
\inst|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(3));

-- Location: LCCOMB_X19_Y18_N0
\inst|valor_interno[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|valor_interno[2]~feeder_combout\ = \PC|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(2),
	combout => \inst|valor_interno[2]~feeder_combout\);

-- Location: FF_X19_Y18_N1
\inst|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(2));

-- Location: LCCOMB_X18_Y18_N8
\inst|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|valor_interno[0]~feeder_combout\ = \PC|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(0),
	combout => \inst|valor_interno[0]~feeder_combout\);

-- Location: FF_X18_Y18_N9
\inst|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(0));

-- Location: LCCOMB_X20_Y20_N8
\PC|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~24_combout\ = (\PC|data_out\(4) & (\PC|Add0~23\ $ (GND))) # (!\PC|data_out\(4) & (!\PC|Add0~23\ & VCC))
-- \PC|Add0~25\ = CARRY((\PC|data_out\(4) & !\PC|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(4),
	datad => VCC,
	cin => \PC|Add0~23\,
	combout => \PC|Add0~24_combout\,
	cout => \PC|Add0~25\);

-- Location: LCCOMB_X20_Y20_N10
\PC|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~26_combout\ = (\PC|data_out\(5) & (!\PC|Add0~25\)) # (!\PC|data_out\(5) & ((\PC|Add0~25\) # (GND)))
-- \PC|Add0~27\ = CARRY((!\PC|Add0~25\) # (!\PC|data_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(5),
	datad => VCC,
	cin => \PC|Add0~25\,
	combout => \PC|Add0~26_combout\,
	cout => \PC|Add0~27\);

-- Location: LCCOMB_X17_Y20_N18
\ACCA|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[5]~2_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[5]~2_combout\)) # (!\inst14|inst13|EA\(1) & ((\IRX|D[5]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCA|C[5]~2_combout\,
	datad => \IRX|D[5]~26_combout\,
	combout => \ACCA|data_out[5]~2_combout\);

-- Location: LCCOMB_X15_Y20_N12
\PC|data_out[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[13]~2_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[5]~14_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(13),
	datad => \IRX|C[5]~14_combout\,
	combout => \PC|data_out[13]~2_combout\);

-- Location: LCCOMB_X16_Y19_N16
\ACCA|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[4]~3_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[4]~3_combout\)) # (!\inst14|inst13|EA\(1) & ((\IRX|D[4]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[4]~3_combout\,
	datab => \inst14|inst13|EA\(1),
	datad => \IRX|D[4]~31_combout\,
	combout => \ACCA|data_out[4]~3_combout\);

-- Location: LCCOMB_X16_Y19_N30
\ACCA|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~8_combout\ = (\inst14|inst13|nWA~q\ & ((\inst14|inst13|EA\(0)) # (\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[0]~8_combout\);

-- Location: FF_X16_Y19_N17
\ACCA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[4]~3_combout\,
	asdata => \IRX|C[4]~18_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(4));

-- Location: LCCOMB_X16_Y19_N22
\ACCA|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[4]~3_combout\ = (\inst14|inst13|nWA~q\) # (((\ACCA|data_out\(4)) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \inst14|inst13|EA\(0),
	datac => \ACCA|data_out\(4),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[4]~3_combout\);

-- Location: LCCOMB_X16_Y20_N0
\ACCB|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[4]~3_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[4]~3_combout\)) # (!\inst14|inst13|EB\(0) & ((\IRX|C[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[4]~3_combout\,
	datad => \IRX|C[4]~18_combout\,
	combout => \ACCB|data_out[4]~3_combout\);

-- Location: LCCOMB_X14_Y20_N2
\ACCB|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~8_combout\ = (\inst14|inst13|nWB~q\ & ((\inst14|inst13|EB\(0)) # (\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|data_out[0]~8_combout\);

-- Location: FF_X16_Y20_N1
\ACCB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[4]~3_combout\,
	asdata => \IRX|D[4]~31_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(4));

-- Location: LCCOMB_X14_Y20_N24
\ACCB|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[4]~3_combout\ = (((\ACCB|data_out\(4)) # (\inst14|inst13|nWB~q\)) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \ACCB|data_out\(4),
	datad => \inst14|inst13|nWB~q\,
	combout => \ACCB|C[4]~3_combout\);

-- Location: FF_X16_Y17_N19
\inst14|inst13|ACCSEC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|Equal20~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|ACCSEC~q\);

-- Location: LCCOMB_X15_Y21_N22
\inst1|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datac => \ACCB|C[4]~3_combout\,
	datad => \inst14|inst13|ACCSEC~q\,
	combout => \inst1|Add0~3_combout\);

-- Location: LCCOMB_X16_Y20_N14
\ACCA|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[3]~4_combout\ = (\inst14|inst13|nWA~q\) # ((\ACCA|data_out\(3)) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \ACCA|data_out\(3),
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[3]~4_combout\);

-- Location: LCCOMB_X17_Y19_N2
\AUX|data_out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~10_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(6))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[5]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(6),
	datac => \inst14|inst13|BD~q\,
	datad => \IRX|D[5]~26_combout\,
	combout => \AUX|data_out~10_combout\);

-- Location: FF_X17_Y19_N3
\AUX|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~10_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(5));

-- Location: LCCOMB_X17_Y19_N16
\AUX|data_out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~11_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(5))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[4]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(5),
	datac => \inst14|inst13|BD~q\,
	datad => \IRX|D[4]~31_combout\,
	combout => \AUX|data_out~11_combout\);

-- Location: FF_X17_Y19_N17
\AUX|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(4));

-- Location: LCCOMB_X17_Y18_N12
\AUX|data_out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~12_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(4))) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datac => \AUX|data_out\(4),
	datad => \inst1|Yupa[3]~3_combout\,
	combout => \AUX|data_out~12_combout\);

-- Location: FF_X17_Y18_N13
\AUX|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~12_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(3));

-- Location: LCCOMB_X19_Y17_N14
\inst14|inst9|data[47]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~44_combout\ = ((\inst14|inst9|Equal27~1_combout\ & \inst14|inst13|prueba[4]~0_combout\)) # (!\inst14|inst9|data[47]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal27~1_combout\,
	datac => \inst14|inst13|prueba[4]~0_combout\,
	datad => \inst14|inst9|data[47]~43_combout\,
	combout => \inst14|inst9|data[47]~44_combout\);

-- Location: FF_X19_Y17_N15
\inst14|inst13|nERA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[47]~44_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nERA0~q\);

-- Location: LCCOMB_X17_Y17_N16
\AUX|TRI_STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_D~0_combout\ = (\inst14|inst13|RA\(0)) # ((\inst14|inst13|BD~q\) # (!\inst14|inst13|nERA0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nERA0~q\,
	combout => \AUX|TRI_STATE_D~0_combout\);

-- Location: LCCOMB_X16_Y19_N20
\ACCA|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|TRI_STATE~0_combout\ = (!\inst14|inst13|nWA~q\ & (\inst14|inst13|EA\(0) & !\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|TRI_STATE~0_combout\);

-- Location: LCCOMB_X16_Y18_N16
\inst1|Yupa[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~0_combout\ = (\AUX|data_out\(3) & ((\ACCA|data_out\(3)) # ((!\ACCA|TRI_STATE~0_combout\)))) # (!\AUX|data_out\(3) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(3)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(3),
	datab => \ACCA|data_out\(3),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[3]~0_combout\);

-- Location: LCCOMB_X16_Y18_N6
\inst1|Yupa[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~1_combout\ = (\PC|data_out\(3) & ((\ACCB|data_out\(3)) # ((!\ACCB|TRI_STATE~0_combout\)))) # (!\PC|data_out\(3) & (\PC|TRI_STATE_D~0_combout\ & ((\ACCB|data_out\(3)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(3),
	datab => \ACCB|data_out\(3),
	datac => \ACCB|TRI_STATE~0_combout\,
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \inst1|Yupa[3]~1_combout\);

-- Location: LCCOMB_X18_Y18_N4
\inst|valor_interno[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|valor_interno[1]~feeder_combout\ = \PC|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(1),
	combout => \inst|valor_interno[1]~feeder_combout\);

-- Location: FF_X18_Y18_N5
\inst|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(1));

-- Location: LCCOMB_X18_Y18_N14
\inst6|mem~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~31_combout\ = (!\inst|valor_interno\(3) & (!\inst|valor_interno\(1) & (\inst|valor_interno\(2) & \inst6|mem~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(3),
	datab => \inst|valor_interno\(1),
	datac => \inst|valor_interno\(2),
	datad => \inst6|mem~19_combout\,
	combout => \inst6|mem~31_combout\);

-- Location: FF_X19_Y17_N7
\inst6|data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \inst6|mem~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[3]~reg0_q\);

-- Location: LCCOMB_X17_Y18_N6
\AUX|data_out~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~13_combout\ = (\inst14|inst13|BD~q\ & ((\AUX|data_out\(3)))) # (!\inst14|inst13|BD~q\ & (\IRX|D[2]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datac => \IRX|D[2]~35_combout\,
	datad => \AUX|data_out\(3),
	combout => \AUX|data_out~13_combout\);

-- Location: FF_X17_Y18_N7
\AUX|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(2));

-- Location: LCCOMB_X17_Y19_N4
\IRX|D[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[2]~32_combout\ = (\ACCA|data_out\(2) & ((\AUX|TRI_STATE_D~0_combout\) # ((\AUX|data_out\(2))))) # (!\ACCA|data_out\(2) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|TRI_STATE_D~0_combout\) # (\AUX|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \AUX|TRI_STATE_D~0_combout\,
	datac => \AUX|data_out\(2),
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[2]~32_combout\);

-- Location: LCCOMB_X16_Y20_N10
\ACCB|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[2]~5_combout\ = (\inst14|inst13|nWB~q\) # ((\ACCB|data_out\(2)) # ((!\inst14|inst13|EB\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWB~q\,
	datab => \ACCB|data_out\(2),
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[2]~5_combout\);

-- Location: LCCOMB_X19_Y20_N30
\IRX|C[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[2]~24_combout\ = (\ACCB|data_out\(2) & ((\ACCA|B[7]~0_combout\) # ((\ACCA|data_out\(2))))) # (!\ACCB|data_out\(2) & (\ACCB|B[7]~0_combout\ & ((\ACCA|B[7]~0_combout\) # (\ACCA|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(2),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCA|data_out\(2),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[2]~24_combout\);

-- Location: LCCOMB_X18_Y19_N0
\AUX|TRI_STATE_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_C~0_combout\ = ((\inst14|inst13|RA\(0)) # (\inst14|inst13|BD~q\)) # (!\inst14|inst13|nERA1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nERA1~q\,
	datac => \inst14|inst13|RA\(0),
	datad => \inst14|inst13|BD~q\,
	combout => \AUX|TRI_STATE_C~0_combout\);

-- Location: LCCOMB_X19_Y20_N6
\PC|data_out[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[10]~5_combout\ = (\inst14|inst13|PC\(2) & (\IRX|C[2]~27_combout\)) # (!\inst14|inst13|PC\(2) & ((\PC|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IRX|C[2]~27_combout\,
	datac => \PC|data_out\(10),
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[10]~5_combout\);

-- Location: LCCOMB_X19_Y20_N22
\IRX|C[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[1]~29_combout\ = (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(9)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(9) & ((\PC|data_out\(9)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \PC|data_out\(9),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \AUX|data_out\(9),
	combout => \IRX|C[1]~29_combout\);

-- Location: LCCOMB_X16_Y19_N28
\ACCA|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[1]~6_combout\ = (\inst14|inst13|nWA~q\) # ((\ACCA|data_out\(1)) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \ACCA|data_out\(1),
	datac => \inst14|inst13|EA\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[1]~6_combout\);

-- Location: LCCOMB_X17_Y19_N26
\AUX|data_out~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~14_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(2))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[1]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AUX|data_out\(2),
	datac => \inst14|inst13|BD~q\,
	datad => \IRX|D[1]~39_combout\,
	combout => \AUX|data_out~14_combout\);

-- Location: FF_X17_Y19_N27
\AUX|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~14_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(1));

-- Location: LCCOMB_X17_Y19_N14
\IRX|D[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[1]~36_combout\ = (\ACCA|TRI_STATE~0_combout\ & (\ACCA|data_out\(1) & ((\AUX|data_out\(1)) # (\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|TRI_STATE~0_combout\ & (((\AUX|data_out\(1)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|TRI_STATE~0_combout\,
	datab => \ACCA|data_out\(1),
	datac => \AUX|data_out\(1),
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \IRX|D[1]~36_combout\);

-- Location: LCCOMB_X16_Y20_N16
\ACCB|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[1]~6_combout\ = (\inst14|inst13|nWB~q\) # (((\ACCB|data_out\(1)) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWB~q\,
	datab => \inst14|inst13|EA\(1),
	datac => \ACCB|data_out\(1),
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|C[1]~6_combout\);

-- Location: LCCOMB_X16_Y20_N26
\ACCB|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[1]~6_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[1]~6_combout\)) # (!\inst14|inst13|EB\(0) & ((\IRX|C[1]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[1]~6_combout\,
	datad => \IRX|C[1]~31_combout\,
	combout => \ACCB|data_out[1]~6_combout\);

-- Location: FF_X16_Y20_N27
\ACCB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[1]~6_combout\,
	asdata => \IRX|D[1]~39_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(1));

-- Location: LCCOMB_X18_Y17_N28
\IRX|D[1]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[1]~37_combout\ = (\ACCB|TRI_STATE~0_combout\ & (\ACCB|data_out\(1) & ((\PC|TRI_STATE_D~0_combout\) # (\PC|data_out\(1))))) # (!\ACCB|TRI_STATE~0_combout\ & (((\PC|TRI_STATE_D~0_combout\) # (\PC|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datab => \ACCB|data_out\(1),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \PC|data_out\(1),
	combout => \IRX|D[1]~37_combout\);

-- Location: LCCOMB_X18_Y20_N14
\inst6|mem~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~27_combout\ = (\inst|valor_interno\(3)) # ((\inst|valor_interno\(1) & ((\inst|valor_interno\(0)) # (\inst|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(0),
	datab => \inst|valor_interno\(3),
	datac => \inst|valor_interno\(1),
	datad => \inst|valor_interno\(2),
	combout => \inst6|mem~27_combout\);

-- Location: LCCOMB_X18_Y20_N8
\inst6|mem~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~28_combout\ = (\inst6|mem~19_combout\ & !\inst6|mem~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mem~19_combout\,
	datac => \inst6|mem~27_combout\,
	combout => \inst6|mem~28_combout\);

-- Location: FF_X18_Y20_N9
\inst6|data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst6|mem~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[1]~reg0_q\);

-- Location: LCCOMB_X16_Y20_N2
\inst1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|ACCSEC~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \ACCB|C[1]~6_combout\,
	combout => \inst1|Add0~6_combout\);

-- Location: LCCOMB_X16_Y21_N30
\inst1|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~7_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|ACCSEC~q\,
	datad => \ACCB|C[0]~7_combout\,
	combout => \inst1|Add0~7_combout\);

-- Location: LCCOMB_X16_Y19_N26
\ACCA|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~7_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[0]~7_combout\)) # (!\inst14|inst13|EA\(1) & ((\IRX|D[0]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[0]~7_combout\,
	datab => \inst14|inst13|EA\(1),
	datad => \IRX|D[0]~43_combout\,
	combout => \ACCA|data_out[0]~7_combout\);

-- Location: FF_X16_Y19_N27
\ACCA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[0]~7_combout\,
	asdata => \IRX|C[0]~35_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(0));

-- Location: LCCOMB_X16_Y19_N6
\ACCA|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[0]~7_combout\ = (\inst14|inst13|nWA~q\) # (((\ACCA|data_out\(0)) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \inst14|inst13|EA\(0),
	datac => \ACCA|data_out\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[0]~7_combout\);

-- Location: LCCOMB_X17_Y17_N2
\inst14|inst9|data[6]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~58_combout\ = (!\inst14|inst9|data[97]~15_combout\ & (!\inst14|inst9|Equal9~0_combout\ & (\inst14|inst9|data[14]~38_combout\ & \inst14|inst9|data[72]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[97]~15_combout\,
	datab => \inst14|inst9|Equal9~0_combout\,
	datac => \inst14|inst9|data[14]~38_combout\,
	datad => \inst14|inst9|data[72]~9_combout\,
	combout => \inst14|inst9|data[6]~58_combout\);

-- Location: FF_X17_Y17_N3
\inst14|inst13|CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[6]~58_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CC~q\);

-- Location: LCCOMB_X17_Y20_N28
\ACCA|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[7]~0_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[7]~0_combout\)) # (!\inst14|inst13|EA\(1) & ((\IRX|D[7]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCA|C[7]~0_combout\,
	datad => \IRX|D[7]~18_combout\,
	combout => \ACCA|data_out[7]~0_combout\);

-- Location: FF_X17_Y20_N29
\ACCA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[7]~0_combout\,
	asdata => \IRX|C[7]~6_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(7));

-- Location: LCCOMB_X16_Y19_N18
\ACCA|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[7]~0_combout\ = (\inst14|inst13|nWA~q\) # (((\ACCA|data_out\(7)) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \inst14|inst13|EA\(0),
	datac => \ACCA|data_out\(7),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|C[7]~0_combout\);

-- Location: LCCOMB_X16_Y20_N12
\ACCB|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[7]~0_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[7]~0_combout\)) # (!\inst14|inst13|EB\(0) & ((\IRX|C[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[7]~0_combout\,
	datad => \IRX|C[7]~6_combout\,
	combout => \ACCB|data_out[7]~0_combout\);

-- Location: FF_X16_Y20_N13
\ACCB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[7]~0_combout\,
	asdata => \IRX|D[7]~18_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(7));

-- Location: LCCOMB_X16_Y20_N24
\ACCB|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[7]~0_combout\ = (\ACCB|data_out\(7)) # (((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|nWB~q\,
	combout => \ACCB|C[7]~0_combout\);

-- Location: LCCOMB_X17_Y20_N6
\inst1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|ACCSEC~q\,
	datad => \ACCB|C[7]~0_combout\,
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X14_Y20_N0
\inst1|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|ACCSEC~q\,
	datad => \ACCB|C[6]~1_combout\,
	combout => \inst1|Add0~1_combout\);

-- Location: LCCOMB_X18_Y17_N12
\ACCA|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[6]~1_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[6]~1_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[6]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[6]~22_combout\,
	datab => \inst14|inst13|EA\(1),
	datad => \ACCA|C[6]~1_combout\,
	combout => \ACCA|data_out[6]~1_combout\);

-- Location: FF_X18_Y17_N13
\ACCA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[6]~1_combout\,
	asdata => \IRX|C[6]~10_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(6));

-- Location: LCCOMB_X17_Y19_N6
\ACCA|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[6]~1_combout\ = (\inst14|inst13|nWA~q\) # ((\ACCA|data_out\(6)) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \ACCA|data_out\(6),
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[6]~1_combout\);

-- Location: LCCOMB_X16_Y20_N30
\ACCB|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[5]~2_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[5]~2_combout\)) # (!\inst14|inst13|EB\(0) & ((\IRX|C[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[5]~2_combout\,
	datad => \IRX|C[5]~14_combout\,
	combout => \ACCB|data_out[5]~2_combout\);

-- Location: FF_X16_Y20_N31
\ACCB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[5]~2_combout\,
	asdata => \IRX|D[5]~26_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(5));

-- Location: LCCOMB_X14_Y20_N10
\ACCB|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[5]~2_combout\ = ((\ACCB|data_out\(5)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EB\(0)))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCB|data_out\(5),
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|nWB~q\,
	combout => \ACCB|C[5]~2_combout\);

-- Location: LCCOMB_X16_Y20_N8
\inst1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\ACCB|C[5]~2_combout\ & \inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ACCB|C[5]~2_combout\,
	datac => \inst14|inst13|ACCSEC~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \inst1|Add0~2_combout\);

-- Location: LCCOMB_X16_Y21_N16
\inst1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\ACCA|C[4]~3_combout\ & ((\inst1|Add0~3_combout\ & (\inst1|Add0~17\ & VCC)) # (!\inst1|Add0~3_combout\ & (!\inst1|Add0~17\)))) # (!\ACCA|C[4]~3_combout\ & ((\inst1|Add0~3_combout\ & (!\inst1|Add0~17\)) # (!\inst1|Add0~3_combout\ 
-- & ((\inst1|Add0~17\) # (GND)))))
-- \inst1|Add0~19\ = CARRY((\ACCA|C[4]~3_combout\ & (!\inst1|Add0~3_combout\ & !\inst1|Add0~17\)) # (!\ACCA|C[4]~3_combout\ & ((!\inst1|Add0~17\) # (!\inst1|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[4]~3_combout\,
	datab => \inst1|Add0~3_combout\,
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X16_Y21_N18
\inst1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = ((\ACCA|C[5]~2_combout\ $ (\inst1|Add0~2_combout\ $ (!\inst1|Add0~19\)))) # (GND)
-- \inst1|Add0~21\ = CARRY((\ACCA|C[5]~2_combout\ & ((\inst1|Add0~2_combout\) # (!\inst1|Add0~19\))) # (!\ACCA|C[5]~2_combout\ & (\inst1|Add0~2_combout\ & !\inst1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[5]~2_combout\,
	datab => \inst1|Add0~2_combout\,
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X16_Y21_N20
\inst1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|Add0~1_combout\ & ((\ACCA|C[6]~1_combout\ & (\inst1|Add0~21\ & VCC)) # (!\ACCA|C[6]~1_combout\ & (!\inst1|Add0~21\)))) # (!\inst1|Add0~1_combout\ & ((\ACCA|C[6]~1_combout\ & (!\inst1|Add0~21\)) # (!\ACCA|C[6]~1_combout\ & 
-- ((\inst1|Add0~21\) # (GND)))))
-- \inst1|Add0~23\ = CARRY((\inst1|Add0~1_combout\ & (!\ACCA|C[6]~1_combout\ & !\inst1|Add0~21\)) # (!\inst1|Add0~1_combout\ & ((!\inst1|Add0~21\) # (!\ACCA|C[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~1_combout\,
	datab => \ACCA|C[6]~1_combout\,
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X16_Y21_N22
\inst1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = ((\ACCA|C[7]~0_combout\ $ (\inst1|Add0~0_combout\ $ (!\inst1|Add0~23\)))) # (GND)
-- \inst1|Add0~25\ = CARRY((\ACCA|C[7]~0_combout\ & ((\inst1|Add0~0_combout\) # (!\inst1|Add0~23\))) # (!\ACCA|C[7]~0_combout\ & (\inst1|Add0~0_combout\ & !\inst1|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[7]~0_combout\,
	datab => \inst1|Add0~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X16_Y21_N24
\inst1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = \inst1|Add0~25\ $ (\inst14|inst13|ACCSEC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst13|ACCSEC~q\,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\);

-- Location: FF_X16_Y21_N25
\inst1|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~26_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(1));

-- Location: FF_X16_Y21_N3
\inst5|inst|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CC~q\,
	asdata => \inst1|Banderas\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|valor_interno~q\);

-- Location: LCCOMB_X16_Y21_N2
\inst13|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|result_node[0]~0_combout\ = (\inst14|inst13|EA\(1) & (\inst14|inst13|ACCSEC~q\)) # (!\inst14|inst13|EA\(1) & ((\inst5|inst|valor_interno~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|ACCSEC~q\,
	datac => \inst5|inst|valor_interno~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \inst13|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y21_N6
\inst1|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_cout\ = CARRY(\inst13|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|$00000|auto_generated|result_node[0]~0_combout\,
	datad => VCC,
	cout => \inst1|Add0~9_cout\);

-- Location: LCCOMB_X16_Y21_N8
\inst1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|Add0~7_combout\ & ((\ACCA|C[0]~7_combout\ & (\inst1|Add0~9_cout\ & VCC)) # (!\ACCA|C[0]~7_combout\ & (!\inst1|Add0~9_cout\)))) # (!\inst1|Add0~7_combout\ & ((\ACCA|C[0]~7_combout\ & (!\inst1|Add0~9_cout\)) # 
-- (!\ACCA|C[0]~7_combout\ & ((\inst1|Add0~9_cout\) # (GND)))))
-- \inst1|Add0~11\ = CARRY((\inst1|Add0~7_combout\ & (!\ACCA|C[0]~7_combout\ & !\inst1|Add0~9_cout\)) # (!\inst1|Add0~7_combout\ & ((!\inst1|Add0~9_cout\) # (!\ACCA|C[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~7_combout\,
	datab => \ACCA|C[0]~7_combout\,
	datad => VCC,
	cin => \inst1|Add0~9_cout\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X16_Y21_N10
\inst1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = ((\inst1|Add0~6_combout\ $ (\ACCA|C[1]~6_combout\ $ (!\inst1|Add0~11\)))) # (GND)
-- \inst1|Add0~13\ = CARRY((\inst1|Add0~6_combout\ & ((\ACCA|C[1]~6_combout\) # (!\inst1|Add0~11\))) # (!\inst1|Add0~6_combout\ & (\ACCA|C[1]~6_combout\ & !\inst1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \ACCA|C[1]~6_combout\,
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X16_Y21_N27
\inst1|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~12_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(1));

-- Location: LCCOMB_X17_Y19_N0
\IRX|D[1]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[1]~38_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(1)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datac => \inst1|Yupa_interno\(1),
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[1]~38_combout\);

-- Location: LCCOMB_X18_Y20_N20
\IRX|D[1]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[1]~48_combout\ = (\IRX|D[1]~38_combout\ & ((\inst14|inst13|BD~q\) # ((\inst6|data[1]~reg0_q\) # (!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst6|data[1]~reg0_q\,
	datac => \IRX|D[1]~38_combout\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|D[1]~48_combout\);

-- Location: LCCOMB_X19_Y17_N4
\IRX|D[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~15_combout\ = (\inst6|data[7]~en_q\) # ((!\inst14|inst13|RA\(0) & \inst14|inst13|nERA0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|RA\(0),
	datac => \inst14|inst13|nERA0~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|D[7]~15_combout\);

-- Location: LCCOMB_X18_Y17_N6
\IRX|D[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~16_combout\ = (\inst14|inst13|nEX~q\) # ((\ACCB|TRI_STATE~0_combout\) # ((!\inst14|inst13|BD~q\ & \IRX|D[7]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nEX~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \ACCB|TRI_STATE~0_combout\,
	datad => \IRX|D[7]~15_combout\,
	combout => \IRX|D[7]~16_combout\);

-- Location: LCCOMB_X18_Y17_N0
\IRX|D[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~17_combout\ = (\inst14|inst13|nDUPA~q\) # (((\ACCA|TRI_STATE~0_combout\) # (\IRX|D[7]~16_combout\)) # (!\PC|TRI_STATE_D~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datab => \PC|TRI_STATE_D~0_combout\,
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \IRX|D[7]~16_combout\,
	combout => \IRX|D[7]~17_combout\);

-- Location: LCCOMB_X18_Y17_N2
\IRX|D[1]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[1]~39_combout\ = ((\IRX|D[1]~36_combout\ & (\IRX|D[1]~37_combout\ & \IRX|D[1]~48_combout\))) # (!\IRX|D[7]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[1]~36_combout\,
	datab => \IRX|D[1]~37_combout\,
	datac => \IRX|D[1]~48_combout\,
	datad => \IRX|D[7]~17_combout\,
	combout => \IRX|D[1]~39_combout\);

-- Location: LCCOMB_X17_Y20_N8
\ACCA|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[1]~6_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[1]~6_combout\)) # (!\inst14|inst13|EA\(1) & ((\IRX|D[1]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCA|C[1]~6_combout\,
	datad => \IRX|D[1]~39_combout\,
	combout => \ACCA|data_out[1]~6_combout\);

-- Location: FF_X17_Y20_N9
\ACCA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[1]~6_combout\,
	asdata => \IRX|C[1]~31_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(1));

-- Location: LCCOMB_X18_Y18_N22
\IRX|C[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[1]~28_combout\ = (\ACCA|data_out\(1) & ((\ACCB|data_out\(1)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(1) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(1)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(1),
	datab => \ACCB|data_out\(1),
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[1]~28_combout\);

-- Location: LCCOMB_X18_Y20_N22
\IRX|C[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[1]~30_combout\ = (\IRX|D[1]~38_combout\ & (((\inst6|data[1]~reg0_q\) # (!\inst6|data[7]~en_q\)) # (!\inst14|inst13|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \IRX|D[1]~38_combout\,
	datac => \inst6|data[1]~reg0_q\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|C[1]~30_combout\);

-- Location: LCCOMB_X19_Y20_N4
\IRX|C[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[1]~31_combout\ = ((\IRX|C[1]~29_combout\ & (\IRX|C[1]~28_combout\ & \IRX|C[1]~30_combout\))) # (!\IRX|C[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[1]~29_combout\,
	datab => \IRX|C[7]~5_combout\,
	datac => \IRX|C[1]~28_combout\,
	datad => \IRX|C[1]~30_combout\,
	combout => \IRX|C[1]~31_combout\);

-- Location: LCCOMB_X19_Y20_N8
\PC|data_out[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[9]~6_combout\ = (\inst14|inst13|PC\(2) & (\IRX|C[1]~31_combout\)) # (!\inst14|inst13|PC\(2) & ((\PC|data_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IRX|C[1]~31_combout\,
	datac => \PC|data_out\(9),
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[9]~6_combout\);

-- Location: LCCOMB_X18_Y21_N20
\PC|data_out[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[8]~7_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[0]~35_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(8),
	datad => \IRX|C[0]~35_combout\,
	combout => \PC|data_out[8]~7_combout\);

-- Location: LCCOMB_X20_Y20_N12
\PC|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~28_combout\ = (\PC|data_out\(6) & (\PC|Add0~27\ $ (GND))) # (!\PC|data_out\(6) & (!\PC|Add0~27\ & VCC))
-- \PC|Add0~29\ = CARRY((\PC|data_out\(6) & !\PC|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(6),
	datad => VCC,
	cin => \PC|Add0~27\,
	combout => \PC|Add0~28_combout\,
	cout => \PC|Add0~29\);

-- Location: LCCOMB_X20_Y20_N14
\PC|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~30_combout\ = (\PC|data_out\(7) & (!\PC|Add0~29\)) # (!\PC|data_out\(7) & ((\PC|Add0~29\) # (GND)))
-- \PC|Add0~31\ = CARRY((!\PC|Add0~29\) # (!\PC|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(7),
	datad => VCC,
	cin => \PC|Add0~29\,
	combout => \PC|Add0~30_combout\,
	cout => \PC|Add0~31\);

-- Location: LCCOMB_X19_Y18_N28
\PC|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~48_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & (\IRX|D[7]~18_combout\)) # (!\inst14|inst13|PC\(2) & ((\PC|Add0~30_combout\))))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \IRX|D[7]~18_combout\,
	datad => \PC|Add0~30_combout\,
	combout => \PC|Add0~48_combout\);

-- Location: FF_X19_Y18_N29
\PC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~48_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(7));

-- Location: LCCOMB_X20_Y20_N16
\PC|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~32_combout\ = (\PC|data_out\(8) & (\PC|Add0~31\ $ (GND))) # (!\PC|data_out\(8) & (!\PC|Add0~31\ & VCC))
-- \PC|Add0~33\ = CARRY((\PC|data_out\(8) & !\PC|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(8),
	datad => VCC,
	cin => \PC|Add0~31\,
	combout => \PC|Add0~32_combout\,
	cout => \PC|Add0~33\);

-- Location: LCCOMB_X18_Y20_N10
\PC|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Equal0~0_combout\ = (!\inst14|inst13|PC\(2) & \inst14|inst13|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datad => \inst14|inst13|PC\(0),
	combout => \PC|Equal0~0_combout\);

-- Location: FF_X18_Y21_N21
\PC|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[8]~7_combout\,
	asdata => \PC|Add0~32_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(8));

-- Location: LCCOMB_X20_Y20_N18
\PC|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~34_combout\ = (\PC|data_out\(9) & (!\PC|Add0~33\)) # (!\PC|data_out\(9) & ((\PC|Add0~33\) # (GND)))
-- \PC|Add0~35\ = CARRY((!\PC|Add0~33\) # (!\PC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(9),
	datad => VCC,
	cin => \PC|Add0~33\,
	combout => \PC|Add0~34_combout\,
	cout => \PC|Add0~35\);

-- Location: FF_X19_Y20_N9
\PC|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[9]~6_combout\,
	asdata => \PC|Add0~34_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(9));

-- Location: LCCOMB_X20_Y20_N20
\PC|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~36_combout\ = (\PC|data_out\(10) & (\PC|Add0~35\ $ (GND))) # (!\PC|data_out\(10) & (!\PC|Add0~35\ & VCC))
-- \PC|Add0~37\ = CARRY((\PC|data_out\(10) & !\PC|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(10),
	datad => VCC,
	cin => \PC|Add0~35\,
	combout => \PC|Add0~36_combout\,
	cout => \PC|Add0~37\);

-- Location: FF_X19_Y20_N7
\PC|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[10]~5_combout\,
	asdata => \PC|Add0~36_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(10));

-- Location: LCCOMB_X19_Y20_N24
\IRX|C[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[2]~25_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\PC|TRI_STATE_D~0_combout\) # (\PC|data_out\(10))))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(10) & ((\PC|TRI_STATE_D~0_combout\) # (\PC|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \AUX|data_out\(10),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \PC|data_out\(10),
	combout => \IRX|C[2]~25_combout\);

-- Location: LCCOMB_X19_Y18_N20
\inst|valor_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|valor_interno[5]~feeder_combout\ = \PC|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(5),
	combout => \inst|valor_interno[5]~feeder_combout\);

-- Location: FF_X19_Y18_N21
\inst|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(5));

-- Location: LCCOMB_X19_Y18_N4
\inst|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|valor_interno[7]~feeder_combout\ = \PC|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(7),
	combout => \inst|valor_interno[7]~feeder_combout\);

-- Location: FF_X19_Y18_N5
\inst|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(7));

-- Location: LCCOMB_X19_Y18_N22
\inst|valor_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|valor_interno[4]~feeder_combout\ = \PC|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(4),
	combout => \inst|valor_interno[4]~feeder_combout\);

-- Location: FF_X19_Y18_N23
\inst|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(4));

-- Location: LCCOMB_X18_Y18_N18
\inst6|mem~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~25_combout\ = (\inst|valor_interno\(3)) # ((\inst|valor_interno\(4)) # (\inst|valor_interno\(0) $ (\inst|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(3),
	datab => \inst|valor_interno\(0),
	datac => \inst|valor_interno\(2),
	datad => \inst|valor_interno\(4),
	combout => \inst6|mem~25_combout\);

-- Location: LCCOMB_X18_Y18_N24
\inst6|mem~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~26_combout\ = (!\inst|valor_interno\(6) & (!\inst|valor_interno\(5) & (!\inst|valor_interno\(7) & !\inst6|mem~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(6),
	datab => \inst|valor_interno\(5),
	datac => \inst|valor_interno\(7),
	datad => \inst6|mem~25_combout\,
	combout => \inst6|mem~26_combout\);

-- Location: LCCOMB_X18_Y18_N6
\inst6|data[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|data[2]~reg0feeder_combout\ = \inst6|mem~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|mem~26_combout\,
	combout => \inst6|data[2]~reg0feeder_combout\);

-- Location: FF_X18_Y18_N7
\inst6|data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst6|data[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[2]~reg0_q\);

-- Location: LCCOMB_X16_Y21_N28
\inst1|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\ACCB|C[2]~5_combout\ & \inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[2]~5_combout\,
	datab => \inst14|inst13|ACCSEC~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \inst1|Add0~5_combout\);

-- Location: LCCOMB_X16_Y21_N12
\inst1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\ACCA|C[2]~5_combout\ & ((\inst1|Add0~5_combout\ & (\inst1|Add0~13\ & VCC)) # (!\inst1|Add0~5_combout\ & (!\inst1|Add0~13\)))) # (!\ACCA|C[2]~5_combout\ & ((\inst1|Add0~5_combout\ & (!\inst1|Add0~13\)) # (!\inst1|Add0~5_combout\ 
-- & ((\inst1|Add0~13\) # (GND)))))
-- \inst1|Add0~15\ = CARRY((\ACCA|C[2]~5_combout\ & (!\inst1|Add0~5_combout\ & !\inst1|Add0~13\)) # (!\ACCA|C[2]~5_combout\ & ((!\inst1|Add0~13\) # (!\inst1|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[2]~5_combout\,
	datab => \inst1|Add0~5_combout\,
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: FF_X16_Y21_N13
\inst1|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~14_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(2));

-- Location: LCCOMB_X18_Y18_N16
\IRX|D[2]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[2]~34_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(2)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datab => \inst1|Yupa_interno\(2),
	datac => \inst14|inst13|nEX~q\,
	combout => \IRX|D[2]~34_combout\);

-- Location: LCCOMB_X18_Y18_N28
\IRX|C[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[2]~26_combout\ = (\IRX|D[2]~34_combout\ & ((\inst6|data[2]~reg0_q\) # ((!\inst6|data[7]~en_q\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[2]~reg0_q\,
	datab => \IRX|D[2]~34_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|C[2]~26_combout\);

-- Location: LCCOMB_X18_Y20_N6
\IRX|C[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[2]~27_combout\ = ((\IRX|C[2]~24_combout\ & (\IRX|C[2]~25_combout\ & \IRX|C[2]~26_combout\))) # (!\IRX|C[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[2]~24_combout\,
	datab => \IRX|C[2]~25_combout\,
	datac => \IRX|C[7]~5_combout\,
	datad => \IRX|C[2]~26_combout\,
	combout => \IRX|C[2]~27_combout\);

-- Location: LCCOMB_X16_Y20_N20
\ACCB|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[2]~5_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[2]~5_combout\)) # (!\inst14|inst13|EB\(0) & ((\IRX|C[2]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[2]~5_combout\,
	datab => \inst14|inst13|EB\(0),
	datad => \IRX|C[2]~27_combout\,
	combout => \ACCB|data_out[2]~5_combout\);

-- Location: FF_X16_Y20_N21
\ACCB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[2]~5_combout\,
	asdata => \IRX|D[2]~35_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(2));

-- Location: LCCOMB_X19_Y17_N10
\IRX|D[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[2]~33_combout\ = (\PC|data_out\(2) & (((\ACCB|data_out\(2))) # (!\ACCB|TRI_STATE~0_combout\))) # (!\PC|data_out\(2) & (\PC|TRI_STATE_D~0_combout\ & ((\ACCB|data_out\(2)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(2),
	datab => \ACCB|TRI_STATE~0_combout\,
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCB|data_out\(2),
	combout => \IRX|D[2]~33_combout\);

-- Location: LCCOMB_X18_Y18_N20
\IRX|D[2]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[2]~47_combout\ = (\IRX|D[2]~34_combout\ & ((\inst6|data[2]~reg0_q\) # ((\inst14|inst13|BD~q\) # (!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[2]~reg0_q\,
	datab => \IRX|D[2]~34_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|D[2]~47_combout\);

-- Location: LCCOMB_X18_Y17_N22
\IRX|D[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[2]~35_combout\ = ((\IRX|D[2]~32_combout\ & (\IRX|D[2]~33_combout\ & \IRX|D[2]~47_combout\))) # (!\IRX|D[7]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[2]~32_combout\,
	datab => \IRX|D[2]~33_combout\,
	datac => \IRX|D[2]~47_combout\,
	datad => \IRX|D[7]~17_combout\,
	combout => \IRX|D[2]~35_combout\);

-- Location: LCCOMB_X17_Y20_N30
\ACCA|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[2]~5_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[2]~5_combout\)) # (!\inst14|inst13|EA\(1) & ((\IRX|D[2]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \ACCA|C[2]~5_combout\,
	datad => \IRX|D[2]~35_combout\,
	combout => \ACCA|data_out[2]~5_combout\);

-- Location: FF_X17_Y20_N31
\ACCA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[2]~5_combout\,
	asdata => \IRX|C[2]~27_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(2));

-- Location: LCCOMB_X17_Y20_N4
\ACCA|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[2]~5_combout\ = (\ACCA|data_out\(2)) # (((\inst14|inst13|nWA~q\) # (!\inst14|inst13|EA\(1))) # (!\inst14|inst13|EA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|nWA~q\,
	combout => \ACCA|C[2]~5_combout\);

-- Location: LCCOMB_X16_Y21_N14
\inst1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = ((\inst1|Add0~4_combout\ $ (\ACCA|C[3]~4_combout\ $ (!\inst1|Add0~15\)))) # (GND)
-- \inst1|Add0~17\ = CARRY((\inst1|Add0~4_combout\ & ((\ACCA|C[3]~4_combout\) # (!\inst1|Add0~15\))) # (!\inst1|Add0~4_combout\ & (\ACCA|C[3]~4_combout\ & !\inst1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datab => \ACCA|C[3]~4_combout\,
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: FF_X16_Y21_N31
\inst1|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~16_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(3));

-- Location: LCCOMB_X19_Y17_N18
\inst6|data[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|data[7]~0_combout\ = (!\inst14|inst13|BD~q\ & \inst6|data[7]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|BD~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \inst6|data[7]~0_combout\);

-- Location: LCCOMB_X19_Y17_N26
\inst1|Yupa[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~2_combout\ = (\inst6|data[3]~reg0_q\ & ((\inst1|Yupa_interno\(3)) # ((!\inst14|inst13|nDUPA~q\)))) # (!\inst6|data[3]~reg0_q\ & (!\inst6|data[7]~0_combout\ & ((\inst1|Yupa_interno\(3)) # (!\inst14|inst13|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[3]~reg0_q\,
	datab => \inst1|Yupa_interno\(3),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[3]~2_combout\);

-- Location: LCCOMB_X17_Y18_N10
\inst1|Yupa[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~3_combout\ = ((\inst1|Yupa[3]~0_combout\ & (\inst1|Yupa[3]~1_combout\ & \inst1|Yupa[3]~2_combout\))) # (!\IRX|D[7]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~0_combout\,
	datab => \inst1|Yupa[3]~1_combout\,
	datac => \inst1|Yupa[3]~2_combout\,
	datad => \IRX|D[7]~17_combout\,
	combout => \inst1|Yupa[3]~3_combout\);

-- Location: LCCOMB_X17_Y20_N16
\ACCA|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[3]~4_combout\ = (\inst14|inst13|EA\(1) & (\ACCA|C[3]~4_combout\)) # (!\inst14|inst13|EA\(1) & ((\inst1|Yupa[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|C[3]~4_combout\,
	datab => \inst14|inst13|EA\(1),
	datad => \inst1|Yupa[3]~3_combout\,
	combout => \ACCA|data_out[3]~4_combout\);

-- Location: FF_X17_Y20_N17
\ACCA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[3]~4_combout\,
	asdata => \IRX|C[3]~23_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(3));

-- Location: LCCOMB_X14_Y20_N20
\IRX|C[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[3]~19_combout\ = (\ACCB|B[7]~0_combout\ & ((\ACCA|data_out\(3)) # ((\ACCA|B[7]~0_combout\)))) # (!\ACCB|B[7]~0_combout\ & (\ACCB|data_out\(3) & ((\ACCA|data_out\(3)) # (\ACCA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|B[7]~0_combout\,
	datab => \ACCA|data_out\(3),
	datac => \ACCB|data_out\(3),
	datad => \ACCA|B[7]~0_combout\,
	combout => \IRX|C[3]~19_combout\);

-- Location: LCCOMB_X19_Y20_N16
\PC|data_out[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[11]~4_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[3]~23_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(11),
	datad => \IRX|C[3]~23_combout\,
	combout => \PC|data_out[11]~4_combout\);

-- Location: LCCOMB_X20_Y20_N22
\PC|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~38_combout\ = (\PC|data_out\(11) & (!\PC|Add0~37\)) # (!\PC|data_out\(11) & ((\PC|Add0~37\) # (GND)))
-- \PC|Add0~39\ = CARRY((!\PC|Add0~37\) # (!\PC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(11),
	datad => VCC,
	cin => \PC|Add0~37\,
	combout => \PC|Add0~38_combout\,
	cout => \PC|Add0~39\);

-- Location: FF_X19_Y20_N17
\PC|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[11]~4_combout\,
	asdata => \PC|Add0~38_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(11));

-- Location: LCCOMB_X19_Y20_N14
\IRX|C[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[3]~20_combout\ = (\AUX|TRI_STATE_C~0_combout\ & (((\PC|TRI_STATE_D~0_combout\) # (\PC|data_out\(11))))) # (!\AUX|TRI_STATE_C~0_combout\ & (\AUX|data_out\(11) & ((\PC|TRI_STATE_D~0_combout\) # (\PC|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|TRI_STATE_C~0_combout\,
	datab => \AUX|data_out\(11),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \PC|data_out\(11),
	combout => \IRX|C[3]~20_combout\);

-- Location: LCCOMB_X19_Y17_N28
\IRX|C[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[3]~21_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst6|data[3]~reg0_q\) # ((!\inst6|data[7]~en_q\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[3]~reg0_q\,
	datab => \inst14|inst13|nEX~q\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|C[3]~21_combout\);

-- Location: LCCOMB_X19_Y17_N16
\IRX|C[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[3]~22_combout\ = (\IRX|C[3]~21_combout\ & ((\inst1|Yupa_interno\(3)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Yupa_interno\(3),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \IRX|C[3]~21_combout\,
	combout => \IRX|C[3]~22_combout\);

-- Location: LCCOMB_X19_Y20_N28
\IRX|C[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[3]~23_combout\ = ((\IRX|C[3]~19_combout\ & (\IRX|C[3]~20_combout\ & \IRX|C[3]~22_combout\))) # (!\IRX|C[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[3]~19_combout\,
	datab => \IRX|C[7]~5_combout\,
	datac => \IRX|C[3]~20_combout\,
	datad => \IRX|C[3]~22_combout\,
	combout => \IRX|C[3]~23_combout\);

-- Location: LCCOMB_X16_Y20_N18
\ACCB|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[3]~4_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[3]~4_combout\)) # (!\inst14|inst13|EB\(0) & ((\IRX|C[3]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \ACCB|C[3]~4_combout\,
	datad => \IRX|C[3]~23_combout\,
	combout => \ACCB|data_out[3]~4_combout\);

-- Location: FF_X16_Y20_N19
\ACCB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[3]~4_combout\,
	asdata => \inst1|Yupa[3]~3_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(3));

-- Location: LCCOMB_X14_Y20_N26
\ACCB|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[3]~4_combout\ = (((\ACCB|data_out\(3)) # (\inst14|inst13|nWB~q\)) # (!\inst14|inst13|EB\(0))) # (!\inst14|inst13|EA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|EB\(0),
	datac => \ACCB|data_out\(3),
	datad => \inst14|inst13|nWB~q\,
	combout => \ACCB|C[3]~4_combout\);

-- Location: LCCOMB_X15_Y21_N16
\inst1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(1),
	datab => \inst14|inst13|ACCSEC~q\,
	datad => \ACCB|C[3]~4_combout\,
	combout => \inst1|Add0~4_combout\);

-- Location: FF_X16_Y21_N17
\inst1|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~18_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(4));

-- Location: LCCOMB_X19_Y17_N20
\IRX|D[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[4]~29_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Banderas\(4)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datab => \inst14|inst13|nEX~q\,
	datad => \inst1|Banderas\(4),
	combout => \IRX|D[4]~29_combout\);

-- Location: FF_X19_Y17_N19
\inst6|data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \inst6|mem~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[4]~reg0_q\);

-- Location: LCCOMB_X19_Y17_N2
\IRX|C[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[4]~17_combout\ = (\IRX|D[4]~29_combout\ & (((\inst6|data[4]~reg0_q\) # (!\inst6|data[7]~en_q\)) # (!\inst14|inst13|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[4]~29_combout\,
	datab => \inst14|inst13|BD~q\,
	datac => \inst6|data[7]~en_q\,
	datad => \inst6|data[4]~reg0_q\,
	combout => \IRX|C[4]~17_combout\);

-- Location: LCCOMB_X14_Y20_N18
\IRX|C[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[4]~15_combout\ = (\ACCB|B[7]~0_combout\ & (((\ACCA|data_out\(4)) # (\ACCA|B[7]~0_combout\)))) # (!\ACCB|B[7]~0_combout\ & (\ACCB|data_out\(4) & ((\ACCA|data_out\(4)) # (\ACCA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|B[7]~0_combout\,
	datab => \ACCB|data_out\(4),
	datac => \ACCA|data_out\(4),
	datad => \ACCA|B[7]~0_combout\,
	combout => \IRX|C[4]~15_combout\);

-- Location: LCCOMB_X15_Y20_N22
\IRX|C[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[4]~16_combout\ = (\PC|data_out\(12) & ((\AUX|TRI_STATE_C~0_combout\) # ((\AUX|data_out\(12))))) # (!\PC|data_out\(12) & (\PC|TRI_STATE_D~0_combout\ & ((\AUX|TRI_STATE_C~0_combout\) # (\AUX|data_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(12),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \AUX|data_out\(12),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[4]~16_combout\);

-- Location: LCCOMB_X15_Y20_N28
\IRX|C[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[4]~18_combout\ = ((\IRX|C[4]~17_combout\ & (\IRX|C[4]~15_combout\ & \IRX|C[4]~16_combout\))) # (!\IRX|C[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[4]~17_combout\,
	datab => \IRX|C[4]~15_combout\,
	datac => \IRX|C[4]~16_combout\,
	datad => \IRX|C[7]~5_combout\,
	combout => \IRX|C[4]~18_combout\);

-- Location: LCCOMB_X15_Y20_N26
\PC|data_out[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[12]~3_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[4]~18_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(12),
	datad => \IRX|C[4]~18_combout\,
	combout => \PC|data_out[12]~3_combout\);

-- Location: LCCOMB_X20_Y20_N24
\PC|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~40_combout\ = (\PC|data_out\(12) & (\PC|Add0~39\ $ (GND))) # (!\PC|data_out\(12) & (!\PC|Add0~39\ & VCC))
-- \PC|Add0~41\ = CARRY((\PC|data_out\(12) & !\PC|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(12),
	datad => VCC,
	cin => \PC|Add0~39\,
	combout => \PC|Add0~40_combout\,
	cout => \PC|Add0~41\);

-- Location: FF_X15_Y20_N27
\PC|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[12]~3_combout\,
	asdata => \PC|Add0~40_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(12));

-- Location: LCCOMB_X20_Y20_N26
\PC|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~42_combout\ = (\PC|data_out\(13) & (!\PC|Add0~41\)) # (!\PC|data_out\(13) & ((\PC|Add0~41\) # (GND)))
-- \PC|Add0~43\ = CARRY((!\PC|Add0~41\) # (!\PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(13),
	datad => VCC,
	cin => \PC|Add0~41\,
	combout => \PC|Add0~42_combout\,
	cout => \PC|Add0~43\);

-- Location: FF_X15_Y20_N13
\PC|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[13]~2_combout\,
	asdata => \PC|Add0~42_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(13));

-- Location: LCCOMB_X15_Y20_N16
\IRX|C[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[5]~12_combout\ = (\PC|data_out\(13) & ((\AUX|TRI_STATE_C~0_combout\) # ((\AUX|data_out\(13))))) # (!\PC|data_out\(13) & (\PC|TRI_STATE_D~0_combout\ & ((\AUX|TRI_STATE_C~0_combout\) # (\AUX|data_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(13),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \AUX|data_out\(13),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[5]~12_combout\);

-- Location: LCCOMB_X15_Y19_N24
\IRX|C[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[5]~11_combout\ = (\ACCB|B[7]~0_combout\ & ((\ACCA|B[7]~0_combout\) # ((\ACCA|data_out\(5))))) # (!\ACCB|B[7]~0_combout\ & (\ACCB|data_out\(5) & ((\ACCA|B[7]~0_combout\) # (\ACCA|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|B[7]~0_combout\,
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(5),
	datad => \ACCA|data_out\(5),
	combout => \IRX|C[5]~11_combout\);

-- Location: LCCOMB_X18_Y20_N18
\inst6|mem~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~23_combout\ = (!\inst|valor_interno\(1) & \inst|valor_interno\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|valor_interno\(1),
	datad => \inst|valor_interno\(2),
	combout => \inst6|mem~23_combout\);

-- Location: LCCOMB_X18_Y20_N4
\inst6|mem~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~24_combout\ = (\inst|valor_interno\(0) & (!\inst|valor_interno\(3) & (\inst6|mem~19_combout\ & \inst6|mem~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(0),
	datab => \inst|valor_interno\(3),
	datac => \inst6|mem~19_combout\,
	datad => \inst6|mem~23_combout\,
	combout => \inst6|mem~24_combout\);

-- Location: FF_X18_Y20_N11
\inst6|data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \inst6|mem~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[5]~reg0_q\);

-- Location: LCCOMB_X18_Y20_N0
\IRX|C[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[5]~13_combout\ = (\IRX|D[5]~25_combout\ & ((\inst6|data[5]~reg0_q\) # ((!\inst6|data[7]~en_q\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[5]~reg0_q\,
	datab => \IRX|D[5]~25_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|C[5]~13_combout\);

-- Location: LCCOMB_X16_Y20_N28
\IRX|C[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[5]~14_combout\ = ((\IRX|C[5]~12_combout\ & (\IRX|C[5]~11_combout\ & \IRX|C[5]~13_combout\))) # (!\IRX|C[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[5]~12_combout\,
	datab => \IRX|C[5]~11_combout\,
	datac => \IRX|C[5]~13_combout\,
	datad => \IRX|C[7]~5_combout\,
	combout => \IRX|C[5]~14_combout\);

-- Location: FF_X17_Y20_N19
\ACCA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCA|data_out[5]~2_combout\,
	asdata => \IRX|C[5]~14_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(5));

-- Location: LCCOMB_X17_Y20_N22
\ACCA|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[5]~2_combout\ = (\inst14|inst13|nWA~q\) # ((\ACCA|data_out\(5)) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \ACCA|data_out\(5),
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[5]~2_combout\);

-- Location: FF_X16_Y21_N19
\inst1|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~20_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(5));

-- Location: LCCOMB_X17_Y19_N8
\IRX|D[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[5]~25_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(5)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datac => \inst1|Yupa_interno\(5),
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[5]~25_combout\);

-- Location: LCCOMB_X17_Y19_N30
\IRX|D[5]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[5]~46_combout\ = (\IRX|D[5]~25_combout\ & ((\inst14|inst13|BD~q\) # ((\inst6|data[5]~reg0_q\) # (!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \IRX|D[5]~25_combout\,
	datad => \inst6|data[5]~reg0_q\,
	combout => \IRX|D[5]~46_combout\);

-- Location: LCCOMB_X17_Y19_N24
\IRX|D[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[5]~23_combout\ = (\ACCA|data_out\(5) & ((\AUX|data_out\(5)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(5) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(5)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \AUX|data_out\(5),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \IRX|D[5]~23_combout\);

-- Location: LCCOMB_X17_Y19_N22
\IRX|D[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[5]~24_combout\ = (\ACCB|data_out\(5) & ((\PC|data_out\(5)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(5) & (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(5)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(5),
	datab => \PC|data_out\(5),
	datac => \ACCB|TRI_STATE~0_combout\,
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|D[5]~24_combout\);

-- Location: LCCOMB_X17_Y19_N10
\IRX|D[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[5]~26_combout\ = ((\IRX|D[5]~46_combout\ & (\IRX|D[5]~23_combout\ & \IRX|D[5]~24_combout\))) # (!\IRX|D[7]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[5]~46_combout\,
	datab => \IRX|D[5]~23_combout\,
	datac => \IRX|D[5]~24_combout\,
	datad => \IRX|D[7]~17_combout\,
	combout => \IRX|D[5]~26_combout\);

-- Location: LCCOMB_X19_Y18_N16
\PC|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~50_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[5]~26_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~26_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~26_combout\,
	datad => \IRX|D[5]~26_combout\,
	combout => \PC|Add0~50_combout\);

-- Location: FF_X19_Y18_N17
\PC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~50_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(5));

-- Location: LCCOMB_X19_Y18_N6
\PC|Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~49_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[6]~22_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~28_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[6]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~28_combout\,
	datad => \IRX|D[6]~22_combout\,
	combout => \PC|Add0~49_combout\);

-- Location: FF_X19_Y18_N7
\PC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~49_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(6));

-- Location: LCCOMB_X19_Y18_N2
\inst|valor_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|valor_interno[6]~feeder_combout\ = \PC|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(6),
	combout => \inst|valor_interno[6]~feeder_combout\);

-- Location: FF_X19_Y18_N3
\inst|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(6));

-- Location: LCCOMB_X19_Y18_N18
\inst6|mem~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~19_combout\ = (!\inst|valor_interno\(6) & (!\inst|valor_interno\(7) & (!\inst|valor_interno\(4) & !\inst|valor_interno\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(6),
	datab => \inst|valor_interno\(7),
	datac => \inst|valor_interno\(4),
	datad => \inst|valor_interno\(5),
	combout => \inst6|mem~19_combout\);

-- Location: LCCOMB_X18_Y18_N26
\inst6|mem~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~20_combout\ = (!\inst|valor_interno\(3) & (!\inst|valor_interno\(2) & (!\inst|valor_interno\(0) & \inst6|mem~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(3),
	datab => \inst|valor_interno\(2),
	datac => \inst|valor_interno\(0),
	datad => \inst6|mem~19_combout\,
	combout => \inst6|mem~20_combout\);

-- Location: FF_X18_Y18_N13
\inst6|data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	asdata => \inst6|mem~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[7]~reg0_q\);

-- Location: FF_X16_Y21_N29
\inst1|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~24_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(2));

-- Location: LCCOMB_X18_Y18_N12
\IRX|D[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~14_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Banderas\(2)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Banderas\(2),
	datab => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[7]~14_combout\);

-- Location: LCCOMB_X18_Y18_N30
\IRX|D[7]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~44_combout\ = (\IRX|D[7]~14_combout\ & ((\inst6|data[7]~reg0_q\) # ((\inst14|inst13|BD~q\) # (!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~reg0_q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[7]~14_combout\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|D[7]~44_combout\);

-- Location: LCCOMB_X19_Y18_N24
\IRX|D[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~13_combout\ = (\ACCB|data_out\(7) & ((\PC|data_out\(7)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(7) & (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(7)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \PC|data_out\(7),
	datac => \ACCB|TRI_STATE~0_combout\,
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|D[7]~13_combout\);

-- Location: LCCOMB_X17_Y19_N28
\IRX|D[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~12_combout\ = (\ACCA|TRI_STATE~0_combout\ & (\ACCA|data_out\(7) & ((\AUX|data_out\(7)) # (\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(7)) # ((\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|TRI_STATE~0_combout\,
	datab => \AUX|data_out\(7),
	datac => \ACCA|data_out\(7),
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \IRX|D[7]~12_combout\);

-- Location: LCCOMB_X18_Y17_N26
\IRX|D[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~18_combout\ = ((\IRX|D[7]~44_combout\ & (\IRX|D[7]~13_combout\ & \IRX|D[7]~12_combout\))) # (!\IRX|D[7]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[7]~44_combout\,
	datab => \IRX|D[7]~13_combout\,
	datac => \IRX|D[7]~12_combout\,
	datad => \IRX|D[7]~17_combout\,
	combout => \IRX|D[7]~18_combout\);

-- Location: LCCOMB_X17_Y19_N18
\AUX|data_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~8_combout\ = (\inst14|inst13|BD~q\ & ((\AUX|data_out\(8)))) # (!\inst14|inst13|BD~q\ & (\IRX|D[7]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datac => \IRX|D[7]~18_combout\,
	datad => \AUX|data_out\(8),
	combout => \AUX|data_out~8_combout\);

-- Location: FF_X17_Y19_N19
\AUX|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(7));

-- Location: LCCOMB_X17_Y19_N20
\AUX|data_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~9_combout\ = (\inst14|inst13|BD~q\ & ((\AUX|data_out\(7)))) # (!\inst14|inst13|BD~q\ & (\IRX|D[6]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datac => \IRX|D[6]~22_combout\,
	datad => \AUX|data_out\(7),
	combout => \AUX|data_out~9_combout\);

-- Location: FF_X17_Y19_N21
\AUX|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~9_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(6));

-- Location: LCCOMB_X16_Y19_N24
\IRX|D[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[6]~19_combout\ = (\AUX|data_out\(6) & (((\ACCA|data_out\(6))) # (!\ACCA|TRI_STATE~0_combout\))) # (!\AUX|data_out\(6) & (\AUX|TRI_STATE_D~0_combout\ & ((\ACCA|data_out\(6)) # (!\ACCA|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(6),
	datab => \ACCA|TRI_STATE~0_combout\,
	datac => \ACCA|data_out\(6),
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \IRX|D[6]~19_combout\);

-- Location: LCCOMB_X19_Y18_N30
\IRX|D[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[6]~20_combout\ = (\PC|data_out\(6) & ((\ACCB|data_out\(6)) # ((!\ACCB|TRI_STATE~0_combout\)))) # (!\PC|data_out\(6) & (\PC|TRI_STATE_D~0_combout\ & ((\ACCB|data_out\(6)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(6),
	datab => \ACCB|data_out\(6),
	datac => \ACCB|TRI_STATE~0_combout\,
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|D[6]~20_combout\);

-- Location: LCCOMB_X18_Y20_N24
\inst6|mem~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~21_combout\ = (\inst|valor_interno\(1)) # ((\inst|valor_interno\(3)) # (\inst|valor_interno\(0) $ (\inst|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(0),
	datab => \inst|valor_interno\(1),
	datac => \inst|valor_interno\(3),
	datad => \inst|valor_interno\(2),
	combout => \inst6|mem~21_combout\);

-- Location: LCCOMB_X18_Y20_N30
\inst6|mem~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~22_combout\ = (\inst6|mem~19_combout\ & !\inst6|mem~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mem~19_combout\,
	datad => \inst6|mem~21_combout\,
	combout => \inst6|mem~22_combout\);

-- Location: FF_X18_Y20_N31
\inst6|data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst6|mem~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[6]~reg0_q\);

-- Location: FF_X16_Y21_N21
\inst1|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Add0~22_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(6));

-- Location: LCCOMB_X18_Y20_N16
\IRX|D[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[6]~21_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(6)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|nDUPA~q\,
	datac => \inst1|Yupa_interno\(6),
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[6]~21_combout\);

-- Location: LCCOMB_X18_Y20_N2
\IRX|D[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[6]~45_combout\ = (\IRX|D[6]~21_combout\ & ((\inst6|data[6]~reg0_q\) # ((\inst14|inst13|BD~q\) # (!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[6]~reg0_q\,
	datab => \IRX|D[6]~21_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|D[6]~45_combout\);

-- Location: LCCOMB_X18_Y17_N16
\IRX|D[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[6]~22_combout\ = ((\IRX|D[6]~19_combout\ & (\IRX|D[6]~20_combout\ & \IRX|D[6]~45_combout\))) # (!\IRX|D[7]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[6]~19_combout\,
	datab => \IRX|D[6]~20_combout\,
	datac => \IRX|D[6]~45_combout\,
	datad => \IRX|D[7]~17_combout\,
	combout => \IRX|D[6]~22_combout\);

-- Location: FF_X14_Y20_N29
\ACCB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[6]~1_combout\,
	asdata => \IRX|D[6]~22_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(6));

-- Location: LCCOMB_X14_Y20_N8
\IRX|C[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[6]~7_combout\ = (\ACCB|B[7]~0_combout\ & (((\ACCA|data_out\(6)) # (\ACCA|B[7]~0_combout\)))) # (!\ACCB|B[7]~0_combout\ & (\ACCB|data_out\(6) & ((\ACCA|data_out\(6)) # (\ACCA|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|B[7]~0_combout\,
	datab => \ACCB|data_out\(6),
	datac => \ACCA|data_out\(6),
	datad => \ACCA|B[7]~0_combout\,
	combout => \IRX|C[6]~7_combout\);

-- Location: LCCOMB_X15_Y20_N4
\IRX|C[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[6]~8_combout\ = (\AUX|data_out\(14) & (((\PC|data_out\(14)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(14) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(14)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(14),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(14),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[6]~8_combout\);

-- Location: LCCOMB_X18_Y20_N12
\IRX|C[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[6]~9_combout\ = (\IRX|D[6]~21_combout\ & ((\inst6|data[6]~reg0_q\) # ((!\inst6|data[7]~en_q\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[6]~reg0_q\,
	datab => \IRX|D[6]~21_combout\,
	datac => \inst14|inst13|BD~q\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|C[6]~9_combout\);

-- Location: LCCOMB_X15_Y20_N6
\IRX|C[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[6]~10_combout\ = ((\IRX|C[6]~7_combout\ & (\IRX|C[6]~8_combout\ & \IRX|C[6]~9_combout\))) # (!\IRX|C[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[6]~7_combout\,
	datab => \IRX|C[6]~8_combout\,
	datac => \IRX|C[6]~9_combout\,
	datad => \IRX|C[7]~5_combout\,
	combout => \IRX|C[6]~10_combout\);

-- Location: LCCOMB_X15_Y20_N18
\PC|data_out[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[14]~1_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[6]~10_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|PC\(2),
	datac => \PC|data_out\(14),
	datad => \IRX|C[6]~10_combout\,
	combout => \PC|data_out[14]~1_combout\);

-- Location: LCCOMB_X20_Y20_N28
\PC|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~44_combout\ = (\PC|data_out\(14) & (\PC|Add0~43\ $ (GND))) # (!\PC|data_out\(14) & (!\PC|Add0~43\ & VCC))
-- \PC|Add0~45\ = CARRY((\PC|data_out\(14) & !\PC|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(14),
	datad => VCC,
	cin => \PC|Add0~43\,
	combout => \PC|Add0~44_combout\,
	cout => \PC|Add0~45\);

-- Location: FF_X15_Y20_N19
\PC|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[14]~1_combout\,
	asdata => \PC|Add0~44_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(14));

-- Location: LCCOMB_X20_Y20_N30
\PC|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~46_combout\ = \PC|Add0~45\ $ (\PC|data_out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(15),
	cin => \PC|Add0~45\,
	combout => \PC|Add0~46_combout\);

-- Location: FF_X15_Y20_N21
\PC|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[15]~0_combout\,
	asdata => \PC|Add0~46_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(15));

-- Location: LCCOMB_X15_Y20_N24
\IRX|C[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~1_combout\ = (\PC|TRI_STATE_D~0_combout\ & (((\AUX|data_out\(15)) # (\AUX|TRI_STATE_C~0_combout\)))) # (!\PC|TRI_STATE_D~0_combout\ & (\PC|data_out\(15) & ((\AUX|data_out\(15)) # (\AUX|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datab => \PC|data_out\(15),
	datac => \AUX|data_out\(15),
	datad => \AUX|TRI_STATE_C~0_combout\,
	combout => \IRX|C[7]~1_combout\);

-- Location: LCCOMB_X19_Y20_N12
\IRX|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~0_combout\ = (\ACCA|data_out\(7) & ((\ACCB|B[7]~0_combout\) # ((\ACCB|data_out\(7))))) # (!\ACCA|data_out\(7) & (\ACCA|B[7]~0_combout\ & ((\ACCB|B[7]~0_combout\) # (\ACCB|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \ACCB|B[7]~0_combout\,
	datac => \ACCB|data_out\(7),
	datad => \ACCA|B[7]~0_combout\,
	combout => \IRX|C[7]~0_combout\);

-- Location: LCCOMB_X18_Y18_N2
\IRX|C[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~2_combout\ = (\IRX|D[7]~14_combout\ & ((\inst6|data[7]~reg0_q\) # ((!\inst6|data[7]~en_q\) # (!\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~reg0_q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[7]~14_combout\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|C[7]~2_combout\);

-- Location: LCCOMB_X15_Y20_N10
\IRX|C[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~6_combout\ = ((\IRX|C[7]~1_combout\ & (\IRX|C[7]~0_combout\ & \IRX|C[7]~2_combout\))) # (!\IRX|C[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[7]~5_combout\,
	datab => \IRX|C[7]~1_combout\,
	datac => \IRX|C[7]~0_combout\,
	datad => \IRX|C[7]~2_combout\,
	combout => \IRX|C[7]~6_combout\);

-- Location: LCCOMB_X15_Y20_N8
\AUX|data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~0_combout\ = (\inst14|inst13|RA\(0)) # (\IRX|C[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|RA\(0),
	datad => \IRX|C[7]~6_combout\,
	combout => \AUX|data_out~0_combout\);

-- Location: FF_X15_Y20_N9
\AUX|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(15));

-- Location: LCCOMB_X15_Y20_N30
\AUX|data_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~1_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(15))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|RA\(0),
	datac => \AUX|data_out\(15),
	datad => \IRX|C[6]~10_combout\,
	combout => \AUX|data_out~1_combout\);

-- Location: FF_X15_Y20_N31
\AUX|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(14));

-- Location: LCCOMB_X15_Y20_N0
\AUX|data_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~2_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(14))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(14),
	datab => \inst14|inst13|RA\(0),
	datad => \IRX|C[5]~14_combout\,
	combout => \AUX|data_out~2_combout\);

-- Location: FF_X15_Y20_N1
\AUX|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(13));

-- Location: LCCOMB_X15_Y20_N14
\AUX|data_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~3_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(13))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|RA\(0),
	datac => \AUX|data_out\(13),
	datad => \IRX|C[4]~18_combout\,
	combout => \AUX|data_out~3_combout\);

-- Location: FF_X15_Y20_N15
\AUX|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(12));

-- Location: LCCOMB_X19_Y20_N26
\AUX|data_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~4_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(12))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[3]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(12),
	datac => \inst14|inst13|RA\(0),
	datad => \IRX|C[3]~23_combout\,
	combout => \AUX|data_out~4_combout\);

-- Location: FF_X19_Y20_N27
\AUX|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(11));

-- Location: LCCOMB_X19_Y20_N0
\AUX|data_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~5_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(11))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[2]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(11),
	datab => \IRX|C[2]~27_combout\,
	datac => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~5_combout\);

-- Location: FF_X19_Y20_N1
\AUX|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(10));

-- Location: LCCOMB_X19_Y20_N2
\AUX|data_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~6_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(10))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[1]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \AUX|data_out\(10),
	datac => \IRX|C[1]~31_combout\,
	combout => \AUX|data_out~6_combout\);

-- Location: FF_X19_Y20_N3
\AUX|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(9));

-- Location: LCCOMB_X17_Y19_N12
\AUX|data_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~7_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(9))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \AUX|data_out\(9),
	datad => \IRX|C[0]~35_combout\,
	combout => \AUX|data_out~7_combout\);

-- Location: FF_X17_Y19_N13
\AUX|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(8));

-- Location: LCCOMB_X19_Y18_N8
\IRX|C[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[0]~33_combout\ = (\AUX|data_out\(8) & ((\PC|TRI_STATE_D~0_combout\) # ((\PC|data_out\(8))))) # (!\AUX|data_out\(8) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|TRI_STATE_D~0_combout\) # (\PC|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(8),
	datab => \PC|TRI_STATE_D~0_combout\,
	datac => \AUX|TRI_STATE_C~0_combout\,
	datad => \PC|data_out\(8),
	combout => \IRX|C[0]~33_combout\);

-- Location: FF_X16_Y21_N1
\inst1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~10_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(0));

-- Location: LCCOMB_X17_Y18_N0
\IRX|D[0]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[0]~42_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Q\(0)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datac => \inst14|inst13|nEX~q\,
	datad => \inst1|Q\(0),
	combout => \IRX|D[0]~42_combout\);

-- Location: LCCOMB_X18_Y20_N28
\inst6|mem~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~29_combout\ = (!\inst|valor_interno\(3) & ((\inst|valor_interno\(0) & ((!\inst|valor_interno\(2)))) # (!\inst|valor_interno\(0) & (!\inst|valor_interno\(1) & \inst|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(0),
	datab => \inst|valor_interno\(1),
	datac => \inst|valor_interno\(3),
	datad => \inst|valor_interno\(2),
	combout => \inst6|mem~29_combout\);

-- Location: LCCOMB_X18_Y18_N0
\inst6|mem~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~30_combout\ = (\inst6|mem~19_combout\ & \inst6|mem~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mem~19_combout\,
	datad => \inst6|mem~29_combout\,
	combout => \inst6|mem~30_combout\);

-- Location: FF_X18_Y18_N1
\inst6|data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst6|mem~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[0]~reg0_q\);

-- Location: LCCOMB_X17_Y18_N18
\IRX|C[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[0]~34_combout\ = (\IRX|D[0]~42_combout\ & (((\inst6|data[0]~reg0_q\) # (!\inst6|data[7]~en_q\)) # (!\inst14|inst13|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \IRX|D[0]~42_combout\,
	datac => \inst6|data[0]~reg0_q\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|C[0]~34_combout\);

-- Location: LCCOMB_X17_Y18_N8
\IRX|C[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[0]~32_combout\ = (\ACCA|data_out\(0) & ((\ACCB|data_out\(0)) # ((\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(0) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(0)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \ACCB|data_out\(0),
	datac => \ACCB|B[7]~0_combout\,
	datad => \ACCA|B[7]~0_combout\,
	combout => \IRX|C[0]~32_combout\);

-- Location: LCCOMB_X17_Y18_N28
\IRX|C[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[0]~35_combout\ = ((\IRX|C[0]~33_combout\ & (\IRX|C[0]~34_combout\ & \IRX|C[0]~32_combout\))) # (!\IRX|C[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[0]~33_combout\,
	datab => \IRX|C[0]~34_combout\,
	datac => \IRX|C[0]~32_combout\,
	datad => \IRX|C[7]~5_combout\,
	combout => \IRX|C[0]~35_combout\);

-- Location: LCCOMB_X16_Y20_N4
\ACCB|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~7_combout\ = (\inst14|inst13|EB\(0) & (\ACCB|C[0]~7_combout\)) # (!\inst14|inst13|EB\(0) & ((\IRX|C[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|C[0]~7_combout\,
	datab => \inst14|inst13|EB\(0),
	datad => \IRX|C[0]~35_combout\,
	combout => \ACCB|data_out[0]~7_combout\);

-- Location: FF_X16_Y20_N5
\ACCB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[0]~7_combout\,
	asdata => \IRX|D[0]~43_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(0));

-- Location: LCCOMB_X17_Y18_N26
\IRX|D[0]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[0]~41_combout\ = (\PC|TRI_STATE_D~0_combout\ & ((\ACCB|data_out\(0)) # ((!\ACCB|TRI_STATE~0_combout\)))) # (!\PC|TRI_STATE_D~0_combout\ & (\PC|data_out\(0) & ((\ACCB|data_out\(0)) # (!\ACCB|TRI_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datab => \ACCB|data_out\(0),
	datac => \PC|data_out\(0),
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[0]~41_combout\);

-- Location: LCCOMB_X17_Y18_N24
\AUX|data_out~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~15_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(1))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[0]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \AUX|data_out\(1),
	datad => \IRX|D[0]~43_combout\,
	combout => \AUX|data_out~15_combout\);

-- Location: FF_X17_Y18_N25
\AUX|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AUX|data_out~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(0));

-- Location: LCCOMB_X17_Y18_N16
\IRX|D[0]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[0]~40_combout\ = (\ACCA|data_out\(0) & ((\AUX|data_out\(0)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(0) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(0)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \AUX|data_out\(0),
	datac => \ACCA|TRI_STATE~0_combout\,
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \IRX|D[0]~40_combout\);

-- Location: LCCOMB_X17_Y18_N22
\IRX|D[0]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[0]~49_combout\ = (\IRX|D[0]~42_combout\ & ((\inst14|inst13|BD~q\) # ((\inst6|data[0]~reg0_q\) # (!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \IRX|D[0]~42_combout\,
	datac => \inst6|data[0]~reg0_q\,
	datad => \inst6|data[7]~en_q\,
	combout => \IRX|D[0]~49_combout\);

-- Location: LCCOMB_X17_Y18_N2
\IRX|D[0]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[0]~43_combout\ = ((\IRX|D[0]~41_combout\ & (\IRX|D[0]~40_combout\ & \IRX|D[0]~49_combout\))) # (!\IRX|D[7]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[0]~41_combout\,
	datab => \IRX|D[0]~40_combout\,
	datac => \IRX|D[0]~49_combout\,
	datad => \IRX|D[7]~17_combout\,
	combout => \IRX|D[0]~43_combout\);

-- Location: LCCOMB_X17_Y18_N20
\PC|Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~55_combout\ = (\inst14|inst13|PC\(2) & (((\IRX|D[0]~43_combout\)))) # (!\inst14|inst13|PC\(2) & ((\inst14|inst13|PC\(0) & (\PC|Add0~16_combout\)) # (!\inst14|inst13|PC\(0) & ((\IRX|D[0]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datab => \PC|Add0~16_combout\,
	datac => \inst14|inst13|PC\(0),
	datad => \IRX|D[0]~43_combout\,
	combout => \PC|Add0~55_combout\);

-- Location: FF_X17_Y18_N21
\PC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~55_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(0));

-- Location: LCCOMB_X20_Y20_N2
\PC|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~18_combout\ = (\PC|data_out\(1) & (!\PC|Add0~17\)) # (!\PC|data_out\(1) & ((\PC|Add0~17\) # (GND)))
-- \PC|Add0~19\ = CARRY((!\PC|Add0~17\) # (!\PC|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(1),
	datad => VCC,
	cin => \PC|Add0~17\,
	combout => \PC|Add0~18_combout\,
	cout => \PC|Add0~19\);

-- Location: LCCOMB_X19_Y18_N26
\PC|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~54_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[1]~39_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~18_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~18_combout\,
	datad => \IRX|D[1]~39_combout\,
	combout => \PC|Add0~54_combout\);

-- Location: FF_X19_Y18_N27
\PC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~54_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(1));

-- Location: LCCOMB_X20_Y20_N4
\PC|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~20_combout\ = (\PC|data_out\(2) & (\PC|Add0~19\ $ (GND))) # (!\PC|data_out\(2) & (!\PC|Add0~19\ & VCC))
-- \PC|Add0~21\ = CARRY((\PC|data_out\(2) & !\PC|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(2),
	datad => VCC,
	cin => \PC|Add0~19\,
	combout => \PC|Add0~20_combout\,
	cout => \PC|Add0~21\);

-- Location: LCCOMB_X19_Y18_N12
\PC|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~53_combout\ = (\inst14|inst13|PC\(2) & (((\IRX|D[2]~35_combout\)))) # (!\inst14|inst13|PC\(2) & ((\inst14|inst13|PC\(0) & (\PC|Add0~20_combout\)) # (!\inst14|inst13|PC\(0) & ((\IRX|D[2]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Add0~20_combout\,
	datab => \inst14|inst13|PC\(2),
	datac => \inst14|inst13|PC\(0),
	datad => \IRX|D[2]~35_combout\,
	combout => \PC|Add0~53_combout\);

-- Location: FF_X19_Y18_N13
\PC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~53_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(2));

-- Location: LCCOMB_X20_Y20_N6
\PC|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~22_combout\ = (\PC|data_out\(3) & (!\PC|Add0~21\)) # (!\PC|data_out\(3) & ((\PC|Add0~21\) # (GND)))
-- \PC|Add0~23\ = CARRY((!\PC|Add0~21\) # (!\PC|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(3),
	datad => VCC,
	cin => \PC|Add0~21\,
	combout => \PC|Add0~22_combout\,
	cout => \PC|Add0~23\);

-- Location: LCCOMB_X17_Y18_N14
\PC|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~52_combout\ = (\inst14|inst13|PC\(2) & (((\inst1|Yupa[3]~3_combout\)))) # (!\inst14|inst13|PC\(2) & ((\inst14|inst13|PC\(0) & (\PC|Add0~22_combout\)) # (!\inst14|inst13|PC\(0) & ((\inst1|Yupa[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datab => \PC|Add0~22_combout\,
	datac => \inst14|inst13|PC\(0),
	datad => \inst1|Yupa[3]~3_combout\,
	combout => \PC|Add0~52_combout\);

-- Location: FF_X17_Y18_N15
\PC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~52_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(3));

-- Location: LCCOMB_X19_Y18_N10
\PC|Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~51_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & (\IRX|D[4]~31_combout\)) # (!\inst14|inst13|PC\(2) & ((\PC|Add0~24_combout\))))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \IRX|D[4]~31_combout\,
	datad => \PC|Add0~24_combout\,
	combout => \PC|Add0~51_combout\);

-- Location: FF_X19_Y18_N11
\PC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|Add0~51_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(4));

-- Location: LCCOMB_X18_Y17_N30
\IRX|D[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[4]~28_combout\ = (\ACCB|TRI_STATE~0_combout\ & (\ACCB|data_out\(4) & ((\PC|data_out\(4)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(4)) # ((\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|TRI_STATE~0_combout\,
	datab => \PC|data_out\(4),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCB|data_out\(4),
	combout => \IRX|D[4]~28_combout\);

-- Location: LCCOMB_X18_Y19_N14
\IRX|D[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[4]~27_combout\ = (\ACCA|TRI_STATE~0_combout\ & (\ACCA|data_out\(4) & ((\AUX|data_out\(4)) # (\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|TRI_STATE~0_combout\ & (((\AUX|data_out\(4)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|TRI_STATE~0_combout\,
	datab => \ACCA|data_out\(4),
	datac => \AUX|data_out\(4),
	datad => \AUX|TRI_STATE_D~0_combout\,
	combout => \IRX|D[4]~27_combout\);

-- Location: LCCOMB_X19_Y17_N12
\IRX|D[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[4]~30_combout\ = (\IRX|D[4]~29_combout\ & ((\inst6|data[4]~reg0_q\) # ((\inst14|inst13|BD~q\) # (!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[4]~reg0_q\,
	datab => \inst6|data[7]~en_q\,
	datac => \IRX|D[4]~29_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \IRX|D[4]~30_combout\);

-- Location: LCCOMB_X18_Y17_N24
\IRX|D[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[4]~31_combout\ = ((\IRX|D[4]~28_combout\ & (\IRX|D[4]~27_combout\ & \IRX|D[4]~30_combout\))) # (!\IRX|D[7]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[4]~28_combout\,
	datab => \IRX|D[4]~27_combout\,
	datac => \IRX|D[4]~30_combout\,
	datad => \IRX|D[7]~17_combout\,
	combout => \IRX|D[4]~31_combout\);

-- Location: LCCOMB_X18_Y17_N18
\inst8|valor_interno[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[8]~feeder_combout\ = \IRX|D[4]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IRX|D[4]~31_combout\,
	combout => \inst8|valor_interno[8]~feeder_combout\);

-- Location: FF_X18_Y17_N19
\inst8|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(8));

-- Location: LCCOMB_X13_Y17_N20
\inst14|inst5|$00000|auto_generated|result_node[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (((\inst8|valor_interno\(8))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (\inst14|inst4|valor_interno\(8) & (!\inst14|inst3|SELECTOR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(8),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst3|SELECTOR~4_combout\,
	datad => \inst8|valor_interno\(8),
	combout => \inst14|inst5|$00000|auto_generated|result_node[8]~12_combout\);

-- Location: LCCOMB_X13_Y16_N20
\inst14|inst4|valor_interno[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[9]~27_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & (\inst14|inst4|valor_interno[8]~26\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & 
-- (!\inst14|inst4|valor_interno[8]~26\ & VCC))
-- \inst14|inst4|valor_interno[9]~28\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & !\inst14|inst4|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[8]~26\,
	combout => \inst14|inst4|valor_interno[9]~27_combout\,
	cout => \inst14|inst4|valor_interno[9]~28\);

-- Location: FF_X13_Y16_N21
\inst14|inst4|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[9]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(9));

-- Location: FF_X13_Y17_N9
\inst8|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \IRX|D[5]~26_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(9));

-- Location: IOIBUF_X3_Y10_N8
\IRQn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRQn,
	o => \IRQn~input_o\);

-- Location: LCCOMB_X11_Y17_N24
\inst3|IRQ_flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|IRQ_flag~0_combout\ = (\inst3|IRQ_flag~q\) # (!\IRQn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|IRQ_flag~q\,
	datad => \IRQn~input_o\,
	combout => \inst3|IRQ_flag~0_combout\);

-- Location: FF_X11_Y17_N25
\inst3|IRQ_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|IRQ_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|IRQ_flag~q\);

-- Location: IOIBUF_X10_Y17_N1
\XIRQn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XIRQn,
	o => \XIRQn~input_o\);

-- Location: LCCOMB_X11_Y17_N10
\inst3|XIRQ_flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|XIRQ_flag~0_combout\ = (\inst3|XIRQ_flag~q\) # (!\XIRQn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|XIRQ_flag~q\,
	datad => \XIRQn~input_o\,
	combout => \inst3|XIRQ_flag~0_combout\);

-- Location: FF_X11_Y17_N11
\inst3|XIRQ_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|XIRQ_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|XIRQ_flag~q\);

-- Location: LCCOMB_X11_Y17_N30
\inst14|inst5|$00000|auto_generated|result_node[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\ = (!\inst3|IRQ_flag~q\ & \inst3|XIRQ_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|IRQ_flag~q\,
	datad => \inst3|XIRQ_flag~q\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\);

-- Location: LCCOMB_X13_Y17_N8
\inst14|inst5|$00000|auto_generated|result_node[9]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\ = (\inst14|inst13|instruccion\(1) & ((\inst14|inst13|instruccion\(0) & ((\inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\))) # (!\inst14|inst13|instruccion\(0) & 
-- (\inst8|valor_interno\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(1),
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst8|valor_interno\(9),
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~9_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\);

-- Location: LCCOMB_X13_Y17_N6
\inst14|inst5|$00000|auto_generated|result_node[9]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\)))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & ((\inst14|inst3|SELECTOR~4_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\))) # (!\inst14|inst3|SELECTOR~4_combout\ & (\inst14|inst4|valor_interno\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(9),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~10_combout\,
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\);

-- Location: LCCOMB_X13_Y16_N22
\inst14|inst4|valor_interno[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[10]~29_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & (!\inst14|inst4|valor_interno[9]~28\)) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ & 
-- ((\inst14|inst4|valor_interno[9]~28\) # (GND)))
-- \inst14|inst4|valor_interno[10]~30\ = CARRY((!\inst14|inst4|valor_interno[9]~28\) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[9]~28\,
	combout => \inst14|inst4|valor_interno[10]~29_combout\,
	cout => \inst14|inst4|valor_interno[10]~30\);

-- Location: FF_X13_Y16_N23
\inst14|inst4|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[10]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(10));

-- Location: LCCOMB_X18_Y17_N8
\inst8|valor_interno[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[10]~feeder_combout\ = \IRX|D[6]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IRX|D[6]~22_combout\,
	combout => \inst8|valor_interno[10]~feeder_combout\);

-- Location: FF_X18_Y17_N9
\inst8|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(10));

-- Location: LCCOMB_X14_Y17_N8
\inst14|inst5|$00000|auto_generated|result_node[10]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (((\inst8|valor_interno\(10))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (\inst14|inst4|valor_interno\(10) & ((!\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(10),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst8|valor_interno\(10),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\);

-- Location: LCCOMB_X13_Y16_N24
\inst14|inst4|valor_interno[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[11]~31_combout\ = \inst14|inst4|valor_interno[10]~30\ $ (!\inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	cin => \inst14|inst4|valor_interno[10]~30\,
	combout => \inst14|inst4|valor_interno[11]~31_combout\);

-- Location: FF_X13_Y16_N25
\inst14|inst4|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[11]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(11));

-- Location: LCCOMB_X18_Y17_N10
\inst8|valor_interno[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[11]~feeder_combout\ = \IRX|D[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IRX|D[7]~18_combout\,
	combout => \inst8|valor_interno[11]~feeder_combout\);

-- Location: FF_X18_Y17_N11
\inst8|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(11));

-- Location: LCCOMB_X14_Y17_N26
\inst14|inst5|$00000|auto_generated|result_node[11]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (((\inst8|valor_interno\(11))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (\inst14|inst4|valor_interno\(11) & ((!\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(11),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst8|valor_interno\(11),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\);

-- Location: LCCOMB_X14_Y17_N2
\inst14|inst9|Equal29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal29~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~7_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[3]~19_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~8_combout\,
	combout => \inst14|inst9|Equal29~0_combout\);

-- Location: LCCOMB_X13_Y17_N2
\inst14|inst9|Equal27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal27~2_combout\ = (\inst14|inst9|Equal29~0_combout\ & (\inst14|inst9|Equal0~0_combout\ & \inst14|inst9|Equal27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal29~0_combout\,
	datab => \inst14|inst9|Equal0~0_combout\,
	datac => \inst14|inst9|Equal27~0_combout\,
	combout => \inst14|inst9|Equal27~2_combout\);

-- Location: LCCOMB_X12_Y17_N18
\inst14|inst9|data[97]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~30_combout\ = (\inst14|inst9|Equal29~1_combout\) # ((\inst14|inst9|Equal27~2_combout\ & \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal27~2_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datad => \inst14|inst9|Equal29~1_combout\,
	combout => \inst14|inst9|data[97]~30_combout\);

-- Location: LCCOMB_X15_Y17_N4
\inst14|inst9|data[90]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~29_combout\ = (\inst14|inst9|Equal22~0_combout\) # ((!\inst14|inst9|data~26_combout\) # (!\inst14|inst9|data[31]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal22~0_combout\,
	datac => \inst14|inst9|data[31]~63_combout\,
	datad => \inst14|inst9|data~26_combout\,
	combout => \inst14|inst9|data[90]~29_combout\);

-- Location: LCCOMB_X16_Y17_N8
\inst14|inst9|data[90]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~31_combout\ = (\inst14|inst9|data[90]~29_combout\) # ((\inst14|inst13|prueba[4]~0_combout\ & ((\inst14|inst9|data[97]~30_combout\) # (\inst14|inst9|Equal27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[97]~30_combout\,
	datab => \inst14|inst9|Equal27~1_combout\,
	datac => \inst14|inst9|data[90]~29_combout\,
	datad => \inst14|inst13|prueba[4]~0_combout\,
	combout => \inst14|inst9|data[90]~31_combout\);

-- Location: FF_X16_Y17_N9
\inst14|inst13|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[90]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|instruccion\(0));

-- Location: LCCOMB_X13_Y17_N28
\inst14|inst3|SELECTOR~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~5_combout\ = (\inst14|inst3|SELECTOR~4_combout\) # ((!\inst14|inst13|instruccion\(0) & \inst14|inst13|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|SELECTOR~4_combout\,
	datab => \inst14|inst13|instruccion\(0),
	datad => \inst14|inst13|instruccion\(1),
	combout => \inst14|inst3|SELECTOR~5_combout\);

-- Location: LCCOMB_X13_Y16_N8
\inst14|inst4|valor_interno[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[3]~15_combout\ = (\inst14|inst4|valor_interno[2]~14\ & (\inst14|inst4|valor_interno\(3) & (!\inst14|inst3|SELECTOR~5_combout\ & VCC))) # (!\inst14|inst4|valor_interno[2]~14\ & ((((\inst14|inst4|valor_interno\(3) & 
-- !\inst14|inst3|SELECTOR~5_combout\)))))
-- \inst14|inst4|valor_interno[3]~16\ = CARRY((\inst14|inst4|valor_interno\(3) & (!\inst14|inst3|SELECTOR~5_combout\ & !\inst14|inst4|valor_interno[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(3),
	datab => \inst14|inst3|SELECTOR~5_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[2]~14\,
	combout => \inst14|inst4|valor_interno[3]~15_combout\,
	cout => \inst14|inst4|valor_interno[3]~16\);

-- Location: FF_X13_Y16_N9
\inst14|inst4|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[3]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(3));

-- Location: LCCOMB_X13_Y16_N10
\inst14|inst4|valor_interno[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[4]~17_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & (!\inst14|inst4|valor_interno[3]~16\)) # (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ & 
-- ((\inst14|inst4|valor_interno[3]~16\) # (GND)))
-- \inst14|inst4|valor_interno[4]~18\ = CARRY((!\inst14|inst4|valor_interno[3]~16\) # (!\inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[3]~16\,
	combout => \inst14|inst4|valor_interno[4]~17_combout\,
	cout => \inst14|inst4|valor_interno[4]~18\);

-- Location: FF_X13_Y16_N11
\inst14|inst4|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[4]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(4));

-- Location: FF_X13_Y17_N29
\inst8|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \IRX|D[0]~43_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(4));

-- Location: LCCOMB_X13_Y17_N30
\inst14|inst5|$00000|auto_generated|result_node[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (((\inst8|valor_interno\(4))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (\inst14|inst4|valor_interno\(4) & ((!\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(4),
	datab => \inst8|valor_interno\(4),
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[4]~16_combout\);

-- Location: LCCOMB_X13_Y16_N12
\inst14|inst4|valor_interno[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[5]~19_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & (\inst14|inst4|valor_interno[4]~18\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & 
-- (!\inst14|inst4|valor_interno[4]~18\ & VCC))
-- \inst14|inst4|valor_interno[5]~20\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ & !\inst14|inst4|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[4]~18\,
	combout => \inst14|inst4|valor_interno[5]~19_combout\,
	cout => \inst14|inst4|valor_interno[5]~20\);

-- Location: FF_X13_Y16_N13
\inst14|inst4|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[5]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(5));

-- Location: LCCOMB_X18_Y17_N14
\inst8|valor_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[5]~feeder_combout\ = \IRX|D[1]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IRX|D[1]~39_combout\,
	combout => \inst8|valor_interno[5]~feeder_combout\);

-- Location: FF_X18_Y17_N15
\inst8|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(5));

-- Location: LCCOMB_X13_Y17_N14
\inst14|inst5|$00000|auto_generated|result_node[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (((\inst8|valor_interno\(5))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (\inst14|inst4|valor_interno\(5) & ((!\inst14|inst3|SELECTOR~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(5),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst8|valor_interno\(5),
	datad => \inst14|inst3|SELECTOR~4_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[5]~15_combout\);

-- Location: LCCOMB_X13_Y16_N14
\inst14|inst4|valor_interno[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[6]~21_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ & (!\inst14|inst4|valor_interno[5]~20\)) # (!\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ & 
-- ((\inst14|inst4|valor_interno[5]~20\) # (GND)))
-- \inst14|inst4|valor_interno[6]~22\ = CARRY((!\inst14|inst4|valor_interno[5]~20\) # (!\inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[5]~20\,
	combout => \inst14|inst4|valor_interno[6]~21_combout\,
	cout => \inst14|inst4|valor_interno[6]~22\);

-- Location: FF_X13_Y16_N15
\inst14|inst4|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[6]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(6));

-- Location: LCCOMB_X18_Y17_N20
\inst8|valor_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[6]~feeder_combout\ = \IRX|D[2]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IRX|D[2]~35_combout\,
	combout => \inst8|valor_interno[6]~feeder_combout\);

-- Location: FF_X18_Y17_N21
\inst8|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(6));

-- Location: LCCOMB_X14_Y17_N22
\inst14|inst5|$00000|auto_generated|result_node[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (((\inst8|valor_interno\(6))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (\inst14|inst4|valor_interno\(6) & (!\inst14|inst3|SELECTOR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(6),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst3|SELECTOR~4_combout\,
	datad => \inst8|valor_interno\(6),
	combout => \inst14|inst5|$00000|auto_generated|result_node[6]~14_combout\);

-- Location: FF_X13_Y16_N17
\inst14|inst4|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[7]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(7));

-- Location: LCCOMB_X15_Y18_N8
\inst8|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[7]~feeder_combout\ = \inst1|Yupa[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Yupa[3]~3_combout\,
	combout => \inst8|valor_interno[7]~feeder_combout\);

-- Location: FF_X15_Y18_N9
\inst8|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(7));

-- Location: LCCOMB_X14_Y17_N30
\inst14|inst5|$00000|auto_generated|result_node[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (((\inst8|valor_interno\(7))))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & 
-- (\inst14|inst4|valor_interno\(7) & (!\inst14|inst3|SELECTOR~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(7),
	datab => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datac => \inst14|inst3|SELECTOR~4_combout\,
	datad => \inst8|valor_interno\(7),
	combout => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\);

-- Location: LCCOMB_X14_Y17_N18
\inst14|inst9|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\ & \inst14|inst9|Equal29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~20_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~11_combout\,
	datad => \inst14|inst9|Equal29~0_combout\,
	combout => \inst14|inst9|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y17_N4
\inst14|inst9|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst9|Equal0~0_combout\ & \inst14|inst9|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|Equal0~0_combout\,
	datad => \inst14|inst9|Equal0~2_combout\,
	combout => \inst14|inst9|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y17_N30
\inst14|inst9|data[91]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~20_combout\ = (!\inst14|inst9|Equal0~3_combout\ & (!\inst14|inst9|Equal1~1_combout\ & !\inst14|inst9|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|Equal0~3_combout\,
	datac => \inst14|inst9|Equal1~1_combout\,
	datad => \inst14|inst9|Equal2~0_combout\,
	combout => \inst14|inst9|data[91]~20_combout\);

-- Location: LCCOMB_X20_Y17_N16
\inst14|inst9|data~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~25_combout\ = (\inst14|inst9|Equal27~1_combout\ & (!\inst14|inst9|Equal25~0_combout\ & (!\inst14|inst9|Equal26~0_combout\ & \inst14|inst9|data[31]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal27~1_combout\,
	datab => \inst14|inst9|Equal25~0_combout\,
	datac => \inst14|inst9|Equal26~0_combout\,
	datad => \inst14|inst9|data[31]~24_combout\,
	combout => \inst14|inst9|data~25_combout\);

-- Location: LCCOMB_X20_Y17_N24
\inst14|inst9|data[91]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~27_combout\ = (\inst14|inst9|data[91]~20_combout\ & (((\inst14|inst9|data[31]~23_combout\ & \inst14|inst9|data~25_combout\)) # (!\inst14|inst9|data~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[91]~20_combout\,
	datab => \inst14|inst9|data~26_combout\,
	datac => \inst14|inst9|data[31]~23_combout\,
	datad => \inst14|inst9|data~25_combout\,
	combout => \inst14|inst9|data[91]~27_combout\);

-- Location: LCCOMB_X20_Y17_N2
\inst14|inst13|prueba[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst13|prueba[0]~feeder_combout\ = \inst14|inst9|data[91]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst9|data[91]~27_combout\,
	combout => \inst14|inst13|prueba[0]~feeder_combout\);

-- Location: FF_X20_Y17_N3
\inst14|inst13|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst13|prueba[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(0));

-- Location: LCCOMB_X16_Y17_N26
\inst14|inst9|data[97]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~32_combout\ = (\inst14|inst9|data[31]~63_combout\ & (((!\inst14|inst9|data[97]~14_combout\) # (!\inst14|inst9|data[97]~15_combout\)) # (!\inst14|inst9|Equal22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal22~0_combout\,
	datab => \inst14|inst9|data[31]~63_combout\,
	datac => \inst14|inst9|data[97]~15_combout\,
	datad => \inst14|inst9|data[97]~14_combout\,
	combout => \inst14|inst9|data[97]~32_combout\);

-- Location: LCCOMB_X16_Y17_N14
\inst14|inst9|data[97]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~33_combout\ = ((\inst14|inst9|data[97]~30_combout\ & (!\inst14|inst9|Equal27~1_combout\ & \inst14|inst13|prueba[4]~0_combout\))) # (!\inst14|inst9|data[97]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[97]~30_combout\,
	datab => \inst14|inst9|Equal27~1_combout\,
	datac => \inst14|inst9|data[97]~32_combout\,
	datad => \inst14|inst13|prueba[4]~0_combout\,
	combout => \inst14|inst9|data[97]~33_combout\);

-- Location: FF_X16_Y17_N15
\inst14|inst13|prueba[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[97]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(4));

-- Location: LCCOMB_X11_Y17_N4
\inst14|inst3|SELECTOR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~2_combout\ = (!\inst14|inst13|prueba\(4) & (\inst14|inst13|prueba\(0) & ((\inst3|XIRQ_flag~q\) # (\inst3|IRQ_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|XIRQ_flag~q\,
	datab => \inst3|IRQ_flag~q\,
	datac => \inst14|inst13|prueba\(4),
	datad => \inst14|inst13|prueba\(0),
	combout => \inst14|inst3|SELECTOR~2_combout\);

-- Location: LCCOMB_X11_Y17_N18
\inst14|inst3|SELECTOR~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~3_combout\ = (\inst14|inst13|prueba\(4)) # ((!\inst14|inst13|RA\(0) & (!\inst14|inst13|BD~q\ & !\AUX|data_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \inst14|inst13|prueba\(4),
	datac => \inst14|inst13|BD~q\,
	datad => \AUX|data_out\(15),
	combout => \inst14|inst3|SELECTOR~3_combout\);

-- Location: LCCOMB_X11_Y17_N20
\inst14|inst3|SELECTOR~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~4_combout\ = (\inst14|inst13|instruccion\(0) & ((\inst14|inst3|SELECTOR~2_combout\) # ((!\inst14|inst13|prueba\(0) & \inst14|inst3|SELECTOR~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(0),
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst3|SELECTOR~2_combout\,
	datad => \inst14|inst3|SELECTOR~3_combout\,
	combout => \inst14|inst3|SELECTOR~4_combout\);

-- Location: LCCOMB_X12_Y17_N4
\inst14|inst4|valor_interno[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[0]~33_combout\ = !\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	combout => \inst14|inst4|valor_interno[0]~33_combout\);

-- Location: FF_X12_Y17_N5
\inst14|inst4|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst4|valor_interno[0]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(0));

-- Location: LCCOMB_X16_Y17_N4
\inst14|inst9|data[78]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[78]~37_combout\ = ((\inst14|inst9|Equal27~2_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & \inst14|inst13|prueba[4]~0_combout\))) # (!\inst14|inst9|data[97]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal27~2_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst9|data[97]~32_combout\,
	datad => \inst14|inst13|prueba[4]~0_combout\,
	combout => \inst14|inst9|data[78]~37_combout\);

-- Location: FF_X16_Y17_N5
\inst14|inst13|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[78]~37_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(0));

-- Location: LCCOMB_X13_Y17_N16
\inst14|inst5|$00000|auto_generated|result_node[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\ = (\inst14|inst13|instruccion\(0) & (\inst14|inst13|liga\(0) & !\inst14|inst13|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst14|inst13|liga\(0),
	datad => \inst14|inst13|instruccion\(1),
	combout => \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\);

-- Location: LCCOMB_X13_Y17_N18
\inst14|inst5|$00000|auto_generated|result_node[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ = (\inst14|inst3|SELECTOR~4_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\)))) # (!\inst14|inst3|SELECTOR~4_combout\ & 
-- ((\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\))) # (!\inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\ & (\inst14|inst4|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|SELECTOR~4_combout\,
	datab => \inst14|inst4|valor_interno\(0),
	datac => \inst14|inst5|$00000|auto_generated|result_node[11]~6_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~17_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\);

-- Location: LCCOMB_X16_Y17_N12
\inst14|inst9|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal6~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\ & \inst14|inst9|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~18_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~21_combout\,
	datad => \inst14|inst9|Equal3~2_combout\,
	combout => \inst14|inst9|Equal6~0_combout\);

-- Location: LCCOMB_X16_Y17_N2
\inst14|inst9|data[72]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~9_combout\ = (!\inst14|inst9|Equal6~0_combout\ & (!\inst14|inst9|Equal8~0_combout\ & (!\inst14|inst9|Equal7~1_combout\ & \inst14|inst9|data[14]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal6~0_combout\,
	datab => \inst14|inst9|Equal8~0_combout\,
	datac => \inst14|inst9|Equal7~1_combout\,
	datad => \inst14|inst9|data[14]~8_combout\,
	combout => \inst14|inst9|data[72]~9_combout\);

-- Location: LCCOMB_X17_Y17_N20
\inst14|inst9|data[6]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~40_combout\ = (\inst14|inst9|Equal5~0_combout\) # ((\inst14|inst9|Equal4~0_combout\) # ((\inst14|inst9|Equal9~0_combout\) # (!\inst14|inst9|data[72]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal5~0_combout\,
	datab => \inst14|inst9|Equal4~0_combout\,
	datac => \inst14|inst9|Equal9~0_combout\,
	datad => \inst14|inst9|data[72]~9_combout\,
	combout => \inst14|inst9|data[6]~40_combout\);

-- Location: LCCOMB_X17_Y17_N22
\inst14|inst9|data[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~41_combout\ = (\inst14|inst9|data[6]~40_combout\ & (\inst14|inst9|data[72]~9_combout\ & (!\inst14|inst9|Equal4~0_combout\))) # (!\inst14|inst9|data[6]~40_combout\ & (((!\inst14|inst9|data[97]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~9_combout\,
	datab => \inst14|inst9|Equal4~0_combout\,
	datac => \inst14|inst9|data[97]~15_combout\,
	datad => \inst14|inst9|data[6]~40_combout\,
	combout => \inst14|inst9|data[6]~41_combout\);

-- Location: FF_X17_Y17_N9
\inst14|inst13|CZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|data[6]~41_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CZ~q\);

-- Location: LCCOMB_X17_Y17_N30
\inst14|inst9|data[14]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~39_combout\ = (\inst14|inst9|data[14]~8_combout\ & (\inst14|inst9|data[14]~38_combout\ & \inst14|inst9|Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst9|data[14]~8_combout\,
	datac => \inst14|inst9|data[14]~38_combout\,
	datad => \inst14|inst9|Equal9~0_combout\,
	combout => \inst14|inst9|data[14]~39_combout\);

-- Location: FF_X17_Y17_N31
\inst14|inst13|B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst9|data[14]~39_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B4~q\);

-- Location: LCCOMB_X16_Y21_N26
\inst1|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\inst1|Add0~18_combout\) # (\inst1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~18_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|WideOr0~0_combout\);

-- Location: LCCOMB_X16_Y21_N0
\inst1|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~1_combout\ = (\inst1|Add0~14_combout\) # ((\inst1|Add0~16_combout\) # ((\inst1|Add0~10_combout\) # (\inst1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datab => \inst1|Add0~16_combout\,
	datac => \inst1|Add0~10_combout\,
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|WideOr0~1_combout\);

-- Location: LCCOMB_X16_Y21_N4
\inst1|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~combout\ = (!\inst1|Add0~24_combout\ & (!\inst1|Add0~22_combout\ & (!\inst1|WideOr0~0_combout\ & !\inst1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~24_combout\,
	datab => \inst1|Add0~22_combout\,
	datac => \inst1|WideOr0~0_combout\,
	datad => \inst1|WideOr0~1_combout\,
	combout => \inst1|WideOr0~combout\);

-- Location: FF_X16_Y21_N5
\inst1|Banderas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|WideOr0~combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(0));

-- Location: FF_X17_Y17_N17
\inst14|inst13|B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|Equal5~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B3~q\);

-- Location: LCCOMB_X16_Y20_N6
\inst5|inst10|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~0_combout\ = (!\ACCB|data_out\(2) & (!\ACCB|data_out\(0) & (!\ACCB|data_out\(1) & !\ACCB|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(2),
	datab => \ACCB|data_out\(0),
	datac => \ACCB|data_out\(1),
	datad => \ACCB|data_out\(3),
	combout => \inst5|inst10|output~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\inst5|inst10|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~1_combout\ = (!\ACCB|data_out\(7) & (!\ACCB|data_out\(5) & (!\ACCB|data_out\(4) & !\ACCB|data_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \ACCB|data_out\(5),
	datac => \ACCB|data_out\(4),
	datad => \ACCB|data_out\(6),
	combout => \inst5|inst10|output~1_combout\);

-- Location: LCCOMB_X17_Y20_N14
\inst5|inst10|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~2_combout\ = (\inst14|inst13|B4~q\ & ((\inst14|inst13|B3~q\) # ((\inst5|inst10|output~0_combout\ & \inst5|inst10|output~1_combout\)))) # (!\inst14|inst13|B4~q\ & (!\inst14|inst13|B3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B4~q\,
	datab => \inst14|inst13|B3~q\,
	datac => \inst5|inst10|output~0_combout\,
	datad => \inst5|inst10|output~1_combout\,
	combout => \inst5|inst10|output~2_combout\);

-- Location: LCCOMB_X17_Y20_N26
\inst5|inst10|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~4_combout\ = (!\ACCA|data_out\(2) & (!\ACCA|data_out\(3) & (!\ACCA|data_out\(1) & !\ACCA|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \ACCA|data_out\(3),
	datac => \ACCA|data_out\(1),
	datad => \ACCA|data_out\(4),
	combout => \inst5|inst10|output~4_combout\);

-- Location: LCCOMB_X17_Y20_N20
\inst5|inst10|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~3_combout\ = (!\ACCA|data_out\(5) & (!\ACCA|data_out\(7) & (!\ACCA|data_out\(6) & \inst14|inst13|B3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \ACCA|data_out\(7),
	datac => \ACCA|data_out\(6),
	datad => \inst14|inst13|B3~q\,
	combout => \inst5|inst10|output~3_combout\);

-- Location: LCCOMB_X17_Y20_N24
\inst5|inst10|output~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~5_combout\ = (!\ACCA|data_out\(0) & (\inst5|inst10|output~4_combout\ & \inst5|inst10|output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ACCA|data_out\(0),
	datac => \inst5|inst10|output~4_combout\,
	datad => \inst5|inst10|output~3_combout\,
	combout => \inst5|inst10|output~5_combout\);

-- Location: LCCOMB_X17_Y20_N10
\inst5|inst10|output~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~6_combout\ = (\inst5|inst10|output~5_combout\) # ((\inst5|inst10|output~2_combout\ & ((\inst14|inst13|B4~q\) # (\inst1|Banderas\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B4~q\,
	datab => \inst1|Banderas\(0),
	datac => \inst5|inst10|output~2_combout\,
	datad => \inst5|inst10|output~5_combout\,
	combout => \inst5|inst10|output~6_combout\);

-- Location: FF_X17_Y20_N11
\inst5|inst2|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CZ~q\,
	d => \inst5|inst10|output~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|valor_interno~q\);

-- Location: FF_X17_Y17_N25
\inst14|inst13|CN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst9|data[6]~41_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CN~q\);

-- Location: LCCOMB_X17_Y17_N10
\inst5|inst11|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst11|output~0_combout\ = (!\inst14|inst13|B4~q\ & ((\inst14|inst13|B3~q\ & (\ACCA|data_out\(7))) # (!\inst14|inst13|B3~q\ & ((\inst1|Banderas\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B4~q\,
	datab => \inst14|inst13|B3~q\,
	datac => \ACCA|data_out\(7),
	datad => \inst1|Banderas\(2),
	combout => \inst5|inst11|output~0_combout\);

-- Location: LCCOMB_X17_Y17_N28
\inst5|inst11|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst11|output~1_combout\ = (\inst5|inst11|output~0_combout\) # ((\ACCB|data_out\(7) & (!\inst14|inst13|B3~q\ & \inst14|inst13|B4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \inst14|inst13|B3~q\,
	datac => \inst14|inst13|B4~q\,
	datad => \inst5|inst11|output~0_combout\,
	combout => \inst5|inst11|output~1_combout\);

-- Location: FF_X17_Y17_N29
\inst5|inst3|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CN~q\,
	d => \inst5|inst11|output~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|valor_interno~q\);

-- Location: FF_X15_Y21_N13
\inst1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~22_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(6));

-- Location: LCCOMB_X15_Y21_N26
\inst1|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Q[5]~feeder_combout\ = \inst1|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|Q[5]~feeder_combout\);

-- Location: FF_X15_Y21_N27
\inst1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[5]~feeder_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(5));

-- Location: FF_X16_Y21_N23
\inst1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~18_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(4));

-- Location: FF_X16_Y21_N11
\inst1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~16_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(3));

-- Location: FF_X16_Y21_N7
\inst1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~14_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(2));

-- Location: FF_X15_Y21_N1
\inst1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Add0~12_combout\,
	sload => VCC,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(1));

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_Z <= \Z~output_o\;

ww_csnn <= \csnn~output_o\;

ww_N <= \N~output_o\;

ww_ACCA_D(7) <= \ACCA_D[7]~output_o\;

ww_ACCA_D(6) <= \ACCA_D[6]~output_o\;

ww_ACCA_D(5) <= \ACCA_D[5]~output_o\;

ww_ACCA_D(4) <= \ACCA_D[4]~output_o\;

ww_ACCA_D(3) <= \ACCA_D[3]~output_o\;

ww_ACCA_D(2) <= \ACCA_D[2]~output_o\;

ww_ACCA_D(1) <= \ACCA_D[1]~output_o\;

ww_ACCA_D(0) <= \ACCA_D[0]~output_o\;

ww_ACCB_D(7) <= \ACCB_D[7]~output_o\;

ww_ACCB_D(6) <= \ACCB_D[6]~output_o\;

ww_ACCB_D(5) <= \ACCB_D[5]~output_o\;

ww_ACCB_D(4) <= \ACCB_D[4]~output_o\;

ww_ACCB_D(3) <= \ACCB_D[3]~output_o\;

ww_ACCB_D(2) <= \ACCB_D[2]~output_o\;

ww_ACCB_D(1) <= \ACCB_D[1]~output_o\;

ww_ACCB_D(0) <= \ACCB_D[0]~output_o\;

ww_AP_D(15) <= \AP_D[15]~output_o\;

ww_AP_D(14) <= \AP_D[14]~output_o\;

ww_AP_D(13) <= \AP_D[13]~output_o\;

ww_AP_D(12) <= \AP_D[12]~output_o\;

ww_AP_D(11) <= \AP_D[11]~output_o\;

ww_AP_D(10) <= \AP_D[10]~output_o\;

ww_AP_D(9) <= \AP_D[9]~output_o\;

ww_AP_D(8) <= \AP_D[8]~output_o\;

ww_AP_D(7) <= \AP_D[7]~output_o\;

ww_AP_D(6) <= \AP_D[6]~output_o\;

ww_AP_D(5) <= \AP_D[5]~output_o\;

ww_AP_D(4) <= \AP_D[4]~output_o\;

ww_AP_D(3) <= \AP_D[3]~output_o\;

ww_AP_D(2) <= \AP_D[2]~output_o\;

ww_AP_D(1) <= \AP_D[1]~output_o\;

ww_AP_D(0) <= \AP_D[0]~output_o\;

ww_AUX_D(15) <= \AUX_D[15]~output_o\;

ww_AUX_D(14) <= \AUX_D[14]~output_o\;

ww_AUX_D(13) <= \AUX_D[13]~output_o\;

ww_AUX_D(12) <= \AUX_D[12]~output_o\;

ww_AUX_D(11) <= \AUX_D[11]~output_o\;

ww_AUX_D(10) <= \AUX_D[10]~output_o\;

ww_AUX_D(9) <= \AUX_D[9]~output_o\;

ww_AUX_D(8) <= \AUX_D[8]~output_o\;

ww_AUX_D(7) <= \AUX_D[7]~output_o\;

ww_AUX_D(6) <= \AUX_D[6]~output_o\;

ww_AUX_D(5) <= \AUX_D[5]~output_o\;

ww_AUX_D(4) <= \AUX_D[4]~output_o\;

ww_AUX_D(3) <= \AUX_D[3]~output_o\;

ww_AUX_D(2) <= \AUX_D[2]~output_o\;

ww_AUX_D(1) <= \AUX_D[1]~output_o\;

ww_AUX_D(0) <= \AUX_D[0]~output_o\;

ww_Debug_Q(7) <= \Debug_Q[7]~output_o\;

ww_Debug_Q(6) <= \Debug_Q[6]~output_o\;

ww_Debug_Q(5) <= \Debug_Q[5]~output_o\;

ww_Debug_Q(4) <= \Debug_Q[4]~output_o\;

ww_Debug_Q(3) <= \Debug_Q[3]~output_o\;

ww_Debug_Q(2) <= \Debug_Q[2]~output_o\;

ww_Debug_Q(1) <= \Debug_Q[1]~output_o\;

ww_Debug_Q(0) <= \Debug_Q[0]~output_o\;

ww_Debug_Yupa(7) <= \Debug_Yupa[7]~output_o\;

ww_Debug_Yupa(6) <= \Debug_Yupa[6]~output_o\;

ww_Debug_Yupa(5) <= \Debug_Yupa[5]~output_o\;

ww_Debug_Yupa(4) <= \Debug_Yupa[4]~output_o\;

ww_Debug_Yupa(3) <= \Debug_Yupa[3]~output_o\;

ww_Debug_Yupa(2) <= \Debug_Yupa[2]~output_o\;

ww_Debug_Yupa(1) <= \Debug_Yupa[1]~output_o\;

ww_Debug_Yupa(0) <= \Debug_Yupa[0]~output_o\;

ww_Edo_Pres(11) <= \Edo_Pres[11]~output_o\;

ww_Edo_Pres(10) <= \Edo_Pres[10]~output_o\;

ww_Edo_Pres(9) <= \Edo_Pres[9]~output_o\;

ww_Edo_Pres(8) <= \Edo_Pres[8]~output_o\;

ww_Edo_Pres(7) <= \Edo_Pres[7]~output_o\;

ww_Edo_Pres(6) <= \Edo_Pres[6]~output_o\;

ww_Edo_Pres(5) <= \Edo_Pres[5]~output_o\;

ww_Edo_Pres(4) <= \Edo_Pres[4]~output_o\;

ww_Edo_Pres(3) <= \Edo_Pres[3]~output_o\;

ww_Edo_Pres(2) <= \Edo_Pres[2]~output_o\;

ww_Edo_Pres(1) <= \Edo_Pres[1]~output_o\;

ww_Edo_Pres(0) <= \Edo_Pres[0]~output_o\;

ww_IX(15) <= \IX[15]~output_o\;

ww_IX(14) <= \IX[14]~output_o\;

ww_IX(13) <= \IX[13]~output_o\;

ww_IX(12) <= \IX[12]~output_o\;

ww_IX(11) <= \IX[11]~output_o\;

ww_IX(10) <= \IX[10]~output_o\;

ww_IX(9) <= \IX[9]~output_o\;

ww_IX(8) <= \IX[8]~output_o\;

ww_IX(7) <= \IX[7]~output_o\;

ww_IX(6) <= \IX[6]~output_o\;

ww_IX(5) <= \IX[5]~output_o\;

ww_IX(4) <= \IX[4]~output_o\;

ww_IX(3) <= \IX[3]~output_o\;

ww_IX(2) <= \IX[2]~output_o\;

ww_IX(1) <= \IX[1]~output_o\;

ww_IX(0) <= \IX[0]~output_o\;

ww_PC_D(15) <= \PC_D[15]~output_o\;

ww_PC_D(14) <= \PC_D[14]~output_o\;

ww_PC_D(13) <= \PC_D[13]~output_o\;

ww_PC_D(12) <= \PC_D[12]~output_o\;

ww_PC_D(11) <= \PC_D[11]~output_o\;

ww_PC_D(10) <= \PC_D[10]~output_o\;

ww_PC_D(9) <= \PC_D[9]~output_o\;

ww_PC_D(8) <= \PC_D[8]~output_o\;

ww_PC_D(7) <= \PC_D[7]~output_o\;

ww_PC_D(6) <= \PC_D[6]~output_o\;

ww_PC_D(5) <= \PC_D[5]~output_o\;

ww_PC_D(4) <= \PC_D[4]~output_o\;

ww_PC_D(3) <= \PC_D[3]~output_o\;

ww_PC_D(2) <= \PC_D[2]~output_o\;

ww_PC_D(1) <= \PC_D[1]~output_o\;

ww_PC_D(0) <= \PC_D[0]~output_o\;

ww_X_D(15) <= \X_D[15]~output_o\;

ww_X_D(14) <= \X_D[14]~output_o\;

ww_X_D(13) <= \X_D[13]~output_o\;

ww_X_D(12) <= \X_D[12]~output_o\;

ww_X_D(11) <= \X_D[11]~output_o\;

ww_X_D(10) <= \X_D[10]~output_o\;

ww_X_D(9) <= \X_D[9]~output_o\;

ww_X_D(8) <= \X_D[8]~output_o\;

ww_X_D(7) <= \X_D[7]~output_o\;

ww_X_D(6) <= \X_D[6]~output_o\;

ww_X_D(5) <= \X_D[5]~output_o\;

ww_X_D(4) <= \X_D[4]~output_o\;

ww_X_D(3) <= \X_D[3]~output_o\;

ww_X_D(2) <= \X_D[2]~output_o\;

ww_X_D(1) <= \X_D[1]~output_o\;

ww_X_D(0) <= \X_D[0]~output_o\;
END structure;


