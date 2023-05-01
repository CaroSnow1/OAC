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

<<<<<<< HEAD
<<<<<<< HEAD
-- DATE "03/24/2023 00:35:47"
=======
-- DATE "03/24/2023 08:56:04"
>>>>>>> 8b052fd (Version practica 04)
=======
-- DATE "03/24/2023 08:56:04"
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

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

ENTITY 	practica3 IS
    PORT (
	edoPres : OUT std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	A : IN std_logic_vector(2 DOWNTO 0);
	liga : OUT std_logic_vector(2 DOWNTO 0);
	salidas : OUT std_logic_vector(2 DOWNTO 0)
	);
END practica3;

-- Design Ports Information
-- edoPres[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPres[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPres[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
<<<<<<< HEAD
<<<<<<< HEAD
-- A[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- A[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_edoPres : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_A : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_liga : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_salidas : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
<<<<<<< HEAD
<<<<<<< HEAD
SIGNAL \inst|cuenta[26]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
=======
SIGNAL \inst|cuenta[27]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
>>>>>>> 8b052fd (Version practica 04)
=======
SIGNAL \inst|cuenta[27]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \edoPres[2]~output_o\ : std_logic;
SIGNAL \edoPres[1]~output_o\ : std_logic;
SIGNAL \edoPres[0]~output_o\ : std_logic;
SIGNAL \liga[2]~output_o\ : std_logic;
SIGNAL \liga[1]~output_o\ : std_logic;
SIGNAL \liga[0]~output_o\ : std_logic;
SIGNAL \salidas[2]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
<<<<<<< HEAD
<<<<<<< HEAD
SIGNAL \inst|cuenta[0]~27_combout\ : std_logic;
SIGNAL \inst|cuenta[0]~28\ : std_logic;
SIGNAL \inst|cuenta[1]~29_combout\ : std_logic;
SIGNAL \inst|cuenta[1]~30\ : std_logic;
SIGNAL \inst|cuenta[2]~31_combout\ : std_logic;
SIGNAL \inst|cuenta[2]~32\ : std_logic;
SIGNAL \inst|cuenta[3]~33_combout\ : std_logic;
SIGNAL \inst|cuenta[3]~34\ : std_logic;
SIGNAL \inst|cuenta[4]~35_combout\ : std_logic;
SIGNAL \inst|cuenta[4]~36\ : std_logic;
SIGNAL \inst|cuenta[5]~37_combout\ : std_logic;
SIGNAL \inst|cuenta[5]~38\ : std_logic;
SIGNAL \inst|cuenta[6]~39_combout\ : std_logic;
SIGNAL \inst|cuenta[6]~40\ : std_logic;
SIGNAL \inst|cuenta[7]~41_combout\ : std_logic;
SIGNAL \inst|cuenta[7]~42\ : std_logic;
SIGNAL \inst|cuenta[8]~43_combout\ : std_logic;
SIGNAL \inst|cuenta[8]~44\ : std_logic;
SIGNAL \inst|cuenta[9]~45_combout\ : std_logic;
SIGNAL \inst|cuenta[9]~46\ : std_logic;
SIGNAL \inst|cuenta[10]~47_combout\ : std_logic;
SIGNAL \inst|cuenta[10]~48\ : std_logic;
SIGNAL \inst|cuenta[11]~49_combout\ : std_logic;
SIGNAL \inst|cuenta[11]~50\ : std_logic;
SIGNAL \inst|cuenta[12]~51_combout\ : std_logic;
SIGNAL \inst|cuenta[12]~52\ : std_logic;
SIGNAL \inst|cuenta[13]~53_combout\ : std_logic;
SIGNAL \inst|cuenta[13]~54\ : std_logic;
SIGNAL \inst|cuenta[14]~55_combout\ : std_logic;
SIGNAL \inst|cuenta[14]~56\ : std_logic;
SIGNAL \inst|cuenta[15]~57_combout\ : std_logic;
SIGNAL \inst|cuenta[15]~58\ : std_logic;
SIGNAL \inst|cuenta[16]~59_combout\ : std_logic;
SIGNAL \inst|cuenta[16]~60\ : std_logic;
SIGNAL \inst|cuenta[17]~61_combout\ : std_logic;
SIGNAL \inst|cuenta[17]~62\ : std_logic;
SIGNAL \inst|cuenta[18]~63_combout\ : std_logic;
SIGNAL \inst|cuenta[18]~64\ : std_logic;
SIGNAL \inst|cuenta[19]~65_combout\ : std_logic;
SIGNAL \inst|cuenta[19]~66\ : std_logic;
SIGNAL \inst|cuenta[20]~67_combout\ : std_logic;
SIGNAL \inst|cuenta[20]~68\ : std_logic;
SIGNAL \inst|cuenta[21]~69_combout\ : std_logic;
SIGNAL \inst|cuenta[21]~70\ : std_logic;
SIGNAL \inst|cuenta[22]~71_combout\ : std_logic;
SIGNAL \inst|cuenta[22]~72\ : std_logic;
SIGNAL \inst|cuenta[23]~73_combout\ : std_logic;
SIGNAL \inst|cuenta[23]~74\ : std_logic;
SIGNAL \inst|cuenta[24]~75_combout\ : std_logic;
SIGNAL \inst|cuenta[24]~76\ : std_logic;
SIGNAL \inst|cuenta[25]~77_combout\ : std_logic;
SIGNAL \inst|cuenta[25]~78\ : std_logic;
SIGNAL \inst|cuenta[26]~79_combout\ : std_logic;
SIGNAL \inst|cuenta[26]~clkctrl_outclk\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
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
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|internal_value[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
<<<<<<< HEAD
<<<<<<< HEAD
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~1_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~1_combout\ : std_logic;
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~1_combout\ : std_logic;
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst2|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux2~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

edoPres <= ww_edoPres;
ww_clk <= clk;
ww_reset <= reset;
ww_A <= A;
liga <= ww_liga;
salidas <= ww_salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

<<<<<<< HEAD
<<<<<<< HEAD
\inst|cuenta[26]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|cuenta\(26));
=======
\inst|cuenta[27]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|cuenta\(27));
>>>>>>> 8b052fd (Version practica 04)
=======
\inst|cuenta[27]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|cuenta\(27));
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst4|ALT_INV_Mux5~0_combout\ <= NOT \inst4|Mux5~0_combout\;
\inst4|ALT_INV_Mux3~0_combout\ <= NOT \inst4|Mux3~0_combout\;
\inst4|ALT_INV_Mux2~1_combout\ <= NOT \inst4|Mux2~1_combout\;
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

-- Location: IOOBUF_X51_Y54_N9
\edoPres[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|internal_value\(2),
	devoe => ww_devoe,
	o => \edoPres[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\edoPres[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|internal_value\(1),
	devoe => ww_devoe,
	o => \edoPres[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\edoPres[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|internal_value\(0),
	devoe => ww_devoe,
	o => \edoPres[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\liga[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \liga[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\liga[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \liga[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\liga[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux2~1_combout\,
	devoe => ww_devoe,
	o => \liga[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux3~0_combout\,
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
	i => \inst4|Mux4~0_combout\,
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
	i => \inst4|ALT_INV_Mux5~0_combout\,
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

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N6
\inst|cuenta[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[0]~27_combout\ = \inst|cuenta\(0) $ (VCC)
-- \inst|cuenta[0]~28\ = CARRY(\inst|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(0),
	datad => VCC,
	combout => \inst|cuenta[0]~27_combout\,
	cout => \inst|cuenta[0]~28\);

-- Location: FF_X45_Y53_N7
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N4
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

-- Location: FF_X45_Y53_N5
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[0]~27_combout\,
=======
	d => \inst|cuenta[0]~28_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[0]~28_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(0));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N8
\inst|cuenta[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[1]~29_combout\ = (\inst|cuenta\(1) & (!\inst|cuenta[0]~28\)) # (!\inst|cuenta\(1) & ((\inst|cuenta[0]~28\) # (GND)))
-- \inst|cuenta[1]~30\ = CARRY((!\inst|cuenta[0]~28\) # (!\inst|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(1),
	datad => VCC,
	cin => \inst|cuenta[0]~28\,
	combout => \inst|cuenta[1]~29_combout\,
	cout => \inst|cuenta[1]~30\);

-- Location: FF_X45_Y53_N9
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N6
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

-- Location: FF_X45_Y53_N7
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[1]~29_combout\,
=======
	d => \inst|cuenta[1]~30_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[1]~30_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(1));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N10
\inst|cuenta[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[2]~31_combout\ = (\inst|cuenta\(2) & (\inst|cuenta[1]~30\ $ (GND))) # (!\inst|cuenta\(2) & (!\inst|cuenta[1]~30\ & VCC))
-- \inst|cuenta[2]~32\ = CARRY((\inst|cuenta\(2) & !\inst|cuenta[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(2),
	datad => VCC,
	cin => \inst|cuenta[1]~30\,
	combout => \inst|cuenta[2]~31_combout\,
	cout => \inst|cuenta[2]~32\);

-- Location: FF_X45_Y53_N11
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N8
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

-- Location: FF_X45_Y53_N9
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[2]~31_combout\,
=======
	d => \inst|cuenta[2]~32_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[2]~32_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(2));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N12
\inst|cuenta[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[3]~33_combout\ = (\inst|cuenta\(3) & (!\inst|cuenta[2]~32\)) # (!\inst|cuenta\(3) & ((\inst|cuenta[2]~32\) # (GND)))
-- \inst|cuenta[3]~34\ = CARRY((!\inst|cuenta[2]~32\) # (!\inst|cuenta\(3)))
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N10
\inst|cuenta[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[3]~34_combout\ = (\inst|cuenta\(3) & (!\inst|cuenta[2]~33\)) # (!\inst|cuenta\(3) & ((\inst|cuenta[2]~33\) # (GND)))
-- \inst|cuenta[3]~35\ = CARRY((!\inst|cuenta[2]~33\) # (!\inst|cuenta\(3)))
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(3),
	datad => VCC,
<<<<<<< HEAD
<<<<<<< HEAD
	cin => \inst|cuenta[2]~32\,
	combout => \inst|cuenta[3]~33_combout\,
	cout => \inst|cuenta[3]~34\);

-- Location: FF_X45_Y53_N13
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	cin => \inst|cuenta[2]~33\,
	combout => \inst|cuenta[3]~34_combout\,
	cout => \inst|cuenta[3]~35\);

-- Location: FF_X45_Y53_N11
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[3]~33_combout\,
=======
	d => \inst|cuenta[3]~34_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[3]~34_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(3));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N14
\inst|cuenta[4]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[4]~35_combout\ = (\inst|cuenta\(4) & (\inst|cuenta[3]~34\ $ (GND))) # (!\inst|cuenta\(4) & (!\inst|cuenta[3]~34\ & VCC))
-- \inst|cuenta[4]~36\ = CARRY((\inst|cuenta\(4) & !\inst|cuenta[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(4),
	datad => VCC,
	cin => \inst|cuenta[3]~34\,
	combout => \inst|cuenta[4]~35_combout\,
	cout => \inst|cuenta[4]~36\);

-- Location: FF_X45_Y53_N15
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N12
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

-- Location: FF_X45_Y53_N13
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[4]~35_combout\,
=======
	d => \inst|cuenta[4]~36_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[4]~36_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(4));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N16
\inst|cuenta[5]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[5]~37_combout\ = (\inst|cuenta\(5) & (!\inst|cuenta[4]~36\)) # (!\inst|cuenta\(5) & ((\inst|cuenta[4]~36\) # (GND)))
-- \inst|cuenta[5]~38\ = CARRY((!\inst|cuenta[4]~36\) # (!\inst|cuenta\(5)))
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N14
\inst|cuenta[5]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[5]~38_combout\ = (\inst|cuenta\(5) & (!\inst|cuenta[4]~37\)) # (!\inst|cuenta\(5) & ((\inst|cuenta[4]~37\) # (GND)))
-- \inst|cuenta[5]~39\ = CARRY((!\inst|cuenta[4]~37\) # (!\inst|cuenta\(5)))
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(5),
	datad => VCC,
<<<<<<< HEAD
<<<<<<< HEAD
	cin => \inst|cuenta[4]~36\,
	combout => \inst|cuenta[5]~37_combout\,
	cout => \inst|cuenta[5]~38\);

-- Location: FF_X45_Y53_N17
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	cin => \inst|cuenta[4]~37\,
	combout => \inst|cuenta[5]~38_combout\,
	cout => \inst|cuenta[5]~39\);

-- Location: FF_X45_Y53_N15
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[5]~37_combout\,
=======
	d => \inst|cuenta[5]~38_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[5]~38_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(5));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N18
\inst|cuenta[6]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[6]~39_combout\ = (\inst|cuenta\(6) & (\inst|cuenta[5]~38\ $ (GND))) # (!\inst|cuenta\(6) & (!\inst|cuenta[5]~38\ & VCC))
-- \inst|cuenta[6]~40\ = CARRY((\inst|cuenta\(6) & !\inst|cuenta[5]~38\))
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N16
\inst|cuenta[6]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[6]~40_combout\ = (\inst|cuenta\(6) & (\inst|cuenta[5]~39\ $ (GND))) # (!\inst|cuenta\(6) & (!\inst|cuenta[5]~39\ & VCC))
-- \inst|cuenta[6]~41\ = CARRY((\inst|cuenta\(6) & !\inst|cuenta[5]~39\))
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(6),
	datad => VCC,
<<<<<<< HEAD
<<<<<<< HEAD
	cin => \inst|cuenta[5]~38\,
	combout => \inst|cuenta[6]~39_combout\,
	cout => \inst|cuenta[6]~40\);

-- Location: FF_X45_Y53_N19
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	cin => \inst|cuenta[5]~39\,
	combout => \inst|cuenta[6]~40_combout\,
	cout => \inst|cuenta[6]~41\);

-- Location: FF_X45_Y53_N17
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[6]~39_combout\,
=======
	d => \inst|cuenta[6]~40_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[6]~40_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(6));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N20
\inst|cuenta[7]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[7]~41_combout\ = (\inst|cuenta\(7) & (!\inst|cuenta[6]~40\)) # (!\inst|cuenta\(7) & ((\inst|cuenta[6]~40\) # (GND)))
-- \inst|cuenta[7]~42\ = CARRY((!\inst|cuenta[6]~40\) # (!\inst|cuenta\(7)))
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N18
\inst|cuenta[7]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[7]~42_combout\ = (\inst|cuenta\(7) & (!\inst|cuenta[6]~41\)) # (!\inst|cuenta\(7) & ((\inst|cuenta[6]~41\) # (GND)))
-- \inst|cuenta[7]~43\ = CARRY((!\inst|cuenta[6]~41\) # (!\inst|cuenta\(7)))
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(7),
	datad => VCC,
<<<<<<< HEAD
<<<<<<< HEAD
	cin => \inst|cuenta[6]~40\,
	combout => \inst|cuenta[7]~41_combout\,
	cout => \inst|cuenta[7]~42\);

-- Location: FF_X45_Y53_N21
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	cin => \inst|cuenta[6]~41\,
	combout => \inst|cuenta[7]~42_combout\,
	cout => \inst|cuenta[7]~43\);

-- Location: FF_X45_Y53_N19
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[7]~41_combout\,
=======
	d => \inst|cuenta[7]~42_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[7]~42_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(7));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N22
\inst|cuenta[8]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[8]~43_combout\ = (\inst|cuenta\(8) & (\inst|cuenta[7]~42\ $ (GND))) # (!\inst|cuenta\(8) & (!\inst|cuenta[7]~42\ & VCC))
-- \inst|cuenta[8]~44\ = CARRY((\inst|cuenta\(8) & !\inst|cuenta[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(8),
	datad => VCC,
	cin => \inst|cuenta[7]~42\,
	combout => \inst|cuenta[8]~43_combout\,
	cout => \inst|cuenta[8]~44\);

-- Location: FF_X45_Y53_N23
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N20
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

-- Location: FF_X45_Y53_N21
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[8]~43_combout\,
=======
	d => \inst|cuenta[8]~44_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[8]~44_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(8));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N24
\inst|cuenta[9]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[9]~45_combout\ = (\inst|cuenta\(9) & (!\inst|cuenta[8]~44\)) # (!\inst|cuenta\(9) & ((\inst|cuenta[8]~44\) # (GND)))
-- \inst|cuenta[9]~46\ = CARRY((!\inst|cuenta[8]~44\) # (!\inst|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(9),
	datad => VCC,
	cin => \inst|cuenta[8]~44\,
	combout => \inst|cuenta[9]~45_combout\,
	cout => \inst|cuenta[9]~46\);

-- Location: FF_X45_Y53_N25
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N22
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

-- Location: FF_X45_Y53_N23
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[9]~45_combout\,
=======
	d => \inst|cuenta[9]~46_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[9]~46_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(9));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N26
\inst|cuenta[10]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[10]~47_combout\ = (\inst|cuenta\(10) & (\inst|cuenta[9]~46\ $ (GND))) # (!\inst|cuenta\(10) & (!\inst|cuenta[9]~46\ & VCC))
-- \inst|cuenta[10]~48\ = CARRY((\inst|cuenta\(10) & !\inst|cuenta[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(10),
	datad => VCC,
	cin => \inst|cuenta[9]~46\,
	combout => \inst|cuenta[10]~47_combout\,
	cout => \inst|cuenta[10]~48\);

-- Location: FF_X45_Y53_N27
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N24
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

-- Location: FF_X45_Y53_N25
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[10]~47_combout\,
=======
	d => \inst|cuenta[10]~48_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[10]~48_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(10));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N28
\inst|cuenta[11]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[11]~49_combout\ = (\inst|cuenta\(11) & (!\inst|cuenta[10]~48\)) # (!\inst|cuenta\(11) & ((\inst|cuenta[10]~48\) # (GND)))
-- \inst|cuenta[11]~50\ = CARRY((!\inst|cuenta[10]~48\) # (!\inst|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(11),
	datad => VCC,
	cin => \inst|cuenta[10]~48\,
	combout => \inst|cuenta[11]~49_combout\,
	cout => \inst|cuenta[11]~50\);

-- Location: FF_X45_Y53_N29
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N26
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

-- Location: FF_X45_Y53_N27
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[11]~49_combout\,
=======
	d => \inst|cuenta[11]~50_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[11]~50_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(11));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y53_N30
\inst|cuenta[12]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[12]~51_combout\ = (\inst|cuenta\(12) & (\inst|cuenta[11]~50\ $ (GND))) # (!\inst|cuenta\(12) & (!\inst|cuenta[11]~50\ & VCC))
-- \inst|cuenta[12]~52\ = CARRY((\inst|cuenta\(12) & !\inst|cuenta[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(12),
	datad => VCC,
	cin => \inst|cuenta[11]~50\,
	combout => \inst|cuenta[12]~51_combout\,
	cout => \inst|cuenta[12]~52\);

-- Location: FF_X45_Y53_N31
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N28
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

-- Location: FF_X45_Y53_N29
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[12]~51_combout\,
=======
	d => \inst|cuenta[12]~52_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[12]~52_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(12));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N0
\inst|cuenta[13]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[13]~53_combout\ = (\inst|cuenta\(13) & (!\inst|cuenta[12]~52\)) # (!\inst|cuenta\(13) & ((\inst|cuenta[12]~52\) # (GND)))
-- \inst|cuenta[13]~54\ = CARRY((!\inst|cuenta[12]~52\) # (!\inst|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(13),
	datad => VCC,
	cin => \inst|cuenta[12]~52\,
	combout => \inst|cuenta[13]~53_combout\,
	cout => \inst|cuenta[13]~54\);

-- Location: FF_X45_Y52_N1
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y53_N30
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

-- Location: FF_X45_Y53_N31
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[13]~53_combout\,
=======
	d => \inst|cuenta[13]~54_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[13]~54_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(13));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N2
\inst|cuenta[14]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[14]~55_combout\ = (\inst|cuenta\(14) & (\inst|cuenta[13]~54\ $ (GND))) # (!\inst|cuenta\(14) & (!\inst|cuenta[13]~54\ & VCC))
-- \inst|cuenta[14]~56\ = CARRY((\inst|cuenta\(14) & !\inst|cuenta[13]~54\))
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N0
\inst|cuenta[14]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[14]~56_combout\ = (\inst|cuenta\(14) & (\inst|cuenta[13]~55\ $ (GND))) # (!\inst|cuenta\(14) & (!\inst|cuenta[13]~55\ & VCC))
-- \inst|cuenta[14]~57\ = CARRY((\inst|cuenta\(14) & !\inst|cuenta[13]~55\))
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(14),
	datad => VCC,
<<<<<<< HEAD
<<<<<<< HEAD
	cin => \inst|cuenta[13]~54\,
	combout => \inst|cuenta[14]~55_combout\,
	cout => \inst|cuenta[14]~56\);

-- Location: FF_X45_Y52_N3
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	cin => \inst|cuenta[13]~55\,
	combout => \inst|cuenta[14]~56_combout\,
	cout => \inst|cuenta[14]~57\);

-- Location: FF_X45_Y52_N1
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[14]~55_combout\,
=======
	d => \inst|cuenta[14]~56_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[14]~56_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(14));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N4
\inst|cuenta[15]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[15]~57_combout\ = (\inst|cuenta\(15) & (!\inst|cuenta[14]~56\)) # (!\inst|cuenta\(15) & ((\inst|cuenta[14]~56\) # (GND)))
-- \inst|cuenta[15]~58\ = CARRY((!\inst|cuenta[14]~56\) # (!\inst|cuenta\(15)))
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N2
\inst|cuenta[15]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[15]~58_combout\ = (\inst|cuenta\(15) & (!\inst|cuenta[14]~57\)) # (!\inst|cuenta\(15) & ((\inst|cuenta[14]~57\) # (GND)))
-- \inst|cuenta[15]~59\ = CARRY((!\inst|cuenta[14]~57\) # (!\inst|cuenta\(15)))
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(15),
	datad => VCC,
<<<<<<< HEAD
<<<<<<< HEAD
	cin => \inst|cuenta[14]~56\,
	combout => \inst|cuenta[15]~57_combout\,
	cout => \inst|cuenta[15]~58\);

-- Location: FF_X45_Y52_N5
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	cin => \inst|cuenta[14]~57\,
	combout => \inst|cuenta[15]~58_combout\,
	cout => \inst|cuenta[15]~59\);

-- Location: FF_X45_Y52_N3
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[15]~57_combout\,
=======
	d => \inst|cuenta[15]~58_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[15]~58_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(15));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N6
\inst|cuenta[16]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[16]~59_combout\ = (\inst|cuenta\(16) & (\inst|cuenta[15]~58\ $ (GND))) # (!\inst|cuenta\(16) & (!\inst|cuenta[15]~58\ & VCC))
-- \inst|cuenta[16]~60\ = CARRY((\inst|cuenta\(16) & !\inst|cuenta[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(16),
	datad => VCC,
	cin => \inst|cuenta[15]~58\,
	combout => \inst|cuenta[16]~59_combout\,
	cout => \inst|cuenta[16]~60\);

-- Location: FF_X45_Y52_N7
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N4
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

-- Location: FF_X45_Y52_N5
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[16]~59_combout\,
=======
	d => \inst|cuenta[16]~60_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[16]~60_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(16));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N8
\inst|cuenta[17]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[17]~61_combout\ = (\inst|cuenta\(17) & (!\inst|cuenta[16]~60\)) # (!\inst|cuenta\(17) & ((\inst|cuenta[16]~60\) # (GND)))
-- \inst|cuenta[17]~62\ = CARRY((!\inst|cuenta[16]~60\) # (!\inst|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(17),
	datad => VCC,
	cin => \inst|cuenta[16]~60\,
	combout => \inst|cuenta[17]~61_combout\,
	cout => \inst|cuenta[17]~62\);

-- Location: FF_X45_Y52_N9
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N6
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

-- Location: FF_X45_Y52_N7
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[17]~61_combout\,
=======
	d => \inst|cuenta[17]~62_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[17]~62_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(17));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N10
\inst|cuenta[18]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[18]~63_combout\ = (\inst|cuenta\(18) & (\inst|cuenta[17]~62\ $ (GND))) # (!\inst|cuenta\(18) & (!\inst|cuenta[17]~62\ & VCC))
-- \inst|cuenta[18]~64\ = CARRY((\inst|cuenta\(18) & !\inst|cuenta[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(18),
	datad => VCC,
	cin => \inst|cuenta[17]~62\,
	combout => \inst|cuenta[18]~63_combout\,
	cout => \inst|cuenta[18]~64\);

-- Location: FF_X45_Y52_N11
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N8
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

-- Location: FF_X45_Y52_N9
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[18]~63_combout\,
=======
	d => \inst|cuenta[18]~64_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[18]~64_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(18));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N12
\inst|cuenta[19]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[19]~65_combout\ = (\inst|cuenta\(19) & (!\inst|cuenta[18]~64\)) # (!\inst|cuenta\(19) & ((\inst|cuenta[18]~64\) # (GND)))
-- \inst|cuenta[19]~66\ = CARRY((!\inst|cuenta[18]~64\) # (!\inst|cuenta\(19)))
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N10
\inst|cuenta[19]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[19]~66_combout\ = (\inst|cuenta\(19) & (!\inst|cuenta[18]~65\)) # (!\inst|cuenta\(19) & ((\inst|cuenta[18]~65\) # (GND)))
-- \inst|cuenta[19]~67\ = CARRY((!\inst|cuenta[18]~65\) # (!\inst|cuenta\(19)))
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(19),
	datad => VCC,
<<<<<<< HEAD
<<<<<<< HEAD
	cin => \inst|cuenta[18]~64\,
	combout => \inst|cuenta[19]~65_combout\,
	cout => \inst|cuenta[19]~66\);

-- Location: FF_X45_Y52_N13
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	cin => \inst|cuenta[18]~65\,
	combout => \inst|cuenta[19]~66_combout\,
	cout => \inst|cuenta[19]~67\);

-- Location: FF_X45_Y52_N11
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[19]~65_combout\,
=======
	d => \inst|cuenta[19]~66_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[19]~66_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(19));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N14
\inst|cuenta[20]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[20]~67_combout\ = (\inst|cuenta\(20) & (\inst|cuenta[19]~66\ $ (GND))) # (!\inst|cuenta\(20) & (!\inst|cuenta[19]~66\ & VCC))
-- \inst|cuenta[20]~68\ = CARRY((\inst|cuenta\(20) & !\inst|cuenta[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(20),
	datad => VCC,
	cin => \inst|cuenta[19]~66\,
	combout => \inst|cuenta[20]~67_combout\,
	cout => \inst|cuenta[20]~68\);

-- Location: FF_X45_Y52_N15
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N12
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

-- Location: FF_X45_Y52_N13
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[20]~67_combout\,
=======
	d => \inst|cuenta[20]~68_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[20]~68_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(20));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N16
\inst|cuenta[21]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[21]~69_combout\ = (\inst|cuenta\(21) & (!\inst|cuenta[20]~68\)) # (!\inst|cuenta\(21) & ((\inst|cuenta[20]~68\) # (GND)))
-- \inst|cuenta[21]~70\ = CARRY((!\inst|cuenta[20]~68\) # (!\inst|cuenta\(21)))
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N14
\inst|cuenta[21]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[21]~70_combout\ = (\inst|cuenta\(21) & (!\inst|cuenta[20]~69\)) # (!\inst|cuenta\(21) & ((\inst|cuenta[20]~69\) # (GND)))
-- \inst|cuenta[21]~71\ = CARRY((!\inst|cuenta[20]~69\) # (!\inst|cuenta\(21)))
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(21),
	datad => VCC,
<<<<<<< HEAD
<<<<<<< HEAD
	cin => \inst|cuenta[20]~68\,
	combout => \inst|cuenta[21]~69_combout\,
	cout => \inst|cuenta[21]~70\);

-- Location: FF_X45_Y52_N17
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	cin => \inst|cuenta[20]~69\,
	combout => \inst|cuenta[21]~70_combout\,
	cout => \inst|cuenta[21]~71\);

-- Location: FF_X45_Y52_N15
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[21]~69_combout\,
=======
	d => \inst|cuenta[21]~70_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[21]~70_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(21));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N18
\inst|cuenta[22]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[22]~71_combout\ = (\inst|cuenta\(22) & (\inst|cuenta[21]~70\ $ (GND))) # (!\inst|cuenta\(22) & (!\inst|cuenta[21]~70\ & VCC))
-- \inst|cuenta[22]~72\ = CARRY((\inst|cuenta\(22) & !\inst|cuenta[21]~70\))
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N16
\inst|cuenta[22]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[22]~72_combout\ = (\inst|cuenta\(22) & (\inst|cuenta[21]~71\ $ (GND))) # (!\inst|cuenta\(22) & (!\inst|cuenta[21]~71\ & VCC))
-- \inst|cuenta[22]~73\ = CARRY((\inst|cuenta\(22) & !\inst|cuenta[21]~71\))
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(22),
	datad => VCC,
<<<<<<< HEAD
<<<<<<< HEAD
	cin => \inst|cuenta[21]~70\,
	combout => \inst|cuenta[22]~71_combout\,
	cout => \inst|cuenta[22]~72\);

-- Location: FF_X45_Y52_N19
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	cin => \inst|cuenta[21]~71\,
	combout => \inst|cuenta[22]~72_combout\,
	cout => \inst|cuenta[22]~73\);

-- Location: FF_X45_Y52_N17
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[22]~71_combout\,
=======
	d => \inst|cuenta[22]~72_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[22]~72_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(22));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N20
\inst|cuenta[23]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[23]~73_combout\ = (\inst|cuenta\(23) & (!\inst|cuenta[22]~72\)) # (!\inst|cuenta\(23) & ((\inst|cuenta[22]~72\) # (GND)))
-- \inst|cuenta[23]~74\ = CARRY((!\inst|cuenta[22]~72\) # (!\inst|cuenta\(23)))
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N18
\inst|cuenta[23]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[23]~74_combout\ = (\inst|cuenta\(23) & (!\inst|cuenta[22]~73\)) # (!\inst|cuenta\(23) & ((\inst|cuenta[22]~73\) # (GND)))
-- \inst|cuenta[23]~75\ = CARRY((!\inst|cuenta[22]~73\) # (!\inst|cuenta\(23)))
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(23),
	datad => VCC,
<<<<<<< HEAD
<<<<<<< HEAD
	cin => \inst|cuenta[22]~72\,
	combout => \inst|cuenta[23]~73_combout\,
	cout => \inst|cuenta[23]~74\);

-- Location: FF_X45_Y52_N21
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	cin => \inst|cuenta[22]~73\,
	combout => \inst|cuenta[23]~74_combout\,
	cout => \inst|cuenta[23]~75\);

-- Location: FF_X45_Y52_N19
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[23]~73_combout\,
=======
	d => \inst|cuenta[23]~74_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[23]~74_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(23));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N22
\inst|cuenta[24]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[24]~75_combout\ = (\inst|cuenta\(24) & (\inst|cuenta[23]~74\ $ (GND))) # (!\inst|cuenta\(24) & (!\inst|cuenta[23]~74\ & VCC))
-- \inst|cuenta[24]~76\ = CARRY((\inst|cuenta\(24) & !\inst|cuenta[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cuenta\(24),
	datad => VCC,
	cin => \inst|cuenta[23]~74\,
	combout => \inst|cuenta[24]~75_combout\,
	cout => \inst|cuenta[24]~76\);

-- Location: FF_X45_Y52_N23
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N20
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

-- Location: FF_X45_Y52_N21
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[24]~75_combout\,
=======
	d => \inst|cuenta[24]~76_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[24]~76_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(24));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N24
\inst|cuenta[25]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[25]~77_combout\ = (\inst|cuenta\(25) & (!\inst|cuenta[24]~76\)) # (!\inst|cuenta\(25) & ((\inst|cuenta[24]~76\) # (GND)))
-- \inst|cuenta[25]~78\ = CARRY((!\inst|cuenta[24]~76\) # (!\inst|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cuenta\(25),
	datad => VCC,
	cin => \inst|cuenta[24]~76\,
	combout => \inst|cuenta[25]~77_combout\,
	cout => \inst|cuenta[25]~78\);

-- Location: FF_X45_Y52_N25
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N22
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

-- Location: FF_X45_Y52_N23
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[25]~77_combout\,
=======
	d => \inst|cuenta[25]~78_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[25]~78_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(25));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X45_Y52_N26
\inst|cuenta[26]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cuenta[26]~79_combout\ = \inst|cuenta[25]~78\ $ (!\inst|cuenta\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|cuenta\(26),
	cin => \inst|cuenta[25]~78\,
	combout => \inst|cuenta[26]~79_combout\);

-- Location: FF_X45_Y52_N27
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N24
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

-- Location: FF_X45_Y52_N25
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
<<<<<<< HEAD
	d => \inst|cuenta[26]~79_combout\,
=======
	d => \inst|cuenta[26]~80_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	d => \inst|cuenta[26]~80_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cuenta\(26));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: CLKCTRL_G14
\inst|cuenta[26]~clkctrl\ : fiftyfivenm_clkctrl
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X45_Y52_N26
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

-- Location: FF_X45_Y52_N27
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

-- Location: CLKCTRL_G13
\inst|cuenta[27]~clkctrl\ : fiftyfivenm_clkctrl
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
<<<<<<< HEAD
	inclk => \inst|cuenta[26]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|cuenta[26]~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	inclk => \inst|cuenta[27]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|cuenta[27]~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: IOIBUF_X51_Y54_N1
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: IOIBUF_X51_Y54_N22
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: IOIBUF_X51_Y54_N29
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X51_Y53_N0
\inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst2|internal_value\(0) & \inst2|internal_value\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|internal_value\(0),
	datad => \inst2|internal_value\(2),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X51_Y53_N6
\inst4|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~1_combout\ = (\A[2]~input_o\) # ((\A[1]~input_o\ & (!\A[0]~input_o\ & !\inst4|Mux2~0_combout\)) # (!\A[1]~input_o\ & (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst4|Mux2~0_combout\,
	combout => \inst4|Mux2~1_combout\);

-- Location: LCCOMB_X51_Y53_N4
=======
-- Location: LCCOMB_X51_Y53_N2
\inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst2|internal_value\(1) & (!\inst2|internal_value\(0) & ((!\A[0]~input_o\) # (!\A[2]~input_o\)))) # (!\inst2|internal_value\(1) & (((\inst2|internal_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(0),
	combout => \inst4|Mux2~0_combout\);

=======
-- Location: LCCOMB_X51_Y53_N2
\inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst2|internal_value\(1) & (!\inst2|internal_value\(0) & ((!\A[0]~input_o\) # (!\A[2]~input_o\)))) # (!\inst2|internal_value\(1) & (((\inst2|internal_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(0),
	combout => \inst4|Mux2~0_combout\);

>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X51_Y53_N24
\inst4|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~1_combout\ = (\inst2|internal_value\(2)) # (\inst4|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|internal_value\(2),
	datad => \inst4|Mux2~0_combout\,
	combout => \inst4|Mux2~1_combout\);

-- Location: LCCOMB_X51_Y53_N0
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst2|internal_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|internal_value[0]~0_combout\ = !\inst4|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Mux2~1_combout\,
	combout => \inst2|internal_value[0]~0_combout\);

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: IOIBUF_X46_Y54_N29
=======
-- Location: IOIBUF_X69_Y54_N1
>>>>>>> 8b052fd (Version practica 04)
=======
-- Location: IOIBUF_X69_Y54_N1
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
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

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: FF_X51_Y53_N5
=======
-- Location: FF_X51_Y53_N1
>>>>>>> 8b052fd (Version practica 04)
=======
-- Location: FF_X51_Y53_N1
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst2|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
<<<<<<< HEAD
	clk => \inst|cuenta[26]~clkctrl_outclk\,
=======
	clk => \inst|cuenta[27]~clkctrl_outclk\,
>>>>>>> 8b052fd (Version practica 04)
=======
	clk => \inst|cuenta[27]~clkctrl_outclk\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	d => \inst2|internal_value[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|internal_value\(0));

<<<<<<< HEAD
<<<<<<< HEAD
-- Location: LCCOMB_X51_Y53_N2
\inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & ((\inst2|internal_value\(2)))) # (!\A[0]~input_o\ & (\inst2|internal_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \inst2|internal_value\(0),
	datad => \inst2|internal_value\(2),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y53_N8
\inst4|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~1_combout\ = (!\A[2]~input_o\ & \inst4|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \inst4|Mux0~0_combout\,
	combout => \inst4|Mux0~1_combout\);

-- Location: FF_X51_Y53_N25
\inst2|internal_value[2]\ : dffeas
=======
-- Location: LCCOMB_X51_Y53_N18
\inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst2|internal_value\(1) & ((\inst2|internal_value\(0) & (!\A[2]~input_o\)) # (!\inst2|internal_value\(0) & ((!\A[0]~input_o\))))) # (!\inst2|internal_value\(1) & (((\inst2|internal_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(0),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y53_N8
=======
-- Location: LCCOMB_X51_Y53_N18
\inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst2|internal_value\(1) & ((\inst2|internal_value\(0) & (!\A[2]~input_o\)) # (!\inst2|internal_value\(0) & ((!\A[0]~input_o\))))) # (!\inst2|internal_value\(1) & (((\inst2|internal_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(0),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y53_N8
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
\inst4|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~1_combout\ = (!\inst2|internal_value\(2) & ((\A[1]~input_o\ & (!\inst4|Mux0~0_combout\)) # (!\A[1]~input_o\ & ((\inst4|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux0~0_combout\,
	datab => \A[1]~input_o\,
	datac => \inst2|internal_value\(2),
	datad => \inst4|Mux1~0_combout\,
	combout => \inst4|Mux1~1_combout\);

-- Location: FF_X51_Y53_N23
\inst2|internal_value[1]\ : dffeas
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
<<<<<<< HEAD
	clk => \inst|cuenta[26]~clkctrl_outclk\,
	asdata => \inst4|Mux0~1_combout\,
=======
	clk => \inst|cuenta[27]~clkctrl_outclk\,
	asdata => \inst4|Mux1~1_combout\,
>>>>>>> 8b052fd (Version practica 04)
=======
	clk => \inst|cuenta[27]~clkctrl_outclk\,
	asdata => \inst4|Mux1~1_combout\,
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
<<<<<<< HEAD
<<<<<<< HEAD
	q => \inst2|internal_value\(2));

-- Location: LCCOMB_X51_Y53_N26
\inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\ & (!\inst2|internal_value\(2))) # (!\A[0]~input_o\ & ((!\inst2|internal_value\(0)))))) # (!\A[1]~input_o\ & (((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst2|internal_value\(2),
	datac => \A[0]~input_o\,
	datad => \inst2|internal_value\(0),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y53_N30
\inst4|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~1_combout\ = (!\A[2]~input_o\ & ((\inst2|internal_value\(1) & ((!\inst4|Mux0~0_combout\))) # (!\inst2|internal_value\(1) & (\inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux1~0_combout\,
	datab => \inst4|Mux0~0_combout\,
	datac => \inst2|internal_value\(1),
	datad => \A[2]~input_o\,
	combout => \inst4|Mux1~1_combout\);

-- Location: FF_X51_Y53_N31
\inst2|internal_value[1]\ : dffeas
=======
	q => \inst2|internal_value\(1));

-- Location: LCCOMB_X51_Y53_N6
\inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst2|internal_value\(1) & ((\inst2|internal_value\(0) & (\A[2]~input_o\)) # (!\inst2|internal_value\(0) & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(0),
	combout => \inst4|Mux0~0_combout\);

=======
	q => \inst2|internal_value\(1));

-- Location: LCCOMB_X51_Y53_N6
\inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst2|internal_value\(1) & ((\inst2|internal_value\(0) & (\A[2]~input_o\)) # (!\inst2|internal_value\(0) & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(0),
	combout => \inst4|Mux0~0_combout\);

>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- Location: LCCOMB_X51_Y53_N4
\inst4|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~1_combout\ = (!\inst2|internal_value\(2) & \inst4|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|internal_value\(2),
	datad => \inst4|Mux0~0_combout\,
	combout => \inst4|Mux0~1_combout\);

-- Location: FF_X51_Y53_N29
\inst2|internal_value[2]\ : dffeas
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
<<<<<<< HEAD
	clk => \inst|cuenta[26]~clkctrl_outclk\,
	d => \inst4|Mux1~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|internal_value\(1));

-- Location: LCCOMB_X51_Y53_N20
\inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\A[1]~input_o\) # ((!\A[0]~input_o\ & ((\A[2]~input_o\) # (\inst2|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst2|internal_value\(1),
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X51_Y53_N24
\inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\A[2]~input_o\ & (!\A[1]~input_o\ & !\A[0]~input_o\)) # (!\A[2]~input_o\ & ((\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101000100",
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	clk => \inst|cuenta[27]~clkctrl_outclk\,
	asdata => \inst4|Mux0~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|internal_value\(2));

-- Location: LCCOMB_X51_Y53_N28
\inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst2|internal_value\(1)) # ((!\inst2|internal_value\(0) & ((\A[1]~input_o\) # (\inst2|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
<<<<<<< HEAD
<<<<<<< HEAD
	datab => \A[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y53_N18
\inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\A[2]~input_o\) # ((!\A[0]~input_o\ & ((\inst2|internal_value\(1)) # (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst2|internal_value\(1),
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
=======
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	datab => \inst2|internal_value\(1),
	datac => \inst2|internal_value\(2),
	datad => \inst2|internal_value\(0),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X51_Y53_N22
\inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst2|internal_value\(0) & ((!\inst2|internal_value\(2)))) # (!\inst2|internal_value\(0) & (!\inst2|internal_value\(1) & \inst2|internal_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|internal_value\(0),
	datac => \inst2|internal_value\(1),
	datad => \inst2|internal_value\(2),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst2|internal_value\(2)) # ((!\inst2|internal_value\(0) & ((\inst2|internal_value\(1)) # (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|internal_value\(1),
	datab => \inst2|internal_value\(2),
	datac => \A[1]~input_o\,
	datad => \inst2|internal_value\(0),
<<<<<<< HEAD
>>>>>>> 8b052fd (Version practica 04)
=======
>>>>>>> 8b052fd8f1de3b2e6a912938a51f7765113d8464
	combout => \inst4|Mux5~0_combout\);

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

ww_edoPres(2) <= \edoPres[2]~output_o\;

ww_edoPres(1) <= \edoPres[1]~output_o\;

ww_edoPres(0) <= \edoPres[0]~output_o\;

ww_liga(2) <= \liga[2]~output_o\;

ww_liga(1) <= \liga[1]~output_o\;

ww_liga(0) <= \liga[0]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;
END structure;


