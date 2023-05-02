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
-- Generated on "03/31/2023 08:06:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica4_vhd_vec_tst IS
END practica4_vhd_vec_tst;
ARCHITECTURE practica4_arch OF practica4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL estados : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL salidas : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL W : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT practica4
	PORT (
	clk : IN STD_LOGIC;
	estados : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	salidas : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	W : IN STD_LOGIC;
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC;
	Z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica4
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	estados => estados,
	reset => reset,
	salidas => salidas,
	W => W,
	X => X,
	Y => Y,
	Z => Z
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- W
t_prcs_W: PROCESS
BEGIN
LOOP
	W <= '0';
	WAIT FOR 100000 ps;
	W <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_W;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '1';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
LOOP
	Y <= '0';
	WAIT FOR 50000 ps;
	Y <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Y;

-- Z
t_prcs_Z: PROCESS
BEGIN
	Z <= '1';
WAIT;
END PROCESS t_prcs_Z;
END practica4_arch;
