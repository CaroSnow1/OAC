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
-- Generated on "05/12/2023 08:51:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          implementacion
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY implementacion_vhd_vec_tst IS
END implementacion_vhd_vec_tst;
ARCHITECTURE implementacion_arch OF implementacion_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL EDO_PST : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL IN_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL INT : STD_LOGIC;
SIGNAL OUTS : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT implementacion
	PORT (
	CLK : IN STD_LOGIC;
	EDO_PST : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	IN_1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	INT : IN STD_LOGIC;
	OUTS : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	RESET : IN STD_LOGIC;
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : implementacion
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	EDO_PST => EDO_PST,
	IN_1 => IN_1,
	INT => INT,
	OUTS => OUTS,
	RESET => RESET,
	X => X,
	Y => Y
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
-- IN_1[3]
t_prcs_IN_1_3: PROCESS
BEGIN
	IN_1(3) <= '0';
WAIT;
END PROCESS t_prcs_IN_1_3;
-- IN_1[2]
t_prcs_IN_1_2: PROCESS
BEGIN
	IN_1(2) <= '0';
WAIT;
END PROCESS t_prcs_IN_1_2;
-- IN_1[1]
t_prcs_IN_1_1: PROCESS
BEGIN
	IN_1(1) <= '0';
WAIT;
END PROCESS t_prcs_IN_1_1;
-- IN_1[0]
t_prcs_IN_1_0: PROCESS
BEGIN
	IN_1(0) <= '0';
WAIT;
END PROCESS t_prcs_IN_1_0;

-- INT
t_prcs_INT: PROCESS
BEGIN
	INT <= '0';
WAIT;
END PROCESS t_prcs_INT;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '1';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
	Y <= '1';
WAIT;
END PROCESS t_prcs_Y;
END implementacion_arch;
