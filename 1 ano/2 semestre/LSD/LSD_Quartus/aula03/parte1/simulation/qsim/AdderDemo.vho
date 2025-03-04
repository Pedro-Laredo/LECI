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

-- DATE "03/05/2024 11:14:51"

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

ENTITY 	AddSub4 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	sub : IN std_logic;
	s : OUT std_logic_vector(3 DOWNTO 0);
	cout : OUT std_logic
	);
END AddSub4;

ARCHITECTURE structure OF AddSub4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sub : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Adder4_inst|bit0|s~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \sub~input_o\ : std_logic;
SIGNAL \Adder4_inst|bit0|cout~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Adder4_inst|bit1|s~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \Adder4_inst|bit1|cout~0_combout\ : std_logic;
SIGNAL \Adder4_inst|bit2|s~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \Adder4_inst|bit2|cout~0_combout\ : std_logic;
SIGNAL \Adder4_inst|bit3|s~0_combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_sub <= sub;
s <= ww_s;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder4_inst|bit0|s~0_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder4_inst|bit1|s~combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder4_inst|bit2|s~0_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder4_inst|bit3|s~0_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\Adder4_inst|bit0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder4_inst|bit0|s~0_combout\ = \a[0]~input_o\ $ (\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Adder4_inst|bit0|s~0_combout\);

\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sub,
	o => \sub~input_o\);

\Adder4_inst|bit0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder4_inst|bit0|cout~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\)) # (!\b[0]~input_o\ & ((\sub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \sub~input_o\,
	datad => \b[0]~input_o\,
	combout => \Adder4_inst|bit0|cout~0_combout\);

\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\Adder4_inst|bit1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder4_inst|bit1|s~combout\ = \a[1]~input_o\ $ (\sub~input_o\ $ (\Adder4_inst|bit0|cout~0_combout\ $ (\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \sub~input_o\,
	datac => \Adder4_inst|bit0|cout~0_combout\,
	datad => \b[1]~input_o\,
	combout => \Adder4_inst|bit1|s~combout\);

\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\Adder4_inst|bit1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder4_inst|bit1|cout~0_combout\ = (\a[1]~input_o\ & ((\Adder4_inst|bit0|cout~0_combout\) # (\sub~input_o\ $ (\b[1]~input_o\)))) # (!\a[1]~input_o\ & (\Adder4_inst|bit0|cout~0_combout\ & (\sub~input_o\ $ (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \Adder4_inst|bit0|cout~0_combout\,
	combout => \Adder4_inst|bit1|cout~0_combout\);

\Adder4_inst|bit2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder4_inst|bit2|s~0_combout\ = \sub~input_o\ $ (\a[2]~input_o\ $ (\b[2]~input_o\ $ (\Adder4_inst|bit1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \Adder4_inst|bit1|cout~0_combout\,
	combout => \Adder4_inst|bit2|s~0_combout\);

\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

\Adder4_inst|bit2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder4_inst|bit2|cout~0_combout\ = (\a[2]~input_o\ & ((\Adder4_inst|bit1|cout~0_combout\) # (\sub~input_o\ $ (\b[2]~input_o\)))) # (!\a[2]~input_o\ & (\Adder4_inst|bit1|cout~0_combout\ & (\sub~input_o\ $ (\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \Adder4_inst|bit1|cout~0_combout\,
	combout => \Adder4_inst|bit2|cout~0_combout\);

\Adder4_inst|bit3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder4_inst|bit3|s~0_combout\ = \sub~input_o\ $ (\a[3]~input_o\ $ (\b[3]~input_o\ $ (\Adder4_inst|bit2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datab => \a[3]~input_o\,
	datac => \b[3]~input_o\,
	datad => \Adder4_inst|bit2|cout~0_combout\,
	combout => \Adder4_inst|bit3|s~0_combout\);

\cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = (\a[3]~input_o\ & ((\Adder4_inst|bit2|cout~0_combout\ & (!\sub~input_o\)) # (!\Adder4_inst|bit2|cout~0_combout\ & ((\b[3]~input_o\))))) # (!\a[3]~input_o\ & ((\Adder4_inst|bit2|cout~0_combout\ & ((\b[3]~input_o\))) # 
-- (!\Adder4_inst|bit2|cout~0_combout\ & (\sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datab => \b[3]~input_o\,
	datac => \a[3]~input_o\,
	datad => \Adder4_inst|bit2|cout~0_combout\,
	combout => \cout~0_combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_cout <= \cout~output_o\;
END structure;


