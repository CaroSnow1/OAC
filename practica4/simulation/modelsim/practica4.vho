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

-- DATE "03/31/2023 07:15:34"

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

ENTITY 	practica4 IS
    PORT (
	estados : OUT std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	X : IN std_logic;
	Y : IN std_logic;
	Z : IN std_logic;
	W : IN std_logic;
	salidas : OUT std_logic_vector(4 DOWNTO 0)
	);
END practica4;

-- Design Ports Information
-- estados[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estados[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estados[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_estados : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_salidas : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|cuenta[27]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \estados[2]~output_o\ : std_logic;
SIGNAL \estados[1]~output_o\ : std_logic;
SIGNAL \estados[0]~output_o\ : std_logic;
SIGNAL \salidas[4]~output_o\ : std_logic;
SIGNAL \salidas[3]~output_o\ : std_logic;
SIGNAL \salidas[2]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|cuenta[0]~28_combout\ : std_logic;
SIGNAL \inst|cuenta[0]~29\ : std_logic;
SIGNAL \inst|cuenta[1]~30_combout\ : std_logic;
SIGNAL \inst|cuenta[1]~31\ : std_logic;
SIGNAL \inst|cuenta[2]~32_combout\ : std_logic;
SIGNAL \inst|cuenta[2]~33\ : std_logic;
SIGNAL \inst|cuenta[3]~34_combout\ : std_logic;
SIGNAL \inst|cuenta[3]~35\ : std_logic;
SIGNAL \inst|cuenta[4]~36_combout\ : std_logic;
SIGNAL \inst|cuenta[4]~37\ : std_logic;
SIGNAL \inst|cuenta[5]~38_combout\ : std_logic;
SIGNAL \inst|cuenta[5]~39\ : std_logic;
SIGNAL \inst|cuenta[6]~40_combout\ : std_logic;
SIGNAL \inst|cuenta[6]~41\ : std_logic;
SIGNAL \inst|cuenta[7]~42_combout\ : std_logic;
SIGNAL \inst|cuenta[7]~43\ : std_logic;
SIGNAL \inst|cuenta[8]~44_combout\ : std_logic;
SIGNAL \inst|cuenta[8]~45\ : std_logic;
SIGNAL \inst|cuenta[9]~46_combout\ : std_logic;
SIGNAL \inst|cuenta[9]~47\ : std_logic;
SIGNAL \inst|cuenta[10]~48_combout\ : std_logic;
SIGNAL \inst|cuenta[10]~49\ : std_logic;
SIGNAL \inst|cuenta[11]~50_combout\ : std_logic;
SIGNAL \inst|cuenta[11]~51\ : std_logic;
SIGNAL \inst|cuenta[12]~52_combout\ : std_logic;
SIGNAL \inst|cuenta[12]~53\ : std_logic;
SIGNAL \inst|cuenta[13]~54_combout\ : std_logic;
SIGNAL \inst|cuenta[13]~55\ : std_logic;
SIGNAL \inst|cuenta[14]~56_combout\ : std_logic;
SIGNAL \inst|cuenta[14]~57\ : std_logic;
SIGNAL \inst|cuenta[15]~58_combout\ : std_logic;
SIGNAL \inst|cuenta[15]~59\ : std_logic;
SIGNAL \inst|cuenta[16]~60_combout\ : std_logic;
SIGNAL \inst|cuenta[16]~61\ : std_logic;
SIGNAL \inst|cuenta[17]~62_combout\ : std_logic;
SIGNAL \inst|cuenta[17]~63\ : std_logic;
SIGNAL \inst|cuenta[18]~64_combout\ : std_logic;
SIGNAL \inst|cuenta[18]~65\ : std_logic;
SIGNAL \inst|cuenta[19]~66_combout\ : std_logic;
SIGNAL \inst|cuenta[19]~67\ : std_logic;
SIGNAL \inst|cuenta[20]~68_combout\ : std_logic;
SIGNAL \inst|cuenta[20]~69\ : std_logic;
SIGNAL \inst|cuenta[21]~70_combout\ : std_logic;
SIGNAL \inst|cuenta[21]~71\ : std_logic;
SIGNAL \inst|cuenta[22]~72_combout\ : std_logic;
SIGNAL \inst|cuenta[22]~73\ : std_logic;
SIGNAL \inst|cuenta[23]~74_combout\ : std_logic;
SIGNAL \inst|cuenta[23]~75\ : std_logic;
SIGNAL \inst|cuenta[24]~76_combout\ : std_logic;
SIGNAL \inst|cuenta[24]~77\ : std_logic;
SIGNAL \inst|cuenta[25]~78_combout\ : std_logic;
SIGNAL \inst|cuenta[25]~79\ : std_logic;
SIGNAL \inst|cuenta[26]~80_combout\ : std_logic;
SIGNAL \inst|cuenta[26]~81\ : std_logic;
SIGNAL \inst|cuenta[27]~82_combout\ : std_logic;
SIGNAL \inst|cuenta[27]~clkctrl_outclk\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \inst3|Mux14~0_combout\ : std_logic;
SIGNAL \inst6|O~0_combout\ : std_logic;
SIGNAL \inst6|O~1_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|O[2]~0_combout\ : std_logic;
SIGNAL \inst3|Mux13~0_combout\ : std_logic;
SIGNAL \inst4|O[3]~3_combout\ : std_logic;
SIGNAL \inst3|Mux15~0_combout\ : std_logic;
SIGNAL \inst4|O[1]~2_combout\ : std_logic;
SIGNAL \inst3|Mux12~0_combout\ : std_logic;
SIGNAL \inst|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst7|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux12~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

estados <= ww_estados;
ww_clk <= clk;
ww_reset <= reset;
ww_X <= X;
ww_Y <= Y;
ww_Z <= Z;
ww_W <= W;
salidas <= ww_salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst|cuenta[27]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|cuenta\(27));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst3|ALT_INV_Mux12~0_combout\ <= NOT \inst3|Mux12~0_combout\;
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

-- Location: IOOBUF_X49_Y54_N9
\estados[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|internal_value\(2),
	devoe => ww_devoe,
	o => \estados[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\estados[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|internal_value\(1),
	devoe => ww_devoe,
	o => \estados[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\estados[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|internal_value\(0),
	devoe => ww_devoe,
	o => \estados[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\salidas[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \salidas[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\salidas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|O[3]~3_combout\,
	devoe => ww_devoe,
	o => \salidas[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \salidas[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\salidas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|O[1]~2_combout\,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y40_N4
\inst|cuenta[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[0]~28_combout\ = \inst|cuenta\(0) $ (VCC)
-- \inst|cuenta[0]~29\ = CARRY(\inst|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(0),
	datad => VCC,
	combout => \inst|cuenta[0]~28_combout\,
	cout => \inst|cuenta[0]~29\);

-- Location: FF_X77_Y40_N5
\inst|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(0));

-- Location: LCCOMB_X77_Y40_N6
\inst|cuenta[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[1]~30_combout\ = (\inst|cuenta\(1) & (!\inst|cuenta[0]~29\)) # (!\inst|cuenta\(1) & ((\inst|cuenta[0]~29\) # (GND)))
-- \inst|cuenta[1]~31\ = CARRY((!\inst|cuenta[0]~29\) # (!\inst|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(1),
	datad => VCC,
	cin => \inst|cuenta[0]~29\,
	combout => \inst|cuenta[1]~30_combout\,
	cout => \inst|cuenta[1]~31\);

-- Location: FF_X77_Y40_N7
\inst|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(1));

-- Location: LCCOMB_X77_Y40_N8
\inst|cuenta[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[2]~32_combout\ = (\inst|cuenta\(2) & (\inst|cuenta[1]~31\ $ (GND))) # (!\inst|cuenta\(2) & (!\inst|cuenta[1]~31\ & VCC))
-- \inst|cuenta[2]~33\ = CARRY((\inst|cuenta\(2) & !\inst|cuenta[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(2),
	datad => VCC,
	cin => \inst|cuenta[1]~31\,
	combout => \inst|cuenta[2]~32_combout\,
	cout => \inst|cuenta[2]~33\);

-- Location: FF_X77_Y40_N9
\inst|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[2]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(2));

-- Location: LCCOMB_X77_Y40_N10
\inst|cuenta[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[3]~34_combout\ = (\inst|cuenta\(3) & (!\inst|cuenta[2]~33\)) # (!\inst|cuenta\(3) & ((\inst|cuenta[2]~33\) # (GND)))
-- \inst|cuenta[3]~35\ = CARRY((!\inst|cuenta[2]~33\) # (!\inst|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(3),
	datad => VCC,
	cin => \inst|cuenta[2]~33\,
	combout => \inst|cuenta[3]~34_combout\,
	cout => \inst|cuenta[3]~35\);

-- Location: FF_X77_Y40_N11
\inst|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[3]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(3));

-- Location: LCCOMB_X77_Y40_N12
\inst|cuenta[4]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[4]~36_combout\ = (\inst|cuenta\(4) & (\inst|cuenta[3]~35\ $ (GND))) # (!\inst|cuenta\(4) & (!\inst|cuenta[3]~35\ & VCC))
-- \inst|cuenta[4]~37\ = CARRY((\inst|cuenta\(4) & !\inst|cuenta[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(4),
	datad => VCC,
	cin => \inst|cuenta[3]~35\,
	combout => \inst|cuenta[4]~36_combout\,
	cout => \inst|cuenta[4]~37\);

-- Location: FF_X77_Y40_N13
\inst|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[4]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(4));

-- Location: LCCOMB_X77_Y40_N14
\inst|cuenta[5]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[5]~38_combout\ = (\inst|cuenta\(5) & (!\inst|cuenta[4]~37\)) # (!\inst|cuenta\(5) & ((\inst|cuenta[4]~37\) # (GND)))
-- \inst|cuenta[5]~39\ = CARRY((!\inst|cuenta[4]~37\) # (!\inst|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(5),
	datad => VCC,
	cin => \inst|cuenta[4]~37\,
	combout => \inst|cuenta[5]~38_combout\,
	cout => \inst|cuenta[5]~39\);

-- Location: FF_X77_Y40_N15
\inst|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(5));

-- Location: LCCOMB_X77_Y40_N16
\inst|cuenta[6]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[6]~40_combout\ = (\inst|cuenta\(6) & (\inst|cuenta[5]~39\ $ (GND))) # (!\inst|cuenta\(6) & (!\inst|cuenta[5]~39\ & VCC))
-- \inst|cuenta[6]~41\ = CARRY((\inst|cuenta\(6) & !\inst|cuenta[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(6),
	datad => VCC,
	cin => \inst|cuenta[5]~39\,
	combout => \inst|cuenta[6]~40_combout\,
	cout => \inst|cuenta[6]~41\);

-- Location: FF_X77_Y40_N17
\inst|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(6));

-- Location: LCCOMB_X77_Y40_N18
\inst|cuenta[7]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[7]~42_combout\ = (\inst|cuenta\(7) & (!\inst|cuenta[6]~41\)) # (!\inst|cuenta\(7) & ((\inst|cuenta[6]~41\) # (GND)))
-- \inst|cuenta[7]~43\ = CARRY((!\inst|cuenta[6]~41\) # (!\inst|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(7),
	datad => VCC,
	cin => \inst|cuenta[6]~41\,
	combout => \inst|cuenta[7]~42_combout\,
	cout => \inst|cuenta[7]~43\);

-- Location: FF_X77_Y40_N19
\inst|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[7]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(7));

-- Location: LCCOMB_X77_Y40_N20
\inst|cuenta[8]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[8]~44_combout\ = (\inst|cuenta\(8) & (\inst|cuenta[7]~43\ $ (GND))) # (!\inst|cuenta\(8) & (!\inst|cuenta[7]~43\ & VCC))
-- \inst|cuenta[8]~45\ = CARRY((\inst|cuenta\(8) & !\inst|cuenta[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(8),
	datad => VCC,
	cin => \inst|cuenta[7]~43\,
	combout => \inst|cuenta[8]~44_combout\,
	cout => \inst|cuenta[8]~45\);

-- Location: FF_X77_Y40_N21
\inst|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[8]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(8));

-- Location: LCCOMB_X77_Y40_N22
\inst|cuenta[9]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[9]~46_combout\ = (\inst|cuenta\(9) & (!\inst|cuenta[8]~45\)) # (!\inst|cuenta\(9) & ((\inst|cuenta[8]~45\) # (GND)))
-- \inst|cuenta[9]~47\ = CARRY((!\inst|cuenta[8]~45\) # (!\inst|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(9),
	datad => VCC,
	cin => \inst|cuenta[8]~45\,
	combout => \inst|cuenta[9]~46_combout\,
	cout => \inst|cuenta[9]~47\);

-- Location: FF_X77_Y40_N23
\inst|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[9]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(9));

-- Location: LCCOMB_X77_Y40_N24
\inst|cuenta[10]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[10]~48_combout\ = (\inst|cuenta\(10) & (\inst|cuenta[9]~47\ $ (GND))) # (!\inst|cuenta\(10) & (!\inst|cuenta[9]~47\ & VCC))
-- \inst|cuenta[10]~49\ = CARRY((\inst|cuenta\(10) & !\inst|cuenta[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(10),
	datad => VCC,
	cin => \inst|cuenta[9]~47\,
	combout => \inst|cuenta[10]~48_combout\,
	cout => \inst|cuenta[10]~49\);

-- Location: FF_X77_Y40_N25
\inst|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(10));

-- Location: LCCOMB_X77_Y40_N26
\inst|cuenta[11]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[11]~50_combout\ = (\inst|cuenta\(11) & (!\inst|cuenta[10]~49\)) # (!\inst|cuenta\(11) & ((\inst|cuenta[10]~49\) # (GND)))
-- \inst|cuenta[11]~51\ = CARRY((!\inst|cuenta[10]~49\) # (!\inst|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(11),
	datad => VCC,
	cin => \inst|cuenta[10]~49\,
	combout => \inst|cuenta[11]~50_combout\,
	cout => \inst|cuenta[11]~51\);

-- Location: FF_X77_Y40_N27
\inst|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[11]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(11));

-- Location: LCCOMB_X77_Y40_N28
\inst|cuenta[12]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[12]~52_combout\ = (\inst|cuenta\(12) & (\inst|cuenta[11]~51\ $ (GND))) # (!\inst|cuenta\(12) & (!\inst|cuenta[11]~51\ & VCC))
-- \inst|cuenta[12]~53\ = CARRY((\inst|cuenta\(12) & !\inst|cuenta[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(12),
	datad => VCC,
	cin => \inst|cuenta[11]~51\,
	combout => \inst|cuenta[12]~52_combout\,
	cout => \inst|cuenta[12]~53\);

-- Location: FF_X77_Y40_N29
\inst|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(12));

-- Location: LCCOMB_X77_Y40_N30
\inst|cuenta[13]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[13]~54_combout\ = (\inst|cuenta\(13) & (!\inst|cuenta[12]~53\)) # (!\inst|cuenta\(13) & ((\inst|cuenta[12]~53\) # (GND)))
-- \inst|cuenta[13]~55\ = CARRY((!\inst|cuenta[12]~53\) # (!\inst|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(13),
	datad => VCC,
	cin => \inst|cuenta[12]~53\,
	combout => \inst|cuenta[13]~54_combout\,
	cout => \inst|cuenta[13]~55\);

-- Location: FF_X77_Y40_N31
\inst|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[13]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(13));

-- Location: LCCOMB_X77_Y39_N0
\inst|cuenta[14]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[14]~56_combout\ = (\inst|cuenta\(14) & (\inst|cuenta[13]~55\ $ (GND))) # (!\inst|cuenta\(14) & (!\inst|cuenta[13]~55\ & VCC))
-- \inst|cuenta[14]~57\ = CARRY((\inst|cuenta\(14) & !\inst|cuenta[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(14),
	datad => VCC,
	cin => \inst|cuenta[13]~55\,
	combout => \inst|cuenta[14]~56_combout\,
	cout => \inst|cuenta[14]~57\);

-- Location: FF_X77_Y39_N1
\inst|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[14]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(14));

-- Location: LCCOMB_X77_Y39_N2
\inst|cuenta[15]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[15]~58_combout\ = (\inst|cuenta\(15) & (!\inst|cuenta[14]~57\)) # (!\inst|cuenta\(15) & ((\inst|cuenta[14]~57\) # (GND)))
-- \inst|cuenta[15]~59\ = CARRY((!\inst|cuenta[14]~57\) # (!\inst|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(15),
	datad => VCC,
	cin => \inst|cuenta[14]~57\,
	combout => \inst|cuenta[15]~58_combout\,
	cout => \inst|cuenta[15]~59\);

-- Location: FF_X77_Y39_N3
\inst|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[15]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(15));

-- Location: LCCOMB_X77_Y39_N4
\inst|cuenta[16]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[16]~60_combout\ = (\inst|cuenta\(16) & (\inst|cuenta[15]~59\ $ (GND))) # (!\inst|cuenta\(16) & (!\inst|cuenta[15]~59\ & VCC))
-- \inst|cuenta[16]~61\ = CARRY((\inst|cuenta\(16) & !\inst|cuenta[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(16),
	datad => VCC,
	cin => \inst|cuenta[15]~59\,
	combout => \inst|cuenta[16]~60_combout\,
	cout => \inst|cuenta[16]~61\);

-- Location: FF_X77_Y39_N5
\inst|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[16]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(16));

-- Location: LCCOMB_X77_Y39_N6
\inst|cuenta[17]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[17]~62_combout\ = (\inst|cuenta\(17) & (!\inst|cuenta[16]~61\)) # (!\inst|cuenta\(17) & ((\inst|cuenta[16]~61\) # (GND)))
-- \inst|cuenta[17]~63\ = CARRY((!\inst|cuenta[16]~61\) # (!\inst|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(17),
	datad => VCC,
	cin => \inst|cuenta[16]~61\,
	combout => \inst|cuenta[17]~62_combout\,
	cout => \inst|cuenta[17]~63\);

-- Location: FF_X77_Y39_N7
\inst|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[17]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(17));

-- Location: LCCOMB_X77_Y39_N8
\inst|cuenta[18]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[18]~64_combout\ = (\inst|cuenta\(18) & (\inst|cuenta[17]~63\ $ (GND))) # (!\inst|cuenta\(18) & (!\inst|cuenta[17]~63\ & VCC))
-- \inst|cuenta[18]~65\ = CARRY((\inst|cuenta\(18) & !\inst|cuenta[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(18),
	datad => VCC,
	cin => \inst|cuenta[17]~63\,
	combout => \inst|cuenta[18]~64_combout\,
	cout => \inst|cuenta[18]~65\);

-- Location: FF_X77_Y39_N9
\inst|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[18]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(18));

-- Location: LCCOMB_X77_Y39_N10
\inst|cuenta[19]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[19]~66_combout\ = (\inst|cuenta\(19) & (!\inst|cuenta[18]~65\)) # (!\inst|cuenta\(19) & ((\inst|cuenta[18]~65\) # (GND)))
-- \inst|cuenta[19]~67\ = CARRY((!\inst|cuenta[18]~65\) # (!\inst|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(19),
	datad => VCC,
	cin => \inst|cuenta[18]~65\,
	combout => \inst|cuenta[19]~66_combout\,
	cout => \inst|cuenta[19]~67\);

-- Location: FF_X77_Y39_N11
\inst|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[19]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(19));

-- Location: LCCOMB_X77_Y39_N12
\inst|cuenta[20]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[20]~68_combout\ = (\inst|cuenta\(20) & (\inst|cuenta[19]~67\ $ (GND))) # (!\inst|cuenta\(20) & (!\inst|cuenta[19]~67\ & VCC))
-- \inst|cuenta[20]~69\ = CARRY((\inst|cuenta\(20) & !\inst|cuenta[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(20),
	datad => VCC,
	cin => \inst|cuenta[19]~67\,
	combout => \inst|cuenta[20]~68_combout\,
	cout => \inst|cuenta[20]~69\);

-- Location: FF_X77_Y39_N13
\inst|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[20]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(20));

-- Location: LCCOMB_X77_Y39_N14
\inst|cuenta[21]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[21]~70_combout\ = (\inst|cuenta\(21) & (!\inst|cuenta[20]~69\)) # (!\inst|cuenta\(21) & ((\inst|cuenta[20]~69\) # (GND)))
-- \inst|cuenta[21]~71\ = CARRY((!\inst|cuenta[20]~69\) # (!\inst|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(21),
	datad => VCC,
	cin => \inst|cuenta[20]~69\,
	combout => \inst|cuenta[21]~70_combout\,
	cout => \inst|cuenta[21]~71\);

-- Location: FF_X77_Y39_N15
\inst|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[21]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(21));

-- Location: LCCOMB_X77_Y39_N16
\inst|cuenta[22]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[22]~72_combout\ = (\inst|cuenta\(22) & (\inst|cuenta[21]~71\ $ (GND))) # (!\inst|cuenta\(22) & (!\inst|cuenta[21]~71\ & VCC))
-- \inst|cuenta[22]~73\ = CARRY((\inst|cuenta\(22) & !\inst|cuenta[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(22),
	datad => VCC,
	cin => \inst|cuenta[21]~71\,
	combout => \inst|cuenta[22]~72_combout\,
	cout => \inst|cuenta[22]~73\);

-- Location: FF_X77_Y39_N17
\inst|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[22]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(22));

-- Location: LCCOMB_X77_Y39_N18
\inst|cuenta[23]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[23]~74_combout\ = (\inst|cuenta\(23) & (!\inst|cuenta[22]~73\)) # (!\inst|cuenta\(23) & ((\inst|cuenta[22]~73\) # (GND)))
-- \inst|cuenta[23]~75\ = CARRY((!\inst|cuenta[22]~73\) # (!\inst|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(23),
	datad => VCC,
	cin => \inst|cuenta[22]~73\,
	combout => \inst|cuenta[23]~74_combout\,
	cout => \inst|cuenta[23]~75\);

-- Location: FF_X77_Y39_N19
\inst|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[23]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(23));

-- Location: LCCOMB_X77_Y39_N20
\inst|cuenta[24]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[24]~76_combout\ = (\inst|cuenta\(24) & (\inst|cuenta[23]~75\ $ (GND))) # (!\inst|cuenta\(24) & (!\inst|cuenta[23]~75\ & VCC))
-- \inst|cuenta[24]~77\ = CARRY((\inst|cuenta\(24) & !\inst|cuenta[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(24),
	datad => VCC,
	cin => \inst|cuenta[23]~75\,
	combout => \inst|cuenta[24]~76_combout\,
	cout => \inst|cuenta[24]~77\);

-- Location: FF_X77_Y39_N21
\inst|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[24]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(24));

-- Location: LCCOMB_X77_Y39_N22
\inst|cuenta[25]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[25]~78_combout\ = (\inst|cuenta\(25) & (!\inst|cuenta[24]~77\)) # (!\inst|cuenta\(25) & ((\inst|cuenta[24]~77\) # (GND)))
-- \inst|cuenta[25]~79\ = CARRY((!\inst|cuenta[24]~77\) # (!\inst|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(25),
	datad => VCC,
	cin => \inst|cuenta[24]~77\,
	combout => \inst|cuenta[25]~78_combout\,
	cout => \inst|cuenta[25]~79\);

-- Location: FF_X77_Y39_N23
\inst|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[25]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(25));

-- Location: LCCOMB_X77_Y39_N24
\inst|cuenta[26]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[26]~80_combout\ = (\inst|cuenta\(26) & (\inst|cuenta[25]~79\ $ (GND))) # (!\inst|cuenta\(26) & (!\inst|cuenta[25]~79\ & VCC))
-- \inst|cuenta[26]~81\ = CARRY((\inst|cuenta\(26) & !\inst|cuenta[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(26),
	datad => VCC,
	cin => \inst|cuenta[25]~79\,
	combout => \inst|cuenta[26]~80_combout\,
	cout => \inst|cuenta[26]~81\);

-- Location: FF_X77_Y39_N25
\inst|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[26]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(26));

-- Location: LCCOMB_X77_Y39_N26
\inst|cuenta[27]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[27]~82_combout\ = \inst|cuenta[26]~81\ $ (\inst|cuenta\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|cuenta\(27),
	cin => \inst|cuenta[26]~81\,
	combout => \inst|cuenta[27]~82_combout\);

-- Location: FF_X77_Y39_N27
\inst|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cuenta[27]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(27));

-- Location: CLKCTRL_G7
\inst|cuenta[27]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|cuenta[27]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|cuenta[27]~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\W~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\Z~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: LCCOMB_X51_Y53_N26
\inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (!\inst7|internal_value\(1) & (\inst7|internal_value\(0) $ (\inst7|internal_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|internal_value\(0),
	datac => \inst7|internal_value\(2),
	datad => \inst7|internal_value\(1),
	combout => \inst3|Mux0~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: LCCOMB_X51_Y53_N24
\inst3|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux14~0_combout\ = (\inst7|internal_value\(2) & !\inst7|internal_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|internal_value\(2),
	datad => \inst7|internal_value\(0),
	combout => \inst3|Mux14~0_combout\);

-- Location: LCCOMB_X51_Y53_N28
\inst6|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|O~0_combout\ = (\inst3|Mux0~0_combout\ & (((\inst3|Mux14~0_combout\)))) # (!\inst3|Mux0~0_combout\ & ((\inst3|Mux14~0_combout\ & ((\Y~input_o\))) # (!\inst3|Mux14~0_combout\ & (\X~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \Y~input_o\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst3|Mux14~0_combout\,
	combout => \inst6|O~0_combout\);

-- Location: LCCOMB_X51_Y53_N10
\inst6|O~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|O~1_combout\ = (\inst3|Mux0~0_combout\ & ((\inst6|O~0_combout\ & (\W~input_o\)) # (!\inst6|O~0_combout\ & ((\Z~input_o\))))) # (!\inst3|Mux0~0_combout\ & (((\inst6|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \Z~input_o\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst6|O~0_combout\,
	combout => \inst6|O~1_combout\);

-- Location: LCCOMB_X51_Y53_N18
\inst3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst7|internal_value\(2) & ((\inst7|internal_value\(0) & (!\inst7|internal_value\(1))) # (!\inst7|internal_value\(0) & ((\inst6|O~1_combout\))))) # (!\inst7|internal_value\(2) & (\inst7|internal_value\(1) $ 
-- (((\inst7|internal_value\(0) & !\inst6|O~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|internal_value\(2),
	datab => \inst7|internal_value\(0),
	datac => \inst7|internal_value\(1),
	datad => \inst6|O~1_combout\,
	combout => \inst3|Mux3~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X51_Y53_N19
\inst7|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|cuenta[27]~clkctrl_outclk\,
	d => \inst3|Mux3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|internal_value\(1));

-- Location: LCCOMB_X51_Y53_N12
\inst3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst7|internal_value\(2) & ((\inst7|internal_value\(0) & (!\inst7|internal_value\(1))) # (!\inst7|internal_value\(0) & ((!\inst6|O~1_combout\))))) # (!\inst7|internal_value\(2) & (((\inst7|internal_value\(1) & 
-- !\inst6|O~1_combout\)) # (!\inst7|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|internal_value\(1),
	datab => \inst7|internal_value\(2),
	datac => \inst7|internal_value\(0),
	datad => \inst6|O~1_combout\,
	combout => \inst3|Mux4~0_combout\);

-- Location: FF_X51_Y53_N13
\inst7|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|cuenta[27]~clkctrl_outclk\,
	d => \inst3|Mux4~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|internal_value\(0));

-- Location: LCCOMB_X51_Y53_N4
\inst5|O[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|O[2]~0_combout\ = (\inst6|O~1_combout\ & (\inst7|internal_value\(0) & ((!\inst7|internal_value\(2))))) # (!\inst6|O~1_combout\ & (\inst7|internal_value\(1) & (\inst7|internal_value\(0) $ (\inst7|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|internal_value\(0),
	datab => \inst7|internal_value\(1),
	datac => \inst7|internal_value\(2),
	datad => \inst6|O~1_combout\,
	combout => \inst5|O[2]~0_combout\);

-- Location: FF_X51_Y53_N5
\inst7|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|cuenta[27]~clkctrl_outclk\,
	d => \inst5|O[2]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|internal_value\(2));

-- Location: LCCOMB_X51_Y53_N30
\inst3|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux13~0_combout\ = (\inst7|internal_value\(0) & (!\inst7|internal_value\(1) & !\inst7|internal_value\(2))) # (!\inst7|internal_value\(0) & (\inst7|internal_value\(1) & \inst7|internal_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|internal_value\(0),
	datac => \inst7|internal_value\(1),
	datad => \inst7|internal_value\(2),
	combout => \inst3|Mux13~0_combout\);

-- Location: LCCOMB_X51_Y53_N6
\inst4|O[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|O[3]~3_combout\ = (!\inst7|internal_value\(0) & (\inst7|internal_value\(2) & ((\inst6|O~1_combout\) # (!\inst7|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|O~1_combout\,
	datab => \inst7|internal_value\(1),
	datac => \inst7|internal_value\(0),
	datad => \inst7|internal_value\(2),
	combout => \inst4|O[3]~3_combout\);

-- Location: LCCOMB_X51_Y53_N16
\inst3|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux15~0_combout\ = (\inst7|internal_value\(0) & (\inst7|internal_value\(1) & !\inst7|internal_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|internal_value\(0),
	datac => \inst7|internal_value\(1),
	datad => \inst7|internal_value\(2),
	combout => \inst3|Mux15~0_combout\);

-- Location: LCCOMB_X51_Y53_N22
\inst4|O[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|O[1]~2_combout\ = (\inst7|internal_value\(1) & (((!\inst7|internal_value\(0))))) # (!\inst7|internal_value\(1) & ((\inst6|O~1_combout\) # (\inst7|internal_value\(0) $ (!\inst7|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|O~1_combout\,
	datab => \inst7|internal_value\(1),
	datac => \inst7|internal_value\(0),
	datad => \inst7|internal_value\(2),
	combout => \inst4|O[1]~2_combout\);

-- Location: LCCOMB_X51_Y53_N20
\inst3|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux12~0_combout\ = (\inst7|internal_value\(1) & (\inst7|internal_value\(0) & ((\inst6|O~1_combout\) # (\inst7|internal_value\(2))))) # (!\inst7|internal_value\(1) & (((\inst7|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|O~1_combout\,
	datab => \inst7|internal_value\(1),
	datac => \inst7|internal_value\(0),
	datad => \inst7|internal_value\(2),
	combout => \inst3|Mux12~0_combout\);

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

ww_estados(2) <= \estados[2]~output_o\;

ww_estados(1) <= \estados[1]~output_o\;

ww_estados(0) <= \estados[0]~output_o\;

ww_salidas(4) <= \salidas[4]~output_o\;

ww_salidas(3) <= \salidas[3]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;
END structure;


