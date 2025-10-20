-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "04/16/2024 11:50:40"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

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

ENTITY 	projeto IS
    PORT (
	SW : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END projeto;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[0]~32_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[22]~77\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[23]~78_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[23]~79\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[24]~80_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[24]~81\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[25]~82_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[25]~83\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[26]~84_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[26]~85\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[27]~86_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[27]~87\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[28]~88_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[28]~89\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[29]~90_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[29]~91\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[30]~92_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[30]~93\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[31]~94_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|LessThan0~0_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|LessThan0~1_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|clkOut~0_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|LessThan0~2_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|LessThan0~3_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|LessThan0~4_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|clkOut~1_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|LessThan0~5_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|LessThan0~6_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|LessThan0~7_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|LessThan0~8_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[0]~33\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[1]~34_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[1]~35\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[2]~36_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[2]~37\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[3]~38_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[3]~39\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[4]~40_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[4]~41\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[5]~42_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[5]~43\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[6]~44_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[6]~45\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[7]~46_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[7]~47\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[8]~48_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[8]~49\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[9]~50_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[9]~51\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[10]~52_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[10]~53\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[11]~54_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[11]~55\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[12]~56_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[12]~57\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[13]~58_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[13]~59\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[14]~60_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[14]~61\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[15]~62_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[15]~63\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[16]~64_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[16]~65\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[17]~66_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[17]~67\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[18]~68_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[18]~69\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[19]~70_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[19]~71\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[20]~72_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[20]~73\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[21]~74_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[21]~75\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter[22]~76_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|clkOut~3_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|clkOut~2_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|clkOut~4_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|clkOut~5_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|clkOut~6_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|clkOut~7_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \Decoder_instanciado|Equal2~0_combout\ : std_logic;
SIGNAL \Decoder_instanciado|Equal2~1_combout\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \Fase4_instanciada|Divisor|s_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Fase4_instanciada|Divisor|clkOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \Decoder_instanciado|ALT_INV_Equal2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\Decoder_instanciado|ALT_INV_Equal2~0_combout\ <= NOT \Decoder_instanciado|Equal2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder_instanciado|ALT_INV_Equal2~0_combout\,
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
	i => GND,
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
	i => \Decoder_instanciado|Equal2~1_combout\,
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
	i => \Decoder_instanciado|ALT_INV_Equal2~0_combout\,
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
	i => \ALT_INV_SW[0]~input_o\,
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
	i => \HEX0~0_combout\,
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
	i => \Decoder_instanciado|ALT_INV_Equal2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: LCCOMB_X82_Y67_N0
\Fase4_instanciada|Divisor|s_counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[0]~32_combout\ = \Fase4_instanciada|Divisor|s_counter\(0) $ (VCC)
-- \Fase4_instanciada|Divisor|s_counter[0]~33\ = CARRY(\Fase4_instanciada|Divisor|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(0),
	datad => VCC,
	combout => \Fase4_instanciada|Divisor|s_counter[0]~32_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[0]~33\);

-- Location: LCCOMB_X82_Y66_N12
\Fase4_instanciada|Divisor|s_counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[22]~76_combout\ = (\Fase4_instanciada|Divisor|s_counter\(22) & (\Fase4_instanciada|Divisor|s_counter[21]~75\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(22) & (!\Fase4_instanciada|Divisor|s_counter[21]~75\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[22]~77\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(22) & !\Fase4_instanciada|Divisor|s_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(22),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[21]~75\,
	combout => \Fase4_instanciada|Divisor|s_counter[22]~76_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[22]~77\);

-- Location: LCCOMB_X82_Y66_N14
\Fase4_instanciada|Divisor|s_counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[23]~78_combout\ = (\Fase4_instanciada|Divisor|s_counter\(23) & (!\Fase4_instanciada|Divisor|s_counter[22]~77\)) # (!\Fase4_instanciada|Divisor|s_counter\(23) & ((\Fase4_instanciada|Divisor|s_counter[22]~77\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[23]~79\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[22]~77\) # (!\Fase4_instanciada|Divisor|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(23),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[22]~77\,
	combout => \Fase4_instanciada|Divisor|s_counter[23]~78_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[23]~79\);

-- Location: FF_X82_Y66_N15
\Fase4_instanciada|Divisor|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[23]~78_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(23));

-- Location: LCCOMB_X82_Y66_N16
\Fase4_instanciada|Divisor|s_counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[24]~80_combout\ = (\Fase4_instanciada|Divisor|s_counter\(24) & (\Fase4_instanciada|Divisor|s_counter[23]~79\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(24) & (!\Fase4_instanciada|Divisor|s_counter[23]~79\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[24]~81\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(24) & !\Fase4_instanciada|Divisor|s_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(24),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[23]~79\,
	combout => \Fase4_instanciada|Divisor|s_counter[24]~80_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[24]~81\);

-- Location: FF_X82_Y66_N17
\Fase4_instanciada|Divisor|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[24]~80_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(24));

-- Location: LCCOMB_X82_Y66_N18
\Fase4_instanciada|Divisor|s_counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[25]~82_combout\ = (\Fase4_instanciada|Divisor|s_counter\(25) & (!\Fase4_instanciada|Divisor|s_counter[24]~81\)) # (!\Fase4_instanciada|Divisor|s_counter\(25) & ((\Fase4_instanciada|Divisor|s_counter[24]~81\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[25]~83\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[24]~81\) # (!\Fase4_instanciada|Divisor|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(25),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[24]~81\,
	combout => \Fase4_instanciada|Divisor|s_counter[25]~82_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[25]~83\);

-- Location: FF_X82_Y66_N19
\Fase4_instanciada|Divisor|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[25]~82_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(25));

-- Location: LCCOMB_X82_Y66_N20
\Fase4_instanciada|Divisor|s_counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[26]~84_combout\ = (\Fase4_instanciada|Divisor|s_counter\(26) & (\Fase4_instanciada|Divisor|s_counter[25]~83\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(26) & (!\Fase4_instanciada|Divisor|s_counter[25]~83\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[26]~85\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(26) & !\Fase4_instanciada|Divisor|s_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(26),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[25]~83\,
	combout => \Fase4_instanciada|Divisor|s_counter[26]~84_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[26]~85\);

-- Location: FF_X82_Y66_N21
\Fase4_instanciada|Divisor|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[26]~84_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(26));

-- Location: LCCOMB_X82_Y66_N22
\Fase4_instanciada|Divisor|s_counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[27]~86_combout\ = (\Fase4_instanciada|Divisor|s_counter\(27) & (!\Fase4_instanciada|Divisor|s_counter[26]~85\)) # (!\Fase4_instanciada|Divisor|s_counter\(27) & ((\Fase4_instanciada|Divisor|s_counter[26]~85\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[27]~87\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[26]~85\) # (!\Fase4_instanciada|Divisor|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(27),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[26]~85\,
	combout => \Fase4_instanciada|Divisor|s_counter[27]~86_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[27]~87\);

-- Location: FF_X82_Y66_N23
\Fase4_instanciada|Divisor|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[27]~86_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(27));

-- Location: LCCOMB_X82_Y66_N24
\Fase4_instanciada|Divisor|s_counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[28]~88_combout\ = (\Fase4_instanciada|Divisor|s_counter\(28) & (\Fase4_instanciada|Divisor|s_counter[27]~87\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(28) & (!\Fase4_instanciada|Divisor|s_counter[27]~87\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[28]~89\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(28) & !\Fase4_instanciada|Divisor|s_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(28),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[27]~87\,
	combout => \Fase4_instanciada|Divisor|s_counter[28]~88_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[28]~89\);

-- Location: FF_X82_Y66_N25
\Fase4_instanciada|Divisor|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[28]~88_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(28));

-- Location: LCCOMB_X82_Y66_N26
\Fase4_instanciada|Divisor|s_counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[29]~90_combout\ = (\Fase4_instanciada|Divisor|s_counter\(29) & (!\Fase4_instanciada|Divisor|s_counter[28]~89\)) # (!\Fase4_instanciada|Divisor|s_counter\(29) & ((\Fase4_instanciada|Divisor|s_counter[28]~89\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[29]~91\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[28]~89\) # (!\Fase4_instanciada|Divisor|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(29),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[28]~89\,
	combout => \Fase4_instanciada|Divisor|s_counter[29]~90_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[29]~91\);

-- Location: FF_X82_Y66_N27
\Fase4_instanciada|Divisor|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[29]~90_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(29));

-- Location: LCCOMB_X82_Y66_N28
\Fase4_instanciada|Divisor|s_counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[30]~92_combout\ = (\Fase4_instanciada|Divisor|s_counter\(30) & (\Fase4_instanciada|Divisor|s_counter[29]~91\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(30) & (!\Fase4_instanciada|Divisor|s_counter[29]~91\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[30]~93\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(30) & !\Fase4_instanciada|Divisor|s_counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(30),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[29]~91\,
	combout => \Fase4_instanciada|Divisor|s_counter[30]~92_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[30]~93\);

-- Location: FF_X82_Y66_N29
\Fase4_instanciada|Divisor|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[30]~92_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(30));

-- Location: LCCOMB_X82_Y66_N30
\Fase4_instanciada|Divisor|s_counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[31]~94_combout\ = \Fase4_instanciada|Divisor|s_counter\(31) $ (\Fase4_instanciada|Divisor|s_counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(31),
	cin => \Fase4_instanciada|Divisor|s_counter[30]~93\,
	combout => \Fase4_instanciada|Divisor|s_counter[31]~94_combout\);

-- Location: FF_X82_Y66_N31
\Fase4_instanciada|Divisor|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[31]~94_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(31));

-- Location: LCCOMB_X83_Y66_N0
\Fase4_instanciada|Divisor|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|LessThan0~0_combout\ = (!\Fase4_instanciada|Divisor|s_counter\(27) & (!\Fase4_instanciada|Divisor|s_counter\(26) & (!\Fase4_instanciada|Divisor|s_counter\(25) & !\Fase4_instanciada|Divisor|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(27),
	datab => \Fase4_instanciada|Divisor|s_counter\(26),
	datac => \Fase4_instanciada|Divisor|s_counter\(25),
	datad => \Fase4_instanciada|Divisor|s_counter\(28),
	combout => \Fase4_instanciada|Divisor|LessThan0~0_combout\);

-- Location: LCCOMB_X83_Y67_N18
\Fase4_instanciada|Divisor|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|LessThan0~1_combout\ = (!\Fase4_instanciada|Divisor|s_counter\(31) & (!\Fase4_instanciada|Divisor|s_counter\(29) & (!\Fase4_instanciada|Divisor|s_counter\(30) & \Fase4_instanciada|Divisor|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(31),
	datab => \Fase4_instanciada|Divisor|s_counter\(29),
	datac => \Fase4_instanciada|Divisor|s_counter\(30),
	datad => \Fase4_instanciada|Divisor|LessThan0~0_combout\,
	combout => \Fase4_instanciada|Divisor|LessThan0~1_combout\);

-- Location: LCCOMB_X83_Y67_N0
\Fase4_instanciada|Divisor|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|clkOut~0_combout\ = (\Fase4_instanciada|Divisor|s_counter\(20) & (\Fase4_instanciada|Divisor|s_counter\(19) & (\Fase4_instanciada|Divisor|s_counter\(21) & \Fase4_instanciada|Divisor|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(20),
	datab => \Fase4_instanciada|Divisor|s_counter\(19),
	datac => \Fase4_instanciada|Divisor|s_counter\(21),
	datad => \Fase4_instanciada|Divisor|s_counter\(18),
	combout => \Fase4_instanciada|Divisor|clkOut~0_combout\);

-- Location: LCCOMB_X83_Y67_N22
\Fase4_instanciada|Divisor|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|LessThan0~2_combout\ = (((!\Fase4_instanciada|Divisor|s_counter\(17) & !\Fase4_instanciada|Divisor|s_counter\(16))) # (!\Fase4_instanciada|Divisor|clkOut~0_combout\)) # (!\Fase4_instanciada|Divisor|s_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(17),
	datab => \Fase4_instanciada|Divisor|s_counter\(22),
	datac => \Fase4_instanciada|Divisor|s_counter\(16),
	datad => \Fase4_instanciada|Divisor|clkOut~0_combout\,
	combout => \Fase4_instanciada|Divisor|LessThan0~2_combout\);

-- Location: LCCOMB_X83_Y67_N8
\Fase4_instanciada|Divisor|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|LessThan0~3_combout\ = (((!\Fase4_instanciada|Divisor|s_counter\(11)) # (!\Fase4_instanciada|Divisor|s_counter\(12))) # (!\Fase4_instanciada|Divisor|s_counter\(14))) # (!\Fase4_instanciada|Divisor|s_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(13),
	datab => \Fase4_instanciada|Divisor|s_counter\(14),
	datac => \Fase4_instanciada|Divisor|s_counter\(12),
	datad => \Fase4_instanciada|Divisor|s_counter\(11),
	combout => \Fase4_instanciada|Divisor|LessThan0~3_combout\);

-- Location: LCCOMB_X83_Y67_N14
\Fase4_instanciada|Divisor|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|LessThan0~4_combout\ = (!\Fase4_instanciada|Divisor|s_counter\(6) & (!\Fase4_instanciada|Divisor|s_counter\(9) & (!\Fase4_instanciada|Divisor|s_counter\(8) & !\Fase4_instanciada|Divisor|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(6),
	datab => \Fase4_instanciada|Divisor|s_counter\(9),
	datac => \Fase4_instanciada|Divisor|s_counter\(8),
	datad => \Fase4_instanciada|Divisor|s_counter\(7),
	combout => \Fase4_instanciada|Divisor|LessThan0~4_combout\);

-- Location: LCCOMB_X83_Y67_N12
\Fase4_instanciada|Divisor|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|clkOut~1_combout\ = (\Fase4_instanciada|Divisor|s_counter\(0) & (\Fase4_instanciada|Divisor|s_counter\(3) & (\Fase4_instanciada|Divisor|s_counter\(2) & \Fase4_instanciada|Divisor|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(0),
	datab => \Fase4_instanciada|Divisor|s_counter\(3),
	datac => \Fase4_instanciada|Divisor|s_counter\(2),
	datad => \Fase4_instanciada|Divisor|s_counter\(1),
	combout => \Fase4_instanciada|Divisor|clkOut~1_combout\);

-- Location: LCCOMB_X83_Y67_N6
\Fase4_instanciada|Divisor|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|LessThan0~5_combout\ = (\Fase4_instanciada|Divisor|LessThan0~4_combout\ & (((!\Fase4_instanciada|Divisor|clkOut~1_combout\) # (!\Fase4_instanciada|Divisor|s_counter\(4))) # (!\Fase4_instanciada|Divisor|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(5),
	datab => \Fase4_instanciada|Divisor|s_counter\(4),
	datac => \Fase4_instanciada|Divisor|LessThan0~4_combout\,
	datad => \Fase4_instanciada|Divisor|clkOut~1_combout\,
	combout => \Fase4_instanciada|Divisor|LessThan0~5_combout\);

-- Location: LCCOMB_X83_Y67_N16
\Fase4_instanciada|Divisor|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|LessThan0~6_combout\ = (\Fase4_instanciada|Divisor|LessThan0~3_combout\) # ((!\Fase4_instanciada|Divisor|s_counter\(10) & \Fase4_instanciada|Divisor|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(10),
	datac => \Fase4_instanciada|Divisor|LessThan0~3_combout\,
	datad => \Fase4_instanciada|Divisor|LessThan0~5_combout\,
	combout => \Fase4_instanciada|Divisor|LessThan0~6_combout\);

-- Location: LCCOMB_X83_Y67_N10
\Fase4_instanciada|Divisor|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|LessThan0~7_combout\ = (\Fase4_instanciada|Divisor|LessThan0~2_combout\) # ((!\Fase4_instanciada|Divisor|s_counter\(17) & (!\Fase4_instanciada|Divisor|s_counter\(15) & \Fase4_instanciada|Divisor|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(17),
	datab => \Fase4_instanciada|Divisor|s_counter\(15),
	datac => \Fase4_instanciada|Divisor|LessThan0~2_combout\,
	datad => \Fase4_instanciada|Divisor|LessThan0~6_combout\,
	combout => \Fase4_instanciada|Divisor|LessThan0~7_combout\);

-- Location: LCCOMB_X83_Y67_N28
\Fase4_instanciada|Divisor|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|LessThan0~8_combout\ = ((\Fase4_instanciada|Divisor|s_counter\(24) & ((\Fase4_instanciada|Divisor|s_counter\(23)) # (!\Fase4_instanciada|Divisor|LessThan0~7_combout\)))) # (!\Fase4_instanciada|Divisor|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(24),
	datab => \Fase4_instanciada|Divisor|s_counter\(23),
	datac => \Fase4_instanciada|Divisor|LessThan0~1_combout\,
	datad => \Fase4_instanciada|Divisor|LessThan0~7_combout\,
	combout => \Fase4_instanciada|Divisor|LessThan0~8_combout\);

-- Location: FF_X82_Y67_N1
\Fase4_instanciada|Divisor|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[0]~32_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(0));

-- Location: LCCOMB_X82_Y67_N2
\Fase4_instanciada|Divisor|s_counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[1]~34_combout\ = (\Fase4_instanciada|Divisor|s_counter\(1) & (!\Fase4_instanciada|Divisor|s_counter[0]~33\)) # (!\Fase4_instanciada|Divisor|s_counter\(1) & ((\Fase4_instanciada|Divisor|s_counter[0]~33\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[1]~35\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[0]~33\) # (!\Fase4_instanciada|Divisor|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(1),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[0]~33\,
	combout => \Fase4_instanciada|Divisor|s_counter[1]~34_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[1]~35\);

-- Location: FF_X82_Y67_N3
\Fase4_instanciada|Divisor|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[1]~34_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(1));

-- Location: LCCOMB_X82_Y67_N4
\Fase4_instanciada|Divisor|s_counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[2]~36_combout\ = (\Fase4_instanciada|Divisor|s_counter\(2) & (\Fase4_instanciada|Divisor|s_counter[1]~35\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(2) & (!\Fase4_instanciada|Divisor|s_counter[1]~35\ & VCC))
-- \Fase4_instanciada|Divisor|s_counter[2]~37\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(2) & !\Fase4_instanciada|Divisor|s_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(2),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[1]~35\,
	combout => \Fase4_instanciada|Divisor|s_counter[2]~36_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[2]~37\);

-- Location: FF_X82_Y67_N5
\Fase4_instanciada|Divisor|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[2]~36_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(2));

-- Location: LCCOMB_X82_Y67_N6
\Fase4_instanciada|Divisor|s_counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[3]~38_combout\ = (\Fase4_instanciada|Divisor|s_counter\(3) & (!\Fase4_instanciada|Divisor|s_counter[2]~37\)) # (!\Fase4_instanciada|Divisor|s_counter\(3) & ((\Fase4_instanciada|Divisor|s_counter[2]~37\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[3]~39\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[2]~37\) # (!\Fase4_instanciada|Divisor|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(3),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[2]~37\,
	combout => \Fase4_instanciada|Divisor|s_counter[3]~38_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[3]~39\);

-- Location: FF_X82_Y67_N7
\Fase4_instanciada|Divisor|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[3]~38_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(3));

-- Location: LCCOMB_X82_Y67_N8
\Fase4_instanciada|Divisor|s_counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[4]~40_combout\ = (\Fase4_instanciada|Divisor|s_counter\(4) & (\Fase4_instanciada|Divisor|s_counter[3]~39\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(4) & (!\Fase4_instanciada|Divisor|s_counter[3]~39\ & VCC))
-- \Fase4_instanciada|Divisor|s_counter[4]~41\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(4) & !\Fase4_instanciada|Divisor|s_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(4),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[3]~39\,
	combout => \Fase4_instanciada|Divisor|s_counter[4]~40_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[4]~41\);

-- Location: FF_X82_Y67_N9
\Fase4_instanciada|Divisor|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[4]~40_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(4));

-- Location: LCCOMB_X82_Y67_N10
\Fase4_instanciada|Divisor|s_counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[5]~42_combout\ = (\Fase4_instanciada|Divisor|s_counter\(5) & (!\Fase4_instanciada|Divisor|s_counter[4]~41\)) # (!\Fase4_instanciada|Divisor|s_counter\(5) & ((\Fase4_instanciada|Divisor|s_counter[4]~41\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[5]~43\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[4]~41\) # (!\Fase4_instanciada|Divisor|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(5),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[4]~41\,
	combout => \Fase4_instanciada|Divisor|s_counter[5]~42_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[5]~43\);

-- Location: FF_X82_Y67_N11
\Fase4_instanciada|Divisor|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[5]~42_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(5));

-- Location: LCCOMB_X82_Y67_N12
\Fase4_instanciada|Divisor|s_counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[6]~44_combout\ = (\Fase4_instanciada|Divisor|s_counter\(6) & (\Fase4_instanciada|Divisor|s_counter[5]~43\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(6) & (!\Fase4_instanciada|Divisor|s_counter[5]~43\ & VCC))
-- \Fase4_instanciada|Divisor|s_counter[6]~45\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(6) & !\Fase4_instanciada|Divisor|s_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(6),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[5]~43\,
	combout => \Fase4_instanciada|Divisor|s_counter[6]~44_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[6]~45\);

-- Location: FF_X82_Y67_N13
\Fase4_instanciada|Divisor|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[6]~44_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(6));

-- Location: LCCOMB_X82_Y67_N14
\Fase4_instanciada|Divisor|s_counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[7]~46_combout\ = (\Fase4_instanciada|Divisor|s_counter\(7) & (!\Fase4_instanciada|Divisor|s_counter[6]~45\)) # (!\Fase4_instanciada|Divisor|s_counter\(7) & ((\Fase4_instanciada|Divisor|s_counter[6]~45\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[7]~47\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[6]~45\) # (!\Fase4_instanciada|Divisor|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(7),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[6]~45\,
	combout => \Fase4_instanciada|Divisor|s_counter[7]~46_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[7]~47\);

-- Location: FF_X82_Y67_N15
\Fase4_instanciada|Divisor|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[7]~46_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(7));

-- Location: LCCOMB_X82_Y67_N16
\Fase4_instanciada|Divisor|s_counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[8]~48_combout\ = (\Fase4_instanciada|Divisor|s_counter\(8) & (\Fase4_instanciada|Divisor|s_counter[7]~47\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(8) & (!\Fase4_instanciada|Divisor|s_counter[7]~47\ & VCC))
-- \Fase4_instanciada|Divisor|s_counter[8]~49\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(8) & !\Fase4_instanciada|Divisor|s_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(8),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[7]~47\,
	combout => \Fase4_instanciada|Divisor|s_counter[8]~48_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[8]~49\);

-- Location: FF_X82_Y67_N17
\Fase4_instanciada|Divisor|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[8]~48_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(8));

-- Location: LCCOMB_X82_Y67_N18
\Fase4_instanciada|Divisor|s_counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[9]~50_combout\ = (\Fase4_instanciada|Divisor|s_counter\(9) & (!\Fase4_instanciada|Divisor|s_counter[8]~49\)) # (!\Fase4_instanciada|Divisor|s_counter\(9) & ((\Fase4_instanciada|Divisor|s_counter[8]~49\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[9]~51\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[8]~49\) # (!\Fase4_instanciada|Divisor|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(9),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[8]~49\,
	combout => \Fase4_instanciada|Divisor|s_counter[9]~50_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[9]~51\);

-- Location: FF_X82_Y67_N19
\Fase4_instanciada|Divisor|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[9]~50_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(9));

-- Location: LCCOMB_X82_Y67_N20
\Fase4_instanciada|Divisor|s_counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[10]~52_combout\ = (\Fase4_instanciada|Divisor|s_counter\(10) & (\Fase4_instanciada|Divisor|s_counter[9]~51\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(10) & (!\Fase4_instanciada|Divisor|s_counter[9]~51\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[10]~53\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(10) & !\Fase4_instanciada|Divisor|s_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(10),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[9]~51\,
	combout => \Fase4_instanciada|Divisor|s_counter[10]~52_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[10]~53\);

-- Location: FF_X82_Y67_N21
\Fase4_instanciada|Divisor|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[10]~52_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(10));

-- Location: LCCOMB_X82_Y67_N22
\Fase4_instanciada|Divisor|s_counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[11]~54_combout\ = (\Fase4_instanciada|Divisor|s_counter\(11) & (!\Fase4_instanciada|Divisor|s_counter[10]~53\)) # (!\Fase4_instanciada|Divisor|s_counter\(11) & ((\Fase4_instanciada|Divisor|s_counter[10]~53\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[11]~55\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[10]~53\) # (!\Fase4_instanciada|Divisor|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(11),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[10]~53\,
	combout => \Fase4_instanciada|Divisor|s_counter[11]~54_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[11]~55\);

-- Location: FF_X82_Y67_N23
\Fase4_instanciada|Divisor|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[11]~54_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(11));

-- Location: LCCOMB_X82_Y67_N24
\Fase4_instanciada|Divisor|s_counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[12]~56_combout\ = (\Fase4_instanciada|Divisor|s_counter\(12) & (\Fase4_instanciada|Divisor|s_counter[11]~55\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(12) & (!\Fase4_instanciada|Divisor|s_counter[11]~55\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[12]~57\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(12) & !\Fase4_instanciada|Divisor|s_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(12),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[11]~55\,
	combout => \Fase4_instanciada|Divisor|s_counter[12]~56_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[12]~57\);

-- Location: FF_X82_Y67_N25
\Fase4_instanciada|Divisor|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[12]~56_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(12));

-- Location: LCCOMB_X82_Y67_N26
\Fase4_instanciada|Divisor|s_counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[13]~58_combout\ = (\Fase4_instanciada|Divisor|s_counter\(13) & (!\Fase4_instanciada|Divisor|s_counter[12]~57\)) # (!\Fase4_instanciada|Divisor|s_counter\(13) & ((\Fase4_instanciada|Divisor|s_counter[12]~57\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[13]~59\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[12]~57\) # (!\Fase4_instanciada|Divisor|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(13),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[12]~57\,
	combout => \Fase4_instanciada|Divisor|s_counter[13]~58_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[13]~59\);

-- Location: FF_X82_Y67_N27
\Fase4_instanciada|Divisor|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[13]~58_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(13));

-- Location: LCCOMB_X82_Y67_N28
\Fase4_instanciada|Divisor|s_counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[14]~60_combout\ = (\Fase4_instanciada|Divisor|s_counter\(14) & (\Fase4_instanciada|Divisor|s_counter[13]~59\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(14) & (!\Fase4_instanciada|Divisor|s_counter[13]~59\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[14]~61\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(14) & !\Fase4_instanciada|Divisor|s_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(14),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[13]~59\,
	combout => \Fase4_instanciada|Divisor|s_counter[14]~60_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[14]~61\);

-- Location: FF_X82_Y67_N29
\Fase4_instanciada|Divisor|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[14]~60_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(14));

-- Location: LCCOMB_X82_Y67_N30
\Fase4_instanciada|Divisor|s_counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[15]~62_combout\ = (\Fase4_instanciada|Divisor|s_counter\(15) & (!\Fase4_instanciada|Divisor|s_counter[14]~61\)) # (!\Fase4_instanciada|Divisor|s_counter\(15) & ((\Fase4_instanciada|Divisor|s_counter[14]~61\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[15]~63\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[14]~61\) # (!\Fase4_instanciada|Divisor|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(15),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[14]~61\,
	combout => \Fase4_instanciada|Divisor|s_counter[15]~62_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[15]~63\);

-- Location: FF_X82_Y67_N31
\Fase4_instanciada|Divisor|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[15]~62_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(15));

-- Location: LCCOMB_X82_Y66_N0
\Fase4_instanciada|Divisor|s_counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[16]~64_combout\ = (\Fase4_instanciada|Divisor|s_counter\(16) & (\Fase4_instanciada|Divisor|s_counter[15]~63\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(16) & (!\Fase4_instanciada|Divisor|s_counter[15]~63\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[16]~65\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(16) & !\Fase4_instanciada|Divisor|s_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(16),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[15]~63\,
	combout => \Fase4_instanciada|Divisor|s_counter[16]~64_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[16]~65\);

-- Location: FF_X82_Y66_N1
\Fase4_instanciada|Divisor|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[16]~64_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(16));

-- Location: LCCOMB_X82_Y66_N2
\Fase4_instanciada|Divisor|s_counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[17]~66_combout\ = (\Fase4_instanciada|Divisor|s_counter\(17) & (!\Fase4_instanciada|Divisor|s_counter[16]~65\)) # (!\Fase4_instanciada|Divisor|s_counter\(17) & ((\Fase4_instanciada|Divisor|s_counter[16]~65\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[17]~67\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[16]~65\) # (!\Fase4_instanciada|Divisor|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(17),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[16]~65\,
	combout => \Fase4_instanciada|Divisor|s_counter[17]~66_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[17]~67\);

-- Location: FF_X82_Y66_N3
\Fase4_instanciada|Divisor|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[17]~66_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(17));

-- Location: LCCOMB_X82_Y66_N4
\Fase4_instanciada|Divisor|s_counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[18]~68_combout\ = (\Fase4_instanciada|Divisor|s_counter\(18) & (\Fase4_instanciada|Divisor|s_counter[17]~67\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(18) & (!\Fase4_instanciada|Divisor|s_counter[17]~67\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[18]~69\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(18) & !\Fase4_instanciada|Divisor|s_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(18),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[17]~67\,
	combout => \Fase4_instanciada|Divisor|s_counter[18]~68_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[18]~69\);

-- Location: FF_X82_Y66_N5
\Fase4_instanciada|Divisor|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[18]~68_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(18));

-- Location: LCCOMB_X82_Y66_N6
\Fase4_instanciada|Divisor|s_counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[19]~70_combout\ = (\Fase4_instanciada|Divisor|s_counter\(19) & (!\Fase4_instanciada|Divisor|s_counter[18]~69\)) # (!\Fase4_instanciada|Divisor|s_counter\(19) & ((\Fase4_instanciada|Divisor|s_counter[18]~69\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[19]~71\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[18]~69\) # (!\Fase4_instanciada|Divisor|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(19),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[18]~69\,
	combout => \Fase4_instanciada|Divisor|s_counter[19]~70_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[19]~71\);

-- Location: FF_X82_Y66_N7
\Fase4_instanciada|Divisor|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[19]~70_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(19));

-- Location: LCCOMB_X82_Y66_N8
\Fase4_instanciada|Divisor|s_counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[20]~72_combout\ = (\Fase4_instanciada|Divisor|s_counter\(20) & (\Fase4_instanciada|Divisor|s_counter[19]~71\ $ (GND))) # (!\Fase4_instanciada|Divisor|s_counter\(20) & (!\Fase4_instanciada|Divisor|s_counter[19]~71\ & 
-- VCC))
-- \Fase4_instanciada|Divisor|s_counter[20]~73\ = CARRY((\Fase4_instanciada|Divisor|s_counter\(20) & !\Fase4_instanciada|Divisor|s_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(20),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[19]~71\,
	combout => \Fase4_instanciada|Divisor|s_counter[20]~72_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[20]~73\);

-- Location: FF_X82_Y66_N9
\Fase4_instanciada|Divisor|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[20]~72_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(20));

-- Location: LCCOMB_X82_Y66_N10
\Fase4_instanciada|Divisor|s_counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|s_counter[21]~74_combout\ = (\Fase4_instanciada|Divisor|s_counter\(21) & (!\Fase4_instanciada|Divisor|s_counter[20]~73\)) # (!\Fase4_instanciada|Divisor|s_counter\(21) & ((\Fase4_instanciada|Divisor|s_counter[20]~73\) # (GND)))
-- \Fase4_instanciada|Divisor|s_counter[21]~75\ = CARRY((!\Fase4_instanciada|Divisor|s_counter[20]~73\) # (!\Fase4_instanciada|Divisor|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(21),
	datad => VCC,
	cin => \Fase4_instanciada|Divisor|s_counter[20]~73\,
	combout => \Fase4_instanciada|Divisor|s_counter[21]~74_combout\,
	cout => \Fase4_instanciada|Divisor|s_counter[21]~75\);

-- Location: FF_X82_Y66_N11
\Fase4_instanciada|Divisor|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[21]~74_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(21));

-- Location: FF_X82_Y66_N13
\Fase4_instanciada|Divisor|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|s_counter[22]~76_combout\,
	sclr => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|s_counter\(22));

-- Location: LCCOMB_X83_Y67_N4
\Fase4_instanciada|Divisor|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|clkOut~3_combout\ = (\Fase4_instanciada|Divisor|s_counter\(13) & (\Fase4_instanciada|Divisor|s_counter\(10) & (\Fase4_instanciada|Divisor|s_counter\(12) & \Fase4_instanciada|Divisor|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(13),
	datab => \Fase4_instanciada|Divisor|s_counter\(10),
	datac => \Fase4_instanciada|Divisor|s_counter\(12),
	datad => \Fase4_instanciada|Divisor|s_counter\(11),
	combout => \Fase4_instanciada|Divisor|clkOut~3_combout\);

-- Location: LCCOMB_X83_Y67_N2
\Fase4_instanciada|Divisor|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|clkOut~2_combout\ = (\Fase4_instanciada|Divisor|s_counter\(5)) # (((\Fase4_instanciada|Divisor|clkOut~1_combout\ & \Fase4_instanciada|Divisor|s_counter\(4))) # (!\Fase4_instanciada|Divisor|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(5),
	datab => \Fase4_instanciada|Divisor|LessThan0~4_combout\,
	datac => \Fase4_instanciada|Divisor|clkOut~1_combout\,
	datad => \Fase4_instanciada|Divisor|s_counter\(4),
	combout => \Fase4_instanciada|Divisor|clkOut~2_combout\);

-- Location: LCCOMB_X83_Y67_N30
\Fase4_instanciada|Divisor|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|clkOut~4_combout\ = (\Fase4_instanciada|Divisor|s_counter\(15) & ((\Fase4_instanciada|Divisor|s_counter\(14)) # ((\Fase4_instanciada|Divisor|clkOut~3_combout\ & \Fase4_instanciada|Divisor|clkOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(14),
	datab => \Fase4_instanciada|Divisor|s_counter\(15),
	datac => \Fase4_instanciada|Divisor|clkOut~3_combout\,
	datad => \Fase4_instanciada|Divisor|clkOut~2_combout\,
	combout => \Fase4_instanciada|Divisor|clkOut~4_combout\);

-- Location: LCCOMB_X83_Y67_N20
\Fase4_instanciada|Divisor|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|clkOut~5_combout\ = (\Fase4_instanciada|Divisor|s_counter\(17) & (\Fase4_instanciada|Divisor|clkOut~0_combout\ & ((\Fase4_instanciada|Divisor|s_counter\(16)) # (\Fase4_instanciada|Divisor|clkOut~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|s_counter\(17),
	datab => \Fase4_instanciada|Divisor|s_counter\(16),
	datac => \Fase4_instanciada|Divisor|clkOut~4_combout\,
	datad => \Fase4_instanciada|Divisor|clkOut~0_combout\,
	combout => \Fase4_instanciada|Divisor|clkOut~5_combout\);

-- Location: LCCOMB_X83_Y67_N26
\Fase4_instanciada|Divisor|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|clkOut~6_combout\ = (\Fase4_instanciada|Divisor|s_counter\(23) & ((\Fase4_instanciada|Divisor|s_counter\(22)) # (\Fase4_instanciada|Divisor|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fase4_instanciada|Divisor|s_counter\(22),
	datac => \Fase4_instanciada|Divisor|s_counter\(23),
	datad => \Fase4_instanciada|Divisor|clkOut~5_combout\,
	combout => \Fase4_instanciada|Divisor|clkOut~6_combout\);

-- Location: LCCOMB_X83_Y67_N24
\Fase4_instanciada|Divisor|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fase4_instanciada|Divisor|clkOut~7_combout\ = (!\Fase4_instanciada|Divisor|LessThan0~8_combout\ & ((\Fase4_instanciada|Divisor|clkOut~6_combout\) # ((\Fase4_instanciada|Divisor|clkOut\(0)) # (\Fase4_instanciada|Divisor|s_counter\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|clkOut~6_combout\,
	datab => \Fase4_instanciada|Divisor|LessThan0~8_combout\,
	datac => \Fase4_instanciada|Divisor|clkOut\(0),
	datad => \Fase4_instanciada|Divisor|s_counter\(24),
	combout => \Fase4_instanciada|Divisor|clkOut~7_combout\);

-- Location: FF_X83_Y67_N25
\Fase4_instanciada|Divisor|clkOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Fase4_instanciada|Divisor|clkOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fase4_instanciada|Divisor|clkOut\(0));

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

-- Location: LCCOMB_X107_Y71_N20
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (!\SW[1]~input_o\ & ((\Fase4_instanciada|Divisor|clkOut\(0)) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|clkOut\(0),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X107_Y71_N2
\LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (!\SW[0]~input_o\ & ((\Fase4_instanciada|Divisor|clkOut\(0)) # (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fase4_instanciada|Divisor|clkOut\(0),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \LEDG~0_combout\);

-- Location: LCCOMB_X107_Y71_N8
\Decoder_instanciado|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_instanciado|Equal2~0_combout\ = (\SW[0]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Decoder_instanciado|Equal2~0_combout\);

-- Location: LCCOMB_X107_Y71_N6
\Decoder_instanciado|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder_instanciado|Equal2~1_combout\ = (\SW[0]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Decoder_instanciado|Equal2~1_combout\);

-- Location: LCCOMB_X107_Y71_N12
\HEX0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = (!\SW[1]~input_o\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \HEX0~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


