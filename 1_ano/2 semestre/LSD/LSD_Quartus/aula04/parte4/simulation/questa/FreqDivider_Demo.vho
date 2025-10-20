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

-- DATE "04/02/2024 10:25:45"

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

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Divisor|s_counter[0]~32_combout\ : std_logic;
SIGNAL \Divisor|s_counter[0]~33\ : std_logic;
SIGNAL \Divisor|s_counter[1]~34_combout\ : std_logic;
SIGNAL \Divisor|s_counter[1]~35\ : std_logic;
SIGNAL \Divisor|s_counter[2]~36_combout\ : std_logic;
SIGNAL \Divisor|s_counter[2]~37\ : std_logic;
SIGNAL \Divisor|s_counter[3]~38_combout\ : std_logic;
SIGNAL \Divisor|s_counter[3]~39\ : std_logic;
SIGNAL \Divisor|s_counter[4]~40_combout\ : std_logic;
SIGNAL \Divisor|s_counter[4]~41\ : std_logic;
SIGNAL \Divisor|s_counter[5]~42_combout\ : std_logic;
SIGNAL \Divisor|s_counter[5]~43\ : std_logic;
SIGNAL \Divisor|s_counter[6]~44_combout\ : std_logic;
SIGNAL \Divisor|s_counter[6]~45\ : std_logic;
SIGNAL \Divisor|s_counter[7]~46_combout\ : std_logic;
SIGNAL \Divisor|s_counter[7]~47\ : std_logic;
SIGNAL \Divisor|s_counter[8]~48_combout\ : std_logic;
SIGNAL \Divisor|s_counter[8]~49\ : std_logic;
SIGNAL \Divisor|s_counter[9]~50_combout\ : std_logic;
SIGNAL \Divisor|s_counter[9]~51\ : std_logic;
SIGNAL \Divisor|s_counter[10]~52_combout\ : std_logic;
SIGNAL \Divisor|s_counter[10]~53\ : std_logic;
SIGNAL \Divisor|s_counter[11]~54_combout\ : std_logic;
SIGNAL \Divisor|s_counter[11]~55\ : std_logic;
SIGNAL \Divisor|s_counter[12]~56_combout\ : std_logic;
SIGNAL \Divisor|s_counter[12]~57\ : std_logic;
SIGNAL \Divisor|s_counter[13]~58_combout\ : std_logic;
SIGNAL \Divisor|s_counter[13]~59\ : std_logic;
SIGNAL \Divisor|s_counter[14]~60_combout\ : std_logic;
SIGNAL \Divisor|s_counter[14]~61\ : std_logic;
SIGNAL \Divisor|s_counter[15]~62_combout\ : std_logic;
SIGNAL \Divisor|s_counter[15]~63\ : std_logic;
SIGNAL \Divisor|s_counter[16]~64_combout\ : std_logic;
SIGNAL \Divisor|s_counter[16]~65\ : std_logic;
SIGNAL \Divisor|s_counter[17]~66_combout\ : std_logic;
SIGNAL \Divisor|s_counter[17]~67\ : std_logic;
SIGNAL \Divisor|s_counter[18]~68_combout\ : std_logic;
SIGNAL \Divisor|s_counter[18]~69\ : std_logic;
SIGNAL \Divisor|s_counter[19]~70_combout\ : std_logic;
SIGNAL \Divisor|s_counter[19]~71\ : std_logic;
SIGNAL \Divisor|s_counter[20]~72_combout\ : std_logic;
SIGNAL \Divisor|s_counter[20]~73\ : std_logic;
SIGNAL \Divisor|s_counter[21]~74_combout\ : std_logic;
SIGNAL \Divisor|s_counter[21]~75\ : std_logic;
SIGNAL \Divisor|s_counter[22]~76_combout\ : std_logic;
SIGNAL \Divisor|s_counter[22]~77\ : std_logic;
SIGNAL \Divisor|s_counter[23]~78_combout\ : std_logic;
SIGNAL \Divisor|s_counter[23]~79\ : std_logic;
SIGNAL \Divisor|s_counter[24]~80_combout\ : std_logic;
SIGNAL \Divisor|s_counter[24]~81\ : std_logic;
SIGNAL \Divisor|s_counter[25]~82_combout\ : std_logic;
SIGNAL \Divisor|s_counter[25]~83\ : std_logic;
SIGNAL \Divisor|s_counter[26]~84_combout\ : std_logic;
SIGNAL \Divisor|s_counter[26]~85\ : std_logic;
SIGNAL \Divisor|s_counter[27]~86_combout\ : std_logic;
SIGNAL \Divisor|s_counter[27]~87\ : std_logic;
SIGNAL \Divisor|s_counter[28]~88_combout\ : std_logic;
SIGNAL \Divisor|s_counter[28]~89\ : std_logic;
SIGNAL \Divisor|s_counter[29]~90_combout\ : std_logic;
SIGNAL \Divisor|s_counter[29]~91\ : std_logic;
SIGNAL \Divisor|s_counter[30]~92_combout\ : std_logic;
SIGNAL \Divisor|s_counter[30]~93\ : std_logic;
SIGNAL \Divisor|s_counter[31]~94_combout\ : std_logic;
SIGNAL \Divisor|LessThan0~0_combout\ : std_logic;
SIGNAL \Divisor|LessThan0~1_combout\ : std_logic;
SIGNAL \Divisor|LessThan0~3_combout\ : std_logic;
SIGNAL \Divisor|clkOut~1_combout\ : std_logic;
SIGNAL \Divisor|LessThan0~4_combout\ : std_logic;
SIGNAL \Divisor|LessThan0~5_combout\ : std_logic;
SIGNAL \Divisor|LessThan0~6_combout\ : std_logic;
SIGNAL \Divisor|clkOut~0_combout\ : std_logic;
SIGNAL \Divisor|LessThan0~2_combout\ : std_logic;
SIGNAL \Divisor|LessThan0~7_combout\ : std_logic;
SIGNAL \Divisor|LessThan0~8_combout\ : std_logic;
SIGNAL \Divisor|clkOut~3_combout\ : std_logic;
SIGNAL \Divisor|clkOut~2_combout\ : std_logic;
SIGNAL \Divisor|clkOut~4_combout\ : std_logic;
SIGNAL \Divisor|clkOut~5_combout\ : std_logic;
SIGNAL \Divisor|clkOut~6_combout\ : std_logic;
SIGNAL \Divisor|clkOut~7_combout\ : std_logic;
SIGNAL \Divisor|clkOut~q\ : std_logic;
SIGNAL \Divisor|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
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
	i => \Divisor|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X80_Y67_N0
\Divisor|s_counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[0]~32_combout\ = \Divisor|s_counter\(0) $ (VCC)
-- \Divisor|s_counter[0]~33\ = CARRY(\Divisor|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(0),
	datad => VCC,
	combout => \Divisor|s_counter[0]~32_combout\,
	cout => \Divisor|s_counter[0]~33\);

-- Location: FF_X80_Y67_N1
\Divisor|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[0]~32_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(0));

-- Location: LCCOMB_X80_Y67_N2
\Divisor|s_counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[1]~34_combout\ = (\Divisor|s_counter\(1) & (!\Divisor|s_counter[0]~33\)) # (!\Divisor|s_counter\(1) & ((\Divisor|s_counter[0]~33\) # (GND)))
-- \Divisor|s_counter[1]~35\ = CARRY((!\Divisor|s_counter[0]~33\) # (!\Divisor|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(1),
	datad => VCC,
	cin => \Divisor|s_counter[0]~33\,
	combout => \Divisor|s_counter[1]~34_combout\,
	cout => \Divisor|s_counter[1]~35\);

-- Location: FF_X80_Y67_N3
\Divisor|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[1]~34_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(1));

-- Location: LCCOMB_X80_Y67_N4
\Divisor|s_counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[2]~36_combout\ = (\Divisor|s_counter\(2) & (\Divisor|s_counter[1]~35\ $ (GND))) # (!\Divisor|s_counter\(2) & (!\Divisor|s_counter[1]~35\ & VCC))
-- \Divisor|s_counter[2]~37\ = CARRY((\Divisor|s_counter\(2) & !\Divisor|s_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(2),
	datad => VCC,
	cin => \Divisor|s_counter[1]~35\,
	combout => \Divisor|s_counter[2]~36_combout\,
	cout => \Divisor|s_counter[2]~37\);

-- Location: FF_X80_Y67_N5
\Divisor|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[2]~36_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(2));

-- Location: LCCOMB_X80_Y67_N6
\Divisor|s_counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[3]~38_combout\ = (\Divisor|s_counter\(3) & (!\Divisor|s_counter[2]~37\)) # (!\Divisor|s_counter\(3) & ((\Divisor|s_counter[2]~37\) # (GND)))
-- \Divisor|s_counter[3]~39\ = CARRY((!\Divisor|s_counter[2]~37\) # (!\Divisor|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(3),
	datad => VCC,
	cin => \Divisor|s_counter[2]~37\,
	combout => \Divisor|s_counter[3]~38_combout\,
	cout => \Divisor|s_counter[3]~39\);

-- Location: FF_X80_Y67_N7
\Divisor|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[3]~38_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(3));

-- Location: LCCOMB_X80_Y67_N8
\Divisor|s_counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[4]~40_combout\ = (\Divisor|s_counter\(4) & (\Divisor|s_counter[3]~39\ $ (GND))) # (!\Divisor|s_counter\(4) & (!\Divisor|s_counter[3]~39\ & VCC))
-- \Divisor|s_counter[4]~41\ = CARRY((\Divisor|s_counter\(4) & !\Divisor|s_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(4),
	datad => VCC,
	cin => \Divisor|s_counter[3]~39\,
	combout => \Divisor|s_counter[4]~40_combout\,
	cout => \Divisor|s_counter[4]~41\);

-- Location: FF_X80_Y67_N9
\Divisor|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[4]~40_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(4));

-- Location: LCCOMB_X80_Y67_N10
\Divisor|s_counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[5]~42_combout\ = (\Divisor|s_counter\(5) & (!\Divisor|s_counter[4]~41\)) # (!\Divisor|s_counter\(5) & ((\Divisor|s_counter[4]~41\) # (GND)))
-- \Divisor|s_counter[5]~43\ = CARRY((!\Divisor|s_counter[4]~41\) # (!\Divisor|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(5),
	datad => VCC,
	cin => \Divisor|s_counter[4]~41\,
	combout => \Divisor|s_counter[5]~42_combout\,
	cout => \Divisor|s_counter[5]~43\);

-- Location: FF_X80_Y67_N11
\Divisor|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[5]~42_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(5));

-- Location: LCCOMB_X80_Y67_N12
\Divisor|s_counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[6]~44_combout\ = (\Divisor|s_counter\(6) & (\Divisor|s_counter[5]~43\ $ (GND))) # (!\Divisor|s_counter\(6) & (!\Divisor|s_counter[5]~43\ & VCC))
-- \Divisor|s_counter[6]~45\ = CARRY((\Divisor|s_counter\(6) & !\Divisor|s_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(6),
	datad => VCC,
	cin => \Divisor|s_counter[5]~43\,
	combout => \Divisor|s_counter[6]~44_combout\,
	cout => \Divisor|s_counter[6]~45\);

-- Location: FF_X80_Y67_N13
\Divisor|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[6]~44_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(6));

-- Location: LCCOMB_X80_Y67_N14
\Divisor|s_counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[7]~46_combout\ = (\Divisor|s_counter\(7) & (!\Divisor|s_counter[6]~45\)) # (!\Divisor|s_counter\(7) & ((\Divisor|s_counter[6]~45\) # (GND)))
-- \Divisor|s_counter[7]~47\ = CARRY((!\Divisor|s_counter[6]~45\) # (!\Divisor|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(7),
	datad => VCC,
	cin => \Divisor|s_counter[6]~45\,
	combout => \Divisor|s_counter[7]~46_combout\,
	cout => \Divisor|s_counter[7]~47\);

-- Location: FF_X80_Y67_N15
\Divisor|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[7]~46_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(7));

-- Location: LCCOMB_X80_Y67_N16
\Divisor|s_counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[8]~48_combout\ = (\Divisor|s_counter\(8) & (\Divisor|s_counter[7]~47\ $ (GND))) # (!\Divisor|s_counter\(8) & (!\Divisor|s_counter[7]~47\ & VCC))
-- \Divisor|s_counter[8]~49\ = CARRY((\Divisor|s_counter\(8) & !\Divisor|s_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(8),
	datad => VCC,
	cin => \Divisor|s_counter[7]~47\,
	combout => \Divisor|s_counter[8]~48_combout\,
	cout => \Divisor|s_counter[8]~49\);

-- Location: FF_X80_Y67_N17
\Divisor|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[8]~48_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(8));

-- Location: LCCOMB_X80_Y67_N18
\Divisor|s_counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[9]~50_combout\ = (\Divisor|s_counter\(9) & (!\Divisor|s_counter[8]~49\)) # (!\Divisor|s_counter\(9) & ((\Divisor|s_counter[8]~49\) # (GND)))
-- \Divisor|s_counter[9]~51\ = CARRY((!\Divisor|s_counter[8]~49\) # (!\Divisor|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(9),
	datad => VCC,
	cin => \Divisor|s_counter[8]~49\,
	combout => \Divisor|s_counter[9]~50_combout\,
	cout => \Divisor|s_counter[9]~51\);

-- Location: FF_X80_Y67_N19
\Divisor|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[9]~50_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(9));

-- Location: LCCOMB_X80_Y67_N20
\Divisor|s_counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[10]~52_combout\ = (\Divisor|s_counter\(10) & (\Divisor|s_counter[9]~51\ $ (GND))) # (!\Divisor|s_counter\(10) & (!\Divisor|s_counter[9]~51\ & VCC))
-- \Divisor|s_counter[10]~53\ = CARRY((\Divisor|s_counter\(10) & !\Divisor|s_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(10),
	datad => VCC,
	cin => \Divisor|s_counter[9]~51\,
	combout => \Divisor|s_counter[10]~52_combout\,
	cout => \Divisor|s_counter[10]~53\);

-- Location: FF_X80_Y67_N21
\Divisor|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[10]~52_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(10));

-- Location: LCCOMB_X80_Y67_N22
\Divisor|s_counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[11]~54_combout\ = (\Divisor|s_counter\(11) & (!\Divisor|s_counter[10]~53\)) # (!\Divisor|s_counter\(11) & ((\Divisor|s_counter[10]~53\) # (GND)))
-- \Divisor|s_counter[11]~55\ = CARRY((!\Divisor|s_counter[10]~53\) # (!\Divisor|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(11),
	datad => VCC,
	cin => \Divisor|s_counter[10]~53\,
	combout => \Divisor|s_counter[11]~54_combout\,
	cout => \Divisor|s_counter[11]~55\);

-- Location: FF_X80_Y67_N23
\Divisor|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[11]~54_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(11));

-- Location: LCCOMB_X80_Y67_N24
\Divisor|s_counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[12]~56_combout\ = (\Divisor|s_counter\(12) & (\Divisor|s_counter[11]~55\ $ (GND))) # (!\Divisor|s_counter\(12) & (!\Divisor|s_counter[11]~55\ & VCC))
-- \Divisor|s_counter[12]~57\ = CARRY((\Divisor|s_counter\(12) & !\Divisor|s_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(12),
	datad => VCC,
	cin => \Divisor|s_counter[11]~55\,
	combout => \Divisor|s_counter[12]~56_combout\,
	cout => \Divisor|s_counter[12]~57\);

-- Location: FF_X80_Y67_N25
\Divisor|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[12]~56_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(12));

-- Location: LCCOMB_X80_Y67_N26
\Divisor|s_counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[13]~58_combout\ = (\Divisor|s_counter\(13) & (!\Divisor|s_counter[12]~57\)) # (!\Divisor|s_counter\(13) & ((\Divisor|s_counter[12]~57\) # (GND)))
-- \Divisor|s_counter[13]~59\ = CARRY((!\Divisor|s_counter[12]~57\) # (!\Divisor|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(13),
	datad => VCC,
	cin => \Divisor|s_counter[12]~57\,
	combout => \Divisor|s_counter[13]~58_combout\,
	cout => \Divisor|s_counter[13]~59\);

-- Location: FF_X80_Y67_N27
\Divisor|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[13]~58_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(13));

-- Location: LCCOMB_X80_Y67_N28
\Divisor|s_counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[14]~60_combout\ = (\Divisor|s_counter\(14) & (\Divisor|s_counter[13]~59\ $ (GND))) # (!\Divisor|s_counter\(14) & (!\Divisor|s_counter[13]~59\ & VCC))
-- \Divisor|s_counter[14]~61\ = CARRY((\Divisor|s_counter\(14) & !\Divisor|s_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(14),
	datad => VCC,
	cin => \Divisor|s_counter[13]~59\,
	combout => \Divisor|s_counter[14]~60_combout\,
	cout => \Divisor|s_counter[14]~61\);

-- Location: FF_X80_Y67_N29
\Divisor|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[14]~60_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(14));

-- Location: LCCOMB_X80_Y67_N30
\Divisor|s_counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[15]~62_combout\ = (\Divisor|s_counter\(15) & (!\Divisor|s_counter[14]~61\)) # (!\Divisor|s_counter\(15) & ((\Divisor|s_counter[14]~61\) # (GND)))
-- \Divisor|s_counter[15]~63\ = CARRY((!\Divisor|s_counter[14]~61\) # (!\Divisor|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(15),
	datad => VCC,
	cin => \Divisor|s_counter[14]~61\,
	combout => \Divisor|s_counter[15]~62_combout\,
	cout => \Divisor|s_counter[15]~63\);

-- Location: FF_X80_Y67_N31
\Divisor|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[15]~62_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(15));

-- Location: LCCOMB_X80_Y66_N0
\Divisor|s_counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[16]~64_combout\ = (\Divisor|s_counter\(16) & (\Divisor|s_counter[15]~63\ $ (GND))) # (!\Divisor|s_counter\(16) & (!\Divisor|s_counter[15]~63\ & VCC))
-- \Divisor|s_counter[16]~65\ = CARRY((\Divisor|s_counter\(16) & !\Divisor|s_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(16),
	datad => VCC,
	cin => \Divisor|s_counter[15]~63\,
	combout => \Divisor|s_counter[16]~64_combout\,
	cout => \Divisor|s_counter[16]~65\);

-- Location: FF_X80_Y66_N1
\Divisor|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[16]~64_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(16));

-- Location: LCCOMB_X80_Y66_N2
\Divisor|s_counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[17]~66_combout\ = (\Divisor|s_counter\(17) & (!\Divisor|s_counter[16]~65\)) # (!\Divisor|s_counter\(17) & ((\Divisor|s_counter[16]~65\) # (GND)))
-- \Divisor|s_counter[17]~67\ = CARRY((!\Divisor|s_counter[16]~65\) # (!\Divisor|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(17),
	datad => VCC,
	cin => \Divisor|s_counter[16]~65\,
	combout => \Divisor|s_counter[17]~66_combout\,
	cout => \Divisor|s_counter[17]~67\);

-- Location: FF_X80_Y66_N3
\Divisor|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[17]~66_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(17));

-- Location: LCCOMB_X80_Y66_N4
\Divisor|s_counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[18]~68_combout\ = (\Divisor|s_counter\(18) & (\Divisor|s_counter[17]~67\ $ (GND))) # (!\Divisor|s_counter\(18) & (!\Divisor|s_counter[17]~67\ & VCC))
-- \Divisor|s_counter[18]~69\ = CARRY((\Divisor|s_counter\(18) & !\Divisor|s_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(18),
	datad => VCC,
	cin => \Divisor|s_counter[17]~67\,
	combout => \Divisor|s_counter[18]~68_combout\,
	cout => \Divisor|s_counter[18]~69\);

-- Location: FF_X79_Y67_N29
\Divisor|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Divisor|s_counter[18]~68_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(18));

-- Location: LCCOMB_X80_Y66_N6
\Divisor|s_counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[19]~70_combout\ = (\Divisor|s_counter\(19) & (!\Divisor|s_counter[18]~69\)) # (!\Divisor|s_counter\(19) & ((\Divisor|s_counter[18]~69\) # (GND)))
-- \Divisor|s_counter[19]~71\ = CARRY((!\Divisor|s_counter[18]~69\) # (!\Divisor|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(19),
	datad => VCC,
	cin => \Divisor|s_counter[18]~69\,
	combout => \Divisor|s_counter[19]~70_combout\,
	cout => \Divisor|s_counter[19]~71\);

-- Location: FF_X80_Y66_N7
\Divisor|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[19]~70_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(19));

-- Location: LCCOMB_X80_Y66_N8
\Divisor|s_counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[20]~72_combout\ = (\Divisor|s_counter\(20) & (\Divisor|s_counter[19]~71\ $ (GND))) # (!\Divisor|s_counter\(20) & (!\Divisor|s_counter[19]~71\ & VCC))
-- \Divisor|s_counter[20]~73\ = CARRY((\Divisor|s_counter\(20) & !\Divisor|s_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(20),
	datad => VCC,
	cin => \Divisor|s_counter[19]~71\,
	combout => \Divisor|s_counter[20]~72_combout\,
	cout => \Divisor|s_counter[20]~73\);

-- Location: FF_X80_Y66_N9
\Divisor|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[20]~72_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(20));

-- Location: LCCOMB_X80_Y66_N10
\Divisor|s_counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[21]~74_combout\ = (\Divisor|s_counter\(21) & (!\Divisor|s_counter[20]~73\)) # (!\Divisor|s_counter\(21) & ((\Divisor|s_counter[20]~73\) # (GND)))
-- \Divisor|s_counter[21]~75\ = CARRY((!\Divisor|s_counter[20]~73\) # (!\Divisor|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(21),
	datad => VCC,
	cin => \Divisor|s_counter[20]~73\,
	combout => \Divisor|s_counter[21]~74_combout\,
	cout => \Divisor|s_counter[21]~75\);

-- Location: FF_X80_Y66_N11
\Divisor|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[21]~74_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(21));

-- Location: LCCOMB_X80_Y66_N12
\Divisor|s_counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[22]~76_combout\ = (\Divisor|s_counter\(22) & (\Divisor|s_counter[21]~75\ $ (GND))) # (!\Divisor|s_counter\(22) & (!\Divisor|s_counter[21]~75\ & VCC))
-- \Divisor|s_counter[22]~77\ = CARRY((\Divisor|s_counter\(22) & !\Divisor|s_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(22),
	datad => VCC,
	cin => \Divisor|s_counter[21]~75\,
	combout => \Divisor|s_counter[22]~76_combout\,
	cout => \Divisor|s_counter[22]~77\);

-- Location: FF_X80_Y66_N13
\Divisor|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[22]~76_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(22));

-- Location: LCCOMB_X80_Y66_N14
\Divisor|s_counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[23]~78_combout\ = (\Divisor|s_counter\(23) & (!\Divisor|s_counter[22]~77\)) # (!\Divisor|s_counter\(23) & ((\Divisor|s_counter[22]~77\) # (GND)))
-- \Divisor|s_counter[23]~79\ = CARRY((!\Divisor|s_counter[22]~77\) # (!\Divisor|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(23),
	datad => VCC,
	cin => \Divisor|s_counter[22]~77\,
	combout => \Divisor|s_counter[23]~78_combout\,
	cout => \Divisor|s_counter[23]~79\);

-- Location: FF_X80_Y66_N15
\Divisor|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[23]~78_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(23));

-- Location: LCCOMB_X80_Y66_N16
\Divisor|s_counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[24]~80_combout\ = (\Divisor|s_counter\(24) & (\Divisor|s_counter[23]~79\ $ (GND))) # (!\Divisor|s_counter\(24) & (!\Divisor|s_counter[23]~79\ & VCC))
-- \Divisor|s_counter[24]~81\ = CARRY((\Divisor|s_counter\(24) & !\Divisor|s_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(24),
	datad => VCC,
	cin => \Divisor|s_counter[23]~79\,
	combout => \Divisor|s_counter[24]~80_combout\,
	cout => \Divisor|s_counter[24]~81\);

-- Location: FF_X80_Y66_N17
\Divisor|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[24]~80_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(24));

-- Location: LCCOMB_X80_Y66_N18
\Divisor|s_counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[25]~82_combout\ = (\Divisor|s_counter\(25) & (!\Divisor|s_counter[24]~81\)) # (!\Divisor|s_counter\(25) & ((\Divisor|s_counter[24]~81\) # (GND)))
-- \Divisor|s_counter[25]~83\ = CARRY((!\Divisor|s_counter[24]~81\) # (!\Divisor|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(25),
	datad => VCC,
	cin => \Divisor|s_counter[24]~81\,
	combout => \Divisor|s_counter[25]~82_combout\,
	cout => \Divisor|s_counter[25]~83\);

-- Location: FF_X80_Y66_N19
\Divisor|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[25]~82_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(25));

-- Location: LCCOMB_X80_Y66_N20
\Divisor|s_counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[26]~84_combout\ = (\Divisor|s_counter\(26) & (\Divisor|s_counter[25]~83\ $ (GND))) # (!\Divisor|s_counter\(26) & (!\Divisor|s_counter[25]~83\ & VCC))
-- \Divisor|s_counter[26]~85\ = CARRY((\Divisor|s_counter\(26) & !\Divisor|s_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(26),
	datad => VCC,
	cin => \Divisor|s_counter[25]~83\,
	combout => \Divisor|s_counter[26]~84_combout\,
	cout => \Divisor|s_counter[26]~85\);

-- Location: FF_X80_Y66_N21
\Divisor|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[26]~84_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(26));

-- Location: LCCOMB_X80_Y66_N22
\Divisor|s_counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[27]~86_combout\ = (\Divisor|s_counter\(27) & (!\Divisor|s_counter[26]~85\)) # (!\Divisor|s_counter\(27) & ((\Divisor|s_counter[26]~85\) # (GND)))
-- \Divisor|s_counter[27]~87\ = CARRY((!\Divisor|s_counter[26]~85\) # (!\Divisor|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(27),
	datad => VCC,
	cin => \Divisor|s_counter[26]~85\,
	combout => \Divisor|s_counter[27]~86_combout\,
	cout => \Divisor|s_counter[27]~87\);

-- Location: FF_X80_Y66_N23
\Divisor|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[27]~86_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(27));

-- Location: LCCOMB_X80_Y66_N24
\Divisor|s_counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[28]~88_combout\ = (\Divisor|s_counter\(28) & (\Divisor|s_counter[27]~87\ $ (GND))) # (!\Divisor|s_counter\(28) & (!\Divisor|s_counter[27]~87\ & VCC))
-- \Divisor|s_counter[28]~89\ = CARRY((\Divisor|s_counter\(28) & !\Divisor|s_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(28),
	datad => VCC,
	cin => \Divisor|s_counter[27]~87\,
	combout => \Divisor|s_counter[28]~88_combout\,
	cout => \Divisor|s_counter[28]~89\);

-- Location: FF_X80_Y66_N25
\Divisor|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[28]~88_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(28));

-- Location: LCCOMB_X80_Y66_N26
\Divisor|s_counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[29]~90_combout\ = (\Divisor|s_counter\(29) & (!\Divisor|s_counter[28]~89\)) # (!\Divisor|s_counter\(29) & ((\Divisor|s_counter[28]~89\) # (GND)))
-- \Divisor|s_counter[29]~91\ = CARRY((!\Divisor|s_counter[28]~89\) # (!\Divisor|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(29),
	datad => VCC,
	cin => \Divisor|s_counter[28]~89\,
	combout => \Divisor|s_counter[29]~90_combout\,
	cout => \Divisor|s_counter[29]~91\);

-- Location: FF_X80_Y66_N27
\Divisor|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[29]~90_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(29));

-- Location: LCCOMB_X80_Y66_N28
\Divisor|s_counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[30]~92_combout\ = (\Divisor|s_counter\(30) & (\Divisor|s_counter[29]~91\ $ (GND))) # (!\Divisor|s_counter\(30) & (!\Divisor|s_counter[29]~91\ & VCC))
-- \Divisor|s_counter[30]~93\ = CARRY((\Divisor|s_counter\(30) & !\Divisor|s_counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor|s_counter\(30),
	datad => VCC,
	cin => \Divisor|s_counter[29]~91\,
	combout => \Divisor|s_counter[30]~92_combout\,
	cout => \Divisor|s_counter[30]~93\);

-- Location: FF_X80_Y66_N29
\Divisor|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[30]~92_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(30));

-- Location: LCCOMB_X80_Y66_N30
\Divisor|s_counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|s_counter[31]~94_combout\ = \Divisor|s_counter\(31) $ (\Divisor|s_counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(31),
	cin => \Divisor|s_counter[30]~93\,
	combout => \Divisor|s_counter[31]~94_combout\);

-- Location: FF_X80_Y66_N31
\Divisor|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|s_counter[31]~94_combout\,
	sclr => \Divisor|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|s_counter\(31));

-- Location: LCCOMB_X79_Y66_N0
\Divisor|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|LessThan0~0_combout\ = (!\Divisor|s_counter\(26) & (!\Divisor|s_counter\(25) & (!\Divisor|s_counter\(27) & !\Divisor|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(26),
	datab => \Divisor|s_counter\(25),
	datac => \Divisor|s_counter\(27),
	datad => \Divisor|s_counter\(28),
	combout => \Divisor|LessThan0~0_combout\);

-- Location: LCCOMB_X79_Y67_N8
\Divisor|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|LessThan0~1_combout\ = (!\Divisor|s_counter\(31) & (!\Divisor|s_counter\(29) & (!\Divisor|s_counter\(30) & \Divisor|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(31),
	datab => \Divisor|s_counter\(29),
	datac => \Divisor|s_counter\(30),
	datad => \Divisor|LessThan0~0_combout\,
	combout => \Divisor|LessThan0~1_combout\);

-- Location: LCCOMB_X79_Y67_N26
\Divisor|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|LessThan0~3_combout\ = (((!\Divisor|s_counter\(12)) # (!\Divisor|s_counter\(13))) # (!\Divisor|s_counter\(14))) # (!\Divisor|s_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(11),
	datab => \Divisor|s_counter\(14),
	datac => \Divisor|s_counter\(13),
	datad => \Divisor|s_counter\(12),
	combout => \Divisor|LessThan0~3_combout\);

-- Location: LCCOMB_X79_Y67_N14
\Divisor|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|clkOut~1_combout\ = (\Divisor|s_counter\(3) & (\Divisor|s_counter\(0) & (\Divisor|s_counter\(1) & \Divisor|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(3),
	datab => \Divisor|s_counter\(0),
	datac => \Divisor|s_counter\(1),
	datad => \Divisor|s_counter\(2),
	combout => \Divisor|clkOut~1_combout\);

-- Location: LCCOMB_X79_Y67_N12
\Divisor|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|LessThan0~4_combout\ = (!\Divisor|s_counter\(6) & (!\Divisor|s_counter\(8) & (!\Divisor|s_counter\(7) & !\Divisor|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(6),
	datab => \Divisor|s_counter\(8),
	datac => \Divisor|s_counter\(7),
	datad => \Divisor|s_counter\(9),
	combout => \Divisor|LessThan0~4_combout\);

-- Location: LCCOMB_X79_Y67_N0
\Divisor|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|LessThan0~5_combout\ = (\Divisor|LessThan0~4_combout\ & (((!\Divisor|clkOut~1_combout\) # (!\Divisor|s_counter\(5))) # (!\Divisor|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(4),
	datab => \Divisor|s_counter\(5),
	datac => \Divisor|clkOut~1_combout\,
	datad => \Divisor|LessThan0~4_combout\,
	combout => \Divisor|LessThan0~5_combout\);

-- Location: LCCOMB_X79_Y67_N22
\Divisor|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|LessThan0~6_combout\ = (\Divisor|LessThan0~3_combout\) # ((!\Divisor|s_counter\(10) & \Divisor|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(10),
	datac => \Divisor|LessThan0~3_combout\,
	datad => \Divisor|LessThan0~5_combout\,
	combout => \Divisor|LessThan0~6_combout\);

-- Location: LCCOMB_X79_Y67_N2
\Divisor|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|clkOut~0_combout\ = (\Divisor|s_counter\(18) & (\Divisor|s_counter\(20) & (\Divisor|s_counter\(21) & \Divisor|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(18),
	datab => \Divisor|s_counter\(20),
	datac => \Divisor|s_counter\(21),
	datad => \Divisor|s_counter\(19),
	combout => \Divisor|clkOut~0_combout\);

-- Location: LCCOMB_X79_Y67_N20
\Divisor|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|LessThan0~2_combout\ = (((!\Divisor|s_counter\(16) & !\Divisor|s_counter\(17))) # (!\Divisor|clkOut~0_combout\)) # (!\Divisor|s_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(22),
	datab => \Divisor|s_counter\(16),
	datac => \Divisor|s_counter\(17),
	datad => \Divisor|clkOut~0_combout\,
	combout => \Divisor|LessThan0~2_combout\);

-- Location: LCCOMB_X79_Y67_N24
\Divisor|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|LessThan0~7_combout\ = (\Divisor|LessThan0~2_combout\) # ((!\Divisor|s_counter\(15) & (!\Divisor|s_counter\(17) & \Divisor|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(15),
	datab => \Divisor|s_counter\(17),
	datac => \Divisor|LessThan0~6_combout\,
	datad => \Divisor|LessThan0~2_combout\,
	combout => \Divisor|LessThan0~7_combout\);

-- Location: LCCOMB_X79_Y67_N30
\Divisor|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|LessThan0~8_combout\ = ((\Divisor|s_counter\(24) & ((\Divisor|s_counter\(23)) # (!\Divisor|LessThan0~7_combout\)))) # (!\Divisor|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(23),
	datab => \Divisor|LessThan0~1_combout\,
	datac => \Divisor|s_counter\(24),
	datad => \Divisor|LessThan0~7_combout\,
	combout => \Divisor|LessThan0~8_combout\);

-- Location: LCCOMB_X79_Y67_N6
\Divisor|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|clkOut~3_combout\ = (\Divisor|s_counter\(13) & (\Divisor|s_counter\(11) & (\Divisor|s_counter\(10) & \Divisor|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(13),
	datab => \Divisor|s_counter\(11),
	datac => \Divisor|s_counter\(10),
	datad => \Divisor|s_counter\(12),
	combout => \Divisor|clkOut~3_combout\);

-- Location: LCCOMB_X79_Y67_N16
\Divisor|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|clkOut~2_combout\ = ((\Divisor|s_counter\(5)) # ((\Divisor|clkOut~1_combout\ & \Divisor|s_counter\(4)))) # (!\Divisor|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|LessThan0~4_combout\,
	datab => \Divisor|clkOut~1_combout\,
	datac => \Divisor|s_counter\(5),
	datad => \Divisor|s_counter\(4),
	combout => \Divisor|clkOut~2_combout\);

-- Location: LCCOMB_X79_Y67_N4
\Divisor|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|clkOut~4_combout\ = (\Divisor|s_counter\(15) & ((\Divisor|s_counter\(14)) # ((\Divisor|clkOut~3_combout\ & \Divisor|clkOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|clkOut~3_combout\,
	datab => \Divisor|s_counter\(14),
	datac => \Divisor|s_counter\(15),
	datad => \Divisor|clkOut~2_combout\,
	combout => \Divisor|clkOut~4_combout\);

-- Location: LCCOMB_X79_Y67_N18
\Divisor|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|clkOut~5_combout\ = (\Divisor|s_counter\(17) & (\Divisor|clkOut~0_combout\ & ((\Divisor|s_counter\(16)) # (\Divisor|clkOut~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(17),
	datab => \Divisor|s_counter\(16),
	datac => \Divisor|clkOut~4_combout\,
	datad => \Divisor|clkOut~0_combout\,
	combout => \Divisor|clkOut~5_combout\);

-- Location: LCCOMB_X79_Y67_N28
\Divisor|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|clkOut~6_combout\ = (\Divisor|s_counter\(23) & ((\Divisor|s_counter\(22)) # (\Divisor|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|s_counter\(22),
	datab => \Divisor|s_counter\(23),
	datad => \Divisor|clkOut~5_combout\,
	combout => \Divisor|clkOut~6_combout\);

-- Location: LCCOMB_X79_Y67_N10
\Divisor|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Divisor|clkOut~7_combout\ = (!\Divisor|LessThan0~8_combout\ & ((\Divisor|s_counter\(24)) # ((\Divisor|clkOut~q\) # (\Divisor|clkOut~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor|LessThan0~8_combout\,
	datab => \Divisor|s_counter\(24),
	datac => \Divisor|clkOut~q\,
	datad => \Divisor|clkOut~6_combout\,
	combout => \Divisor|clkOut~7_combout\);

-- Location: FF_X79_Y67_N11
\Divisor|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divisor|clkOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor|clkOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


