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

-- DATE "05/10/2023 19:26:27"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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

ENTITY 	practica06 IS
    PORT (
	nPL : OUT std_logic;
	nCC : IN std_logic;
	inst : IN std_logic_vector(1 DOWNTO 0);
	nMAP : OUT std_logic;
	nVECT : OUT std_logic;
	Y : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	RESET : IN std_logic;
	ENA : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0)
	);
END practica06;

-- Design Ports Information
-- nPL	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nMAP	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nVECT	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENA	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCC	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica06 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nPL : std_logic;
SIGNAL ww_nCC : std_logic;
SIGNAL ww_inst : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_nMAP : std_logic;
SIGNAL ww_nVECT : std_logic;
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_ENA : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ENA~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \nPL~output_o\ : std_logic;
SIGNAL \nMAP~output_o\ : std_logic;
SIGNAL \nVECT~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \inst[0]~input_o\ : std_logic;
SIGNAL \inst[1]~input_o\ : std_logic;
SIGNAL \IntLogic|sel~0_combout\ : std_logic;
SIGNAL \IntLogic|sel~1_combout\ : std_logic;
SIGNAL \IntLogic|nvect~0_combout\ : std_logic;
SIGNAL \nCC~input_o\ : std_logic;
SIGNAL \IntLogic|sel~2_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \MicroPC|internal_value[0]~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \MuxDireccion|salida[0]~3_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \Inc|Add0~2_combout\ : std_logic;
SIGNAL \Inc|Add0~3_combout\ : std_logic;
SIGNAL \MuxDireccion|salida[1]~2_combout\ : std_logic;
SIGNAL \Inc|Add0~1_combout\ : std_logic;
SIGNAL \MuxDireccion|salida[2]~1_combout\ : std_logic;
SIGNAL \Inc|Add0~0_combout\ : std_logic;
SIGNAL \MuxDireccion|salida[3]~0_combout\ : std_logic;
SIGNAL \MicroPC|internal_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IntLogic|ALT_INV_sel~1_combout\ : std_logic;
SIGNAL \IntLogic|ALT_INV_sel~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

nPL <= ww_nPL;
ww_nCC <= nCC;
ww_inst <= inst;
nMAP <= ww_nMAP;
nVECT <= ww_nVECT;
Y <= ww_Y;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_ENA <= ENA;
ww_D <= D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\IntLogic|ALT_INV_sel~1_combout\ <= NOT \IntLogic|sel~1_combout\;
\IntLogic|ALT_INV_sel~0_combout\ <= NOT \IntLogic|sel~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X0_Y27_N9
\nPL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IntLogic|ALT_INV_sel~0_combout\,
	devoe => ww_devoe,
	o => \nPL~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\nMAP~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IntLogic|ALT_INV_sel~1_combout\,
	devoe => ww_devoe,
	o => \nMAP~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\nVECT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IntLogic|nvect~0_combout\,
	devoe => ww_devoe,
	o => \nVECT~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\Y[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxDireccion|salida[3]~0_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\Y[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxDireccion|salida[2]~1_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\Y[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxDireccion|salida[1]~2_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\Y[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxDireccion|salida[0]~3_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOIBUF_X0_Y23_N15
\inst[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(0),
	o => \inst[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\inst[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(1),
	o => \inst[1]~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\IntLogic|sel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IntLogic|sel~0_combout\ = (\inst[0]~input_o\ & !\inst[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst[0]~input_o\,
	datad => \inst[1]~input_o\,
	combout => \IntLogic|sel~0_combout\);

-- Location: LCCOMB_X1_Y26_N26
\IntLogic|sel~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IntLogic|sel~1_combout\ = (!\inst[0]~input_o\ & \inst[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst[0]~input_o\,
	datad => \inst[1]~input_o\,
	combout => \IntLogic|sel~1_combout\);

-- Location: LCCOMB_X1_Y26_N8
\IntLogic|nvect~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IntLogic|nvect~0_combout\ = (!\inst[1]~input_o\) # (!\inst[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst[0]~input_o\,
	datad => \inst[1]~input_o\,
	combout => \IntLogic|nvect~0_combout\);

-- Location: IOIBUF_X0_Y26_N22
\nCC~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCC,
	o => \nCC~input_o\);

-- Location: LCCOMB_X1_Y26_N24
\IntLogic|sel~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IntLogic|sel~2_combout\ = (\inst[0]~input_o\ & ((!\nCC~input_o\))) # (!\inst[0]~input_o\ & (\inst[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst[1]~input_o\,
	datac => \inst[0]~input_o\,
	datad => \nCC~input_o\,
	combout => \IntLogic|sel~2_combout\);

-- Location: IOIBUF_X0_Y25_N15
\D[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: IOIBUF_X0_Y26_N15
\D[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\D[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X1_Y26_N28
\MicroPC|internal_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MicroPC|internal_value[0]~0_combout\ = !\MuxDireccion|salida[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxDireccion|salida[0]~3_combout\,
	combout => \MicroPC|internal_value[0]~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
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

-- Location: FF_X1_Y26_N29
\MicroPC|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MicroPC|internal_value[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroPC|internal_value\(0));

-- Location: LCCOMB_X1_Y26_N14
\MuxDireccion|salida[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxDireccion|salida[0]~3_combout\ = (\IntLogic|sel~2_combout\ & (\D[0]~input_o\)) # (!\IntLogic|sel~2_combout\ & ((\MicroPC|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \IntLogic|sel~2_combout\,
	datad => \MicroPC|internal_value\(0),
	combout => \MuxDireccion|salida[0]~3_combout\);

-- Location: IOIBUF_X0_Y25_N8
\D[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X1_Y26_N12
\Inc|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inc|Add0~2_combout\ = \D[1]~input_o\ $ (\D[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datad => \D[0]~input_o\,
	combout => \Inc|Add0~2_combout\);

-- Location: LCCOMB_X1_Y26_N20
\Inc|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inc|Add0~3_combout\ = (\IntLogic|sel~2_combout\ & (\Inc|Add0~2_combout\)) # (!\IntLogic|sel~2_combout\ & ((\MicroPC|internal_value\(1) $ (\MicroPC|internal_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inc|Add0~2_combout\,
	datab => \IntLogic|sel~2_combout\,
	datac => \MicroPC|internal_value\(1),
	datad => \MicroPC|internal_value\(0),
	combout => \Inc|Add0~3_combout\);

-- Location: FF_X1_Y26_N21
\MicroPC|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Inc|Add0~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroPC|internal_value\(1));

-- Location: LCCOMB_X1_Y26_N10
\MuxDireccion|salida[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxDireccion|salida[1]~2_combout\ = (\IntLogic|sel~2_combout\ & (\D[1]~input_o\)) # (!\IntLogic|sel~2_combout\ & ((\MicroPC|internal_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \IntLogic|sel~2_combout\,
	datad => \MicroPC|internal_value\(1),
	combout => \MuxDireccion|salida[1]~2_combout\);

-- Location: LCCOMB_X1_Y26_N16
\Inc|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inc|Add0~1_combout\ = \MuxDireccion|salida[2]~1_combout\ $ (((\MuxDireccion|salida[0]~3_combout\ & \MuxDireccion|salida[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxDireccion|salida[2]~1_combout\,
	datac => \MuxDireccion|salida[0]~3_combout\,
	datad => \MuxDireccion|salida[1]~2_combout\,
	combout => \Inc|Add0~1_combout\);

-- Location: FF_X1_Y26_N17
\MicroPC|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Inc|Add0~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroPC|internal_value\(2));

-- Location: LCCOMB_X1_Y26_N2
\MuxDireccion|salida[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxDireccion|salida[2]~1_combout\ = (\IntLogic|sel~2_combout\ & (\D[2]~input_o\)) # (!\IntLogic|sel~2_combout\ & ((\MicroPC|internal_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IntLogic|sel~2_combout\,
	datac => \D[2]~input_o\,
	datad => \MicroPC|internal_value\(2),
	combout => \MuxDireccion|salida[2]~1_combout\);

-- Location: LCCOMB_X1_Y26_N18
\Inc|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Inc|Add0~0_combout\ = \MuxDireccion|salida[3]~0_combout\ $ (((\MuxDireccion|salida[2]~1_combout\ & (\MuxDireccion|salida[0]~3_combout\ & \MuxDireccion|salida[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxDireccion|salida[3]~0_combout\,
	datab => \MuxDireccion|salida[2]~1_combout\,
	datac => \MuxDireccion|salida[0]~3_combout\,
	datad => \MuxDireccion|salida[1]~2_combout\,
	combout => \Inc|Add0~0_combout\);

-- Location: FF_X1_Y26_N19
\MicroPC|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Inc|Add0~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroPC|internal_value\(3));

-- Location: LCCOMB_X1_Y26_N6
\MuxDireccion|salida[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MuxDireccion|salida[3]~0_combout\ = (\IntLogic|sel~2_combout\ & (\D[3]~input_o\)) # (!\IntLogic|sel~2_combout\ & ((\MicroPC|internal_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IntLogic|sel~2_combout\,
	datac => \D[3]~input_o\,
	datad => \MicroPC|internal_value\(3),
	combout => \MuxDireccion|salida[3]~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\ENA~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENA,
	o => \ENA~input_o\);

-- Location: UNVM_X0_Y40_N40
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_nPL <= \nPL~output_o\;

ww_nMAP <= \nMAP~output_o\;

ww_nVECT <= \nVECT~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(0) <= \Y[0]~output_o\;
END structure;


