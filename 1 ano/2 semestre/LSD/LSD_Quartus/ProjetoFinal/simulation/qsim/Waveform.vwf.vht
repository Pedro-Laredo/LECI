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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/02/2024 16:09:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Top_Level_debouncing
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Top_Level_debouncing_vhd_vec_tst IS
END Top_Level_debouncing_vhd_vec_tst;
ARCHITECTURE Top_Level_debouncing_arch OF Top_Level_debouncing_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEXO : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LEDG : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Top_Level_debouncing
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEXO : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	LEDG : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Top_Level_debouncing
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX4 => HEX4,
	HEX5 => HEX5,
	HEXO => HEXO,
	LEDG => LEDG,
	LEDR => LEDR,
	SW => SW
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	SW(7) <= '0';
WAIT;
END PROCESS t_prcs_SW_7;
-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	SW(6) <= '0';
WAIT;
END PROCESS t_prcs_SW_6;
-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	SW(5) <= '0';
WAIT;
END PROCESS t_prcs_SW_5;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
	WAIT FOR 50000 ps;
	SW(0) <= '1';
	WAIT FOR 150000 ps;
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END Top_Level_debouncing_arch;
