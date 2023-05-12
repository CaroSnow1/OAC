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

-- DATE "05/12/2023 09:16:18"

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

ENTITY 	implementacion IS
    PORT (
	EDO_PST : OUT std_logic_vector(3 DOWNTO 0);
	X : IN std_logic;
	Y : IN std_logic;
	INT : IN std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	IN_1 : IN std_logic_vector(3 DOWNTO 0);
	OUTS : OUT std_logic_vector(5 DOWNTO 0)
	);
END implementacion;

-- Design Ports Information
-- EDO_PST[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EDO_PST[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EDO_PST[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EDO_PST[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTS[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTS[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTS[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTS[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTS[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTS[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_1[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_1[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_1[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_1[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF implementacion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EDO_PST : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_INT : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_IN_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTS : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|cuenta[27]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \EDO_PST[3]~output_o\ : std_logic;
SIGNAL \EDO_PST[2]~output_o\ : std_logic;
SIGNAL \EDO_PST[1]~output_o\ : std_logic;
SIGNAL \EDO_PST[0]~output_o\ : std_logic;
SIGNAL \OUTS[5]~output_o\ : std_logic;
SIGNAL \OUTS[4]~output_o\ : std_logic;
SIGNAL \OUTS[3]~output_o\ : std_logic;
SIGNAL \OUTS[2]~output_o\ : std_logic;
SIGNAL \OUTS[1]~output_o\ : std_logic;
SIGNAL \OUTS[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|cuenta[0]~28_combout\ : std_logic;
SIGNAL \inst2|cuenta[0]~29\ : std_logic;
SIGNAL \inst2|cuenta[1]~30_combout\ : std_logic;
SIGNAL \inst2|cuenta[1]~31\ : std_logic;
SIGNAL \inst2|cuenta[2]~32_combout\ : std_logic;
SIGNAL \inst2|cuenta[2]~33\ : std_logic;
SIGNAL \inst2|cuenta[3]~34_combout\ : std_logic;
SIGNAL \inst2|cuenta[3]~35\ : std_logic;
SIGNAL \inst2|cuenta[4]~36_combout\ : std_logic;
SIGNAL \inst2|cuenta[4]~37\ : std_logic;
SIGNAL \inst2|cuenta[5]~38_combout\ : std_logic;
SIGNAL \inst2|cuenta[5]~39\ : std_logic;
SIGNAL \inst2|cuenta[6]~40_combout\ : std_logic;
SIGNAL \inst2|cuenta[6]~41\ : std_logic;
SIGNAL \inst2|cuenta[7]~42_combout\ : std_logic;
SIGNAL \inst2|cuenta[7]~43\ : std_logic;
SIGNAL \inst2|cuenta[8]~44_combout\ : std_logic;
SIGNAL \inst2|cuenta[8]~45\ : std_logic;
SIGNAL \inst2|cuenta[9]~46_combout\ : std_logic;
SIGNAL \inst2|cuenta[9]~47\ : std_logic;
SIGNAL \inst2|cuenta[10]~48_combout\ : std_logic;
SIGNAL \inst2|cuenta[10]~49\ : std_logic;
SIGNAL \inst2|cuenta[11]~50_combout\ : std_logic;
SIGNAL \inst2|cuenta[11]~51\ : std_logic;
SIGNAL \inst2|cuenta[12]~52_combout\ : std_logic;
SIGNAL \inst2|cuenta[12]~53\ : std_logic;
SIGNAL \inst2|cuenta[13]~54_combout\ : std_logic;
SIGNAL \inst2|cuenta[13]~55\ : std_logic;
SIGNAL \inst2|cuenta[14]~56_combout\ : std_logic;
SIGNAL \inst2|cuenta[14]~57\ : std_logic;
SIGNAL \inst2|cuenta[15]~58_combout\ : std_logic;
SIGNAL \inst2|cuenta[15]~59\ : std_logic;
SIGNAL \inst2|cuenta[16]~60_combout\ : std_logic;
SIGNAL \inst2|cuenta[16]~61\ : std_logic;
SIGNAL \inst2|cuenta[17]~62_combout\ : std_logic;
SIGNAL \inst2|cuenta[17]~63\ : std_logic;
SIGNAL \inst2|cuenta[18]~64_combout\ : std_logic;
SIGNAL \inst2|cuenta[18]~65\ : std_logic;
SIGNAL \inst2|cuenta[19]~66_combout\ : std_logic;
SIGNAL \inst2|cuenta[19]~67\ : std_logic;
SIGNAL \inst2|cuenta[20]~68_combout\ : std_logic;
SIGNAL \inst2|cuenta[20]~69\ : std_logic;
SIGNAL \inst2|cuenta[21]~70_combout\ : std_logic;
SIGNAL \inst2|cuenta[21]~71\ : std_logic;
SIGNAL \inst2|cuenta[22]~72_combout\ : std_logic;
SIGNAL \inst2|cuenta[22]~73\ : std_logic;
SIGNAL \inst2|cuenta[23]~74_combout\ : std_logic;
SIGNAL \inst2|cuenta[23]~75\ : std_logic;
SIGNAL \inst2|cuenta[24]~76_combout\ : std_logic;
SIGNAL \inst2|cuenta[24]~77\ : std_logic;
SIGNAL \inst2|cuenta[25]~78_combout\ : std_logic;
SIGNAL \inst2|cuenta[25]~79\ : std_logic;
SIGNAL \inst2|cuenta[26]~80_combout\ : std_logic;
SIGNAL \inst2|cuenta[26]~81\ : std_logic;
SIGNAL \inst2|cuenta[27]~82_combout\ : std_logic;
SIGNAL \inst2|cuenta[27]~clkctrl_outclk\ : std_logic;
SIGNAL \secuenciador|MicroPC|internal_value[0]~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \IN_1[2]~input_o\ : std_logic;
SIGNAL \secuenciador|MuxDireccion|salida[2]~3_combout\ : std_logic;
SIGNAL \secuenciador|Inc|Add0~5_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \VF|internal_value~q\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \INT~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \secuenciador|IntLogic|sel~6_combout\ : std_logic;
SIGNAL \secuenciador|IntLogic|sel~7_combout\ : std_logic;
SIGNAL \secuenciador|IntLogic|sel~8_combout\ : std_logic;
SIGNAL \secuenciador|MuxDireccion|salida[2]~4_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \IN_1[1]~input_o\ : std_logic;
SIGNAL \secuenciador|MuxDireccion|salida[1]~5_combout\ : std_logic;
SIGNAL \secuenciador|Inc|Add0~6_combout\ : std_logic;
SIGNAL \secuenciador|MuxDireccion|salida[1]~6_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \IN_1[0]~input_o\ : std_logic;
SIGNAL \secuenciador|MuxDireccion|salida[0]~7_combout\ : std_logic;
SIGNAL \secuenciador|MuxDireccion|salida[0]~8_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \secuenciador|IntLogic|sel~3_combout\ : std_logic;
SIGNAL \secuenciador|IntLogic|sel~4_combout\ : std_logic;
SIGNAL \secuenciador|IntLogic|sel~5_combout\ : std_logic;
SIGNAL \IN_1[3]~input_o\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \secuenciador|MuxDireccion|salida[3]~0_combout\ : std_logic;
SIGNAL \secuenciador|IntLogic|sel~0_combout\ : std_logic;
SIGNAL \secuenciador|IntLogic|sel~1_combout\ : std_logic;
SIGNAL \secuenciador|IntLogic|sel~2_combout\ : std_logic;
SIGNAL \secuenciador|Inc|Add0~4_combout\ : std_logic;
SIGNAL \secuenciador|MuxDireccion|salida[3]~1_combout\ : std_logic;
SIGNAL \secuenciador|MuxDireccion|salida[3]~2_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst2|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \LIGA|internal_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Instrucciones|internal_value\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Prueba|internal_value\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \R_Interru|internal_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SALIDAS|internal_value\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \secuenciador|MicroPC|internal_value\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

EDO_PST <= ww_EDO_PST;
ww_X <= X;
ww_Y <= Y;
ww_INT <= INT;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_IN_1 <= IN_1;
OUTS <= ww_OUTS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst2|cuenta[27]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|cuenta\(27));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X49_Y54_N9
\EDO_PST[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	devoe => ww_devoe,
	o => \EDO_PST[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\EDO_PST[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	devoe => ww_devoe,
	o => \EDO_PST[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\EDO_PST[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	devoe => ww_devoe,
	o => \EDO_PST[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\EDO_PST[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	devoe => ww_devoe,
	o => \EDO_PST[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\OUTS[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALIDAS|internal_value\(5),
	devoe => ww_devoe,
	o => \OUTS[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\OUTS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALIDAS|internal_value\(4),
	devoe => ww_devoe,
	o => \OUTS[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\OUTS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALIDAS|internal_value\(3),
	devoe => ww_devoe,
	o => \OUTS[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\OUTS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALIDAS|internal_value\(2),
	devoe => ww_devoe,
	o => \OUTS[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\OUTS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALIDAS|internal_value\(1),
	devoe => ww_devoe,
	o => \OUTS[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\OUTS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALIDAS|internal_value\(0),
	devoe => ww_devoe,
	o => \OUTS[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X45_Y53_N4
\inst2|cuenta[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[0]~28_combout\ = \inst2|cuenta\(0) $ (VCC)
-- \inst2|cuenta[0]~29\ = CARRY(\inst2|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(0),
	datad => VCC,
	combout => \inst2|cuenta[0]~28_combout\,
	cout => \inst2|cuenta[0]~29\);

-- Location: FF_X45_Y53_N5
\inst2|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(0));

-- Location: LCCOMB_X45_Y53_N6
\inst2|cuenta[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[1]~30_combout\ = (\inst2|cuenta\(1) & (!\inst2|cuenta[0]~29\)) # (!\inst2|cuenta\(1) & ((\inst2|cuenta[0]~29\) # (GND)))
-- \inst2|cuenta[1]~31\ = CARRY((!\inst2|cuenta[0]~29\) # (!\inst2|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(1),
	datad => VCC,
	cin => \inst2|cuenta[0]~29\,
	combout => \inst2|cuenta[1]~30_combout\,
	cout => \inst2|cuenta[1]~31\);

-- Location: FF_X45_Y53_N7
\inst2|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(1));

-- Location: LCCOMB_X45_Y53_N8
\inst2|cuenta[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[2]~32_combout\ = (\inst2|cuenta\(2) & (\inst2|cuenta[1]~31\ $ (GND))) # (!\inst2|cuenta\(2) & (!\inst2|cuenta[1]~31\ & VCC))
-- \inst2|cuenta[2]~33\ = CARRY((\inst2|cuenta\(2) & !\inst2|cuenta[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(2),
	datad => VCC,
	cin => \inst2|cuenta[1]~31\,
	combout => \inst2|cuenta[2]~32_combout\,
	cout => \inst2|cuenta[2]~33\);

-- Location: FF_X45_Y53_N9
\inst2|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[2]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(2));

-- Location: LCCOMB_X45_Y53_N10
\inst2|cuenta[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[3]~34_combout\ = (\inst2|cuenta\(3) & (!\inst2|cuenta[2]~33\)) # (!\inst2|cuenta\(3) & ((\inst2|cuenta[2]~33\) # (GND)))
-- \inst2|cuenta[3]~35\ = CARRY((!\inst2|cuenta[2]~33\) # (!\inst2|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(3),
	datad => VCC,
	cin => \inst2|cuenta[2]~33\,
	combout => \inst2|cuenta[3]~34_combout\,
	cout => \inst2|cuenta[3]~35\);

-- Location: FF_X45_Y53_N11
\inst2|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[3]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(3));

-- Location: LCCOMB_X45_Y53_N12
\inst2|cuenta[4]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[4]~36_combout\ = (\inst2|cuenta\(4) & (\inst2|cuenta[3]~35\ $ (GND))) # (!\inst2|cuenta\(4) & (!\inst2|cuenta[3]~35\ & VCC))
-- \inst2|cuenta[4]~37\ = CARRY((\inst2|cuenta\(4) & !\inst2|cuenta[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(4),
	datad => VCC,
	cin => \inst2|cuenta[3]~35\,
	combout => \inst2|cuenta[4]~36_combout\,
	cout => \inst2|cuenta[4]~37\);

-- Location: FF_X45_Y53_N13
\inst2|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[4]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(4));

-- Location: LCCOMB_X45_Y53_N14
\inst2|cuenta[5]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[5]~38_combout\ = (\inst2|cuenta\(5) & (!\inst2|cuenta[4]~37\)) # (!\inst2|cuenta\(5) & ((\inst2|cuenta[4]~37\) # (GND)))
-- \inst2|cuenta[5]~39\ = CARRY((!\inst2|cuenta[4]~37\) # (!\inst2|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(5),
	datad => VCC,
	cin => \inst2|cuenta[4]~37\,
	combout => \inst2|cuenta[5]~38_combout\,
	cout => \inst2|cuenta[5]~39\);

-- Location: FF_X45_Y53_N15
\inst2|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(5));

-- Location: LCCOMB_X45_Y53_N16
\inst2|cuenta[6]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[6]~40_combout\ = (\inst2|cuenta\(6) & (\inst2|cuenta[5]~39\ $ (GND))) # (!\inst2|cuenta\(6) & (!\inst2|cuenta[5]~39\ & VCC))
-- \inst2|cuenta[6]~41\ = CARRY((\inst2|cuenta\(6) & !\inst2|cuenta[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(6),
	datad => VCC,
	cin => \inst2|cuenta[5]~39\,
	combout => \inst2|cuenta[6]~40_combout\,
	cout => \inst2|cuenta[6]~41\);

-- Location: FF_X45_Y53_N17
\inst2|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(6));

-- Location: LCCOMB_X45_Y53_N18
\inst2|cuenta[7]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[7]~42_combout\ = (\inst2|cuenta\(7) & (!\inst2|cuenta[6]~41\)) # (!\inst2|cuenta\(7) & ((\inst2|cuenta[6]~41\) # (GND)))
-- \inst2|cuenta[7]~43\ = CARRY((!\inst2|cuenta[6]~41\) # (!\inst2|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(7),
	datad => VCC,
	cin => \inst2|cuenta[6]~41\,
	combout => \inst2|cuenta[7]~42_combout\,
	cout => \inst2|cuenta[7]~43\);

-- Location: FF_X45_Y53_N19
\inst2|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[7]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(7));

-- Location: LCCOMB_X45_Y53_N20
\inst2|cuenta[8]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[8]~44_combout\ = (\inst2|cuenta\(8) & (\inst2|cuenta[7]~43\ $ (GND))) # (!\inst2|cuenta\(8) & (!\inst2|cuenta[7]~43\ & VCC))
-- \inst2|cuenta[8]~45\ = CARRY((\inst2|cuenta\(8) & !\inst2|cuenta[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(8),
	datad => VCC,
	cin => \inst2|cuenta[7]~43\,
	combout => \inst2|cuenta[8]~44_combout\,
	cout => \inst2|cuenta[8]~45\);

-- Location: FF_X45_Y53_N21
\inst2|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[8]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(8));

-- Location: LCCOMB_X45_Y53_N22
\inst2|cuenta[9]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[9]~46_combout\ = (\inst2|cuenta\(9) & (!\inst2|cuenta[8]~45\)) # (!\inst2|cuenta\(9) & ((\inst2|cuenta[8]~45\) # (GND)))
-- \inst2|cuenta[9]~47\ = CARRY((!\inst2|cuenta[8]~45\) # (!\inst2|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(9),
	datad => VCC,
	cin => \inst2|cuenta[8]~45\,
	combout => \inst2|cuenta[9]~46_combout\,
	cout => \inst2|cuenta[9]~47\);

-- Location: FF_X45_Y53_N23
\inst2|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[9]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(9));

-- Location: LCCOMB_X45_Y53_N24
\inst2|cuenta[10]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[10]~48_combout\ = (\inst2|cuenta\(10) & (\inst2|cuenta[9]~47\ $ (GND))) # (!\inst2|cuenta\(10) & (!\inst2|cuenta[9]~47\ & VCC))
-- \inst2|cuenta[10]~49\ = CARRY((\inst2|cuenta\(10) & !\inst2|cuenta[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(10),
	datad => VCC,
	cin => \inst2|cuenta[9]~47\,
	combout => \inst2|cuenta[10]~48_combout\,
	cout => \inst2|cuenta[10]~49\);

-- Location: FF_X45_Y53_N25
\inst2|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(10));

-- Location: LCCOMB_X45_Y53_N26
\inst2|cuenta[11]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[11]~50_combout\ = (\inst2|cuenta\(11) & (!\inst2|cuenta[10]~49\)) # (!\inst2|cuenta\(11) & ((\inst2|cuenta[10]~49\) # (GND)))
-- \inst2|cuenta[11]~51\ = CARRY((!\inst2|cuenta[10]~49\) # (!\inst2|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(11),
	datad => VCC,
	cin => \inst2|cuenta[10]~49\,
	combout => \inst2|cuenta[11]~50_combout\,
	cout => \inst2|cuenta[11]~51\);

-- Location: FF_X45_Y53_N27
\inst2|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[11]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(11));

-- Location: LCCOMB_X45_Y53_N28
\inst2|cuenta[12]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[12]~52_combout\ = (\inst2|cuenta\(12) & (\inst2|cuenta[11]~51\ $ (GND))) # (!\inst2|cuenta\(12) & (!\inst2|cuenta[11]~51\ & VCC))
-- \inst2|cuenta[12]~53\ = CARRY((\inst2|cuenta\(12) & !\inst2|cuenta[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(12),
	datad => VCC,
	cin => \inst2|cuenta[11]~51\,
	combout => \inst2|cuenta[12]~52_combout\,
	cout => \inst2|cuenta[12]~53\);

-- Location: FF_X45_Y53_N29
\inst2|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(12));

-- Location: LCCOMB_X45_Y53_N30
\inst2|cuenta[13]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[13]~54_combout\ = (\inst2|cuenta\(13) & (!\inst2|cuenta[12]~53\)) # (!\inst2|cuenta\(13) & ((\inst2|cuenta[12]~53\) # (GND)))
-- \inst2|cuenta[13]~55\ = CARRY((!\inst2|cuenta[12]~53\) # (!\inst2|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(13),
	datad => VCC,
	cin => \inst2|cuenta[12]~53\,
	combout => \inst2|cuenta[13]~54_combout\,
	cout => \inst2|cuenta[13]~55\);

-- Location: FF_X45_Y53_N31
\inst2|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[13]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(13));

-- Location: LCCOMB_X45_Y52_N0
\inst2|cuenta[14]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[14]~56_combout\ = (\inst2|cuenta\(14) & (\inst2|cuenta[13]~55\ $ (GND))) # (!\inst2|cuenta\(14) & (!\inst2|cuenta[13]~55\ & VCC))
-- \inst2|cuenta[14]~57\ = CARRY((\inst2|cuenta\(14) & !\inst2|cuenta[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(14),
	datad => VCC,
	cin => \inst2|cuenta[13]~55\,
	combout => \inst2|cuenta[14]~56_combout\,
	cout => \inst2|cuenta[14]~57\);

-- Location: FF_X45_Y52_N1
\inst2|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[14]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(14));

-- Location: LCCOMB_X45_Y52_N2
\inst2|cuenta[15]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[15]~58_combout\ = (\inst2|cuenta\(15) & (!\inst2|cuenta[14]~57\)) # (!\inst2|cuenta\(15) & ((\inst2|cuenta[14]~57\) # (GND)))
-- \inst2|cuenta[15]~59\ = CARRY((!\inst2|cuenta[14]~57\) # (!\inst2|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(15),
	datad => VCC,
	cin => \inst2|cuenta[14]~57\,
	combout => \inst2|cuenta[15]~58_combout\,
	cout => \inst2|cuenta[15]~59\);

-- Location: FF_X45_Y52_N3
\inst2|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[15]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(15));

-- Location: LCCOMB_X45_Y52_N4
\inst2|cuenta[16]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[16]~60_combout\ = (\inst2|cuenta\(16) & (\inst2|cuenta[15]~59\ $ (GND))) # (!\inst2|cuenta\(16) & (!\inst2|cuenta[15]~59\ & VCC))
-- \inst2|cuenta[16]~61\ = CARRY((\inst2|cuenta\(16) & !\inst2|cuenta[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(16),
	datad => VCC,
	cin => \inst2|cuenta[15]~59\,
	combout => \inst2|cuenta[16]~60_combout\,
	cout => \inst2|cuenta[16]~61\);

-- Location: FF_X45_Y52_N5
\inst2|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[16]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(16));

-- Location: LCCOMB_X45_Y52_N6
\inst2|cuenta[17]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[17]~62_combout\ = (\inst2|cuenta\(17) & (!\inst2|cuenta[16]~61\)) # (!\inst2|cuenta\(17) & ((\inst2|cuenta[16]~61\) # (GND)))
-- \inst2|cuenta[17]~63\ = CARRY((!\inst2|cuenta[16]~61\) # (!\inst2|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(17),
	datad => VCC,
	cin => \inst2|cuenta[16]~61\,
	combout => \inst2|cuenta[17]~62_combout\,
	cout => \inst2|cuenta[17]~63\);

-- Location: FF_X45_Y52_N7
\inst2|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[17]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(17));

-- Location: LCCOMB_X45_Y52_N8
\inst2|cuenta[18]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[18]~64_combout\ = (\inst2|cuenta\(18) & (\inst2|cuenta[17]~63\ $ (GND))) # (!\inst2|cuenta\(18) & (!\inst2|cuenta[17]~63\ & VCC))
-- \inst2|cuenta[18]~65\ = CARRY((\inst2|cuenta\(18) & !\inst2|cuenta[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(18),
	datad => VCC,
	cin => \inst2|cuenta[17]~63\,
	combout => \inst2|cuenta[18]~64_combout\,
	cout => \inst2|cuenta[18]~65\);

-- Location: FF_X45_Y52_N9
\inst2|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[18]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(18));

-- Location: LCCOMB_X45_Y52_N10
\inst2|cuenta[19]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[19]~66_combout\ = (\inst2|cuenta\(19) & (!\inst2|cuenta[18]~65\)) # (!\inst2|cuenta\(19) & ((\inst2|cuenta[18]~65\) # (GND)))
-- \inst2|cuenta[19]~67\ = CARRY((!\inst2|cuenta[18]~65\) # (!\inst2|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(19),
	datad => VCC,
	cin => \inst2|cuenta[18]~65\,
	combout => \inst2|cuenta[19]~66_combout\,
	cout => \inst2|cuenta[19]~67\);

-- Location: FF_X45_Y52_N11
\inst2|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[19]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(19));

-- Location: LCCOMB_X45_Y52_N12
\inst2|cuenta[20]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[20]~68_combout\ = (\inst2|cuenta\(20) & (\inst2|cuenta[19]~67\ $ (GND))) # (!\inst2|cuenta\(20) & (!\inst2|cuenta[19]~67\ & VCC))
-- \inst2|cuenta[20]~69\ = CARRY((\inst2|cuenta\(20) & !\inst2|cuenta[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(20),
	datad => VCC,
	cin => \inst2|cuenta[19]~67\,
	combout => \inst2|cuenta[20]~68_combout\,
	cout => \inst2|cuenta[20]~69\);

-- Location: FF_X45_Y52_N13
\inst2|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[20]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(20));

-- Location: LCCOMB_X45_Y52_N14
\inst2|cuenta[21]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[21]~70_combout\ = (\inst2|cuenta\(21) & (!\inst2|cuenta[20]~69\)) # (!\inst2|cuenta\(21) & ((\inst2|cuenta[20]~69\) # (GND)))
-- \inst2|cuenta[21]~71\ = CARRY((!\inst2|cuenta[20]~69\) # (!\inst2|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(21),
	datad => VCC,
	cin => \inst2|cuenta[20]~69\,
	combout => \inst2|cuenta[21]~70_combout\,
	cout => \inst2|cuenta[21]~71\);

-- Location: FF_X45_Y52_N15
\inst2|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[21]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(21));

-- Location: LCCOMB_X45_Y52_N16
\inst2|cuenta[22]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[22]~72_combout\ = (\inst2|cuenta\(22) & (\inst2|cuenta[21]~71\ $ (GND))) # (!\inst2|cuenta\(22) & (!\inst2|cuenta[21]~71\ & VCC))
-- \inst2|cuenta[22]~73\ = CARRY((\inst2|cuenta\(22) & !\inst2|cuenta[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(22),
	datad => VCC,
	cin => \inst2|cuenta[21]~71\,
	combout => \inst2|cuenta[22]~72_combout\,
	cout => \inst2|cuenta[22]~73\);

-- Location: FF_X45_Y52_N17
\inst2|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[22]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(22));

-- Location: LCCOMB_X45_Y52_N18
\inst2|cuenta[23]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[23]~74_combout\ = (\inst2|cuenta\(23) & (!\inst2|cuenta[22]~73\)) # (!\inst2|cuenta\(23) & ((\inst2|cuenta[22]~73\) # (GND)))
-- \inst2|cuenta[23]~75\ = CARRY((!\inst2|cuenta[22]~73\) # (!\inst2|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(23),
	datad => VCC,
	cin => \inst2|cuenta[22]~73\,
	combout => \inst2|cuenta[23]~74_combout\,
	cout => \inst2|cuenta[23]~75\);

-- Location: FF_X45_Y52_N19
\inst2|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[23]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(23));

-- Location: LCCOMB_X45_Y52_N20
\inst2|cuenta[24]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[24]~76_combout\ = (\inst2|cuenta\(24) & (\inst2|cuenta[23]~75\ $ (GND))) # (!\inst2|cuenta\(24) & (!\inst2|cuenta[23]~75\ & VCC))
-- \inst2|cuenta[24]~77\ = CARRY((\inst2|cuenta\(24) & !\inst2|cuenta[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(24),
	datad => VCC,
	cin => \inst2|cuenta[23]~75\,
	combout => \inst2|cuenta[24]~76_combout\,
	cout => \inst2|cuenta[24]~77\);

-- Location: FF_X45_Y52_N21
\inst2|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[24]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(24));

-- Location: LCCOMB_X45_Y52_N22
\inst2|cuenta[25]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[25]~78_combout\ = (\inst2|cuenta\(25) & (!\inst2|cuenta[24]~77\)) # (!\inst2|cuenta\(25) & ((\inst2|cuenta[24]~77\) # (GND)))
-- \inst2|cuenta[25]~79\ = CARRY((!\inst2|cuenta[24]~77\) # (!\inst2|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(25),
	datad => VCC,
	cin => \inst2|cuenta[24]~77\,
	combout => \inst2|cuenta[25]~78_combout\,
	cout => \inst2|cuenta[25]~79\);

-- Location: FF_X45_Y52_N23
\inst2|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[25]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(25));

-- Location: LCCOMB_X45_Y52_N24
\inst2|cuenta[26]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[26]~80_combout\ = (\inst2|cuenta\(26) & (\inst2|cuenta[25]~79\ $ (GND))) # (!\inst2|cuenta\(26) & (!\inst2|cuenta[25]~79\ & VCC))
-- \inst2|cuenta[26]~81\ = CARRY((\inst2|cuenta\(26) & !\inst2|cuenta[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(26),
	datad => VCC,
	cin => \inst2|cuenta[25]~79\,
	combout => \inst2|cuenta[26]~80_combout\,
	cout => \inst2|cuenta[26]~81\);

-- Location: FF_X45_Y52_N25
\inst2|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[26]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(26));

-- Location: LCCOMB_X45_Y52_N26
\inst2|cuenta[27]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|cuenta[27]~82_combout\ = \inst2|cuenta[26]~81\ $ (\inst2|cuenta\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|cuenta\(27),
	cin => \inst2|cuenta[26]~81\,
	combout => \inst2|cuenta[27]~82_combout\);

-- Location: FF_X45_Y52_N27
\inst2|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|cuenta[27]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(27));

-- Location: CLKCTRL_G10
\inst2|cuenta[27]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|cuenta[27]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|cuenta[27]~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y52_N8
\secuenciador|MicroPC|internal_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|MicroPC|internal_value[0]~0_combout\ = !\secuenciador|MuxDireccion|salida[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	combout => \secuenciador|MicroPC|internal_value[0]~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: FF_X57_Y52_N9
\secuenciador|MicroPC|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \secuenciador|MicroPC|internal_value[0]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|MicroPC|internal_value\(0));

-- Location: LCCOMB_X57_Y52_N0
\inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\secuenciador|MuxDireccion|salida[0]~8_combout\ & (!\secuenciador|MuxDireccion|salida[3]~2_combout\ & (!\secuenciador|MuxDireccion|salida[2]~4_combout\ & !\secuenciador|MuxDireccion|salida[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datab => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datac => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: FF_X57_Y52_N1
\LIGA|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux6~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGA|internal_value\(2));

-- Location: IOIBUF_X49_Y54_N1
\IN_1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_1(2),
	o => \IN_1[2]~input_o\);

-- Location: FF_X57_Y52_N15
\R_Interru|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	asdata => \IN_1[2]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_Interru|internal_value\(2));

-- Location: LCCOMB_X57_Y52_N14
\secuenciador|MuxDireccion|salida[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|MuxDireccion|salida[2]~3_combout\ = (\Instrucciones|internal_value\(1) & (((\R_Interru|internal_value\(2))))) # (!\Instrucciones|internal_value\(1) & ((\Instrucciones|internal_value\(0) & (\LIGA|internal_value\(2))) # 
-- (!\Instrucciones|internal_value\(0) & ((\R_Interru|internal_value\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LIGA|internal_value\(2),
	datab => \Instrucciones|internal_value\(1),
	datac => \R_Interru|internal_value\(2),
	datad => \Instrucciones|internal_value\(0),
	combout => \secuenciador|MuxDireccion|salida[2]~3_combout\);

-- Location: LCCOMB_X57_Y52_N22
\secuenciador|Inc|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|Inc|Add0~5_combout\ = \secuenciador|MuxDireccion|salida[2]~4_combout\ $ (((\secuenciador|MuxDireccion|salida[0]~8_combout\ & \secuenciador|MuxDireccion|salida[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datac => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \secuenciador|Inc|Add0~5_combout\);

-- Location: FF_X57_Y52_N23
\secuenciador|MicroPC|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \secuenciador|Inc|Add0~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|MicroPC|internal_value\(2));

-- Location: LCCOMB_X57_Y52_N26
\inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\secuenciador|MuxDireccion|salida[0]~8_combout\ & (!\secuenciador|MuxDireccion|salida[2]~4_combout\ & !\secuenciador|MuxDireccion|salida[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datac => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: FF_X57_Y52_N27
\VF|internal_value\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux2~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VF|internal_value~q\);

-- Location: IOIBUF_X51_Y54_N22
\Y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: LCCOMB_X57_Y52_N16
\inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\secuenciador|MuxDireccion|salida[1]~6_combout\ & ((\secuenciador|MuxDireccion|salida[3]~2_combout\ & (!\secuenciador|MuxDireccion|salida[0]~8_combout\)) # (!\secuenciador|MuxDireccion|salida[3]~2_combout\ & 
-- ((\secuenciador|MuxDireccion|salida[2]~4_combout\))))) # (!\secuenciador|MuxDireccion|salida[1]~6_combout\ & (((\secuenciador|MuxDireccion|salida[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	datab => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datac => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datad => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: FF_X57_Y52_N17
\Prueba|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Prueba|internal_value\(1));

-- Location: LCCOMB_X56_Y52_N26
\inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\secuenciador|MuxDireccion|salida[0]~8_combout\ & (\secuenciador|MuxDireccion|salida[2]~4_combout\ & ((!\secuenciador|MuxDireccion|salida[1]~6_combout\)))) # (!\secuenciador|MuxDireccion|salida[0]~8_combout\ & 
-- ((\secuenciador|MuxDireccion|salida[3]~2_combout\) # ((\secuenciador|MuxDireccion|salida[2]~4_combout\ & \secuenciador|MuxDireccion|salida[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datab => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datac => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: FF_X56_Y52_N27
\Prueba|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux1~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Prueba|internal_value\(0));

-- Location: IOIBUF_X51_Y54_N29
\INT~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT,
	o => \INT~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\X~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X57_Y52_N24
\secuenciador|IntLogic|sel~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|IntLogic|sel~6_combout\ = (\Prueba|internal_value\(1) & (\INT~input_o\)) # (!\Prueba|internal_value\(1) & ((\X~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INT~input_o\,
	datac => \X~input_o\,
	datad => \Prueba|internal_value\(1),
	combout => \secuenciador|IntLogic|sel~6_combout\);

-- Location: LCCOMB_X57_Y52_N18
\secuenciador|IntLogic|sel~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|IntLogic|sel~7_combout\ = (\Prueba|internal_value\(0) & (\Y~input_o\ & (!\Prueba|internal_value\(1)))) # (!\Prueba|internal_value\(0) & (((\secuenciador|IntLogic|sel~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \Prueba|internal_value\(1),
	datac => \Prueba|internal_value\(0),
	datad => \secuenciador|IntLogic|sel~6_combout\,
	combout => \secuenciador|IntLogic|sel~7_combout\);

-- Location: LCCOMB_X57_Y52_N20
\secuenciador|IntLogic|sel~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|IntLogic|sel~8_combout\ = (\Instrucciones|internal_value\(0) & ((\VF|internal_value~q\ $ (!\secuenciador|IntLogic|sel~7_combout\)))) # (!\Instrucciones|internal_value\(0) & (\Instrucciones|internal_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucciones|internal_value\(0),
	datab => \Instrucciones|internal_value\(1),
	datac => \VF|internal_value~q\,
	datad => \secuenciador|IntLogic|sel~7_combout\,
	combout => \secuenciador|IntLogic|sel~8_combout\);

-- Location: LCCOMB_X57_Y52_N30
\secuenciador|MuxDireccion|salida[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|MuxDireccion|salida[2]~4_combout\ = (\secuenciador|IntLogic|sel~8_combout\ & (\secuenciador|MuxDireccion|salida[2]~3_combout\)) # (!\secuenciador|IntLogic|sel~8_combout\ & ((\secuenciador|MicroPC|internal_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secuenciador|MuxDireccion|salida[2]~3_combout\,
	datac => \secuenciador|MicroPC|internal_value\(2),
	datad => \secuenciador|IntLogic|sel~8_combout\,
	combout => \secuenciador|MuxDireccion|salida[2]~4_combout\);

-- Location: LCCOMB_X57_Y52_N4
\inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (!\secuenciador|MuxDireccion|salida[3]~2_combout\ & ((\secuenciador|MuxDireccion|salida[0]~8_combout\ & ((!\secuenciador|MuxDireccion|salida[1]~6_combout\))) # (!\secuenciador|MuxDireccion|salida[0]~8_combout\ & 
-- (\secuenciador|MuxDireccion|salida[2]~4_combout\ & \secuenciador|MuxDireccion|salida[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datab => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datac => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux7~0_combout\);

-- Location: FF_X57_Y52_N5
\LIGA|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux7~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGA|internal_value\(1));

-- Location: IOIBUF_X54_Y54_N22
\IN_1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_1(1),
	o => \IN_1[1]~input_o\);

-- Location: FF_X58_Y52_N9
\R_Interru|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	asdata => \IN_1[1]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_Interru|internal_value\(1));

-- Location: LCCOMB_X58_Y52_N8
\secuenciador|MuxDireccion|salida[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|MuxDireccion|salida[1]~5_combout\ = (\Instrucciones|internal_value\(1) & (((\R_Interru|internal_value\(1))))) # (!\Instrucciones|internal_value\(1) & ((\Instrucciones|internal_value\(0) & (\LIGA|internal_value\(1))) # 
-- (!\Instrucciones|internal_value\(0) & ((\R_Interru|internal_value\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucciones|internal_value\(1),
	datab => \LIGA|internal_value\(1),
	datac => \R_Interru|internal_value\(1),
	datad => \Instrucciones|internal_value\(0),
	combout => \secuenciador|MuxDireccion|salida[1]~5_combout\);

-- Location: LCCOMB_X58_Y52_N10
\secuenciador|Inc|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|Inc|Add0~6_combout\ = \secuenciador|MuxDireccion|salida[0]~8_combout\ $ (((\secuenciador|IntLogic|sel~8_combout\ & (\secuenciador|MuxDireccion|salida[1]~5_combout\)) # (!\secuenciador|IntLogic|sel~8_combout\ & 
-- ((\secuenciador|MicroPC|internal_value\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[1]~5_combout\,
	datab => \secuenciador|IntLogic|sel~8_combout\,
	datac => \secuenciador|MicroPC|internal_value\(1),
	datad => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	combout => \secuenciador|Inc|Add0~6_combout\);

-- Location: FF_X58_Y52_N11
\secuenciador|MicroPC|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \secuenciador|Inc|Add0~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|MicroPC|internal_value\(1));

-- Location: LCCOMB_X57_Y52_N6
\secuenciador|MuxDireccion|salida[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|MuxDireccion|salida[1]~6_combout\ = (\secuenciador|IntLogic|sel~8_combout\ & ((\secuenciador|MuxDireccion|salida[1]~5_combout\))) # (!\secuenciador|IntLogic|sel~8_combout\ & (\secuenciador|MicroPC|internal_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secuenciador|MicroPC|internal_value\(1),
	datac => \secuenciador|MuxDireccion|salida[1]~5_combout\,
	datad => \secuenciador|IntLogic|sel~8_combout\,
	combout => \secuenciador|MuxDireccion|salida[1]~6_combout\);

-- Location: LCCOMB_X57_Y52_N2
\inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\secuenciador|MuxDireccion|salida[2]~4_combout\ & (!\secuenciador|MuxDireccion|salida[3]~2_combout\ & (\secuenciador|MuxDireccion|salida[1]~6_combout\ $ (!\secuenciador|MuxDireccion|salida[0]~8_combout\)))) # 
-- (!\secuenciador|MuxDireccion|salida[2]~4_combout\ & (((\secuenciador|MuxDireccion|salida[0]~8_combout\ & \secuenciador|MuxDireccion|salida[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	datab => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datac => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datad => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: FF_X57_Y52_N3
\Instrucciones|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux3~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instrucciones|internal_value\(1));

-- Location: LCCOMB_X56_Y52_N30
\inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (!\secuenciador|MuxDireccion|salida[2]~4_combout\ & (!\secuenciador|MuxDireccion|salida[1]~6_combout\ & (\secuenciador|MuxDireccion|salida[3]~2_combout\ $ (\secuenciador|MuxDireccion|salida[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datab => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datac => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux8~0_combout\);

-- Location: FF_X56_Y52_N31
\LIGA|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux8~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGA|internal_value\(0));

-- Location: IOIBUF_X54_Y54_N29
\IN_1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_1(0),
	o => \IN_1[0]~input_o\);

-- Location: FF_X58_Y52_N1
\R_Interru|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	asdata => \IN_1[0]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_Interru|internal_value\(0));

-- Location: LCCOMB_X58_Y52_N0
\secuenciador|MuxDireccion|salida[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|MuxDireccion|salida[0]~7_combout\ = (\Instrucciones|internal_value\(1) & (((\R_Interru|internal_value\(0))))) # (!\Instrucciones|internal_value\(1) & ((\Instrucciones|internal_value\(0) & (\LIGA|internal_value\(0))) # 
-- (!\Instrucciones|internal_value\(0) & ((\R_Interru|internal_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucciones|internal_value\(1),
	datab => \LIGA|internal_value\(0),
	datac => \R_Interru|internal_value\(0),
	datad => \Instrucciones|internal_value\(0),
	combout => \secuenciador|MuxDireccion|salida[0]~7_combout\);

-- Location: LCCOMB_X57_Y52_N10
\secuenciador|MuxDireccion|salida[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|MuxDireccion|salida[0]~8_combout\ = (\secuenciador|IntLogic|sel~8_combout\ & ((\secuenciador|MuxDireccion|salida[0]~7_combout\))) # (!\secuenciador|IntLogic|sel~8_combout\ & (\secuenciador|MicroPC|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secuenciador|MicroPC|internal_value\(0),
	datac => \secuenciador|MuxDireccion|salida[0]~7_combout\,
	datad => \secuenciador|IntLogic|sel~8_combout\,
	combout => \secuenciador|MuxDireccion|salida[0]~8_combout\);

-- Location: LCCOMB_X56_Y52_N24
\inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\secuenciador|MuxDireccion|salida[3]~2_combout\ & (((!\secuenciador|MuxDireccion|salida[1]~6_combout\)) # (!\secuenciador|MuxDireccion|salida[0]~8_combout\))) # (!\secuenciador|MuxDireccion|salida[3]~2_combout\ & 
-- ((\secuenciador|MuxDireccion|salida[1]~6_combout\ & ((\secuenciador|MuxDireccion|salida[2]~4_combout\))) # (!\secuenciador|MuxDireccion|salida[1]~6_combout\ & (\secuenciador|MuxDireccion|salida[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datab => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datac => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: FF_X56_Y52_N25
\Instrucciones|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux4~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Instrucciones|internal_value\(0));

-- Location: LCCOMB_X57_Y52_N12
\secuenciador|IntLogic|sel~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|IntLogic|sel~3_combout\ = (\VF|internal_value~q\ & ((\INT~input_o\) # (!\Prueba|internal_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INT~input_o\,
	datac => \VF|internal_value~q\,
	datad => \Prueba|internal_value\(1),
	combout => \secuenciador|IntLogic|sel~3_combout\);

-- Location: LCCOMB_X56_Y52_N2
\secuenciador|IntLogic|sel~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|IntLogic|sel~4_combout\ = (\Prueba|internal_value\(0) & (\Y~input_o\ & ((!\Prueba|internal_value\(1))))) # (!\Prueba|internal_value\(0) & (((\X~input_o\) # (\Prueba|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prueba|internal_value\(0),
	datab => \Y~input_o\,
	datac => \X~input_o\,
	datad => \Prueba|internal_value\(1),
	combout => \secuenciador|IntLogic|sel~4_combout\);

-- Location: LCCOMB_X56_Y52_N12
\secuenciador|IntLogic|sel~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|IntLogic|sel~5_combout\ = (\Instrucciones|internal_value\(0) & (\secuenciador|IntLogic|sel~3_combout\ & \secuenciador|IntLogic|sel~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Instrucciones|internal_value\(0),
	datac => \secuenciador|IntLogic|sel~3_combout\,
	datad => \secuenciador|IntLogic|sel~4_combout\,
	combout => \secuenciador|IntLogic|sel~5_combout\);

-- Location: IOIBUF_X54_Y54_N15
\IN_1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_1(3),
	o => \IN_1[3]~input_o\);

-- Location: FF_X56_Y52_N7
\R_Interru|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	asdata => \IN_1[3]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_Interru|internal_value\(3));

-- Location: LCCOMB_X57_Y52_N28
\inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\secuenciador|MuxDireccion|salida[0]~8_combout\ & (!\secuenciador|MuxDireccion|salida[3]~2_combout\ & (\secuenciador|MuxDireccion|salida[2]~4_combout\ & !\secuenciador|MuxDireccion|salida[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datab => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datac => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: FF_X57_Y52_N29
\LIGA|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux5~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LIGA|internal_value\(3));

-- Location: LCCOMB_X56_Y52_N6
\secuenciador|MuxDireccion|salida[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|MuxDireccion|salida[3]~0_combout\ = (\Instrucciones|internal_value\(1) & (((\R_Interru|internal_value\(3))))) # (!\Instrucciones|internal_value\(1) & ((\Instrucciones|internal_value\(0) & ((\LIGA|internal_value\(3)))) # 
-- (!\Instrucciones|internal_value\(0) & (\R_Interru|internal_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucciones|internal_value\(1),
	datab => \Instrucciones|internal_value\(0),
	datac => \R_Interru|internal_value\(3),
	datad => \LIGA|internal_value\(3),
	combout => \secuenciador|MuxDireccion|salida[3]~0_combout\);

-- Location: LCCOMB_X56_Y52_N4
\secuenciador|IntLogic|sel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|IntLogic|sel~0_combout\ = (!\X~input_o\ & (!\Prueba|internal_value\(0) & !\Prueba|internal_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datac => \Prueba|internal_value\(0),
	datad => \Prueba|internal_value\(1),
	combout => \secuenciador|IntLogic|sel~0_combout\);

-- Location: LCCOMB_X56_Y52_N10
\secuenciador|IntLogic|sel~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|IntLogic|sel~1_combout\ = (\Prueba|internal_value\(0) & (((\Prueba|internal_value\(1)) # (!\Y~input_o\)))) # (!\Prueba|internal_value\(0) & (!\INT~input_o\ & ((\Prueba|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INT~input_o\,
	datab => \Y~input_o\,
	datac => \Prueba|internal_value\(0),
	datad => \Prueba|internal_value\(1),
	combout => \secuenciador|IntLogic|sel~1_combout\);

-- Location: LCCOMB_X56_Y52_N8
\secuenciador|IntLogic|sel~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|IntLogic|sel~2_combout\ = (\Instrucciones|internal_value\(0) & (!\VF|internal_value~q\ & ((\secuenciador|IntLogic|sel~0_combout\) # (\secuenciador|IntLogic|sel~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucciones|internal_value\(0),
	datab => \VF|internal_value~q\,
	datac => \secuenciador|IntLogic|sel~0_combout\,
	datad => \secuenciador|IntLogic|sel~1_combout\,
	combout => \secuenciador|IntLogic|sel~2_combout\);

-- Location: LCCOMB_X56_Y52_N0
\secuenciador|Inc|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|Inc|Add0~4_combout\ = \secuenciador|MuxDireccion|salida[3]~2_combout\ $ (((\secuenciador|MuxDireccion|salida[2]~4_combout\ & (\secuenciador|MuxDireccion|salida[0]~8_combout\ & \secuenciador|MuxDireccion|salida[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datab => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datac => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \secuenciador|Inc|Add0~4_combout\);

-- Location: FF_X56_Y52_N1
\secuenciador|MicroPC|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \secuenciador|Inc|Add0~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|MicroPC|internal_value\(3));

-- Location: LCCOMB_X56_Y52_N18
\secuenciador|MuxDireccion|salida[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|MuxDireccion|salida[3]~1_combout\ = (\Instrucciones|internal_value\(0) & (\secuenciador|MicroPC|internal_value\(3))) # (!\Instrucciones|internal_value\(0) & ((\Instrucciones|internal_value\(1) & 
-- ((\secuenciador|MuxDireccion|salida[3]~0_combout\))) # (!\Instrucciones|internal_value\(1) & (\secuenciador|MicroPC|internal_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Instrucciones|internal_value\(0),
	datab => \secuenciador|MicroPC|internal_value\(3),
	datac => \Instrucciones|internal_value\(1),
	datad => \secuenciador|MuxDireccion|salida[3]~0_combout\,
	combout => \secuenciador|MuxDireccion|salida[3]~1_combout\);

-- Location: LCCOMB_X56_Y52_N20
\secuenciador|MuxDireccion|salida[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|MuxDireccion|salida[3]~2_combout\ = (\secuenciador|IntLogic|sel~5_combout\ & (\secuenciador|MuxDireccion|salida[3]~0_combout\)) # (!\secuenciador|IntLogic|sel~5_combout\ & ((\secuenciador|IntLogic|sel~2_combout\ & 
-- (\secuenciador|MuxDireccion|salida[3]~0_combout\)) # (!\secuenciador|IntLogic|sel~2_combout\ & ((\secuenciador|MuxDireccion|salida[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|IntLogic|sel~5_combout\,
	datab => \secuenciador|MuxDireccion|salida[3]~0_combout\,
	datac => \secuenciador|IntLogic|sel~2_combout\,
	datad => \secuenciador|MuxDireccion|salida[3]~1_combout\,
	combout => \secuenciador|MuxDireccion|salida[3]~2_combout\);

-- Location: LCCOMB_X58_Y52_N26
\inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (!\secuenciador|MuxDireccion|salida[1]~6_combout\ & (\secuenciador|MuxDireccion|salida[3]~2_combout\ & (\secuenciador|MuxDireccion|salida[0]~8_combout\ $ (!\secuenciador|MuxDireccion|salida[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datab => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	datac => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datad => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	combout => \inst|Mux9~0_combout\);

-- Location: FF_X58_Y52_N27
\SALIDAS|internal_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux9~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SALIDAS|internal_value\(5));

-- Location: LCCOMB_X58_Y52_N28
\inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (\secuenciador|MuxDireccion|salida[2]~4_combout\ & (\secuenciador|MuxDireccion|salida[3]~2_combout\ $ (((\secuenciador|MuxDireccion|salida[0]~8_combout\) # (!\secuenciador|MuxDireccion|salida[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datab => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	datac => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datad => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	combout => \inst|Mux10~0_combout\);

-- Location: FF_X58_Y52_N29
\SALIDAS|internal_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux10~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SALIDAS|internal_value\(4));

-- Location: LCCOMB_X56_Y52_N16
\inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (\secuenciador|MuxDireccion|salida[3]~2_combout\ & (((\secuenciador|MuxDireccion|salida[0]~8_combout\ & !\secuenciador|MuxDireccion|salida[1]~6_combout\)))) # (!\secuenciador|MuxDireccion|salida[3]~2_combout\ & 
-- ((\secuenciador|MuxDireccion|salida[2]~4_combout\ & (!\secuenciador|MuxDireccion|salida[0]~8_combout\ & \secuenciador|MuxDireccion|salida[1]~6_combout\)) # (!\secuenciador|MuxDireccion|salida[2]~4_combout\ & 
-- (\secuenciador|MuxDireccion|salida[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datab => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datac => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux11~0_combout\);

-- Location: FF_X56_Y52_N17
\SALIDAS|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux11~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SALIDAS|internal_value\(3));

-- Location: LCCOMB_X56_Y52_N14
\inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\secuenciador|MuxDireccion|salida[0]~8_combout\ & (!\secuenciador|MuxDireccion|salida[2]~4_combout\ & (\secuenciador|MuxDireccion|salida[3]~2_combout\ $ (!\secuenciador|MuxDireccion|salida[1]~6_combout\)))) # 
-- (!\secuenciador|MuxDireccion|salida[0]~8_combout\ & (\secuenciador|MuxDireccion|salida[3]~2_combout\ & (\secuenciador|MuxDireccion|salida[2]~4_combout\ & !\secuenciador|MuxDireccion|salida[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datab => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datac => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux12~0_combout\);

-- Location: FF_X56_Y52_N15
\SALIDAS|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux12~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SALIDAS|internal_value\(2));

-- Location: LCCOMB_X56_Y52_N28
\inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\secuenciador|MuxDireccion|salida[1]~6_combout\ & ((\secuenciador|MuxDireccion|salida[3]~2_combout\ & (!\secuenciador|MuxDireccion|salida[0]~8_combout\ & \secuenciador|MuxDireccion|salida[2]~4_combout\)) # 
-- (!\secuenciador|MuxDireccion|salida[3]~2_combout\ & ((!\secuenciador|MuxDireccion|salida[2]~4_combout\))))) # (!\secuenciador|MuxDireccion|salida[1]~6_combout\ & (\secuenciador|MuxDireccion|salida[0]~8_combout\ & 
-- ((!\secuenciador|MuxDireccion|salida[2]~4_combout\) # (!\secuenciador|MuxDireccion|salida[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datab => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datac => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux13~0_combout\);

-- Location: FF_X56_Y52_N29
\SALIDAS|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux13~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SALIDAS|internal_value\(1));

-- Location: LCCOMB_X56_Y52_N22
\inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (\secuenciador|MuxDireccion|salida[2]~4_combout\ & (((!\secuenciador|MuxDireccion|salida[0]~8_combout\ & \secuenciador|MuxDireccion|salida[1]~6_combout\)))) # (!\secuenciador|MuxDireccion|salida[2]~4_combout\ & 
-- (!\secuenciador|MuxDireccion|salida[3]~2_combout\ & ((!\secuenciador|MuxDireccion|salida[1]~6_combout\) # (!\secuenciador|MuxDireccion|salida[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|MuxDireccion|salida[2]~4_combout\,
	datab => \secuenciador|MuxDireccion|salida[3]~2_combout\,
	datac => \secuenciador|MuxDireccion|salida[0]~8_combout\,
	datad => \secuenciador|MuxDireccion|salida[1]~6_combout\,
	combout => \inst|Mux14~0_combout\);

-- Location: FF_X56_Y52_N23
\SALIDAS|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|cuenta[27]~clkctrl_outclk\,
	d => \inst|Mux14~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SALIDAS|internal_value\(0));

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

ww_EDO_PST(3) <= \EDO_PST[3]~output_o\;

ww_EDO_PST(2) <= \EDO_PST[2]~output_o\;

ww_EDO_PST(1) <= \EDO_PST[1]~output_o\;

ww_EDO_PST(0) <= \EDO_PST[0]~output_o\;

ww_OUTS(5) <= \OUTS[5]~output_o\;

ww_OUTS(4) <= \OUTS[4]~output_o\;

ww_OUTS(3) <= \OUTS[3]~output_o\;

ww_OUTS(2) <= \OUTS[2]~output_o\;

ww_OUTS(1) <= \OUTS[1]~output_o\;

ww_OUTS(0) <= \OUTS[0]~output_o\;
END structure;


