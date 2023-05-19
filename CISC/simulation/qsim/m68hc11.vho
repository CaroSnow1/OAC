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

-- DATE "05/19/2023 08:39:29"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

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
SIGNAL \inst14|inst9|Equal12~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal9~2_combout\ : std_logic;
SIGNAL \ACCA|C[2]~5_combout\ : std_logic;
SIGNAL \ACCA|data_out[2]~5_combout\ : std_logic;
SIGNAL \ACCA|B[7]~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal8~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst14|inst13|nWB~q\ : std_logic;
SIGNAL \inst14|inst9|data[6]~8_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal4~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~74_combout\ : std_logic;
SIGNAL \inst14|inst9|data[75]~64_combout\ : std_logic;
SIGNAL \ACCB|C[2]~5_combout\ : std_logic;
SIGNAL \ACCB|data_out[2]~5_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~8_combout\ : std_logic;
SIGNAL \ACCB|B[7]~0_combout\ : std_logic;
SIGNAL \IRX|C[2]~31_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~1_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[1]~12\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal15~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~26_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal5~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~4_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~28_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~75_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~24_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal19~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~25_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~18_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal18~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data~31_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal27~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal27~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal28~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal29~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~35_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~13_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~14_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~15_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~33_combout\ : std_logic;
SIGNAL \inst14|inst9|data[58]~17_combout\ : std_logic;
SIGNAL \inst14|inst9|data[58]~34_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal23~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal23~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~19_combout\ : std_logic;
SIGNAL \inst14|inst9|data~20_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~21_combout\ : std_logic;
SIGNAL \inst14|inst13|prueba[4]~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~36_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~38_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal20~3_combout\ : std_logic;
SIGNAL \inst14|inst13|ACCSEC~q\ : std_logic;
SIGNAL \IRX|C[0]~37_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~16_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal24~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[24]~46_combout\ : std_logic;
SIGNAL \inst14|inst9|data[24]~47_combout\ : std_logic;
SIGNAL \inst14|inst13|BD~q\ : std_logic;
SIGNAL \AUX|data_out~8_combout\ : std_logic;
SIGNAL \AUX|data_out~9_combout\ : std_logic;
SIGNAL \ACCA|C[5]~2_combout\ : std_logic;
SIGNAL \ACCA|data_out[5]~2_combout\ : std_logic;
SIGNAL \ACCB|C[5]~2_combout\ : std_logic;
SIGNAL \ACCB|data_out[5]~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[48]~65_combout\ : std_logic;
SIGNAL \inst14|inst9|data[48]~67_combout\ : std_logic;
SIGNAL \inst14|inst13|nERA1~q\ : std_logic;
SIGNAL \AUX|TRI_STATE_C~0_combout\ : std_logic;
SIGNAL \IRX|C[5]~20_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~22_combout\ : std_logic;
SIGNAL \inst14|inst9|data[34]~58_combout\ : std_logic;
SIGNAL \inst14|inst9|data[34]~44_combout\ : std_logic;
SIGNAL \inst14|inst9|data[34]~59_combout\ : std_logic;
SIGNAL \PC|data_out[13]~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~52_combout\ : std_logic;
SIGNAL \inst14|inst9|data[47]~53_combout\ : std_logic;
SIGNAL \inst14|inst13|nERA0~q\ : std_logic;
SIGNAL \AUX|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \ACCA|TRI_STATE~0_combout\ : std_logic;
SIGNAL \IRX|D[4]~26_combout\ : std_logic;
SIGNAL \ACCB|C[4]~3_combout\ : std_logic;
SIGNAL \ACCB|data_out[4]~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~9_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~60_combout\ : std_logic;
SIGNAL \inst14|inst9|data[32]~61_combout\ : std_logic;
SIGNAL \PC|Add0~16_combout\ : std_logic;
SIGNAL \PC|Add0~55_combout\ : std_logic;
SIGNAL \PC|Add0~17\ : std_logic;
SIGNAL \PC|Add0~18_combout\ : std_logic;
SIGNAL \PC|Add0~54_combout\ : std_logic;
SIGNAL \PC|Add0~19\ : std_logic;
SIGNAL \PC|Add0~20_combout\ : std_logic;
SIGNAL \PC|Add0~53_combout\ : std_logic;
SIGNAL \PC|Add0~21\ : std_logic;
SIGNAL \PC|Add0~22_combout\ : std_logic;
SIGNAL \ACCA|C[3]~4_combout\ : std_logic;
SIGNAL \ACCA|data_out[3]~4_combout\ : std_logic;
SIGNAL \ACCB|C[3]~4_combout\ : std_logic;
SIGNAL \ACCB|data_out[3]~4_combout\ : std_logic;
SIGNAL \IRX|C[3]~27_combout\ : std_logic;
SIGNAL \PC|data_out[11]~4_combout\ : std_logic;
SIGNAL \PC|data_out[10]~5_combout\ : std_logic;
SIGNAL \PC|data_out[9]~6_combout\ : std_logic;
SIGNAL \PC|data_out[8]~7_combout\ : std_logic;
SIGNAL \PC|Add0~25\ : std_logic;
SIGNAL \PC|Add0~26_combout\ : std_logic;
SIGNAL \PC|Add0~50_combout\ : std_logic;
SIGNAL \PC|Add0~27\ : std_logic;
SIGNAL \PC|Add0~28_combout\ : std_logic;
SIGNAL \PC|Add0~49_combout\ : std_logic;
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
SIGNAL \PC|Add0~37\ : std_logic;
SIGNAL \PC|Add0~38_combout\ : std_logic;
SIGNAL \inst14|inst9|data[35]~62_combout\ : std_logic;
SIGNAL \inst14|inst13|prueba[4]~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[35]~63_combout\ : std_logic;
SIGNAL \inst14|inst13|nEPC0~q\ : std_logic;
SIGNAL \PC|TRI_STATE_D~0_combout\ : std_logic;
SIGNAL \IRX|C[3]~28_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5_combout\ : std_logic;
SIGNAL \ACCB|data_out[1]~6_combout\ : std_logic;
SIGNAL \ACCB|C[1]~6_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \ACCA|C[1]~6_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~68_combout\ : std_logic;
SIGNAL \inst14|inst13|CC~q\ : std_logic;
SIGNAL \IRX|C[7]~12_combout\ : std_logic;
SIGNAL \PC|data_out[15]~0_combout\ : std_logic;
SIGNAL \ACCB|C[6]~1_combout\ : std_logic;
SIGNAL \ACCB|data_out[6]~1_combout\ : std_logic;
SIGNAL \IRX|C[6]~17_combout\ : std_logic;
SIGNAL \IRX|C[6]~18_combout\ : std_logic;
SIGNAL \inst14|inst9|data[26]~23_combout\ : std_logic;
SIGNAL \inst14|inst13|nAS~q\ : std_logic;
SIGNAL \inst6|data[7]~en_q\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3_combout\ : std_logic;
SIGNAL \ACCA|C[4]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal21~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[58]~66_combout\ : std_logic;
SIGNAL \inst14|inst13|nDUPA~q\ : std_logic;
SIGNAL \inst14|inst13|nEX~q\ : std_logic;
SIGNAL \IRX|D[6]~20_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~73_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~29_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~69_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~70_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~71_combout\ : std_logic;
SIGNAL \inst14|inst9|data[31]~72_combout\ : std_logic;
SIGNAL \inst14|inst13|nCBD~q\ : std_logic;
SIGNAL \inst6|mem~17_combout\ : std_logic;
SIGNAL \inst6|mem~19_combout\ : std_logic;
SIGNAL \inst6|mem~20_combout\ : std_logic;
SIGNAL \inst6|data[6]~reg0_q\ : std_logic;
SIGNAL \IRX|C[6]~41_combout\ : std_logic;
SIGNAL \IRX|C[7]~14_combout\ : std_logic;
SIGNAL \IRX|D[7]~17_combout\ : std_logic;
SIGNAL \IRX|C[7]~15_combout\ : std_logic;
SIGNAL \IRX|C[6]~19_combout\ : std_logic;
SIGNAL \PC|data_out[14]~1_combout\ : std_logic;
SIGNAL \PC|Add0~43\ : std_logic;
SIGNAL \PC|Add0~44_combout\ : std_logic;
SIGNAL \PC|Add0~45\ : std_logic;
SIGNAL \PC|Add0~46_combout\ : std_logic;
SIGNAL \IRX|C[7]~13_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \IRX|D[7]~12_combout\ : std_logic;
SIGNAL \inst6|mem~18_combout\ : std_logic;
SIGNAL \inst6|data[7]~reg0_q\ : std_logic;
SIGNAL \IRX|C[7]~40_combout\ : std_logic;
SIGNAL \IRX|C[7]~16_combout\ : std_logic;
SIGNAL \ACCB|data_out[7]~0_combout\ : std_logic;
SIGNAL \ACCB|C[7]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst5|inst|valor_interno~q\ : std_logic;
SIGNAL \inst13|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~9_cout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~6_combout\ : std_logic;
SIGNAL \inst6|mem~22_combout\ : std_logic;
SIGNAL \inst6|mem~23_combout\ : std_logic;
SIGNAL \inst6|data[3]~reg0_q\ : std_logic;
SIGNAL \inst6|data[7]~1_combout\ : std_logic;
SIGNAL \IRX|C[3]~29_combout\ : std_logic;
SIGNAL \IRX|C[3]~30_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~8_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~4_combout\ : std_logic;
SIGNAL \ACCB|TRI_STATE~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~5_combout\ : std_logic;
SIGNAL \inst6|data[7]~0_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~8_combout\ : std_logic;
SIGNAL \IRX|D[7]~13_combout\ : std_logic;
SIGNAL \IRX|D[7]~14_combout\ : std_logic;
SIGNAL \IRX|D[7]~15_combout\ : std_logic;
SIGNAL \inst1|Yupa[3]~7_combout\ : std_logic;
SIGNAL \PC|Add0~52_combout\ : std_logic;
SIGNAL \PC|Add0~23\ : std_logic;
SIGNAL \PC|Add0~24_combout\ : std_logic;
SIGNAL \PC|Add0~51_combout\ : std_logic;
SIGNAL \IRX|D[4]~27_combout\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \IRX|D[4]~28_combout\ : std_logic;
SIGNAL \inst6|mem~21_combout\ : std_logic;
SIGNAL \inst6|data[4]~reg0_q\ : std_logic;
SIGNAL \IRX|D[4]~45_combout\ : std_logic;
SIGNAL \IRX|D[4]~29_combout\ : std_logic;
SIGNAL \ACCA|data_out[4]~3_combout\ : std_logic;
SIGNAL \IRX|C[4]~24_combout\ : std_logic;
SIGNAL \IRX|C[4]~25_combout\ : std_logic;
SIGNAL \IRX|C[4]~42_combout\ : std_logic;
SIGNAL \IRX|C[4]~26_combout\ : std_logic;
SIGNAL \PC|data_out[12]~3_combout\ : std_logic;
SIGNAL \PC|Add0~39\ : std_logic;
SIGNAL \PC|Add0~40_combout\ : std_logic;
SIGNAL \PC|Add0~41\ : std_logic;
SIGNAL \PC|Add0~42_combout\ : std_logic;
SIGNAL \IRX|C[5]~21_combout\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \IRX|C[5]~22_combout\ : std_logic;
SIGNAL \IRX|C[5]~23_combout\ : std_logic;
SIGNAL \IRX|D[5]~22_combout\ : std_logic;
SIGNAL \IRX|D[5]~23_combout\ : std_logic;
SIGNAL \IRX|D[5]~24_combout\ : std_logic;
SIGNAL \IRX|D[5]~25_combout\ : std_logic;
SIGNAL \AUX|data_out~10_combout\ : std_logic;
SIGNAL \AUX|data_out~11_combout\ : std_logic;
SIGNAL \AUX|data_out~12_combout\ : std_logic;
SIGNAL \AUX|data_out~13_combout\ : std_logic;
SIGNAL \AUX|data_out~14_combout\ : std_logic;
SIGNAL \IRX|D[1]~34_combout\ : std_logic;
SIGNAL \IRX|D[1]~35_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \IRX|D[1]~36_combout\ : std_logic;
SIGNAL \inst6|mem~26_combout\ : std_logic;
SIGNAL \inst6|mem~27_combout\ : std_logic;
SIGNAL \inst6|data[1]~reg0_q\ : std_logic;
SIGNAL \IRX|D[1]~47_combout\ : std_logic;
SIGNAL \IRX|D[1]~37_combout\ : std_logic;
SIGNAL \ACCA|data_out[1]~6_combout\ : std_logic;
SIGNAL \IRX|C[1]~34_combout\ : std_logic;
SIGNAL \IRX|C[1]~35_combout\ : std_logic;
SIGNAL \IRX|C[1]~44_combout\ : std_logic;
SIGNAL \IRX|C[1]~36_combout\ : std_logic;
SIGNAL \AUX|data_out~6_combout\ : std_logic;
SIGNAL \AUX|data_out~7_combout\ : std_logic;
SIGNAL \IRX|C[0]~38_combout\ : std_logic;
SIGNAL \IRX|D[0]~40_combout\ : std_logic;
SIGNAL \inst6|mem~28_combout\ : std_logic;
SIGNAL \inst6|mem~29_combout\ : std_logic;
SIGNAL \inst6|data[0]~reg0_q\ : std_logic;
SIGNAL \IRX|C[0]~45_combout\ : std_logic;
SIGNAL \IRX|C[0]~39_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~7_combout\ : std_logic;
SIGNAL \ACCB|C[0]~7_combout\ : std_logic;
SIGNAL \inst1|Add0~7_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~39_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~40_combout\ : std_logic;
SIGNAL \inst14|inst9|data[97]~41_combout\ : std_logic;
SIGNAL \inst14|inst9|data[93]~42_combout\ : std_logic;
SIGNAL \inst14|inst13|CN~q\ : std_logic;
SIGNAL \inst14|inst13|B3~q\ : std_logic;
SIGNAL \inst14|inst9|data[14]~49_combout\ : std_logic;
SIGNAL \inst14|inst13|B4~q\ : std_logic;
SIGNAL \inst5|inst11|output~0_combout\ : std_logic;
SIGNAL \inst5|inst11|output~1_combout\ : std_logic;
SIGNAL \inst5|inst3|valor_interno~q\ : std_logic;
SIGNAL \inst14|inst7~0_combout\ : std_logic;
SIGNAL \inst14|inst7~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data~27_combout\ : std_logic;
SIGNAL \inst14|inst9|data~30_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~43_combout\ : std_logic;
SIGNAL \inst14|inst7~2_combout\ : std_logic;
SIGNAL \IRQn~input_o\ : std_logic;
SIGNAL \inst3|IRQ_flag~0_combout\ : std_logic;
SIGNAL \inst3|IRQ_flag~q\ : std_logic;
SIGNAL \XIRQn~input_o\ : std_logic;
SIGNAL \inst3|XIRQ_flag~0_combout\ : std_logic;
SIGNAL \inst3|XIRQ_flag~q\ : std_logic;
SIGNAL \inst14|inst7~3_combout\ : std_logic;
SIGNAL \inst14|inst7~4_combout\ : std_logic;
SIGNAL \inst14|inst7~5_combout\ : std_logic;
SIGNAL \inst14|inst3|SELECTOR~0_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[2]~14\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[3]~16\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[4]~18\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[5]~20\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[6]~22\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[7]~24\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[8]~26\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal14~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal17~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[44]~45_combout\ : std_logic;
SIGNAL \AUX|data_out~0_combout\ : std_logic;
SIGNAL \AUX|data_out~1_combout\ : std_logic;
SIGNAL \AUX|data_out~2_combout\ : std_logic;
SIGNAL \AUX|data_out~3_combout\ : std_logic;
SIGNAL \AUX|data_out~4_combout\ : std_logic;
SIGNAL \AUX|data_out~5_combout\ : std_logic;
SIGNAL \IRX|C[2]~32_combout\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \IRX|D[2]~32_combout\ : std_logic;
SIGNAL \inst6|mem~24_combout\ : std_logic;
SIGNAL \inst6|mem~25_combout\ : std_logic;
SIGNAL \inst6|data[2]~reg0_q\ : std_logic;
SIGNAL \IRX|C[2]~43_combout\ : std_logic;
SIGNAL \IRX|C[2]~33_combout\ : std_logic;
SIGNAL \IRX|D[2]~30_combout\ : std_logic;
SIGNAL \IRX|D[2]~31_combout\ : std_logic;
SIGNAL \IRX|D[2]~46_combout\ : std_logic;
SIGNAL \IRX|D[2]~33_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~1_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal3~3_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal5~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~12_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~76_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~54_combout\ : std_logic;
SIGNAL \ACCA|C[6]~1_combout\ : std_logic;
SIGNAL \ACCA|data_out[6]~1_combout\ : std_logic;
SIGNAL \IRX|D[6]~18_combout\ : std_logic;
SIGNAL \IRX|D[6]~19_combout\ : std_logic;
SIGNAL \IRX|D[6]~44_combout\ : std_logic;
SIGNAL \IRX|D[6]~21_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[9]~28\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal7~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~11_combout\ : std_logic;
SIGNAL \inst14|inst9|data[72]~55_combout\ : std_logic;
SIGNAL \inst14|inst9|data[73]~56_combout\ : std_logic;
SIGNAL \ACCA|C[0]~7_combout\ : std_logic;
SIGNAL \ACCA|data_out[0]~7_combout\ : std_logic;
SIGNAL \AUX|data_out~15_combout\ : std_logic;
SIGNAL \IRX|D[0]~38_combout\ : std_logic;
SIGNAL \IRX|D[0]~39_combout\ : std_logic;
SIGNAL \IRX|D[0]~41_combout\ : std_logic;
SIGNAL \IRX|D[0]~42_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal11~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal11~3_combout\ : std_logic;
SIGNAL \inst14|inst9|data[71]~57_combout\ : std_logic;
SIGNAL \inst14|inst13|nWA~q\ : std_logic;
SIGNAL \ACCA|C[7]~0_combout\ : std_logic;
SIGNAL \ACCA|data_out[7]~0_combout\ : std_logic;
SIGNAL \IRX|D[7]~10_combout\ : std_logic;
SIGNAL \IRX|D[7]~11_combout\ : std_logic;
SIGNAL \IRX|D[7]~43_combout\ : std_logic;
SIGNAL \IRX|D[7]~16_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[10]~30\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal29~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal1~0_combout\ : std_logic;
SIGNAL \inst14|inst13|nCRI~q\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal0~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~0_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal2~1_combout\ : std_logic;
SIGNAL \inst14|inst9|data[91]~32_combout\ : std_logic;
SIGNAL \inst14|inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal20~2_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal22~2_combout\ : std_logic;
SIGNAL \inst14|inst9|data[90]~37_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[0]~11_combout\ : std_logic;
SIGNAL \inst14|inst9|data[78]~48_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ : std_logic;
SIGNAL \inst14|inst4|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ : std_logic;
SIGNAL \inst14|inst9|Equal26~0_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[7]~5_combout\ : std_logic;
SIGNAL \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ : std_logic;
SIGNAL \inst14|inst13|prueba[2]~0_combout\ : std_logic;
SIGNAL \inst14|inst9|data[96]~10_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~50_combout\ : std_logic;
SIGNAL \inst14|inst9|data[6]~51_combout\ : std_logic;
SIGNAL \inst14|inst13|CZ~q\ : std_logic;
SIGNAL \inst5|inst10|output~0_combout\ : std_logic;
SIGNAL \inst5|inst10|output~1_combout\ : std_logic;
SIGNAL \inst5|inst10|output~2_combout\ : std_logic;
SIGNAL \inst5|inst10|output~3_combout\ : std_logic;
SIGNAL \inst5|inst10|output~4_combout\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|WideOr0~1_combout\ : std_logic;
SIGNAL \inst1|WideOr0~combout\ : std_logic;
SIGNAL \inst5|inst10|output~5_combout\ : std_logic;
SIGNAL \inst5|inst10|output~6_combout\ : std_logic;
SIGNAL \inst5|inst2|valor_interno~q\ : std_logic;
SIGNAL \inst1|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACCA|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ACCB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|inst13|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst4|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \AUX|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst14|inst13|prueba\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|inst13|RA\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst13|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst14|inst13|EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|PC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst13|EB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_nCBD~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_CC~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nCRI~q\ : std_logic;
SIGNAL \ALT_INV_CLK~input_o\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nAS~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_nDUPA~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_EA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|inst13|ALT_INV_CN~q\ : std_logic;
SIGNAL \inst14|inst13|ALT_INV_CZ~q\ : std_logic;

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
\inst14|inst13|ALT_INV_nCBD~q\ <= NOT \inst14|inst13|nCBD~q\;
\inst14|inst13|ALT_INV_CC~q\ <= NOT \inst14|inst13|CC~q\;
\inst14|inst13|ALT_INV_nCRI~q\ <= NOT \inst14|inst13|nCRI~q\;
\ALT_INV_CLK~input_o\ <= NOT \CLK~input_o\;
\inst14|inst13|ALT_INV_nAS~q\ <= NOT \inst14|inst13|nAS~q\;
\inst14|inst13|ALT_INV_nDUPA~q\ <= NOT \inst14|inst13|nDUPA~q\;
\inst14|inst13|ALT_INV_EA\(1) <= NOT \inst14|inst13|EA\(1);
\inst14|inst13|ALT_INV_EA\(0) <= NOT \inst14|inst13|EA\(0);
\inst14|inst13|ALT_INV_CN~q\ <= NOT \inst14|inst13|CN~q\;
\inst14|inst13|ALT_INV_CZ~q\ <= NOT \inst14|inst13|CZ~q\;

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

\Edo_Pres[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[11]~output_o\);

\Edo_Pres[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[10]~output_o\);

\Edo_Pres[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[9]~output_o\);

\Edo_Pres[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[8]~output_o\);

\Edo_Pres[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[7]~output_o\);

\Edo_Pres[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[6]~output_o\);

\Edo_Pres[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[5]~output_o\);

\Edo_Pres[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[4]~output_o\);

\Edo_Pres[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[3]~output_o\);

\Edo_Pres[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[2]~output_o\);

\Edo_Pres[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[1]~output_o\);

\Edo_Pres[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[0]~output_o\);

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

\inst14|inst9|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal12~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|Equal11~2_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst14|inst9|Equal11~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	combout => \inst14|inst9|Equal12~0_combout\);

\inst14|inst9|Equal9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal9~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & \inst14|inst9|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal7~0_combout\,
	combout => \inst14|inst9|Equal9~2_combout\);

\ACCA|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[2]~5_combout\ = (\ACCA|data_out\(2)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[2]~5_combout\);

\ACCA|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[2]~5_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[2]~5_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[2]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[2]~33_combout\,
	datab => \ACCA|C[2]~5_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[2]~5_combout\);

\ACCA|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|B[7]~0_combout\ = (\inst14|inst13|EA\(0)) # ((\inst14|inst13|nWA~q\) # (!\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(0),
	datab => \inst14|inst13|nWA~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|B[7]~0_combout\);

\inst14|inst9|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal8~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|Equal7~0_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst14|inst9|Equal7~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	combout => \inst14|inst9|Equal8~0_combout\);

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

\inst14|inst13|nWB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal8~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nWB~q\);

\inst14|inst9|data[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~8_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\) # (((!\inst14|inst9|Equal7~0_combout\ & !\inst14|inst9|Equal3~3_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst9|Equal7~0_combout\,
	datac => \inst14|inst9|Equal3~3_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst14|inst9|data[6]~8_combout\);

\inst14|inst9|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal4~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|Equal3~3_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst14|inst9|Equal3~3_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	combout => \inst14|inst9|Equal4~0_combout\);

\inst14|inst9|data[73]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~74_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\) # ((!\inst14|inst9|Equal11~2_combout\ & !\inst14|inst9|Equal20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal11~2_combout\,
	datad => \inst14|inst9|Equal20~2_combout\,
	combout => \inst14|inst9|data[73]~74_combout\);

\inst14|inst9|data[75]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[75]~64_combout\ = (\inst14|inst9|data[72]~55_combout\ & ((\inst14|inst9|data[6]~8_combout\ & ((!\inst14|inst9|data[73]~74_combout\))) # (!\inst14|inst9|data[6]~8_combout\ & (!\inst14|inst9|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~55_combout\,
	datab => \inst14|inst9|data[6]~8_combout\,
	datac => \inst14|inst9|Equal4~0_combout\,
	datad => \inst14|inst9|data[73]~74_combout\,
	combout => \inst14|inst9|data[75]~64_combout\);

\inst14|inst13|EB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[75]~64_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EB\(0));

\ACCB|C[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[2]~5_combout\ = (\ACCB|data_out\(2)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(2),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|C[2]~5_combout\);

\ACCB|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[2]~5_combout\ = (\inst14|inst13|EB\(0) & ((\ACCB|C[2]~5_combout\))) # (!\inst14|inst13|EB\(0) & (\IRX|C[2]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[2]~33_combout\,
	datab => \ACCB|C[2]~5_combout\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|data_out[2]~5_combout\);

\ACCB|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~8_combout\ = (\inst14|inst13|nWB~q\ & ((\inst14|inst13|EB\(0)) # (\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWB~q\,
	datab => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|EA\(1),
	combout => \ACCB|data_out[0]~8_combout\);

\ACCB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[2]~5_combout\,
	asdata => \IRX|D[2]~33_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(2));

\ACCB|B[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|B[7]~0_combout\ = (\inst14|inst13|EB\(0)) # ((\inst14|inst13|nWB~q\) # (!\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datab => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|B[7]~0_combout\);

\IRX|C[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[2]~31_combout\ = (\ACCA|data_out\(2) & (((\ACCB|data_out\(2)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(2) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(2)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(2),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[2]~31_combout\);

\inst14|inst9|Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & (\inst14|inst9|Equal3~0_combout\ & \inst14|inst9|Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datab => \inst14|inst9|Equal3~0_combout\,
	datac => \inst14|inst9|Equal14~0_combout\,
	combout => \inst14|inst9|Equal14~1_combout\);

\inst14|inst4|valor_interno[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[1]~11_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ $ (VCC))) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & 
-- (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & VCC))
-- \inst14|inst4|valor_interno[1]~12\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datad => VCC,
	combout => \inst14|inst4|valor_interno[1]~11_combout\,
	cout => \inst14|inst4|valor_interno[1]~12\);

\inst14|inst4|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[2]~13_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ & (!\inst14|inst4|valor_interno[1]~12\)) # (!\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ & 
-- ((\inst14|inst4|valor_interno[1]~12\) # (GND)))
-- \inst14|inst4|valor_interno[2]~14\ = CARRY((!\inst14|inst4|valor_interno[1]~12\) # (!\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[1]~12\,
	combout => \inst14|inst4|valor_interno[2]~13_combout\,
	cout => \inst14|inst4|valor_interno[2]~14\);

\inst14|inst4|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[2]~13_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(2));

\inst14|inst5|$00000|auto_generated|result_node[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst13|liga\(2) & (\inst14|inst5|$00000|auto_generated|result_node[0]~11_combout\))) # (!\inst14|inst3|SELECTOR~0_combout\ & 
-- (((\inst14|inst4|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|liga\(2),
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~11_combout\,
	datac => \inst14|inst4|valor_interno\(2),
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\);

\inst14|inst9|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal15~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|Equal14~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst14|inst9|Equal14~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	combout => \inst14|inst9|Equal15~0_combout\);

\inst14|inst9|data[96]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~26_combout\ = (\inst14|inst9|data[6]~8_combout\ & (\inst14|inst9|data[73]~74_combout\ & (!\inst14|inst9|Equal17~0_combout\ & !\inst14|inst9|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[6]~8_combout\,
	datab => \inst14|inst9|data[73]~74_combout\,
	datac => \inst14|inst9|Equal17~0_combout\,
	datad => \inst14|inst9|Equal15~0_combout\,
	combout => \inst14|inst9|data[96]~26_combout\);

\inst14|inst9|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal5~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst14|inst9|Equal5~2_combout\);

\inst14|inst9|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~4_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst14|inst9|Equal3~4_combout\);

\inst14|inst9|data[96]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~28_combout\ = (\inst14|inst9|Equal3~4_combout\ & (!\inst14|inst9|Equal7~0_combout\ & ((!\inst14|inst9|Equal14~2_combout\)))) # (!\inst14|inst9|Equal3~4_combout\ & (((!\inst14|inst9|Equal14~2_combout\) # 
-- (!\inst14|inst9|Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal7~0_combout\,
	datab => \inst14|inst9|Equal5~2_combout\,
	datac => \inst14|inst9|Equal3~4_combout\,
	datad => \inst14|inst9|Equal14~2_combout\,
	combout => \inst14|inst9|data[96]~28_combout\);

\inst14|inst9|data[96]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~75_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|data[96]~10_combout\ & \inst14|inst9|Equal20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|data[96]~10_combout\,
	datad => \inst14|inst9|Equal20~2_combout\,
	combout => \inst14|inst9|data[96]~75_combout\);

\inst14|inst9|data[96]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~24_combout\ = (((!\inst14|inst9|Equal7~0_combout\ & !\inst14|inst9|Equal3~3_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal7~0_combout\,
	datab => \inst14|inst9|Equal3~3_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst14|inst9|data[96]~24_combout\);

\inst14|inst9|Equal19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal19~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|Equal14~1_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal14~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	combout => \inst14|inst9|Equal19~0_combout\);

\inst14|inst9|data[96]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~25_combout\ = (\inst14|inst9|data[96]~24_combout\ & (!\inst14|inst9|Equal19~0_combout\ & ((!\inst14|inst9|Equal11~2_combout\) # (!\inst14|inst9|Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[96]~24_combout\,
	datab => \inst14|inst9|Equal5~2_combout\,
	datac => \inst14|inst9|Equal11~2_combout\,
	datad => \inst14|inst9|Equal19~0_combout\,
	combout => \inst14|inst9|data[96]~25_combout\);

\inst14|inst9|data[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~18_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\) # (((!\inst14|inst9|Equal11~2_combout\ & !\inst14|inst9|Equal20~2_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst9|Equal11~2_combout\,
	datac => \inst14|inst9|Equal20~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst14|inst9|data[6]~18_combout\);

\inst14|inst9|Equal18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal18~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ & 
-- \inst14|inst9|Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|Equal18~2_combout\);

\inst14|inst9|data~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~31_combout\ = (\inst14|inst9|data[6]~18_combout\ & (!\inst14|inst9|Equal9~2_combout\ & (!\inst14|inst9|Equal5~3_combout\ & !\inst14|inst9|Equal18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[6]~18_combout\,
	datab => \inst14|inst9|Equal9~2_combout\,
	datac => \inst14|inst9|Equal5~3_combout\,
	datad => \inst14|inst9|Equal18~2_combout\,
	combout => \inst14|inst9|data~31_combout\);

\inst14|inst9|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~1_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	combout => \inst14|inst9|Equal0~1_combout\);

\inst14|inst9|Equal27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal27~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	combout => \inst14|inst9|Equal27~0_combout\);

\inst14|inst9|Equal27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal27~1_combout\ = (\inst14|inst9|Equal29~0_combout\ & (\inst14|inst9|Equal0~1_combout\ & (\inst14|inst9|Equal27~0_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal29~0_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datac => \inst14|inst9|Equal27~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst14|inst9|Equal27~1_combout\);

\inst14|inst9|Equal28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal28~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|Equal29~0_combout\ & (\inst14|inst9|Equal0~1_combout\ & \inst14|inst9|Equal27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst14|inst9|Equal29~0_combout\,
	datac => \inst14|inst9|Equal0~1_combout\,
	datad => \inst14|inst9|Equal27~0_combout\,
	combout => \inst14|inst9|Equal28~0_combout\);

\inst14|inst9|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~3_combout\ = (\inst14|inst9|Equal0~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst14|inst9|Equal0~3_combout\);

\inst14|inst9|Equal29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal29~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ & (\inst14|inst9|Equal29~0_combout\ & (\inst14|inst9|Equal0~3_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	datab => \inst14|inst9|Equal29~0_combout\,
	datac => \inst14|inst9|Equal0~3_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	combout => \inst14|inst9|Equal29~1_combout\);

\inst14|inst9|data[96]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~35_combout\ = (\inst14|inst9|Equal27~1_combout\) # ((\inst14|inst9|Equal28~0_combout\) # (\inst14|inst9|Equal29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal27~1_combout\,
	datab => \inst14|inst9|Equal28~0_combout\,
	datac => \inst14|inst9|Equal29~1_combout\,
	combout => \inst14|inst9|data[96]~35_combout\);

\inst14|inst9|data[72]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~13_combout\ = (!\inst14|inst9|Equal7~0_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst14|inst9|Equal7~0_combout\,
	combout => \inst14|inst9|data[72]~13_combout\);

\inst14|inst9|data[72]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~14_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & ((!\inst14|inst9|Equal3~3_combout\))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (!\inst14|inst9|Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal11~2_combout\,
	datad => \inst14|inst9|Equal3~3_combout\,
	combout => \inst14|inst9|data[72]~14_combout\);

\inst14|inst9|data[26]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~15_combout\ = (\inst14|inst9|Equal5~2_combout\ & (!\inst14|inst9|Equal11~2_combout\ & ((!\inst14|inst9|Equal14~2_combout\)))) # (!\inst14|inst9|Equal5~2_combout\ & (((!\inst14|inst9|Equal14~2_combout\) # 
-- (!\inst14|inst9|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal11~2_combout\,
	datab => \inst14|inst9|Equal3~4_combout\,
	datac => \inst14|inst9|Equal5~2_combout\,
	datad => \inst14|inst9|Equal14~2_combout\,
	combout => \inst14|inst9|data[26]~15_combout\);

\inst14|inst9|data[26]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~33_combout\ = (\inst14|inst9|data[72]~14_combout\ & \inst14|inst9|data[26]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~14_combout\,
	datab => \inst14|inst9|data[26]~15_combout\,
	combout => \inst14|inst9|data[26]~33_combout\);

\inst14|inst9|data[58]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[58]~17_combout\ = (!\inst14|inst9|Equal17~0_combout\ & (!\inst14|inst9|Equal19~0_combout\ & ((!\inst14|inst9|Equal20~2_combout\) # (!\inst14|inst9|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal3~4_combout\,
	datab => \inst14|inst9|Equal20~2_combout\,
	datac => \inst14|inst9|Equal17~0_combout\,
	datad => \inst14|inst9|Equal19~0_combout\,
	combout => \inst14|inst9|data[58]~17_combout\);

\inst14|inst9|data[58]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[58]~34_combout\ = (\inst14|inst9|data[6]~12_combout\ & (\inst14|inst9|data[72]~13_combout\ & (\inst14|inst9|data[26]~33_combout\ & \inst14|inst9|data[58]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[6]~12_combout\,
	datab => \inst14|inst9|data[72]~13_combout\,
	datac => \inst14|inst9|data[26]~33_combout\,
	datad => \inst14|inst9|data[58]~17_combout\,
	combout => \inst14|inst9|data[58]~34_combout\);

\inst14|inst9|Equal23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal23~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & (\inst14|inst9|Equal29~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datab => \inst14|inst9|Equal29~0_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	combout => \inst14|inst9|Equal23~0_combout\);

\inst14|inst9|Equal23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal23~1_combout\ = (\inst14|inst9|Equal23~0_combout\ & (\inst14|inst9|Equal0~1_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal23~0_combout\,
	datab => \inst14|inst9|Equal0~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst14|inst9|Equal23~1_combout\);

\inst14|inst9|data[26]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~19_combout\ = (\inst14|inst9|data[6]~18_combout\ & (!\inst14|inst9|Equal23~1_combout\ & ((!\inst14|inst9|Equal20~2_combout\) # (!\inst14|inst9|Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[6]~18_combout\,
	datab => \inst14|inst9|Equal5~2_combout\,
	datac => \inst14|inst9|Equal20~2_combout\,
	datad => \inst14|inst9|Equal23~1_combout\,
	combout => \inst14|inst9|data[26]~19_combout\);

\inst14|inst9|data~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~20_combout\ = ((\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ $ (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\)) # (!\inst14|inst9|Equal0~2_combout\)) # (!\inst14|inst9|Equal23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal23~0_combout\,
	datad => \inst14|inst9|Equal0~2_combout\,
	combout => \inst14|inst9|data~20_combout\);

\inst14|inst9|data[26]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~21_combout\ = (\inst14|inst9|data~20_combout\ & (!\inst14|inst9|Equal15~0_combout\ & !\inst14|inst9|Equal18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~20_combout\,
	datac => \inst14|inst9|Equal15~0_combout\,
	datad => \inst14|inst9|Equal18~2_combout\,
	combout => \inst14|inst9|data[26]~21_combout\);

\inst14|inst13|prueba[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst13|prueba[4]~1_combout\ = (\inst14|inst9|data[58]~34_combout\ & (\inst14|inst9|data[26]~19_combout\ & (\inst14|inst9|data[26]~21_combout\ & !\inst14|inst9|Equal26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[58]~34_combout\,
	datab => \inst14|inst9|data[26]~19_combout\,
	datac => \inst14|inst9|data[26]~21_combout\,
	datad => \inst14|inst9|Equal26~0_combout\,
	combout => \inst14|inst13|prueba[4]~1_combout\);

\inst14|inst9|data[96]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~36_combout\ = (\inst14|inst9|data[96]~25_combout\ & (\inst14|inst9|data~31_combout\ & ((!\inst14|inst13|prueba[4]~1_combout\) # (!\inst14|inst9|data[96]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[96]~25_combout\,
	datab => \inst14|inst9|data~31_combout\,
	datac => \inst14|inst9|data[96]~35_combout\,
	datad => \inst14|inst13|prueba[4]~1_combout\,
	combout => \inst14|inst9|data[96]~36_combout\);

\inst14|inst9|data[96]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~38_combout\ = ((\inst14|inst9|data[96]~26_combout\ & (\inst14|inst9|data[96]~28_combout\ & \inst14|inst9|data[96]~75_combout\))) # (!\inst14|inst9|data[96]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[96]~26_combout\,
	datab => \inst14|inst9|data[96]~28_combout\,
	datac => \inst14|inst9|data[96]~75_combout\,
	datad => \inst14|inst9|data[96]~36_combout\,
	combout => \inst14|inst9|data[96]~38_combout\);

\inst14|inst13|prueba[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[96]~38_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(3));

\inst14|inst9|Equal20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal20~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & \inst14|inst9|Equal20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal20~2_combout\,
	combout => \inst14|inst9|Equal20~3_combout\);

\inst14|inst13|ACCSEC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal20~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|ACCSEC~q\);

\IRX|C[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[0]~37_combout\ = (\ACCA|data_out\(0) & (((\ACCB|data_out\(0)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(0) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(0)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(0),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[0]~37_combout\);

\inst14|inst9|data[26]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~16_combout\ = (\inst14|inst9|data[6]~12_combout\ & (\inst14|inst9|data[72]~13_combout\ & (\inst14|inst9|data[72]~14_combout\ & \inst14|inst9|data[26]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[6]~12_combout\,
	datab => \inst14|inst9|data[72]~13_combout\,
	datac => \inst14|inst9|data[72]~14_combout\,
	datad => \inst14|inst9|data[26]~15_combout\,
	combout => \inst14|inst9|data[26]~16_combout\);

\inst14|inst9|Equal24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal24~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|Equal23~0_combout\ & \inst14|inst9|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst14|inst9|Equal23~0_combout\,
	datac => \inst14|inst9|Equal0~1_combout\,
	combout => \inst14|inst9|Equal24~0_combout\);

\inst14|inst9|data[24]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[24]~46_combout\ = (\inst14|inst9|data[26]~16_combout\ & (\inst14|inst9|data[58]~17_combout\ & (\inst14|inst9|data[26]~19_combout\ & \inst14|inst9|Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~16_combout\,
	datab => \inst14|inst9|data[58]~17_combout\,
	datac => \inst14|inst9|data[26]~19_combout\,
	datad => \inst14|inst9|Equal24~0_combout\,
	combout => \inst14|inst9|data[24]~46_combout\);

\inst14|inst9|data[24]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[24]~47_combout\ = (\inst14|inst9|Equal15~0_combout\) # ((\inst14|inst9|data[24]~46_combout\ & !\inst14|inst9|Equal18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal15~0_combout\,
	datab => \inst14|inst9|data[24]~46_combout\,
	datad => \inst14|inst9|Equal18~2_combout\,
	combout => \inst14|inst9|data[24]~47_combout\);

\inst14|inst13|BD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[24]~47_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|BD~q\);

\AUX|data_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~8_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(8))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[7]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(8),
	datab => \IRX|D[7]~16_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \AUX|data_out~8_combout\);

\AUX|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~8_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(7));

\AUX|data_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~9_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(7))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[6]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(7),
	datab => \IRX|D[6]~21_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \AUX|data_out~9_combout\);

\AUX|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~9_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(6));

\ACCA|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[5]~2_combout\ = (\ACCA|data_out\(5)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[5]~2_combout\);

\ACCA|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[5]~2_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[5]~2_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[5]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[5]~25_combout\,
	datab => \ACCA|C[5]~2_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[5]~2_combout\);

\ACCB|C[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[5]~2_combout\ = (\ACCB|data_out\(5)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(5),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|C[5]~2_combout\);

\ACCB|data_out[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[5]~2_combout\ = (\inst14|inst13|EB\(0) & ((\ACCB|C[5]~2_combout\))) # (!\inst14|inst13|EB\(0) & (\IRX|C[5]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[5]~23_combout\,
	datab => \ACCB|C[5]~2_combout\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|data_out[5]~2_combout\);

\ACCB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[5]~2_combout\,
	asdata => \IRX|D[5]~25_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(5));

\inst14|inst9|data[48]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[48]~65_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\) # ((\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ $ (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\)) # 
-- (!\inst14|inst9|Equal14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|data[48]~65_combout\);

\inst14|inst9|data[48]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[48]~67_combout\ = ((\inst14|inst9|data[24]~46_combout\) # ((\inst14|inst9|Equal27~1_combout\ & \inst14|inst13|prueba[4]~1_combout\))) # (!\inst14|inst9|data[48]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[48]~65_combout\,
	datab => \inst14|inst9|Equal27~1_combout\,
	datac => \inst14|inst13|prueba[4]~1_combout\,
	datad => \inst14|inst9|data[24]~46_combout\,
	combout => \inst14|inst9|data[48]~67_combout\);

\inst14|inst13|nERA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[48]~67_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nERA1~q\);

\AUX|TRI_STATE_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|TRI_STATE_C~0_combout\ = (\inst14|inst13|RA\(0)) # ((\inst14|inst13|BD~q\) # (!\inst14|inst13|nERA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \inst14|inst13|BD~q\,
	datad => \inst14|inst13|nERA1~q\,
	combout => \AUX|TRI_STATE_C~0_combout\);

\IRX|C[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[5]~20_combout\ = (\ACCB|data_out\(5) & (((\AUX|data_out\(13)) # (\AUX|TRI_STATE_C~0_combout\)))) # (!\ACCB|data_out\(5) & (\ACCB|B[7]~0_combout\ & ((\AUX|data_out\(13)) # (\AUX|TRI_STATE_C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(5),
	datab => \ACCB|B[7]~0_combout\,
	datac => \AUX|data_out\(13),
	datad => \AUX|TRI_STATE_C~0_combout\,
	combout => \IRX|C[5]~20_combout\);

\inst14|inst9|data[26]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~22_combout\ = (\inst14|inst9|data[26]~16_combout\ & (\inst14|inst9|data[58]~17_combout\ & (\inst14|inst9|data[26]~19_combout\ & \inst14|inst9|data[26]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~16_combout\,
	datab => \inst14|inst9|data[58]~17_combout\,
	datac => \inst14|inst9|data[26]~19_combout\,
	datad => \inst14|inst9|data[26]~21_combout\,
	combout => \inst14|inst9|data[26]~22_combout\);

\inst14|inst9|data[34]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[34]~58_combout\ = (\inst14|inst9|data[26]~22_combout\ & (!\inst14|inst9|Equal26~0_combout\ & ((\inst14|inst9|Equal27~1_combout\) # (\inst14|inst9|Equal29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~22_combout\,
	datab => \inst14|inst9|Equal27~1_combout\,
	datac => \inst14|inst9|Equal29~1_combout\,
	datad => \inst14|inst9|Equal26~0_combout\,
	combout => \inst14|inst9|data[34]~58_combout\);

\inst14|inst9|data[34]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[34]~44_combout\ = (\inst14|inst9|data[26]~16_combout\ & (!\inst14|inst9|Equal12~0_combout\ & !\inst14|inst9|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~16_combout\,
	datac => \inst14|inst9|Equal12~0_combout\,
	datad => \inst14|inst9|Equal15~0_combout\,
	combout => \inst14|inst9|data[34]~44_combout\);

\inst14|inst9|data[34]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[34]~59_combout\ = (\inst14|inst9|data[34]~58_combout\) # ((\inst14|inst9|Equal18~2_combout\ & (\inst14|inst9|data[34]~44_combout\ & !\inst14|inst9|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[34]~58_combout\,
	datab => \inst14|inst9|Equal18~2_combout\,
	datac => \inst14|inst9|data[34]~44_combout\,
	datad => \inst14|inst9|Equal17~0_combout\,
	combout => \inst14|inst9|data[34]~59_combout\);

\inst14|inst13|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[34]~59_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(2));

\PC|data_out[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[13]~2_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[5]~23_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(13),
	datab => \IRX|C[5]~23_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[13]~2_combout\);

\inst14|inst9|data[47]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~52_combout\ = ((\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ & ((\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\) # (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\ & ((!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\)))) # (!\inst14|inst9|Equal14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst14|inst9|Equal14~1_combout\,
	combout => \inst14|inst9|data[47]~52_combout\);

\inst14|inst9|data[47]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[47]~53_combout\ = ((\inst14|inst9|data[26]~22_combout\ & ((\inst14|inst9|Equal26~0_combout\) # (\inst14|inst9|Equal27~1_combout\)))) # (!\inst14|inst9|data[47]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[47]~52_combout\,
	datab => \inst14|inst9|Equal26~0_combout\,
	datac => \inst14|inst9|Equal27~1_combout\,
	datad => \inst14|inst9|data[26]~22_combout\,
	combout => \inst14|inst9|data[47]~53_combout\);

\inst14|inst13|nERA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[47]~53_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nERA0~q\);

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

\ACCA|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|TRI_STATE~0_combout\ = (\inst14|inst13|EA\(0) & (!\inst14|inst13|EA\(1) & !\inst14|inst13|nWA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EA\(0),
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|nWA~q\,
	combout => \ACCA|TRI_STATE~0_combout\);

\IRX|D[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[4]~26_combout\ = (\ACCA|data_out\(4) & ((\AUX|data_out\(4)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(4) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(4)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \AUX|data_out\(4),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[4]~26_combout\);

\ACCB|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[4]~3_combout\ = (\ACCB|data_out\(4)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(4),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|C[4]~3_combout\);

\ACCB|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[4]~3_combout\ = (\inst14|inst13|EB\(0) & ((\ACCB|C[4]~3_combout\))) # (!\inst14|inst13|EB\(0) & (\IRX|C[4]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[4]~26_combout\,
	datab => \ACCB|C[4]~3_combout\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|data_out[4]~3_combout\);

\ACCB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[4]~3_combout\,
	asdata => \IRX|D[4]~29_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(4));

\inst14|inst9|data[26]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~9_combout\ = (\inst14|inst9|data[6]~8_combout\ & (!\inst14|inst9|Equal1~0_combout\ & (!\inst14|inst9|Equal15~0_combout\ & !\inst14|inst9|Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[6]~8_combout\,
	datab => \inst14|inst9|Equal1~0_combout\,
	datac => \inst14|inst9|Equal15~0_combout\,
	datad => \inst14|inst9|Equal24~0_combout\,
	combout => \inst14|inst9|data[26]~9_combout\);

\inst14|inst9|data[32]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~60_combout\ = (((\inst14|inst9|Equal26~0_combout\ & \inst14|inst9|data[26]~22_combout\)) # (!\inst14|inst9|data[47]~52_combout\)) # (!\inst14|inst9|data[26]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal26~0_combout\,
	datab => \inst14|inst9|data[26]~22_combout\,
	datac => \inst14|inst9|data[26]~9_combout\,
	datad => \inst14|inst9|data[47]~52_combout\,
	combout => \inst14|inst9|data[32]~60_combout\);

\inst14|inst9|data[32]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[32]~61_combout\ = (\inst14|inst9|data[32]~60_combout\) # ((\inst14|inst13|prueba[4]~1_combout\ & ((\inst14|inst9|Equal27~1_combout\) # (\inst14|inst9|Equal29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[32]~60_combout\,
	datab => \inst14|inst13|prueba[4]~1_combout\,
	datac => \inst14|inst9|Equal27~1_combout\,
	datad => \inst14|inst9|Equal29~1_combout\,
	combout => \inst14|inst9|data[32]~61_combout\);

\inst14|inst13|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[32]~61_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|PC\(0));

\PC|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~16_combout\ = \PC|data_out\(0) $ (VCC)
-- \PC|Add0~17\ = CARRY(\PC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(0),
	datad => VCC,
	combout => \PC|Add0~16_combout\,
	cout => \PC|Add0~17\);

\PC|Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~55_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[0]~42_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~16_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~16_combout\,
	datad => \IRX|D[0]~42_combout\,
	combout => \PC|Add0~55_combout\);

\PC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~55_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(0));

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

\PC|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~54_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[1]~37_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~18_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[1]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~18_combout\,
	datad => \IRX|D[1]~37_combout\,
	combout => \PC|Add0~54_combout\);

\PC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~54_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(1));

\PC|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~20_combout\ = (\PC|data_out\(2) & (\PC|Add0~19\ $ (GND))) # (!\PC|data_out\(2) & (!\PC|Add0~19\ & VCC))
-- \PC|Add0~21\ = CARRY((\PC|data_out\(2) & !\PC|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(2),
	datad => VCC,
	cin => \PC|Add0~19\,
	combout => \PC|Add0~20_combout\,
	cout => \PC|Add0~21\);

\PC|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~53_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[2]~33_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~20_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~20_combout\,
	datad => \IRX|D[2]~33_combout\,
	combout => \PC|Add0~53_combout\);

\PC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~53_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(2));

\PC|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~22_combout\ = (\PC|data_out\(3) & (!\PC|Add0~21\)) # (!\PC|data_out\(3) & ((\PC|Add0~21\) # (GND)))
-- \PC|Add0~23\ = CARRY((!\PC|Add0~21\) # (!\PC|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(3),
	datad => VCC,
	cin => \PC|Add0~21\,
	combout => \PC|Add0~22_combout\,
	cout => \PC|Add0~23\);

\ACCA|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[3]~4_combout\ = (\ACCA|data_out\(3)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(3),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[3]~4_combout\);

\ACCA|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[3]~4_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[3]~4_combout\))) # (!\inst14|inst13|EA\(1) & (\inst1|Yupa[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~7_combout\,
	datab => \ACCA|C[3]~4_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[3]~4_combout\);

\ACCB|C[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[3]~4_combout\ = (\ACCB|data_out\(3)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(3),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|C[3]~4_combout\);

\ACCB|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[3]~4_combout\ = (\inst14|inst13|EB\(0) & ((\ACCB|C[3]~4_combout\))) # (!\inst14|inst13|EB\(0) & (\IRX|C[3]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[3]~30_combout\,
	datab => \ACCB|C[3]~4_combout\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|data_out[3]~4_combout\);

\ACCB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[3]~4_combout\,
	asdata => \inst1|Yupa[3]~7_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(3));

\IRX|C[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[3]~27_combout\ = (\ACCA|data_out\(3) & (((\ACCB|data_out\(3)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(3) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(3)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(3),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(3),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[3]~27_combout\);

\PC|data_out[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[11]~4_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[3]~30_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(11),
	datab => \IRX|C[3]~30_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[11]~4_combout\);

\PC|data_out[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[10]~5_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[2]~33_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(10),
	datab => \IRX|C[2]~33_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[10]~5_combout\);

\PC|data_out[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[9]~6_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[1]~36_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(9),
	datab => \IRX|C[1]~36_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[9]~6_combout\);

\PC|data_out[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[8]~7_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[0]~39_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(8),
	datab => \IRX|C[0]~39_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[8]~7_combout\);

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

\PC|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~26_combout\ = (\PC|data_out\(5) & (!\PC|Add0~25\)) # (!\PC|data_out\(5) & ((\PC|Add0~25\) # (GND)))
-- \PC|Add0~27\ = CARRY((!\PC|Add0~25\) # (!\PC|data_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(5),
	datad => VCC,
	cin => \PC|Add0~25\,
	combout => \PC|Add0~26_combout\,
	cout => \PC|Add0~27\);

\PC|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~50_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[5]~25_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~26_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~26_combout\,
	datad => \IRX|D[5]~25_combout\,
	combout => \PC|Add0~50_combout\);

\PC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~50_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(5));

\PC|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~28_combout\ = (\PC|data_out\(6) & (\PC|Add0~27\ $ (GND))) # (!\PC|data_out\(6) & (!\PC|Add0~27\ & VCC))
-- \PC|Add0~29\ = CARRY((\PC|data_out\(6) & !\PC|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(6),
	datad => VCC,
	cin => \PC|Add0~27\,
	combout => \PC|Add0~28_combout\,
	cout => \PC|Add0~29\);

\PC|Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~49_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[6]~21_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~28_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[6]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~28_combout\,
	datad => \IRX|D[6]~21_combout\,
	combout => \PC|Add0~49_combout\);

\PC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~49_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(6));

\PC|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~30_combout\ = (\PC|data_out\(7) & (!\PC|Add0~29\)) # (!\PC|data_out\(7) & ((\PC|Add0~29\) # (GND)))
-- \PC|Add0~31\ = CARRY((!\PC|Add0~29\) # (!\PC|data_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(7),
	datad => VCC,
	cin => \PC|Add0~29\,
	combout => \PC|Add0~30_combout\,
	cout => \PC|Add0~31\);

\PC|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~48_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[7]~16_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~30_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~30_combout\,
	datad => \IRX|D[7]~16_combout\,
	combout => \PC|Add0~48_combout\);

\PC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~48_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(7));

\PC|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~32_combout\ = (\PC|data_out\(8) & (\PC|Add0~31\ $ (GND))) # (!\PC|data_out\(8) & (!\PC|Add0~31\ & VCC))
-- \PC|Add0~33\ = CARRY((\PC|data_out\(8) & !\PC|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(8),
	datad => VCC,
	cin => \PC|Add0~31\,
	combout => \PC|Add0~32_combout\,
	cout => \PC|Add0~33\);

\PC|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Equal0~0_combout\ = (\inst14|inst13|PC\(0) & !\inst14|inst13|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|PC\(2),
	combout => \PC|Equal0~0_combout\);

\PC|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[8]~7_combout\,
	asdata => \PC|Add0~32_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(8));

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

\PC|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[9]~6_combout\,
	asdata => \PC|Add0~34_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(9));

\PC|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~36_combout\ = (\PC|data_out\(10) & (\PC|Add0~35\ $ (GND))) # (!\PC|data_out\(10) & (!\PC|Add0~35\ & VCC))
-- \PC|Add0~37\ = CARRY((\PC|data_out\(10) & !\PC|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(10),
	datad => VCC,
	cin => \PC|Add0~35\,
	combout => \PC|Add0~36_combout\,
	cout => \PC|Add0~37\);

\PC|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[10]~5_combout\,
	asdata => \PC|Add0~36_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(10));

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

\PC|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[11]~4_combout\,
	asdata => \PC|Add0~38_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(11));

\inst14|inst9|data[35]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[35]~62_combout\ = (!\inst14|inst9|Equal18~2_combout\ & ((\inst14|inst9|Equal26~0_combout\) # ((!\inst14|inst9|Equal27~1_combout\) # (!\inst14|inst9|data[26]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal26~0_combout\,
	datab => \inst14|inst9|data[26]~22_combout\,
	datac => \inst14|inst9|Equal27~1_combout\,
	datad => \inst14|inst9|Equal18~2_combout\,
	combout => \inst14|inst9|data[35]~62_combout\);

\inst14|inst13|prueba[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst13|prueba[4]~2_combout\ = (\inst14|inst9|data[26]~22_combout\ & (!\inst14|inst9|Equal26~0_combout\ & !\inst14|inst9|Equal27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~22_combout\,
	datac => \inst14|inst9|Equal26~0_combout\,
	datad => \inst14|inst9|Equal27~1_combout\,
	combout => \inst14|inst13|prueba[4]~2_combout\);

\inst14|inst9|data[35]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[35]~63_combout\ = ((\inst14|inst9|Equal29~1_combout\ & \inst14|inst13|prueba[4]~2_combout\)) # (!\inst14|inst9|data[35]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[35]~62_combout\,
	datac => \inst14|inst9|Equal29~1_combout\,
	datad => \inst14|inst13|prueba[4]~2_combout\,
	combout => \inst14|inst9|data[35]~63_combout\);

\inst14|inst13|nEPC0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[35]~63_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nEPC0~q\);

\PC|TRI_STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|TRI_STATE_D~0_combout\ = (\inst14|inst13|PC\(2)) # ((\inst14|inst13|PC\(0)) # (!\inst14|inst13|nEPC0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(2),
	datab => \inst14|inst13|PC\(0),
	datad => \inst14|inst13|nEPC0~q\,
	combout => \PC|TRI_STATE_D~0_combout\);

\IRX|C[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[3]~28_combout\ = (\AUX|data_out\(11) & (((\PC|data_out\(11)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(11) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(11)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(11),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(11),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[3]~28_combout\);

\inst1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|ACCSEC~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \ACCB|C[3]~4_combout\,
	combout => \inst1|Add0~4_combout\);

\inst1|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|ACCSEC~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \ACCB|C[2]~5_combout\,
	combout => \inst1|Add0~5_combout\);

\ACCB|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[1]~6_combout\ = (\inst14|inst13|EB\(0) & ((\ACCB|C[1]~6_combout\))) # (!\inst14|inst13|EB\(0) & (\IRX|C[1]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[1]~36_combout\,
	datab => \ACCB|C[1]~6_combout\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|data_out[1]~6_combout\);

\ACCB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[1]~6_combout\,
	asdata => \IRX|D[1]~37_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(1));

\ACCB|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[1]~6_combout\ = (\ACCB|data_out\(1)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(1),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|C[1]~6_combout\);

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

\ACCA|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[1]~6_combout\ = (\ACCA|data_out\(1)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(1),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[1]~6_combout\);

\inst14|inst9|data[6]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~68_combout\ = (\inst14|inst9|data[6]~12_combout\ & (\inst14|inst9|data[6]~8_combout\ & !\inst14|inst9|data[6]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[6]~12_combout\,
	datab => \inst14|inst9|data[6]~8_combout\,
	datad => \inst14|inst9|data[6]~18_combout\,
	combout => \inst14|inst9|data[6]~68_combout\);

\inst14|inst13|CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[6]~68_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CC~q\);

\IRX|C[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~12_combout\ = (\ACCA|data_out\(7) & (((\ACCB|data_out\(7)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(7) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(7)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(7),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[7]~12_combout\);

\PC|data_out[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[15]~0_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[7]~16_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(15),
	datab => \IRX|C[7]~16_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[15]~0_combout\);

\ACCB|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[6]~1_combout\ = (\ACCB|data_out\(6)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(6),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|C[6]~1_combout\);

\ACCB|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[6]~1_combout\ = (\inst14|inst13|EB\(0) & ((\ACCB|C[6]~1_combout\))) # (!\inst14|inst13|EB\(0) & (\IRX|C[6]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[6]~19_combout\,
	datab => \ACCB|C[6]~1_combout\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|data_out[6]~1_combout\);

\ACCB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[6]~1_combout\,
	asdata => \IRX|D[6]~21_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(6));

\IRX|C[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[6]~17_combout\ = (\ACCA|data_out\(6) & (((\ACCB|data_out\(6)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(6) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(6)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(6),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(6),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[6]~17_combout\);

\IRX|C[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[6]~18_combout\ = (\AUX|data_out\(14) & (((\PC|data_out\(14)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(14) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(14)) # (\PC|TRI_STATE_D~0_combout\))))

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
	combout => \IRX|C[6]~18_combout\);

\inst14|inst9|data[26]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[26]~23_combout\ = ((\inst14|inst9|Equal17~0_combout\) # ((\inst14|inst9|Equal26~0_combout\ & \inst14|inst9|data[26]~22_combout\))) # (!\inst14|inst9|data[26]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~9_combout\,
	datab => \inst14|inst9|Equal26~0_combout\,
	datac => \inst14|inst9|data[26]~22_combout\,
	datad => \inst14|inst9|Equal17~0_combout\,
	combout => \inst14|inst9|data[26]~23_combout\);

\inst14|inst13|nAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[26]~23_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nAS~q\);

\inst6|data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst14|inst13|nAS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[7]~en_q\);

\inst1|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|ACCSEC~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \ACCB|C[6]~1_combout\,
	combout => \inst1|Add0~1_combout\);

\inst1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|ACCSEC~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \ACCB|C[5]~2_combout\,
	combout => \inst1|Add0~2_combout\);

\inst1|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|ACCSEC~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \ACCB|C[4]~3_combout\,
	combout => \inst1|Add0~3_combout\);

\ACCA|C[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[4]~3_combout\ = (\ACCA|data_out\(4)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[4]~3_combout\);

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

\inst1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|Add0~3_combout\ & ((\ACCA|C[4]~3_combout\ & (\inst1|Add0~17\ & VCC)) # (!\ACCA|C[4]~3_combout\ & (!\inst1|Add0~17\)))) # (!\inst1|Add0~3_combout\ & ((\ACCA|C[4]~3_combout\ & (!\inst1|Add0~17\)) # (!\ACCA|C[4]~3_combout\ & 
-- ((\inst1|Add0~17\) # (GND)))))
-- \inst1|Add0~19\ = CARRY((\inst1|Add0~3_combout\ & (!\ACCA|C[4]~3_combout\ & !\inst1|Add0~17\)) # (!\inst1|Add0~3_combout\ & ((!\inst1|Add0~17\) # (!\ACCA|C[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \ACCA|C[4]~3_combout\,
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

\inst1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = ((\inst1|Add0~2_combout\ $ (\ACCA|C[5]~2_combout\ $ (!\inst1|Add0~19\)))) # (GND)
-- \inst1|Add0~21\ = CARRY((\inst1|Add0~2_combout\ & ((\ACCA|C[5]~2_combout\) # (!\inst1|Add0~19\))) # (!\inst1|Add0~2_combout\ & (\ACCA|C[5]~2_combout\ & !\inst1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datab => \ACCA|C[5]~2_combout\,
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

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

\inst14|inst9|Equal21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal21~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|Equal20~2_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst14|inst9|Equal20~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	combout => \inst14|inst9|Equal21~0_combout\);

\inst14|inst9|data[58]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[58]~66_combout\ = (\inst14|inst9|Equal12~0_combout\) # ((\inst14|inst9|data[58]~34_combout\ & (\inst14|inst9|Equal21~0_combout\ & \inst14|inst9|data[48]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[58]~34_combout\,
	datab => \inst14|inst9|Equal21~0_combout\,
	datac => \inst14|inst9|data[48]~65_combout\,
	datad => \inst14|inst9|Equal12~0_combout\,
	combout => \inst14|inst9|data[58]~66_combout\);

\inst14|inst13|nDUPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[58]~66_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nDUPA~q\);

\inst1|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~22_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(6));

\inst14|inst13|nEX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal29~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nEX~q\);

\IRX|D[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[6]~20_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(6)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(6),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[6]~20_combout\);

\inst14|inst9|data[31]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~73_combout\ = (\inst14|inst9|data[96]~25_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\) # (!\inst14|inst9|Equal20~2_combout\)) # (!\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|data[96]~25_combout\,
	datad => \inst14|inst9|Equal20~2_combout\,
	combout => \inst14|inst9|data[31]~73_combout\);

\inst14|inst9|data[31]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~29_combout\ = (\inst14|inst9|data[96]~28_combout\ & (!\inst14|inst9|Equal23~1_combout\ & ((!\inst14|inst9|Equal3~4_combout\) # (!\inst14|inst9|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[96]~28_combout\,
	datab => \inst14|inst9|Equal3~3_combout\,
	datac => \inst14|inst9|Equal3~4_combout\,
	datad => \inst14|inst9|Equal23~1_combout\,
	combout => \inst14|inst9|data[31]~29_combout\);

\inst14|inst9|data[31]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~69_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & (\inst14|inst9|Equal0~2_combout\ & (!\inst14|inst9|Equal1~0_combout\ & !\inst14|inst9|Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datab => \inst14|inst9|Equal0~2_combout\,
	datac => \inst14|inst9|Equal1~0_combout\,
	datad => \inst14|inst9|Equal24~0_combout\,
	combout => \inst14|inst9|data[31]~69_combout\);

\inst14|inst9|data[31]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~70_combout\ = (\inst14|inst9|Equal5~2_combout\ & (\inst14|inst9|data~31_combout\ & (\inst14|inst9|data[96]~26_combout\ & \inst14|inst9|data[31]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal5~2_combout\,
	datab => \inst14|inst9|data~31_combout\,
	datac => \inst14|inst9|data[96]~26_combout\,
	datad => \inst14|inst9|data[31]~69_combout\,
	combout => \inst14|inst9|data[31]~70_combout\);

\inst14|inst9|data[31]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~71_combout\ = (\inst14|inst9|data[31]~29_combout\ & (((!\inst14|inst9|Equal0~3_combout\ & !\inst14|inst9|data[31]~70_combout\)) # (!\inst14|inst9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~0_combout\,
	datab => \inst14|inst9|Equal0~3_combout\,
	datac => \inst14|inst9|data[31]~29_combout\,
	datad => \inst14|inst9|data[31]~70_combout\,
	combout => \inst14|inst9|data[31]~71_combout\);

\inst14|inst9|data[31]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[31]~72_combout\ = (((\inst14|inst9|Equal28~0_combout\ & \inst14|inst13|prueba[4]~2_combout\)) # (!\inst14|inst9|data[31]~71_combout\)) # (!\inst14|inst9|data[31]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[31]~73_combout\,
	datab => \inst14|inst9|data[31]~71_combout\,
	datac => \inst14|inst9|Equal28~0_combout\,
	datad => \inst14|inst13|prueba[4]~2_combout\,
	combout => \inst14|inst9|data[31]~72_combout\);

\inst14|inst13|nCBD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[31]~72_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nCBD~q\);

\inst|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \PC|data_out\(7),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(7));

\inst|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \PC|data_out\(6),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(6));

\inst|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \PC|data_out\(5),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(5));

\inst|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \PC|data_out\(4),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(4));

\inst6|mem~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~17_combout\ = (!\inst|valor_interno\(7) & (!\inst|valor_interno\(6) & (!\inst|valor_interno\(5) & !\inst|valor_interno\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(7),
	datab => \inst|valor_interno\(6),
	datac => \inst|valor_interno\(5),
	datad => \inst|valor_interno\(4),
	combout => \inst6|mem~17_combout\);

\inst|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \PC|data_out\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(0));

\inst|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \PC|data_out\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(1));

\inst6|mem~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~19_combout\ = (!\inst|valor_interno\(0) & !\inst|valor_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|valor_interno\(0),
	datad => \inst|valor_interno\(1),
	combout => \inst6|mem~19_combout\);

\inst|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \PC|data_out\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(2));

\inst|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCBD~q\,
	d => \PC|data_out\(3),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(3));

\inst6|mem~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~20_combout\ = (\inst6|mem~17_combout\ & (\inst6|mem~19_combout\ & (!\inst|valor_interno\(2) & !\inst|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem~17_combout\,
	datab => \inst6|mem~19_combout\,
	datac => \inst|valor_interno\(2),
	datad => \inst|valor_interno\(3),
	combout => \inst6|mem~20_combout\);

\inst6|data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst6|mem~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[6]~reg0_q\);

\IRX|C[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[6]~41_combout\ = (\IRX|D[6]~20_combout\ & (((\inst6|data[6]~reg0_q\) # (!\inst6|data[7]~en_q\)) # (!\inst14|inst13|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \IRX|D[6]~20_combout\,
	datad => \inst6|data[6]~reg0_q\,
	combout => \IRX|C[6]~41_combout\);

\IRX|C[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~14_combout\ = (\inst14|inst13|BD~q\ & (\inst6|data[7]~en_q\)) # (!\inst14|inst13|BD~q\ & (((\inst14|inst13|nERA1~q\ & !\inst14|inst13|RA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~en_q\,
	datab => \inst14|inst13|BD~q\,
	datac => \inst14|inst13|nERA1~q\,
	datad => \inst14|inst13|RA\(0),
	combout => \IRX|C[7]~14_combout\);

\IRX|D[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~17_combout\ = (\PC|TRI_STATE_D~0_combout\ & (!\inst14|inst13|nEX~q\ & !\inst14|inst13|nDUPA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|TRI_STATE_D~0_combout\,
	datac => \inst14|inst13|nEX~q\,
	datad => \inst14|inst13|nDUPA~q\,
	combout => \IRX|D[7]~17_combout\);

\IRX|C[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~15_combout\ = (\IRX|C[7]~14_combout\) # (((!\ACCB|B[7]~0_combout\) # (!\ACCA|B[7]~0_combout\)) # (!\IRX|D[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[7]~14_combout\,
	datab => \IRX|D[7]~17_combout\,
	datac => \ACCA|B[7]~0_combout\,
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[7]~15_combout\);

\IRX|C[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[6]~19_combout\ = ((\IRX|C[6]~17_combout\ & (\IRX|C[6]~18_combout\ & \IRX|C[6]~41_combout\))) # (!\IRX|C[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[6]~17_combout\,
	datab => \IRX|C[6]~18_combout\,
	datac => \IRX|C[6]~41_combout\,
	datad => \IRX|C[7]~15_combout\,
	combout => \IRX|C[6]~19_combout\);

\PC|data_out[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[14]~1_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[6]~19_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(14),
	datab => \IRX|C[6]~19_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[14]~1_combout\);

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

\PC|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[14]~1_combout\,
	asdata => \PC|Add0~44_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(14));

\PC|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~46_combout\ = \PC|data_out\(15) $ (\PC|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(15),
	cin => \PC|Add0~45\,
	combout => \PC|Add0~46_combout\);

\PC|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[15]~0_combout\,
	asdata => \PC|Add0~46_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(15));

\IRX|C[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~13_combout\ = (\AUX|data_out\(15) & (((\PC|data_out\(15)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(15) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(15)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(15),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(15),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[7]~13_combout\);

\inst1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = ((\inst1|Add0~0_combout\ $ (\ACCA|C[7]~0_combout\ $ (!\inst1|Add0~23\)))) # (GND)
-- \inst1|Add0~25\ = CARRY((\inst1|Add0~0_combout\ & ((\ACCA|C[7]~0_combout\) # (!\inst1|Add0~23\))) # (!\inst1|Add0~0_combout\ & (\ACCA|C[7]~0_combout\ & !\inst1|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datab => \ACCA|C[7]~0_combout\,
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

\inst1|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~24_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(2));

\IRX|D[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~12_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Banderas\(2)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Banderas\(2),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[7]~12_combout\);

\inst6|mem~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~18_combout\ = (\inst6|mem~17_combout\ & (!\inst|valor_interno\(2) & !\inst|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem~17_combout\,
	datac => \inst|valor_interno\(2),
	datad => \inst|valor_interno\(0),
	combout => \inst6|mem~18_combout\);

\inst6|data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst6|mem~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[7]~reg0_q\);

\IRX|C[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~40_combout\ = (\IRX|D[7]~12_combout\ & (((\inst6|data[7]~reg0_q\) # (!\inst6|data[7]~en_q\)) # (!\inst14|inst13|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \IRX|D[7]~12_combout\,
	datad => \inst6|data[7]~reg0_q\,
	combout => \IRX|C[7]~40_combout\);

\IRX|C[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[7]~16_combout\ = ((\IRX|C[7]~12_combout\ & (\IRX|C[7]~13_combout\ & \IRX|C[7]~40_combout\))) # (!\IRX|C[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[7]~12_combout\,
	datab => \IRX|C[7]~13_combout\,
	datac => \IRX|C[7]~40_combout\,
	datad => \IRX|C[7]~15_combout\,
	combout => \IRX|C[7]~16_combout\);

\ACCB|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[7]~0_combout\ = (\inst14|inst13|EB\(0) & ((\ACCB|C[7]~0_combout\))) # (!\inst14|inst13|EB\(0) & (\IRX|C[7]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[7]~16_combout\,
	datab => \ACCB|C[7]~0_combout\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|data_out[7]~0_combout\);

\ACCB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[7]~0_combout\,
	asdata => \IRX|D[7]~16_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(7));

\ACCB|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[7]~0_combout\ = (\ACCB|data_out\(7)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|C[7]~0_combout\);

\inst1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|ACCSEC~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \ACCB|C[7]~0_combout\,
	combout => \inst1|Add0~0_combout\);

\inst1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = \inst14|inst13|ACCSEC~q\ $ (\inst1|Add0~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|ACCSEC~q\,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\);

\inst1|Banderas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~26_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(1));

\inst5|inst|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CC~q\,
	d => \inst1|Banderas\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|valor_interno~q\);

\inst13|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|$00000|auto_generated|result_node[0]~0_combout\ = (\inst14|inst13|EA\(1) & (\inst14|inst13|ACCSEC~q\)) # (!\inst14|inst13|EA\(1) & ((\inst5|inst|valor_interno~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|ACCSEC~q\,
	datab => \inst5|inst|valor_interno~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \inst13|$00000|auto_generated|result_node[0]~0_combout\);

\inst1|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_cout\ = CARRY(\inst13|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|$00000|auto_generated|result_node[0]~0_combout\,
	datad => VCC,
	cout => \inst1|Add0~9_cout\);

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

\inst1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|Add0~5_combout\ & ((\ACCA|C[2]~5_combout\ & (\inst1|Add0~13\ & VCC)) # (!\ACCA|C[2]~5_combout\ & (!\inst1|Add0~13\)))) # (!\inst1|Add0~5_combout\ & ((\ACCA|C[2]~5_combout\ & (!\inst1|Add0~13\)) # (!\ACCA|C[2]~5_combout\ & 
-- ((\inst1|Add0~13\) # (GND)))))
-- \inst1|Add0~15\ = CARRY((\inst1|Add0~5_combout\ & (!\ACCA|C[2]~5_combout\ & !\inst1|Add0~13\)) # (!\inst1|Add0~5_combout\ & ((!\inst1|Add0~13\) # (!\ACCA|C[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~5_combout\,
	datab => \ACCA|C[2]~5_combout\,
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

\inst1|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~16_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(3));

\inst1|Yupa[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~6_combout\ = (\inst1|Yupa_interno\(3)) # (!\inst14|inst13|nDUPA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(3),
	datad => \inst14|inst13|nDUPA~q\,
	combout => \inst1|Yupa[3]~6_combout\);

\inst6|mem~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~22_combout\ = (\inst|valor_interno\(2) & (!\inst|valor_interno\(3) & ((\inst|valor_interno\(0)) # (!\inst|valor_interno\(1))))) # (!\inst|valor_interno\(2) & (\inst|valor_interno\(0) & (!\inst|valor_interno\(1) & \inst|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(0),
	datab => \inst|valor_interno\(1),
	datac => \inst|valor_interno\(2),
	datad => \inst|valor_interno\(3),
	combout => \inst6|mem~22_combout\);

\inst6|mem~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~23_combout\ = (\inst6|mem~17_combout\ & \inst6|mem~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem~17_combout\,
	datab => \inst6|mem~22_combout\,
	combout => \inst6|mem~23_combout\);

\inst6|data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst6|mem~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[3]~reg0_q\);

\inst6|data[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|data[7]~1_combout\ = (\inst14|inst13|BD~q\ & \inst6|data[7]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst6|data[7]~en_q\,
	combout => \inst6|data[7]~1_combout\);

\IRX|C[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[3]~29_combout\ = (\inst1|Yupa[3]~6_combout\ & (!\inst14|inst13|nEX~q\ & ((\inst6|data[3]~reg0_q\) # (!\inst6|data[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~6_combout\,
	datab => \inst6|data[3]~reg0_q\,
	datac => \inst6|data[7]~1_combout\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|C[3]~29_combout\);

\IRX|C[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[3]~30_combout\ = ((\IRX|C[3]~27_combout\ & (\IRX|C[3]~28_combout\ & \IRX|C[3]~29_combout\))) # (!\IRX|C[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[3]~27_combout\,
	datab => \IRX|C[3]~28_combout\,
	datac => \IRX|C[3]~29_combout\,
	datad => \IRX|C[7]~15_combout\,
	combout => \IRX|C[3]~30_combout\);

\ACCA|data_out[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~8_combout\ = (\inst14|inst13|nWA~q\ & ((\inst14|inst13|EA\(1)) # (\inst14|inst13|EA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nWA~q\,
	datab => \inst14|inst13|EA\(1),
	datac => \inst14|inst13|EA\(0),
	combout => \ACCA|data_out[0]~8_combout\);

\ACCA|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[3]~4_combout\,
	asdata => \IRX|C[3]~30_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(3));

\inst1|Yupa[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~4_combout\ = (\ACCA|data_out\(3) & ((\AUX|data_out\(3)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(3) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(3)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(3),
	datab => \AUX|data_out\(3),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[3]~4_combout\);

\ACCB|TRI_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|TRI_STATE~0_combout\ = (\inst14|inst13|EB\(0) & (!\inst14|inst13|nWB~q\ & !\inst14|inst13|EA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|EB\(0),
	datac => \inst14|inst13|nWB~q\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|TRI_STATE~0_combout\);

\inst1|Yupa[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~5_combout\ = (\ACCB|data_out\(3) & ((\PC|data_out\(3)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(3) & (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(3)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(3),
	datab => \PC|data_out\(3),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \inst1|Yupa[3]~5_combout\);

\inst6|data[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|data[7]~0_combout\ = (\inst6|data[7]~en_q\ & !\inst14|inst13|BD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~en_q\,
	datad => \inst14|inst13|BD~q\,
	combout => \inst6|data[7]~0_combout\);

\inst1|Yupa[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~8_combout\ = (\inst1|Yupa_interno\(3) & (((\inst6|data[3]~reg0_q\) # (!\inst6|data[7]~0_combout\)))) # (!\inst1|Yupa_interno\(3) & (!\inst14|inst13|nDUPA~q\ & ((\inst6|data[3]~reg0_q\) # (!\inst6|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(3),
	datab => \inst14|inst13|nDUPA~q\,
	datac => \inst6|data[3]~reg0_q\,
	datad => \inst6|data[7]~0_combout\,
	combout => \inst1|Yupa[3]~8_combout\);

\IRX|D[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~13_combout\ = (\inst6|data[7]~en_q\) # ((\inst14|inst13|nERA0~q\ & !\inst14|inst13|RA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nERA0~q\,
	datab => \inst14|inst13|RA\(0),
	datac => \inst6|data[7]~en_q\,
	combout => \IRX|D[7]~13_combout\);

\IRX|D[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~14_combout\ = (\inst14|inst13|nDUPA~q\) # ((\ACCB|TRI_STATE~0_combout\) # ((!\inst14|inst13|BD~q\ & \IRX|D[7]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nDUPA~q\,
	datab => \inst14|inst13|BD~q\,
	datac => \ACCB|TRI_STATE~0_combout\,
	datad => \IRX|D[7]~13_combout\,
	combout => \IRX|D[7]~14_combout\);

\IRX|D[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~15_combout\ = (\inst14|inst13|nEX~q\) # ((\ACCA|TRI_STATE~0_combout\) # ((\IRX|D[7]~14_combout\) # (!\PC|TRI_STATE_D~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|nEX~q\,
	datab => \ACCA|TRI_STATE~0_combout\,
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \IRX|D[7]~14_combout\,
	combout => \IRX|D[7]~15_combout\);

\inst1|Yupa[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Yupa[3]~7_combout\ = ((\inst1|Yupa[3]~4_combout\ & (\inst1|Yupa[3]~5_combout\ & \inst1|Yupa[3]~8_combout\))) # (!\IRX|D[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa[3]~4_combout\,
	datab => \inst1|Yupa[3]~5_combout\,
	datac => \inst1|Yupa[3]~8_combout\,
	datad => \IRX|D[7]~15_combout\,
	combout => \inst1|Yupa[3]~7_combout\);

\PC|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~52_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\inst1|Yupa[3]~7_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~22_combout\)))) # (!\inst14|inst13|PC\(0) & (((\inst1|Yupa[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~22_combout\,
	datad => \inst1|Yupa[3]~7_combout\,
	combout => \PC|Add0~52_combout\);

\PC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~52_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(3));

\PC|Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~51_combout\ = (\inst14|inst13|PC\(0) & ((\inst14|inst13|PC\(2) & ((\IRX|D[4]~29_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|Add0~24_combout\)))) # (!\inst14|inst13|PC\(0) & (((\IRX|D[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|PC\(0),
	datab => \inst14|inst13|PC\(2),
	datac => \PC|Add0~24_combout\,
	datad => \IRX|D[4]~29_combout\,
	combout => \PC|Add0~51_combout\);

\PC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Add0~51_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(4));

\IRX|D[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[4]~27_combout\ = (\ACCB|data_out\(4) & ((\PC|data_out\(4)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(4) & (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(4)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(4),
	datab => \PC|data_out\(4),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[4]~27_combout\);

\inst1|Banderas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~18_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(4));

\IRX|D[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[4]~28_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Banderas\(4)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Banderas\(4),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[4]~28_combout\);

\inst6|mem~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~21_combout\ = (\inst6|mem~17_combout\ & (\inst|valor_interno\(2) & (\inst6|mem~19_combout\ & !\inst|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem~17_combout\,
	datab => \inst|valor_interno\(2),
	datac => \inst6|mem~19_combout\,
	datad => \inst|valor_interno\(3),
	combout => \inst6|mem~21_combout\);

\inst6|data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst6|mem~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[4]~reg0_q\);

\IRX|D[4]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[4]~45_combout\ = (\IRX|D[4]~28_combout\ & (((\inst14|inst13|BD~q\) # (\inst6|data[4]~reg0_q\)) # (!\inst6|data[7]~en_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~en_q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[4]~28_combout\,
	datad => \inst6|data[4]~reg0_q\,
	combout => \IRX|D[4]~45_combout\);

\IRX|D[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[4]~29_combout\ = ((\IRX|D[4]~26_combout\ & (\IRX|D[4]~27_combout\ & \IRX|D[4]~45_combout\))) # (!\IRX|D[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[4]~26_combout\,
	datab => \IRX|D[4]~27_combout\,
	datac => \IRX|D[4]~45_combout\,
	datad => \IRX|D[7]~15_combout\,
	combout => \IRX|D[4]~29_combout\);

\ACCA|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[4]~3_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[4]~3_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[4]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[4]~29_combout\,
	datab => \ACCA|C[4]~3_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[4]~3_combout\);

\ACCA|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[4]~3_combout\,
	asdata => \IRX|C[4]~26_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(4));

\IRX|C[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[4]~24_combout\ = (\ACCA|data_out\(4) & (((\ACCB|data_out\(4)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(4) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(4)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(4),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[4]~24_combout\);

\IRX|C[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[4]~25_combout\ = (\AUX|data_out\(12) & (((\PC|data_out\(12)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(12) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(12)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(12),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(12),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[4]~25_combout\);

\IRX|C[4]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[4]~42_combout\ = (\IRX|D[4]~28_combout\ & (((\inst6|data[4]~reg0_q\) # (!\inst6|data[7]~en_q\)) # (!\inst14|inst13|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \IRX|D[4]~28_combout\,
	datad => \inst6|data[4]~reg0_q\,
	combout => \IRX|C[4]~42_combout\);

\IRX|C[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[4]~26_combout\ = ((\IRX|C[4]~24_combout\ & (\IRX|C[4]~25_combout\ & \IRX|C[4]~42_combout\))) # (!\IRX|C[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[4]~24_combout\,
	datab => \IRX|C[4]~25_combout\,
	datac => \IRX|C[4]~42_combout\,
	datad => \IRX|C[7]~15_combout\,
	combout => \IRX|C[4]~26_combout\);

\PC|data_out[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|data_out[12]~3_combout\ = (\inst14|inst13|PC\(2) & ((\IRX|C[4]~26_combout\))) # (!\inst14|inst13|PC\(2) & (\PC|data_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(12),
	datab => \IRX|C[4]~26_combout\,
	datad => \inst14|inst13|PC\(2),
	combout => \PC|data_out[12]~3_combout\);

\PC|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|Add0~40_combout\ = (\PC|data_out\(12) & (\PC|Add0~39\ $ (GND))) # (!\PC|data_out\(12) & (!\PC|Add0~39\ & VCC))
-- \PC|Add0~41\ = CARRY((\PC|data_out\(12) & !\PC|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(12),
	datad => VCC,
	cin => \PC|Add0~39\,
	combout => \PC|Add0~40_combout\,
	cout => \PC|Add0~41\);

\PC|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[12]~3_combout\,
	asdata => \PC|Add0~40_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(12));

\PC|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|data_out[13]~2_combout\,
	asdata => \PC|Add0~42_combout\,
	clrn => \RESET~input_o\,
	sload => \PC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(13));

\IRX|C[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[5]~21_combout\ = (\ACCA|data_out\(5) & (((\PC|data_out\(13)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(5) & (\ACCA|B[7]~0_combout\ & ((\PC|data_out\(13)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \ACCA|B[7]~0_combout\,
	datac => \PC|data_out\(13),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[5]~21_combout\);

\inst1|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~20_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(5));

\IRX|C[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[5]~22_combout\ = (!\inst14|inst13|nEX~q\ & (!\inst6|data[7]~1_combout\ & ((\inst1|Yupa_interno\(5)) # (!\inst14|inst13|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(5),
	datab => \inst14|inst13|nDUPA~q\,
	datac => \inst14|inst13|nEX~q\,
	datad => \inst6|data[7]~1_combout\,
	combout => \IRX|C[5]~22_combout\);

\IRX|C[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[5]~23_combout\ = ((\IRX|C[5]~20_combout\ & (\IRX|C[5]~21_combout\ & \IRX|C[5]~22_combout\))) # (!\IRX|C[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[5]~20_combout\,
	datab => \IRX|C[5]~21_combout\,
	datac => \IRX|C[5]~22_combout\,
	datad => \IRX|C[7]~15_combout\,
	combout => \IRX|C[5]~23_combout\);

\ACCA|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[5]~2_combout\,
	asdata => \IRX|C[5]~23_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(5));

\IRX|D[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[5]~22_combout\ = (\ACCA|data_out\(5) & ((\AUX|data_out\(5)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(5) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(5)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \AUX|data_out\(5),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[5]~22_combout\);

\IRX|D[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[5]~23_combout\ = (\ACCB|data_out\(5) & ((\PC|data_out\(5)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(5) & (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(5)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(5),
	datab => \PC|data_out\(5),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[5]~23_combout\);

\IRX|D[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[5]~24_combout\ = (!\inst14|inst13|nEX~q\ & (!\inst6|data[7]~0_combout\ & ((\inst1|Yupa_interno\(5)) # (!\inst14|inst13|nDUPA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(5),
	datab => \inst14|inst13|nDUPA~q\,
	datac => \inst14|inst13|nEX~q\,
	datad => \inst6|data[7]~0_combout\,
	combout => \IRX|D[5]~24_combout\);

\IRX|D[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[5]~25_combout\ = ((\IRX|D[5]~22_combout\ & (\IRX|D[5]~23_combout\ & \IRX|D[5]~24_combout\))) # (!\IRX|D[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[5]~22_combout\,
	datab => \IRX|D[5]~23_combout\,
	datac => \IRX|D[5]~24_combout\,
	datad => \IRX|D[7]~15_combout\,
	combout => \IRX|D[5]~25_combout\);

\AUX|data_out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~10_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(6))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[5]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(6),
	datab => \IRX|D[5]~25_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \AUX|data_out~10_combout\);

\AUX|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~10_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(5));

\AUX|data_out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~11_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(5))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[4]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(5),
	datab => \IRX|D[4]~29_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \AUX|data_out~11_combout\);

\AUX|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~11_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(4));

\AUX|data_out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~12_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(4))) # (!\inst14|inst13|BD~q\ & ((\inst1|Yupa[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(4),
	datab => \inst1|Yupa[3]~7_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \AUX|data_out~12_combout\);

\AUX|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~12_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(3));

\AUX|data_out~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~13_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(3))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[2]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(3),
	datab => \IRX|D[2]~33_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \AUX|data_out~13_combout\);

\AUX|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~13_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(2));

\AUX|data_out~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~14_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(2))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[1]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(2),
	datab => \IRX|D[1]~37_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \AUX|data_out~14_combout\);

\AUX|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~14_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(1));

\IRX|D[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[1]~34_combout\ = (\ACCA|data_out\(1) & ((\AUX|data_out\(1)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(1) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(1)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(1),
	datab => \AUX|data_out\(1),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[1]~34_combout\);

\IRX|D[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[1]~35_combout\ = (\ACCB|data_out\(1) & ((\PC|data_out\(1)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(1) & (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(1)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(1),
	datab => \PC|data_out\(1),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[1]~35_combout\);

\inst1|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~12_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(1));

\IRX|D[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[1]~36_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(1)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(1),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[1]~36_combout\);

\inst6|mem~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~26_combout\ = (\inst|valor_interno\(0) & (\inst|valor_interno\(2) $ (((\inst|valor_interno\(1) & !\inst|valor_interno\(3)))))) # (!\inst|valor_interno\(0) & (\inst|valor_interno\(2) & ((\inst|valor_interno\(1)) # (\inst|valor_interno\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(0),
	datab => \inst|valor_interno\(1),
	datac => \inst|valor_interno\(2),
	datad => \inst|valor_interno\(3),
	combout => \inst6|mem~26_combout\);

\inst6|mem~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~27_combout\ = (\inst6|mem~17_combout\ & !\inst6|mem~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem~17_combout\,
	datad => \inst6|mem~26_combout\,
	combout => \inst6|mem~27_combout\);

\inst6|data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst6|mem~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[1]~reg0_q\);

\IRX|D[1]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[1]~47_combout\ = (\IRX|D[1]~36_combout\ & (((\inst14|inst13|BD~q\) # (\inst6|data[1]~reg0_q\)) # (!\inst6|data[7]~en_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~en_q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[1]~36_combout\,
	datad => \inst6|data[1]~reg0_q\,
	combout => \IRX|D[1]~47_combout\);

\IRX|D[1]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[1]~37_combout\ = ((\IRX|D[1]~34_combout\ & (\IRX|D[1]~35_combout\ & \IRX|D[1]~47_combout\))) # (!\IRX|D[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[1]~34_combout\,
	datab => \IRX|D[1]~35_combout\,
	datac => \IRX|D[1]~47_combout\,
	datad => \IRX|D[7]~15_combout\,
	combout => \IRX|D[1]~37_combout\);

\ACCA|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[1]~6_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[1]~6_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[1]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[1]~37_combout\,
	datab => \ACCA|C[1]~6_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[1]~6_combout\);

\ACCA|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[1]~6_combout\,
	asdata => \IRX|C[1]~36_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(1));

\IRX|C[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[1]~34_combout\ = (\ACCA|data_out\(1) & (((\ACCB|data_out\(1)) # (\ACCB|B[7]~0_combout\)))) # (!\ACCA|data_out\(1) & (\ACCA|B[7]~0_combout\ & ((\ACCB|data_out\(1)) # (\ACCB|B[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(1),
	datab => \ACCA|B[7]~0_combout\,
	datac => \ACCB|data_out\(1),
	datad => \ACCB|B[7]~0_combout\,
	combout => \IRX|C[1]~34_combout\);

\IRX|C[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[1]~35_combout\ = (\AUX|data_out\(9) & (((\PC|data_out\(9)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(9) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(9)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(9),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(9),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[1]~35_combout\);

\IRX|C[1]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[1]~44_combout\ = (\IRX|D[1]~36_combout\ & (((\inst6|data[1]~reg0_q\) # (!\inst6|data[7]~en_q\)) # (!\inst14|inst13|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \IRX|D[1]~36_combout\,
	datad => \inst6|data[1]~reg0_q\,
	combout => \IRX|C[1]~44_combout\);

\IRX|C[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[1]~36_combout\ = ((\IRX|C[1]~34_combout\ & (\IRX|C[1]~35_combout\ & \IRX|C[1]~44_combout\))) # (!\IRX|C[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[1]~34_combout\,
	datab => \IRX|C[1]~35_combout\,
	datac => \IRX|C[1]~44_combout\,
	datad => \IRX|C[7]~15_combout\,
	combout => \IRX|C[1]~36_combout\);

\AUX|data_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~6_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(10))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[1]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(10),
	datab => \IRX|C[1]~36_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~6_combout\);

\AUX|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~6_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(9));

\AUX|data_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~7_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(9))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[0]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(9),
	datab => \IRX|C[0]~39_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~7_combout\);

\AUX|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~7_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(8));

\IRX|C[0]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[0]~38_combout\ = (\AUX|data_out\(8) & (((\PC|data_out\(8)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(8) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(8)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(8),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(8),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[0]~38_combout\);

\IRX|D[0]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[0]~40_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Q\(0)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[0]~40_combout\);

\inst6|mem~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~28_combout\ = (\inst|valor_interno\(0) & (\inst|valor_interno\(1) & !\inst|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(0),
	datab => \inst|valor_interno\(1),
	datad => \inst|valor_interno\(2),
	combout => \inst6|mem~28_combout\);

\inst6|mem~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~29_combout\ = (\inst6|mem~17_combout\ & (\inst6|mem~28_combout\ & !\inst|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem~17_combout\,
	datab => \inst6|mem~28_combout\,
	datad => \inst|valor_interno\(3),
	combout => \inst6|mem~29_combout\);

\inst6|data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst6|mem~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[0]~reg0_q\);

\IRX|C[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[0]~45_combout\ = (\IRX|D[0]~40_combout\ & (((\inst6|data[0]~reg0_q\) # (!\inst6|data[7]~en_q\)) # (!\inst14|inst13|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \IRX|D[0]~40_combout\,
	datad => \inst6|data[0]~reg0_q\,
	combout => \IRX|C[0]~45_combout\);

\IRX|C[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[0]~39_combout\ = ((\IRX|C[0]~37_combout\ & (\IRX|C[0]~38_combout\ & \IRX|C[0]~45_combout\))) # (!\IRX|C[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[0]~37_combout\,
	datab => \IRX|C[0]~38_combout\,
	datac => \IRX|C[0]~45_combout\,
	datad => \IRX|C[7]~15_combout\,
	combout => \IRX|C[0]~39_combout\);

\ACCB|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~7_combout\ = (\inst14|inst13|EB\(0) & ((\ACCB|C[0]~7_combout\))) # (!\inst14|inst13|EB\(0) & (\IRX|C[0]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[0]~39_combout\,
	datab => \ACCB|C[0]~7_combout\,
	datad => \inst14|inst13|EB\(0),
	combout => \ACCB|data_out[0]~7_combout\);

\ACCB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCB|data_out[0]~7_combout\,
	asdata => \IRX|D[0]~42_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(1),
	ena => \ACCB|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(0));

\ACCB|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCB|C[0]~7_combout\ = (\ACCB|data_out\(0)) # ((\inst14|inst13|nWB~q\) # ((!\inst14|inst13|EA\(1)) # (!\inst14|inst13|EB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \inst14|inst13|nWB~q\,
	datac => \inst14|inst13|EB\(0),
	datad => \inst14|inst13|EA\(1),
	combout => \ACCB|C[0]~7_combout\);

\inst1|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Add0~7_combout\ = \inst14|inst13|ACCSEC~q\ $ (((\inst14|inst13|EA\(1) & \ACCB|C[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst13|ACCSEC~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \ACCB|C[0]~7_combout\,
	combout => \inst1|Add0~7_combout\);

\inst1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~10_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(0));

\inst14|inst9|data[97]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~39_combout\ = (\inst14|inst9|Equal26~0_combout\ & \inst14|inst9|data[26]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal26~0_combout\,
	datab => \inst14|inst9|data[26]~22_combout\,
	combout => \inst14|inst9|data[97]~39_combout\);

\inst14|inst9|data[97]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~40_combout\ = (!\inst14|inst9|Equal28~0_combout\ & !\inst14|inst9|Equal29~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst9|Equal28~0_combout\,
	datad => \inst14|inst9|Equal29~1_combout\,
	combout => \inst14|inst9|data[97]~40_combout\);

\inst14|inst9|data[97]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[97]~41_combout\ = (\inst14|inst9|data[97]~39_combout\) # (((\inst14|inst13|prueba[4]~2_combout\ & !\inst14|inst9|data[97]~40_combout\)) # (!\inst14|inst9|data[31]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[97]~39_combout\,
	datab => \inst14|inst13|prueba[4]~2_combout\,
	datac => \inst14|inst9|data[97]~40_combout\,
	datad => \inst14|inst9|data[31]~73_combout\,
	combout => \inst14|inst9|data[97]~41_combout\);

\inst14|inst13|prueba[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[97]~41_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(4));

\inst14|inst9|data[93]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[93]~42_combout\ = ((\inst14|inst9|data[26]~22_combout\ & ((\inst14|inst9|Equal26~0_combout\) # (\inst14|inst9|Equal27~1_combout\)))) # (!\inst14|inst9|data~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[26]~22_combout\,
	datab => \inst14|inst9|Equal26~0_combout\,
	datac => \inst14|inst9|Equal27~1_combout\,
	datad => \inst14|inst9|data~31_combout\,
	combout => \inst14|inst9|data[93]~42_combout\);

\inst14|inst13|prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[93]~42_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(0));

\inst14|inst13|CN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[6]~51_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CN~q\);

\inst14|inst13|B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal5~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B3~q\);

\inst14|inst9|data[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[14]~49_combout\ = (\inst14|inst9|Equal9~2_combout\ & (\inst14|inst9|data[96]~10_combout\ & (!\inst14|inst9|Equal5~3_combout\ & !\inst14|inst9|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal9~2_combout\,
	datab => \inst14|inst9|data[96]~10_combout\,
	datac => \inst14|inst9|Equal5~3_combout\,
	datad => \inst14|inst9|Equal4~0_combout\,
	combout => \inst14|inst9|data[14]~49_combout\);

\inst14|inst13|B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[14]~49_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|B4~q\);

\inst5|inst11|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst11|output~0_combout\ = (!\inst14|inst13|B4~q\ & ((\inst14|inst13|B3~q\ & (\ACCA|data_out\(7))) # (!\inst14|inst13|B3~q\ & ((\inst1|Banderas\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \inst1|Banderas\(2),
	datac => \inst14|inst13|B3~q\,
	datad => \inst14|inst13|B4~q\,
	combout => \inst5|inst11|output~0_combout\);

\inst5|inst11|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst11|output~1_combout\ = (\inst5|inst11|output~0_combout\) # ((\ACCB|data_out\(7) & (\inst14|inst13|B4~q\ & !\inst14|inst13|B3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst11|output~0_combout\,
	datab => \ACCB|data_out\(7),
	datac => \inst14|inst13|B4~q\,
	datad => \inst14|inst13|B3~q\,
	combout => \inst5|inst11|output~1_combout\);

\inst5|inst3|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CN~q\,
	d => \inst5|inst11|output~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|valor_interno~q\);

\inst14|inst7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst7~0_combout\ = (\inst14|inst13|prueba\(0) & (((\inst5|inst3|valor_interno~q\)) # (!\inst14|inst13|prueba\(4)))) # (!\inst14|inst13|prueba\(0) & (\inst14|inst13|prueba\(4) & ((\inst5|inst|valor_interno~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(0),
	datab => \inst14|inst13|prueba\(4),
	datac => \inst5|inst3|valor_interno~q\,
	datad => \inst5|inst|valor_interno~q\,
	combout => \inst14|inst7~0_combout\);

\inst14|inst7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst7~1_combout\ = (\inst14|inst13|prueba\(4) & (((\inst14|inst7~0_combout\)))) # (!\inst14|inst13|prueba\(4) & ((\inst14|inst7~0_combout\ & (\inst1|Q\(0))) # (!\inst14|inst7~0_combout\ & ((\inst1|Banderas\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst1|Banderas\(2),
	datac => \inst14|inst13|prueba\(4),
	datad => \inst14|inst7~0_combout\,
	combout => \inst14|inst7~1_combout\);

\inst14|inst9|data~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~27_combout\ = (\inst14|inst9|data~20_combout\ & (\inst14|inst9|data[96]~26_combout\ & !\inst14|inst9|Equal26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data~20_combout\,
	datab => \inst14|inst9|data[96]~26_combout\,
	datad => \inst14|inst9|Equal26~0_combout\,
	combout => \inst14|inst9|data~27_combout\);

\inst14|inst9|data~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data~30_combout\ = (\inst14|inst9|data[31]~73_combout\ & (\inst14|inst9|data~27_combout\ & (\inst14|inst9|Equal27~1_combout\ & \inst14|inst9|data[31]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[31]~73_combout\,
	datab => \inst14|inst9|data~27_combout\,
	datac => \inst14|inst9|Equal27~1_combout\,
	datad => \inst14|inst9|data[31]~29_combout\,
	combout => \inst14|inst9|data~30_combout\);

\inst14|inst9|data[91]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~43_combout\ = (\inst14|inst13|prueba[2]~0_combout\ & (!\inst14|inst9|Equal2~1_combout\ & ((\inst14|inst9|data~30_combout\) # (!\inst14|inst9|data~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba[2]~0_combout\,
	datab => \inst14|inst9|data~30_combout\,
	datac => \inst14|inst9|data~31_combout\,
	datad => \inst14|inst9|Equal2~1_combout\,
	combout => \inst14|inst9|data[91]~43_combout\);

\inst14|inst13|prueba[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[91]~43_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|prueba\(2));

\inst14|inst7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst7~2_combout\ = (!\inst14|inst13|prueba\(0) & ((\AUX|data_out\(15)) # ((\inst14|inst13|RA\(0)) # (\inst14|inst13|BD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(0),
	datab => \AUX|data_out\(15),
	datac => \inst14|inst13|RA\(0),
	datad => \inst14|inst13|BD~q\,
	combout => \inst14|inst7~2_combout\);

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

\inst3|IRQ_flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|IRQ_flag~0_combout\ = (\inst3|IRQ_flag~q\) # (!\IRQn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRQn~input_o\,
	datad => \inst3|IRQ_flag~q\,
	combout => \inst3|IRQ_flag~0_combout\);

\inst3|IRQ_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|IRQ_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|IRQ_flag~q\);

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

\inst3|XIRQ_flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|XIRQ_flag~0_combout\ = (\inst3|XIRQ_flag~q\) # (!\XIRQn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XIRQn~input_o\,
	datad => \inst3|XIRQ_flag~q\,
	combout => \inst3|XIRQ_flag~0_combout\);

\inst3|XIRQ_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|XIRQ_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|XIRQ_flag~q\);

\inst14|inst7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst7~3_combout\ = (\inst14|inst13|prueba\(0) & (!\inst3|IRQ_flag~q\ & (!\inst3|XIRQ_flag~q\))) # (!\inst14|inst13|prueba\(0) & (((!\PC|data_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(0),
	datab => \inst3|IRQ_flag~q\,
	datac => \inst3|XIRQ_flag~q\,
	datad => \PC|data_out\(15),
	combout => \inst14|inst7~3_combout\);

\inst14|inst7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst7~4_combout\ = (\inst14|inst13|prueba\(2) & (((\inst14|inst7~3_combout\) # (\inst14|inst13|prueba\(4))))) # (!\inst14|inst13|prueba\(2) & (\inst14|inst7~2_combout\ & ((!\inst14|inst13|prueba\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst7~2_combout\,
	datab => \inst14|inst13|prueba\(2),
	datac => \inst14|inst7~3_combout\,
	datad => \inst14|inst13|prueba\(4),
	combout => \inst14|inst7~4_combout\);

\inst14|inst7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst7~5_combout\ = (\inst14|inst13|prueba\(3) & (((\inst14|inst7~4_combout\)))) # (!\inst14|inst13|prueba\(3) & ((\inst14|inst7~1_combout\) # ((\inst14|inst13|prueba\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba\(3),
	datab => \inst14|inst7~1_combout\,
	datac => \inst14|inst13|prueba\(2),
	datad => \inst14|inst7~4_combout\,
	combout => \inst14|inst7~5_combout\);

\inst14|inst3|SELECTOR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst3|SELECTOR~0_combout\ = (\inst14|inst13|instruccion\(0) & ((!\inst14|inst7~5_combout\))) # (!\inst14|inst13|instruccion\(0) & (\inst14|inst13|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(1),
	datac => \inst14|inst13|instruccion\(0),
	datad => \inst14|inst7~5_combout\,
	combout => \inst14|inst3|SELECTOR~0_combout\);

\inst14|inst4|valor_interno[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[3]~15_combout\ = (\inst14|inst4|valor_interno[2]~14\ & (\inst14|inst4|valor_interno\(3) & (!\inst14|inst3|SELECTOR~0_combout\ & VCC))) # (!\inst14|inst4|valor_interno[2]~14\ & ((((\inst14|inst4|valor_interno\(3) & 
-- !\inst14|inst3|SELECTOR~0_combout\)))))
-- \inst14|inst4|valor_interno[3]~16\ = CARRY((\inst14|inst4|valor_interno\(3) & (!\inst14|inst3|SELECTOR~0_combout\ & !\inst14|inst4|valor_interno[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(3),
	datab => \inst14|inst3|SELECTOR~0_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[2]~14\,
	combout => \inst14|inst4|valor_interno[3]~15_combout\,
	cout => \inst14|inst4|valor_interno[3]~16\);

\inst14|inst4|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[3]~15_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(3));

\inst14|inst4|valor_interno[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[4]~17_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & (!\inst14|inst4|valor_interno[3]~16\)) # (!\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & ((\inst14|inst4|valor_interno[3]~16\) 
-- # (GND)))
-- \inst14|inst4|valor_interno[4]~18\ = CARRY((!\inst14|inst4|valor_interno[3]~16\) # (!\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[3]~16\,
	combout => \inst14|inst4|valor_interno[4]~17_combout\,
	cout => \inst14|inst4|valor_interno[4]~18\);

\inst14|inst4|valor_interno[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[5]~19_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (\inst14|inst4|valor_interno[4]~18\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & 
-- (!\inst14|inst4|valor_interno[4]~18\ & VCC))
-- \inst14|inst4|valor_interno[5]~20\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & !\inst14|inst4|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[4]~18\,
	combout => \inst14|inst4|valor_interno[5]~19_combout\,
	cout => \inst14|inst4|valor_interno[5]~20\);

\inst14|inst4|valor_interno[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[6]~21_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & (!\inst14|inst4|valor_interno[5]~20\)) # (!\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & ((\inst14|inst4|valor_interno[5]~20\) 
-- # (GND)))
-- \inst14|inst4|valor_interno[6]~22\ = CARRY((!\inst14|inst4|valor_interno[5]~20\) # (!\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[5]~20\,
	combout => \inst14|inst4|valor_interno[6]~21_combout\,
	cout => \inst14|inst4|valor_interno[6]~22\);

\inst14|inst4|valor_interno[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[7]~23_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & (\inst14|inst4|valor_interno[6]~22\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & 
-- (!\inst14|inst4|valor_interno[6]~22\ & VCC))
-- \inst14|inst4|valor_interno[7]~24\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & !\inst14|inst4|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[6]~22\,
	combout => \inst14|inst4|valor_interno[7]~23_combout\,
	cout => \inst14|inst4|valor_interno[7]~24\);

\inst14|inst4|valor_interno[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[8]~25_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\ & (!\inst14|inst4|valor_interno[7]~24\)) # (!\inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\ & ((\inst14|inst4|valor_interno[7]~24\) 
-- # (GND)))
-- \inst14|inst4|valor_interno[8]~26\ = CARRY((!\inst14|inst4|valor_interno[7]~24\) # (!\inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[7]~24\,
	combout => \inst14|inst4|valor_interno[8]~25_combout\,
	cout => \inst14|inst4|valor_interno[8]~26\);

\inst14|inst4|valor_interno[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[9]~27_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ & (\inst14|inst4|valor_interno[8]~26\ $ (GND))) # (!\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ & 
-- (!\inst14|inst4|valor_interno[8]~26\ & VCC))
-- \inst14|inst4|valor_interno[9]~28\ = CARRY((\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ & !\inst14|inst4|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[8]~26\,
	combout => \inst14|inst4|valor_interno[9]~27_combout\,
	cout => \inst14|inst4|valor_interno[9]~28\);

\inst14|inst4|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[9]~27_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(9));

\inst8|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[5]~25_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(9));

\inst14|inst5|$00000|auto_generated|result_node[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\ = (\inst14|inst13|instruccion\(0) & (((\inst3|XIRQ_flag~q\ & !\inst3|IRQ_flag~q\)))) # (!\inst14|inst13|instruccion\(0) & (\inst8|valor_interno\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(9),
	datab => \inst14|inst13|instruccion\(0),
	datac => \inst3|XIRQ_flag~q\,
	datad => \inst3|IRQ_flag~q\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\);

\inst14|inst5|$00000|auto_generated|result_node[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst13|instruccion\(1) & ((\inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\)))) # (!\inst14|inst3|SELECTOR~0_combout\ & 
-- (((\inst14|inst4|valor_interno\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(1),
	datab => \inst14|inst4|valor_interno\(9),
	datac => \inst14|inst3|SELECTOR~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~2_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\);

\inst14|inst9|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	combout => \inst14|inst9|Equal14~0_combout\);

\inst14|inst9|Equal14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal14~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & (\inst14|inst9|Equal3~0_combout\ & (\inst14|inst9|Equal14~0_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datab => \inst14|inst9|Equal3~0_combout\,
	datac => \inst14|inst9|Equal14~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	combout => \inst14|inst9|Equal14~2_combout\);

\inst14|inst9|Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal17~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & \inst14|inst9|Equal14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal14~2_combout\,
	combout => \inst14|inst9|Equal17~0_combout\);

\inst14|inst9|data[44]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[44]~45_combout\ = (\inst14|inst9|Equal17~0_combout\) # ((\inst14|inst9|Equal26~0_combout\ & \inst14|inst9|data[34]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal17~0_combout\,
	datab => \inst14|inst9|Equal26~0_combout\,
	datac => \inst14|inst9|data[34]~44_combout\,
	combout => \inst14|inst9|data[44]~45_combout\);

\inst14|inst13|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[44]~45_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|RA\(0));

\AUX|data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~0_combout\ = (\inst14|inst13|RA\(0)) # (\IRX|C[7]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|RA\(0),
	datab => \IRX|C[7]~16_combout\,
	combout => \AUX|data_out~0_combout\);

\AUX|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~0_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(15));

\AUX|data_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~1_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(15))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[6]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(15),
	datab => \IRX|C[6]~19_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~1_combout\);

\AUX|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~1_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(14));

\AUX|data_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~2_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(14))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[5]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(14),
	datab => \IRX|C[5]~23_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~2_combout\);

\AUX|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~2_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(13));

\AUX|data_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~3_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(13))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[4]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(13),
	datab => \IRX|C[4]~26_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~3_combout\);

\AUX|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~3_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(12));

\AUX|data_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~4_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(12))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[3]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(12),
	datab => \IRX|C[3]~30_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~4_combout\);

\AUX|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~4_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(11));

\AUX|data_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~5_combout\ = (\inst14|inst13|RA\(0) & (\AUX|data_out\(11))) # (!\inst14|inst13|RA\(0) & ((\IRX|C[2]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(11),
	datab => \IRX|C[2]~33_combout\,
	datad => \inst14|inst13|RA\(0),
	combout => \AUX|data_out~5_combout\);

\AUX|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~5_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|BD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(10));

\IRX|C[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[2]~32_combout\ = (\AUX|data_out\(10) & (((\PC|data_out\(10)) # (\PC|TRI_STATE_D~0_combout\)))) # (!\AUX|data_out\(10) & (\AUX|TRI_STATE_C~0_combout\ & ((\PC|data_out\(10)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(10),
	datab => \AUX|TRI_STATE_C~0_combout\,
	datac => \PC|data_out\(10),
	datad => \PC|TRI_STATE_D~0_combout\,
	combout => \IRX|C[2]~32_combout\);

\inst1|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~14_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(2));

\IRX|D[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[2]~32_combout\ = (!\inst14|inst13|nEX~q\ & ((\inst1|Yupa_interno\(2)) # (!\inst14|inst13|nDUPA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Yupa_interno\(2),
	datac => \inst14|inst13|nDUPA~q\,
	datad => \inst14|inst13|nEX~q\,
	combout => \IRX|D[2]~32_combout\);

\inst6|mem~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~24_combout\ = (\inst|valor_interno\(2)) # ((\inst|valor_interno\(0) & (!\inst|valor_interno\(1) & \inst|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|valor_interno\(0),
	datab => \inst|valor_interno\(1),
	datac => \inst|valor_interno\(2),
	datad => \inst|valor_interno\(3),
	combout => \inst6|mem~24_combout\);

\inst6|mem~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|mem~25_combout\ = (\inst6|mem~17_combout\ & !\inst6|mem~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem~17_combout\,
	datad => \inst6|mem~24_combout\,
	combout => \inst6|mem~25_combout\);

\inst6|data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst6|mem~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data[2]~reg0_q\);

\IRX|C[2]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[2]~43_combout\ = (\IRX|D[2]~32_combout\ & (((\inst6|data[2]~reg0_q\) # (!\inst6|data[7]~en_q\)) # (!\inst14|inst13|BD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|BD~q\,
	datab => \inst6|data[7]~en_q\,
	datac => \IRX|D[2]~32_combout\,
	datad => \inst6|data[2]~reg0_q\,
	combout => \IRX|C[2]~43_combout\);

\IRX|C[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|C[2]~33_combout\ = ((\IRX|C[2]~31_combout\ & (\IRX|C[2]~32_combout\ & \IRX|C[2]~43_combout\))) # (!\IRX|C[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|C[2]~31_combout\,
	datab => \IRX|C[2]~32_combout\,
	datac => \IRX|C[2]~43_combout\,
	datad => \IRX|C[7]~15_combout\,
	combout => \IRX|C[2]~33_combout\);

\ACCA|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[2]~5_combout\,
	asdata => \IRX|C[2]~33_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(2));

\IRX|D[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[2]~30_combout\ = (\ACCA|data_out\(2) & ((\AUX|data_out\(2)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(2) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(2)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(2),
	datab => \AUX|data_out\(2),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[2]~30_combout\);

\IRX|D[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[2]~31_combout\ = (\ACCB|data_out\(2) & ((\PC|data_out\(2)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(2) & (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(2)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(2),
	datab => \PC|data_out\(2),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[2]~31_combout\);

\IRX|D[2]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[2]~46_combout\ = (\IRX|D[2]~32_combout\ & (((\inst14|inst13|BD~q\) # (\inst6|data[2]~reg0_q\)) # (!\inst6|data[7]~en_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~en_q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[2]~32_combout\,
	datad => \inst6|data[2]~reg0_q\,
	combout => \IRX|D[2]~46_combout\);

\IRX|D[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[2]~33_combout\ = ((\IRX|D[2]~30_combout\ & (\IRX|D[2]~31_combout\ & \IRX|D[2]~46_combout\))) # (!\IRX|D[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[2]~30_combout\,
	datab => \IRX|D[2]~31_combout\,
	datac => \IRX|D[2]~46_combout\,
	datad => \IRX|D[7]~15_combout\,
	combout => \IRX|D[2]~33_combout\);

\inst8|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[2]~33_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(6));

\inst14|inst4|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[6]~21_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(6));

\inst14|inst5|$00000|auto_generated|result_node[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ = (\inst14|inst3|Equal1~0_combout\ & ((\inst8|valor_interno\(6)) # ((\inst14|inst4|valor_interno\(6) & !\inst14|inst3|SELECTOR~0_combout\)))) # (!\inst14|inst3|Equal1~0_combout\ & 
-- (((\inst14|inst4|valor_interno\(6) & !\inst14|inst3|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|Equal1~0_combout\,
	datab => \inst8|valor_interno\(6),
	datac => \inst14|inst4|valor_interno\(6),
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\);

\inst14|inst5|$00000|auto_generated|result_node[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\ = (\inst14|inst4|valor_interno\(3) & ((\inst14|inst13|instruccion\(0) & (\inst14|inst7~5_combout\)) # (!\inst14|inst13|instruccion\(0) & ((!\inst14|inst13|instruccion\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(3),
	datab => \inst14|inst7~5_combout\,
	datac => \inst14|inst13|instruccion\(0),
	datad => \inst14|inst13|instruccion\(1),
	combout => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\);

\inst14|inst9|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	combout => \inst14|inst9|Equal3~0_combout\);

\inst14|inst9|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~1_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	combout => \inst14|inst9|Equal3~1_combout\);

\inst14|inst4|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[7]~23_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(7));

\inst14|inst9|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ & ((\inst14|inst3|SELECTOR~0_combout\ & ((!\inst14|inst5|$00000|auto_generated|result_node[7]~5_combout\))) # (!\inst14|inst3|SELECTOR~0_combout\ & 
-- (!\inst14|inst4|valor_interno\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|SELECTOR~0_combout\,
	datab => \inst14|inst4|valor_interno\(7),
	datac => \inst14|inst5|$00000|auto_generated|result_node[7]~5_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	combout => \inst14|inst9|Equal3~2_combout\);

\inst14|inst9|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal3~3_combout\ = (\inst14|inst9|Equal3~0_combout\ & (\inst14|inst9|Equal3~1_combout\ & (\inst14|inst9|Equal3~2_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal3~0_combout\,
	datab => \inst14|inst9|Equal3~1_combout\,
	datac => \inst14|inst9|Equal3~2_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	combout => \inst14|inst9|Equal3~3_combout\);

\inst14|inst9|Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal5~3_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & \inst14|inst9|Equal3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal3~3_combout\,
	combout => \inst14|inst9|Equal5~3_combout\);

\inst14|inst9|data[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~12_combout\ = (\inst14|inst9|data[96]~10_combout\ & (\inst14|inst9|data[6]~11_combout\ & (!\inst14|inst9|Equal9~2_combout\ & !\inst14|inst9|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[96]~10_combout\,
	datab => \inst14|inst9|data[6]~11_combout\,
	datac => \inst14|inst9|Equal9~2_combout\,
	datad => \inst14|inst9|Equal5~3_combout\,
	combout => \inst14|inst9|data[6]~12_combout\);

\inst14|inst9|data[72]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~76_combout\ = (\inst14|inst9|data[6]~12_combout\ & ((!\inst14|inst9|Equal7~0_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst14|inst9|Equal7~0_combout\,
	datac => \inst14|inst9|data[6]~12_combout\,
	combout => \inst14|inst9|data[72]~76_combout\);

\inst14|inst9|data[72]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~54_combout\ = (\inst14|inst9|Equal12~0_combout\) # (((\inst14|inst9|data[72]~76_combout\ & \inst14|inst9|Equal20~3_combout\)) # (!\inst14|inst9|data[72]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal12~0_combout\,
	datab => \inst14|inst9|data[72]~76_combout\,
	datac => \inst14|inst9|Equal20~3_combout\,
	datad => \inst14|inst9|data[72]~14_combout\,
	combout => \inst14|inst9|data[72]~54_combout\);

\inst14|inst13|EA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[72]~54_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EA\(0));

\ACCA|C[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[6]~1_combout\ = (\ACCA|data_out\(6)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(6),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[6]~1_combout\);

\ACCA|data_out[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[6]~1_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[6]~1_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[6]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[6]~21_combout\,
	datab => \ACCA|C[6]~1_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[6]~1_combout\);

\ACCA|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[6]~1_combout\,
	asdata => \IRX|C[6]~19_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(6));

\IRX|D[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[6]~18_combout\ = (\ACCA|data_out\(6) & ((\AUX|data_out\(6)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(6) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(6)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(6),
	datab => \AUX|data_out\(6),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[6]~18_combout\);

\IRX|D[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[6]~19_combout\ = (\ACCB|data_out\(6) & ((\PC|data_out\(6)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(6) & (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(6)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(6),
	datab => \PC|data_out\(6),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[6]~19_combout\);

\IRX|D[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[6]~44_combout\ = (\IRX|D[6]~20_combout\ & (((\inst14|inst13|BD~q\) # (\inst6|data[6]~reg0_q\)) # (!\inst6|data[7]~en_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~en_q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[6]~20_combout\,
	datad => \inst6|data[6]~reg0_q\,
	combout => \IRX|D[6]~44_combout\);

\IRX|D[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[6]~21_combout\ = ((\IRX|D[6]~18_combout\ & (\IRX|D[6]~19_combout\ & \IRX|D[6]~44_combout\))) # (!\IRX|D[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[6]~18_combout\,
	datab => \IRX|D[6]~19_combout\,
	datac => \IRX|D[6]~44_combout\,
	datad => \IRX|D[7]~15_combout\,
	combout => \IRX|D[6]~21_combout\);

\inst8|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[6]~21_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(10));

\inst14|inst4|valor_interno[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[10]~29_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (!\inst14|inst4|valor_interno[9]~28\)) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & 
-- ((\inst14|inst4|valor_interno[9]~28\) # (GND)))
-- \inst14|inst4|valor_interno[10]~30\ = CARRY((!\inst14|inst4|valor_interno[9]~28\) # (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => VCC,
	cin => \inst14|inst4|valor_interno[9]~28\,
	combout => \inst14|inst4|valor_interno[10]~29_combout\,
	cout => \inst14|inst4|valor_interno[10]~30\);

\inst14|inst4|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[10]~29_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(10));

\inst14|inst5|$00000|auto_generated|result_node[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ = (\inst14|inst3|Equal1~0_combout\ & ((\inst8|valor_interno\(10)) # ((\inst14|inst4|valor_interno\(10) & !\inst14|inst3|SELECTOR~0_combout\)))) # (!\inst14|inst3|Equal1~0_combout\ & 
-- (((\inst14|inst4|valor_interno\(10) & !\inst14|inst3|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|Equal1~0_combout\,
	datab => \inst8|valor_interno\(10),
	datac => \inst14|inst4|valor_interno\(10),
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\);

\inst14|inst9|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal7~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst14|inst9|Equal3~0_combout\ & (\inst14|inst9|Equal3~1_combout\ & \inst14|inst9|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst14|inst9|Equal3~0_combout\,
	datac => \inst14|inst9|Equal3~1_combout\,
	datad => \inst14|inst9|Equal3~2_combout\,
	combout => \inst14|inst9|Equal7~0_combout\);

\inst14|inst9|data[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~11_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (((!\inst14|inst9|Equal3~3_combout\) # (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\)))) # 
-- (!\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (((\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\)) # (!\inst14|inst9|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal7~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datad => \inst14|inst9|Equal3~3_combout\,
	combout => \inst14|inst9|data[6]~11_combout\);

\inst14|inst9|data[72]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[72]~55_combout\ = (\inst14|inst9|data[96]~10_combout\ & (\inst14|inst9|data[6]~11_combout\ & !\inst14|inst9|Equal5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[96]~10_combout\,
	datab => \inst14|inst9|data[6]~11_combout\,
	datad => \inst14|inst9|Equal5~3_combout\,
	combout => \inst14|inst9|data[72]~55_combout\);

\inst14|inst9|data[73]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[73]~56_combout\ = (\inst14|inst9|data[72]~55_combout\ & (\inst14|inst9|data[6]~8_combout\ & ((\inst14|inst9|Equal11~3_combout\) # (\inst14|inst9|Equal20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[72]~55_combout\,
	datab => \inst14|inst9|data[6]~8_combout\,
	datac => \inst14|inst9|Equal11~3_combout\,
	datad => \inst14|inst9|Equal20~3_combout\,
	combout => \inst14|inst9|data[73]~56_combout\);

\inst14|inst13|EA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[73]~56_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|EA\(1));

\ACCA|C[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[0]~7_combout\ = (\ACCA|data_out\(0)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[0]~7_combout\);

\ACCA|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[0]~7_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[0]~7_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[0]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[0]~42_combout\,
	datab => \ACCA|C[0]~7_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[0]~7_combout\);

\ACCA|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[0]~7_combout\,
	asdata => \IRX|C[0]~39_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(0));

\AUX|data_out~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AUX|data_out~15_combout\ = (\inst14|inst13|BD~q\ & (\AUX|data_out\(1))) # (!\inst14|inst13|BD~q\ & ((\IRX|D[0]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX|data_out\(1),
	datab => \IRX|D[0]~42_combout\,
	datad => \inst14|inst13|BD~q\,
	combout => \AUX|data_out~15_combout\);

\AUX|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \AUX|data_out~15_combout\,
	clrn => \RESET~input_o\,
	ena => \inst14|inst13|RA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUX|data_out\(0));

\IRX|D[0]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[0]~38_combout\ = (\ACCA|data_out\(0) & ((\AUX|data_out\(0)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(0) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(0)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(0),
	datab => \AUX|data_out\(0),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[0]~38_combout\);

\IRX|D[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[0]~39_combout\ = (\ACCB|data_out\(0) & ((\PC|data_out\(0)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(0) & (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(0)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \PC|data_out\(0),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[0]~39_combout\);

\IRX|D[0]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[0]~41_combout\ = (\IRX|D[0]~40_combout\ & ((\inst6|data[0]~reg0_q\) # ((\inst14|inst13|BD~q\) # (!\inst6|data[7]~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[0]~40_combout\,
	datab => \inst6|data[0]~reg0_q\,
	datac => \inst6|data[7]~en_q\,
	datad => \inst14|inst13|BD~q\,
	combout => \IRX|D[0]~41_combout\);

\IRX|D[0]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[0]~42_combout\ = ((\IRX|D[0]~38_combout\ & (\IRX|D[0]~39_combout\ & \IRX|D[0]~41_combout\))) # (!\IRX|D[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[0]~38_combout\,
	datab => \IRX|D[0]~39_combout\,
	datac => \IRX|D[0]~41_combout\,
	datad => \IRX|D[7]~15_combout\,
	combout => \IRX|D[0]~42_combout\);

\inst8|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[0]~42_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(4));

\inst14|inst4|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[4]~17_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(4));

\inst14|inst5|$00000|auto_generated|result_node[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ = (\inst14|inst3|Equal1~0_combout\ & ((\inst8|valor_interno\(4)) # ((\inst14|inst4|valor_interno\(4) & !\inst14|inst3|SELECTOR~0_combout\)))) # (!\inst14|inst3|Equal1~0_combout\ & 
-- (((\inst14|inst4|valor_interno\(4) & !\inst14|inst3|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|Equal1~0_combout\,
	datab => \inst8|valor_interno\(4),
	datac => \inst14|inst4|valor_interno\(4),
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\);

\inst14|inst9|Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal11~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\ & 
-- \inst14|inst9|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	datad => \inst14|inst9|Equal23~0_combout\,
	combout => \inst14|inst9|Equal11~2_combout\);

\inst14|inst9|Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal11~3_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & \inst14|inst9|Equal11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal11~2_combout\,
	combout => \inst14|inst9|Equal11~3_combout\);

\inst14|inst9|data[71]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[71]~57_combout\ = (\inst14|inst9|Equal4~0_combout\) # ((!\inst14|inst9|Equal11~3_combout\ & (\inst14|inst9|data[72]~76_combout\ & \inst14|inst9|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal11~3_combout\,
	datab => \inst14|inst9|data[72]~76_combout\,
	datac => \inst14|inst9|Equal12~0_combout\,
	datad => \inst14|inst9|Equal4~0_combout\,
	combout => \inst14|inst9|data[71]~57_combout\);

\inst14|inst13|nWA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[71]~57_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nWA~q\);

\ACCA|C[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|C[7]~0_combout\ = (\ACCA|data_out\(7)) # ((\inst14|inst13|nWA~q\) # ((!\inst14|inst13|EA\(0)) # (!\inst14|inst13|EA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \inst14|inst13|nWA~q\,
	datac => \inst14|inst13|EA\(1),
	datad => \inst14|inst13|EA\(0),
	combout => \ACCA|C[7]~0_combout\);

\ACCA|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ACCA|data_out[7]~0_combout\ = (\inst14|inst13|EA\(1) & ((\ACCA|C[7]~0_combout\))) # (!\inst14|inst13|EA\(1) & (\IRX|D[7]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[7]~16_combout\,
	datab => \ACCA|C[7]~0_combout\,
	datad => \inst14|inst13|EA\(1),
	combout => \ACCA|data_out[7]~0_combout\);

\ACCA|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \ACCA|data_out[7]~0_combout\,
	asdata => \IRX|C[7]~16_combout\,
	sload => \inst14|inst13|ALT_INV_EA\(0),
	ena => \ACCA|data_out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCA|data_out\(7));

\IRX|D[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~10_combout\ = (\ACCA|data_out\(7) & ((\AUX|data_out\(7)) # ((\AUX|TRI_STATE_D~0_combout\)))) # (!\ACCA|data_out\(7) & (!\ACCA|TRI_STATE~0_combout\ & ((\AUX|data_out\(7)) # (\AUX|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \AUX|data_out\(7),
	datac => \AUX|TRI_STATE_D~0_combout\,
	datad => \ACCA|TRI_STATE~0_combout\,
	combout => \IRX|D[7]~10_combout\);

\IRX|D[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~11_combout\ = (\ACCB|data_out\(7) & ((\PC|data_out\(7)) # ((\PC|TRI_STATE_D~0_combout\)))) # (!\ACCB|data_out\(7) & (!\ACCB|TRI_STATE~0_combout\ & ((\PC|data_out\(7)) # (\PC|TRI_STATE_D~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \PC|data_out\(7),
	datac => \PC|TRI_STATE_D~0_combout\,
	datad => \ACCB|TRI_STATE~0_combout\,
	combout => \IRX|D[7]~11_combout\);

\IRX|D[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~43_combout\ = (\IRX|D[7]~12_combout\ & (((\inst14|inst13|BD~q\) # (\inst6|data[7]~reg0_q\)) # (!\inst6|data[7]~en_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~en_q\,
	datab => \inst14|inst13|BD~q\,
	datac => \IRX|D[7]~12_combout\,
	datad => \inst6|data[7]~reg0_q\,
	combout => \IRX|D[7]~43_combout\);

\IRX|D[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IRX|D[7]~16_combout\ = ((\IRX|D[7]~10_combout\ & (\IRX|D[7]~11_combout\ & \IRX|D[7]~43_combout\))) # (!\IRX|D[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRX|D[7]~10_combout\,
	datab => \IRX|D[7]~11_combout\,
	datac => \IRX|D[7]~43_combout\,
	datad => \IRX|D[7]~15_combout\,
	combout => \IRX|D[7]~16_combout\);

\inst8|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[7]~16_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(11));

\inst14|inst4|valor_interno[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[11]~31_combout\ = \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ $ (!\inst14|inst4|valor_interno[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	cin => \inst14|inst4|valor_interno[10]~30\,
	combout => \inst14|inst4|valor_interno[11]~31_combout\);

\inst14|inst4|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[11]~31_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(11));

\inst14|inst5|$00000|auto_generated|result_node[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ = (\inst14|inst3|Equal1~0_combout\ & ((\inst8|valor_interno\(11)) # ((\inst14|inst4|valor_interno\(11) & !\inst14|inst3|SELECTOR~0_combout\)))) # (!\inst14|inst3|Equal1~0_combout\ & 
-- (((\inst14|inst4|valor_interno\(11) & !\inst14|inst3|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|Equal1~0_combout\,
	datab => \inst8|valor_interno\(11),
	datac => \inst14|inst4|valor_interno\(11),
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\);

\inst14|inst9|Equal29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal29~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[6]~7_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[3]~10_combout\,
	combout => \inst14|inst9|Equal29~0_combout\);

\inst14|inst9|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~0_combout\ = (\inst14|inst9|Equal29~0_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal29~0_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	combout => \inst14|inst9|Equal0~0_combout\);

\inst14|inst9|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal1~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|Equal0~0_combout\ & (\inst14|inst9|Equal0~1_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datab => \inst14|inst9|Equal0~0_combout\,
	datac => \inst14|inst9|Equal0~1_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	combout => \inst14|inst9|Equal1~0_combout\);

\inst14|inst13|nCRI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal1~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|nCRI~q\);

\inst8|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[1]~37_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(5));

\inst14|inst4|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[5]~19_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(5));

\inst14|inst5|$00000|auto_generated|result_node[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ = (\inst14|inst3|Equal1~0_combout\ & ((\inst8|valor_interno\(5)) # ((\inst14|inst4|valor_interno\(5) & !\inst14|inst3|SELECTOR~0_combout\)))) # (!\inst14|inst3|Equal1~0_combout\ & 
-- (((\inst14|inst4|valor_interno\(5) & !\inst14|inst3|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|Equal1~0_combout\,
	datab => \inst8|valor_interno\(5),
	datac => \inst14|inst4|valor_interno\(5),
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\);

\inst14|inst9|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal0~2_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	combout => \inst14|inst9|Equal0~2_combout\);

\inst14|inst9|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~0_combout\ = (!\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\ & !\inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[9]~3_combout\,
	datac => \inst14|inst5|$00000|auto_generated|result_node[2]~12_combout\,
	combout => \inst14|inst9|Equal2~0_combout\);

\inst14|inst9|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal2~1_combout\ = (\inst14|inst9|Equal0~2_combout\ & (\inst14|inst9|Equal5~2_combout\ & (\inst14|inst9|Equal29~0_combout\ & \inst14|inst9|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal0~2_combout\,
	datab => \inst14|inst9|Equal5~2_combout\,
	datac => \inst14|inst9|Equal29~0_combout\,
	datad => \inst14|inst9|Equal2~0_combout\,
	combout => \inst14|inst9|Equal2~1_combout\);

\inst14|inst9|data[91]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[91]~32_combout\ = (\inst14|inst13|prueba[2]~0_combout\ & ((\inst14|inst9|Equal2~1_combout\) # ((\inst14|inst9|data~30_combout\) # (!\inst14|inst9|data~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba[2]~0_combout\,
	datab => \inst14|inst9|Equal2~1_combout\,
	datac => \inst14|inst9|data~30_combout\,
	datad => \inst14|inst9|data~31_combout\,
	combout => \inst14|inst9|data[91]~32_combout\);

\inst14|inst13|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[91]~32_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|instruccion\(1));

\inst14|inst3|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst3|Equal1~0_combout\ = (\inst14|inst13|instruccion\(1) & !\inst14|inst13|instruccion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(1),
	datad => \inst14|inst13|instruccion\(0),
	combout => \inst14|inst3|Equal1~0_combout\);

\inst8|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \IRX|D[4]~29_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(8));

\inst14|inst4|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[8]~25_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(8));

\inst14|inst5|$00000|auto_generated|result_node[8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\ = (\inst14|inst3|Equal1~0_combout\ & ((\inst8|valor_interno\(8)) # ((\inst14|inst4|valor_interno\(8) & !\inst14|inst3|SELECTOR~0_combout\)))) # (!\inst14|inst3|Equal1~0_combout\ & 
-- (((\inst14|inst4|valor_interno\(8) & !\inst14|inst3|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|Equal1~0_combout\,
	datab => \inst8|valor_interno\(8),
	datac => \inst14|inst4|valor_interno\(8),
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\);

\inst14|inst9|Equal20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal20~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\ & (\inst14|inst9|Equal23~0_combout\ & 
-- !\inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[8]~4_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[5]~8_combout\,
	datac => \inst14|inst9|Equal23~0_combout\,
	datad => \inst14|inst5|$00000|auto_generated|result_node[4]~9_combout\,
	combout => \inst14|inst9|Equal20~2_combout\);

\inst14|inst9|Equal22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal22~2_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (!\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & \inst14|inst9|Equal20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal20~2_combout\,
	combout => \inst14|inst9|Equal22~2_combout\);

\inst14|inst9|data[90]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[90]~37_combout\ = (\inst14|inst9|Equal22~2_combout\) # (((\inst14|inst9|data[26]~22_combout\ & !\inst14|inst13|prueba[4]~1_combout\)) # (!\inst14|inst9|data[96]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|Equal22~2_combout\,
	datab => \inst14|inst9|data[26]~22_combout\,
	datac => \inst14|inst13|prueba[4]~1_combout\,
	datad => \inst14|inst9|data[96]~36_combout\,
	combout => \inst14|inst9|data[90]~37_combout\);

\inst14|inst13|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[90]~37_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|instruccion\(0));

\inst14|inst5|$00000|auto_generated|result_node[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[0]~11_combout\ = (\inst14|inst13|instruccion\(0) & !\inst14|inst13|instruccion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|instruccion\(0),
	datad => \inst14|inst13|instruccion\(1),
	combout => \inst14|inst5|$00000|auto_generated|result_node[0]~11_combout\);

\inst14|inst9|data[78]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[78]~48_combout\ = (\inst14|inst9|data[97]~39_combout\) # (((\inst14|inst9|Equal28~0_combout\ & \inst14|inst13|prueba[4]~2_combout\)) # (!\inst14|inst9|data[31]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[97]~39_combout\,
	datab => \inst14|inst9|Equal28~0_combout\,
	datac => \inst14|inst13|prueba[4]~2_combout\,
	datad => \inst14|inst9|data[31]~73_combout\,
	combout => \inst14|inst9|data[78]~48_combout\);

\inst14|inst13|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[78]~48_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(0));

\inst14|inst4|valor_interno[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst4|valor_interno[0]~33_combout\ = !\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	combout => \inst14|inst4|valor_interno[0]~33_combout\);

\inst14|inst4|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[0]~33_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(0));

\inst14|inst5|$00000|auto_generated|result_node[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~11_combout\ & (\inst14|inst13|liga\(0)))) # (!\inst14|inst3|SELECTOR~0_combout\ & 
-- (((\inst14|inst4|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[0]~11_combout\,
	datab => \inst14|inst13|liga\(0),
	datac => \inst14|inst4|valor_interno\(0),
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\);

\inst14|inst4|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst4|valor_interno[1]~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst4|valor_interno\(1));

\inst14|inst5|$00000|auto_generated|result_node[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ = (\inst14|inst4|valor_interno\(1) & ((\inst14|inst13|instruccion\(0) & (\inst14|inst7~5_combout\)) # (!\inst14|inst13|instruccion\(0) & ((!\inst14|inst13|instruccion\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst4|valor_interno\(1),
	datab => \inst14|inst7~5_combout\,
	datac => \inst14|inst13|instruccion\(0),
	datad => \inst14|inst13|instruccion\(1),
	combout => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\);

\inst14|inst9|Equal26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|Equal26~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\ & (\inst14|inst9|Equal23~0_combout\ & \inst14|inst9|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[1]~13_combout\,
	datab => \inst14|inst5|$00000|auto_generated|result_node[0]~14_combout\,
	datac => \inst14|inst9|Equal23~0_combout\,
	datad => \inst14|inst9|Equal0~2_combout\,
	combout => \inst14|inst9|Equal26~0_combout\);

\inst14|inst13|liga[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|Equal26~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|liga\(2));

\inst8|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_nCRI~q\,
	d => \inst1|Yupa[3]~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(7));

\inst14|inst5|$00000|auto_generated|result_node[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[7]~5_combout\ = (\inst14|inst13|instruccion\(1) & (((\inst8|valor_interno\(7) & !\inst14|inst13|instruccion\(0))))) # (!\inst14|inst13|instruccion\(1) & (\inst14|inst13|liga\(2) & 
-- ((\inst14|inst13|instruccion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|liga\(2),
	datab => \inst8|valor_interno\(7),
	datac => \inst14|inst13|instruccion\(1),
	datad => \inst14|inst13|instruccion\(0),
	combout => \inst14|inst5|$00000|auto_generated|result_node[7]~5_combout\);

\inst14|inst5|$00000|auto_generated|result_node[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\ = (\inst14|inst3|SELECTOR~0_combout\ & (\inst14|inst5|$00000|auto_generated|result_node[7]~5_combout\)) # (!\inst14|inst3|SELECTOR~0_combout\ & ((\inst14|inst4|valor_interno\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~5_combout\,
	datab => \inst14|inst4|valor_interno\(7),
	datad => \inst14|inst3|SELECTOR~0_combout\,
	combout => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\);

\inst14|inst13|prueba[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst13|prueba[2]~0_combout\ = (\inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\) # ((!\inst14|inst9|Equal0~1_combout\) # (!\inst14|inst9|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5|$00000|auto_generated|result_node[7]~6_combout\,
	datac => \inst14|inst9|Equal0~0_combout\,
	datad => \inst14|inst9|Equal0~1_combout\,
	combout => \inst14|inst13|prueba[2]~0_combout\);

\inst14|inst9|data[96]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[96]~10_combout\ = (\inst14|inst13|prueba[2]~0_combout\ & (!\inst14|inst9|Equal2~1_combout\ & ((!\inst14|inst9|Equal3~4_combout\) # (!\inst14|inst9|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|prueba[2]~0_combout\,
	datab => \inst14|inst9|Equal3~3_combout\,
	datac => \inst14|inst9|Equal3~4_combout\,
	datad => \inst14|inst9|Equal2~1_combout\,
	combout => \inst14|inst9|data[96]~10_combout\);

\inst14|inst9|data[6]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~50_combout\ = (\inst14|inst9|data[96]~10_combout\ & (\inst14|inst9|data[6]~11_combout\ & \inst14|inst9|data[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[96]~10_combout\,
	datab => \inst14|inst9|data[6]~11_combout\,
	datac => \inst14|inst9|data[6]~8_combout\,
	combout => \inst14|inst9|data[6]~50_combout\);

\inst14|inst9|data[6]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst9|data[6]~51_combout\ = (\inst14|inst9|data[6]~12_combout\ & ((\inst14|inst9|data[6]~8_combout\ & ((!\inst14|inst9|data[6]~18_combout\))) # (!\inst14|inst9|data[6]~8_combout\ & (\inst14|inst9|data[6]~50_combout\)))) # 
-- (!\inst14|inst9|data[6]~12_combout\ & (\inst14|inst9|data[6]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst9|data[6]~50_combout\,
	datab => \inst14|inst9|data[6]~12_combout\,
	datac => \inst14|inst9|data[6]~8_combout\,
	datad => \inst14|inst9|data[6]~18_combout\,
	combout => \inst14|inst9|data[6]~51_combout\);

\inst14|inst13|CZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|inst9|data[6]~51_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst13|CZ~q\);

\inst5|inst10|output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~0_combout\ = (!\ACCA|data_out\(4) & (!\ACCA|data_out\(3) & (!\ACCA|data_out\(2) & !\ACCA|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(4),
	datab => \ACCA|data_out\(3),
	datac => \ACCA|data_out\(2),
	datad => \ACCA|data_out\(1),
	combout => \inst5|inst10|output~0_combout\);

\inst5|inst10|output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~1_combout\ = (\ACCA|data_out\(7)) # ((\ACCA|data_out\(6)) # (\ACCA|data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(7),
	datab => \ACCA|data_out\(6),
	datac => \ACCA|data_out\(0),
	combout => \inst5|inst10|output~1_combout\);

\inst5|inst10|output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~2_combout\ = (!\ACCA|data_out\(5) & (\inst5|inst10|output~0_combout\ & !\inst5|inst10|output~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCA|data_out\(5),
	datab => \inst5|inst10|output~0_combout\,
	datac => \inst5|inst10|output~1_combout\,
	combout => \inst5|inst10|output~2_combout\);

\inst5|inst10|output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~3_combout\ = (!\ACCB|data_out\(7) & (!\ACCB|data_out\(6) & (!\ACCB|data_out\(5) & !\ACCB|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datab => \ACCB|data_out\(6),
	datac => \ACCB|data_out\(5),
	datad => \ACCB|data_out\(4),
	combout => \inst5|inst10|output~3_combout\);

\inst5|inst10|output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~4_combout\ = (!\ACCB|data_out\(3) & (!\ACCB|data_out\(2) & (!\ACCB|data_out\(1) & !\ACCB|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(3),
	datab => \ACCB|data_out\(2),
	datac => \ACCB|data_out\(1),
	datad => \ACCB|data_out\(0),
	combout => \inst5|inst10|output~4_combout\);

\inst1|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\inst1|Add0~18_combout\) # (\inst1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~18_combout\,
	datab => \inst1|Add0~20_combout\,
	combout => \inst1|WideOr0~0_combout\);

\inst1|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~1_combout\ = (\inst1|Add0~10_combout\) # ((\inst1|Add0~12_combout\) # ((\inst1|Add0~14_combout\) # (\inst1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datab => \inst1|Add0~12_combout\,
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|WideOr0~1_combout\);

\inst1|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~combout\ = (!\inst1|Add0~22_combout\ & (!\inst1|Add0~24_combout\ & (!\inst1|WideOr0~0_combout\ & !\inst1|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~22_combout\,
	datab => \inst1|Add0~24_combout\,
	datac => \inst1|WideOr0~0_combout\,
	datad => \inst1|WideOr0~1_combout\,
	combout => \inst1|WideOr0~combout\);

\inst1|Banderas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|WideOr0~combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(0));

\inst5|inst10|output~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~5_combout\ = (\inst14|inst13|B4~q\ & (\inst5|inst10|output~3_combout\ & (\inst5|inst10|output~4_combout\))) # (!\inst14|inst13|B4~q\ & (((\inst1|Banderas\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B4~q\,
	datab => \inst5|inst10|output~3_combout\,
	datac => \inst5|inst10|output~4_combout\,
	datad => \inst1|Banderas\(0),
	combout => \inst5|inst10|output~5_combout\);

\inst5|inst10|output~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~6_combout\ = (\inst14|inst13|B3~q\ & ((\inst5|inst10|output~2_combout\) # ((\inst14|inst13|B4~q\)))) # (!\inst14|inst13|B3~q\ & (((\inst5|inst10|output~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst13|B3~q\,
	datab => \inst5|inst10|output~2_combout\,
	datac => \inst14|inst13|B4~q\,
	datad => \inst5|inst10|output~5_combout\,
	combout => \inst5|inst10|output~6_combout\);

\inst5|inst2|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|inst13|ALT_INV_CZ~q\,
	d => \inst5|inst10|output~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|valor_interno~q\);

\inst1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~22_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(6));

\inst1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~20_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(5));

\inst1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~18_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(4));

\inst1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~16_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(3));

\inst1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~14_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(2));

\inst1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|Add0~12_combout\,
	ena => \inst14|inst13|ALT_INV_nDUPA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(1));

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

