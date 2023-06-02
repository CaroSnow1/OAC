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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/26/2023 09:01:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          m68hc11
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY m68hc11_vhd_vec_tst IS
END m68hc11_vhd_vec_tst;
ARCHITECTURE m68hc11_arch OF m68hc11_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACCA_D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ACCB_D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL AP_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL AUX_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL csnn : STD_LOGIC;
SIGNAL Debug_Q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Debug_Yupa : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Edo_Pres : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL IRQn : STD_LOGIC;
SIGNAL IX : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL N : STD_LOGIC;
SIGNAL PC_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL X_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL XIRQn : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT m68hc11
	PORT (
	ACCA_D : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ACCB_D : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	AP_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	AUX_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	CLK : IN STD_LOGIC;
	csnn : OUT STD_LOGIC;
	Debug_Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Debug_Yupa : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Edo_Pres : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	IRQn : IN STD_LOGIC;
	IX : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	N : OUT STD_LOGIC;
	PC_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RESET : IN STD_LOGIC;
	X_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	XIRQn : IN STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : m68hc11
	PORT MAP (
-- list connections between master ports and signals
	ACCA_D => ACCA_D,
	ACCB_D => ACCB_D,
	AP_D => AP_D,
	AUX_D => AUX_D,
	CLK => CLK,
	csnn => csnn,
	Debug_Q => Debug_Q,
	Debug_Yupa => Debug_Yupa,
	Edo_Pres => Edo_Pres,
	IRQn => IRQn,
	IX => IX,
	N => N,
	PC_D => PC_D,
	RESET => RESET,
	X_D => X_D,
	XIRQn => XIRQn,
	Z => Z
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- IRQn
t_prcs_IRQn: PROCESS
BEGIN
	IRQn <= '1';
WAIT;
END PROCESS t_prcs_IRQn;

-- XIRQn
t_prcs_XIRQn: PROCESS
BEGIN
	XIRQn <= '1';
WAIT;
END PROCESS t_prcs_XIRQn;
END m68hc11_arch;
