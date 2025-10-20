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

-- DATE "06/02/2024 16:09:56"

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

ENTITY 	Top_Level_debouncing IS
    PORT (
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEXO : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(2 DOWNTO 0)
	);
END Top_Level_debouncing;

-- Design Ports Information
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXO[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXO[5]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXO[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXO[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXO[2]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXO[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXO[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top_Level_debouncing IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXO : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEXO[6]~output_o\ : std_logic;
SIGNAL \HEXO[5]~output_o\ : std_logic;
SIGNAL \HEXO[4]~output_o\ : std_logic;
SIGNAL \HEXO[3]~output_o\ : std_logic;
SIGNAL \HEXO[2]~output_o\ : std_logic;
SIGNAL \HEXO[1]~output_o\ : std_logic;
SIGNAL \HEXO[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst8|s_dirtyIn~q\ : std_logic;
SIGNAL \inst8|s_previousIn~q\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt[7]~3_combout\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Add0~25\ : std_logic;
SIGNAL \inst8|Add0~26_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst8|Add0~27\ : std_logic;
SIGNAL \inst8|Add0~28_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst8|Add0~29\ : std_logic;
SIGNAL \inst8|Add0~30_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst8|Add0~31\ : std_logic;
SIGNAL \inst8|Add0~32_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst8|Add0~33\ : std_logic;
SIGNAL \inst8|Add0~34_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst8|Add0~35\ : std_logic;
SIGNAL \inst8|Add0~36_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst8|Add0~37\ : std_logic;
SIGNAL \inst8|Add0~38_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst8|Add0~39\ : std_logic;
SIGNAL \inst8|Add0~40_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst8|Add0~41\ : std_logic;
SIGNAL \inst8|Add0~42_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst8|LessThan0~4_combout\ : std_logic;
SIGNAL \inst8|LessThan0~0_combout\ : std_logic;
SIGNAL \inst8|LessThan0~1_combout\ : std_logic;
SIGNAL \inst8|LessThan0~2_combout\ : std_logic;
SIGNAL \inst8|LessThan0~3_combout\ : std_logic;
SIGNAL \inst8|LessThan0~5_combout\ : std_logic;
SIGNAL \inst8|LessThan0~6_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt[7]~0_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst8|Add0~15\ : std_logic;
SIGNAL \inst8|Add0~16_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst8|Add0~17\ : std_logic;
SIGNAL \inst8|Add0~18_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst8|Add0~19\ : std_logic;
SIGNAL \inst8|Add0~20_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst8|Add0~21\ : std_logic;
SIGNAL \inst8|Add0~22_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst8|Add0~23\ : std_logic;
SIGNAL \inst8|Add0~24_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst8|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst8|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst8|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst8|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst8|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt[7]~2_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst8|Add0~43\ : std_logic;
SIGNAL \inst8|Add0~44_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt[7]~4_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst8|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst8|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst8|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst8|s_pulsedOut~q\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst6|s_dirtyIn~q\ : std_logic;
SIGNAL \inst6|s_previousIn~q\ : std_logic;
SIGNAL \inst6|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst6|Add0~11\ : std_logic;
SIGNAL \inst6|Add0~12_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt[10]~3_combout\ : std_logic;
SIGNAL \inst6|Add0~17\ : std_logic;
SIGNAL \inst6|Add0~18_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst6|Add0~19\ : std_logic;
SIGNAL \inst6|Add0~20_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst6|Add0~21\ : std_logic;
SIGNAL \inst6|Add0~22_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst6|Add0~23\ : std_logic;
SIGNAL \inst6|Add0~24_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst6|Add0~25\ : std_logic;
SIGNAL \inst6|Add0~26_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst6|Add0~27\ : std_logic;
SIGNAL \inst6|Add0~28_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst6|Add0~29\ : std_logic;
SIGNAL \inst6|Add0~30_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst6|Add0~31\ : std_logic;
SIGNAL \inst6|Add0~32_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst6|Add0~33\ : std_logic;
SIGNAL \inst6|Add0~34_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst6|Add0~35\ : std_logic;
SIGNAL \inst6|Add0~36_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst6|Add0~37\ : std_logic;
SIGNAL \inst6|Add0~38_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst6|Add0~39\ : std_logic;
SIGNAL \inst6|Add0~40_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst6|Add0~41\ : std_logic;
SIGNAL \inst6|Add0~42_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst6|LessThan0~4_combout\ : std_logic;
SIGNAL \inst6|LessThan0~0_combout\ : std_logic;
SIGNAL \inst6|LessThan0~1_combout\ : std_logic;
SIGNAL \inst6|LessThan0~2_combout\ : std_logic;
SIGNAL \inst6|LessThan0~3_combout\ : std_logic;
SIGNAL \inst6|LessThan0~5_combout\ : std_logic;
SIGNAL \inst6|LessThan0~6_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt[10]~0_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst6|Add0~13\ : std_logic;
SIGNAL \inst6|Add0~14_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst6|Add0~15\ : std_logic;
SIGNAL \inst6|Add0~16_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst6|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst6|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst6|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst6|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst6|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt[10]~2_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst6|Add0~43\ : std_logic;
SIGNAL \inst6|Add0~44_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt[10]~4_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst6|Add0~1\ : std_logic;
SIGNAL \inst6|Add0~2_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst6|Add0~3\ : std_logic;
SIGNAL \inst6|Add0~4_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst6|Add0~5\ : std_logic;
SIGNAL \inst6|Add0~6_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst6|Add0~7\ : std_logic;
SIGNAL \inst6|Add0~8_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst6|Add0~9\ : std_logic;
SIGNAL \inst6|Add0~10_combout\ : std_logic;
SIGNAL \inst6|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst6|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst6|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst6|s_pulsedOut~q\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst7|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \inst7|s_dirtyIn~q\ : std_logic;
SIGNAL \inst7|s_previousIn~q\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt[20]~3_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|LessThan0~4_combout\ : std_logic;
SIGNAL \inst7|LessThan0~0_combout\ : std_logic;
SIGNAL \inst7|LessThan0~1_combout\ : std_logic;
SIGNAL \inst7|LessThan0~2_combout\ : std_logic;
SIGNAL \inst7|LessThan0~3_combout\ : std_logic;
SIGNAL \inst7|LessThan0~5_combout\ : std_logic;
SIGNAL \inst7|LessThan0~6_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt[20]~0_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst7|Add0~21\ : std_logic;
SIGNAL \inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst7|Add0~23\ : std_logic;
SIGNAL \inst7|Add0~24_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst7|Add0~25\ : std_logic;
SIGNAL \inst7|Add0~26_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst7|Add0~27\ : std_logic;
SIGNAL \inst7|Add0~28_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst7|Add0~29\ : std_logic;
SIGNAL \inst7|Add0~30_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst7|Add0~31\ : std_logic;
SIGNAL \inst7|Add0~32_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst7|Add0~33\ : std_logic;
SIGNAL \inst7|Add0~34_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst7|Add0~35\ : std_logic;
SIGNAL \inst7|Add0~36_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst7|Add0~37\ : std_logic;
SIGNAL \inst7|Add0~38_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst7|Add0~39\ : std_logic;
SIGNAL \inst7|Add0~40_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst7|Add0~41\ : std_logic;
SIGNAL \inst7|Add0~42_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst7|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst7|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst7|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst7|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst7|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt[20]~2_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst7|Add0~43\ : std_logic;
SIGNAL \inst7|Add0~44_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt[20]~4_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst7|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst7|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst7|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst7|s_pulsedOut~q\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst2|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \inst2|s_dirtyIn~q\ : std_logic;
SIGNAL \inst2|s_previousIn~q\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[10]~3_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[10]~0_combout\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[10]~2_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[10]~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst4|s_dirtyIn~q\ : std_logic;
SIGNAL \inst4|s_previousIn~q\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[2]~3_combout\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst4|Add0~5\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst4|Add0~7\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|Add0~21\ : std_logic;
SIGNAL \inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst4|Add0~23\ : std_logic;
SIGNAL \inst4|Add0~24_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst4|Add0~25\ : std_logic;
SIGNAL \inst4|Add0~26_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst4|Add0~27\ : std_logic;
SIGNAL \inst4|Add0~28_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst4|Add0~29\ : std_logic;
SIGNAL \inst4|Add0~30_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst4|Add0~31\ : std_logic;
SIGNAL \inst4|Add0~32_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst4|Add0~33\ : std_logic;
SIGNAL \inst4|Add0~34_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst4|Add0~35\ : std_logic;
SIGNAL \inst4|Add0~36_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst4|Add0~37\ : std_logic;
SIGNAL \inst4|Add0~38_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst4|Add0~39\ : std_logic;
SIGNAL \inst4|Add0~40_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst4|Add0~41\ : std_logic;
SIGNAL \inst4|Add0~42_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst4|LessThan0~4_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~2_combout\ : std_logic;
SIGNAL \inst4|LessThan0~3_combout\ : std_logic;
SIGNAL \inst4|LessThan0~5_combout\ : std_logic;
SIGNAL \inst4|LessThan0~6_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[2]~0_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst4|Add0~15\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst4|Add0~17\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst4|Add0~19\ : std_logic;
SIGNAL \inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[2]~2_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst4|Add0~43\ : std_logic;
SIGNAL \inst4|Add0~44_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[2]~4_combout\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~q\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState~14_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState~15_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_dirtyIn~q\ : std_logic;
SIGNAL \inst|s_previousIn~q\ : std_logic;
SIGNAL \inst|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[12]~3_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[12]~0_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[12]~2_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[12]~4_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~q\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState~9_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState~12_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState~16_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState~11_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState~18_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState~17_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~5_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~1\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~3\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~5\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~7\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~9\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~11\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~12_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~13\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~14_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~5_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~15\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~16_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~17\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~18_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~19\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~20_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~21\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~22_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~23\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~24_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~25\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~26_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~27\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~28_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~29\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~30_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~31\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~32_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~33\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~34_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~35\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~36_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~37\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~38_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~39\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~40_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~7_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~41\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~42_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~43\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~44_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~9_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~45\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~46_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~47\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~48_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~49\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~50_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~11_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~7_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~5_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|pulse~q\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~15_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~16_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~6\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~7_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~8\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~9_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~10\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]~11_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]~12\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[4]~17_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~13_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~14_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~feeder_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~11_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~13_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~14_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~5\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~25_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~24_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~15_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~16_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~17_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~26_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~47_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~46_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~28_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~48_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~9\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~19_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~49_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~18_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~31_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~50_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~32_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~51_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~33_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~52_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~34_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~27_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~53_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~21_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~35_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~36_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~54_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~37_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~38_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~40_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~39_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~57_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~58_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~42_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~43_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~44_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~28_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~22_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~23_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~45_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|Equal7~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[1]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[0]~5_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~30_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[5]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~5_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~1_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~3_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~5_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex4_decoder|Equal7~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[1]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[0]~5_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex5_decoder|Equal7~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~32_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~35_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~36_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~60_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~38_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~41_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~42_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~43_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~45_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~44_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~66_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~50_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~51_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~67_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~68_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~52_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~69_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~53_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~64_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~46_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~10_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~47_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~65_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|Equal7~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[1]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~5_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|Selector11~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|luz_verde[0]~3_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|Selector17~0_combout\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\ : std_logic;
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|Selector11~1_combout\ : std_logic;
SIGNAL \inst8|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst6|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst4|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \GHFGHFGF|Airfryer_FSM_inst|tempo\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \GHFGHFGF|TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[4]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[5]~1_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[4]~4_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[5]~2_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[48]~30_combout\ : std_logic;
SIGNAL \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[0]~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX1 <= ww_HEX1;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEXO <= ww_HEXO;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GHFGHFGF|Airfryer_FSM_inst|Selector17~0_combout\);
\GHFGHFGF|TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[4]~2_combout\ <= NOT \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[4]~2_combout\;
\GHFGHFGF|TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[5]~1_combout\ <= NOT \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[5]~1_combout\;
\GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[4]~4_combout\ <= NOT \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~4_combout\;
\GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[5]~2_combout\ <= NOT \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[5]~2_combout\;
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[48]~30_combout\ <= NOT \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~30_combout\;
\GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[0]~5_combout\ <= NOT \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[48]~30_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[5]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|ALT_INV_decOut_n[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex4_decoder|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex5_decoder|ALT_INV_decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex5_decoder|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEXO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEXO[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\HEXO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEXO[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\HEXO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEXO[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\HEXO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEXO[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\HEXO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HEXO[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\HEXO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEXO[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\HEXO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEXO[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~4_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Airfryer_FSM_inst|luz_verde[0]~3_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(0),
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

-- Location: LCCOMB_X52_Y28_N10
\inst8|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = \inst8|s_debounceCnt\(0) $ (VCC)
-- \inst8|Add0~1\ = CARRY(\inst8|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X54_Y28_N29
\inst8|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_dirtyIn~q\);

-- Location: FF_X54_Y28_N23
\inst8|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst8|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_previousIn~q\);

-- Location: LCCOMB_X52_Y28_N18
\inst8|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = (\inst8|s_debounceCnt\(4) & ((GND) # (!\inst8|Add0~7\))) # (!\inst8|s_debounceCnt\(4) & (\inst8|Add0~7\ $ (GND)))
-- \inst8|Add0~9\ = CARRY((\inst8|s_debounceCnt\(4)) # (!\inst8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: LCCOMB_X52_Y28_N20
\inst8|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = (\inst8|s_debounceCnt\(5) & (\inst8|Add0~9\ & VCC)) # (!\inst8|s_debounceCnt\(5) & (!\inst8|Add0~9\))
-- \inst8|Add0~11\ = CARRY((!\inst8|s_debounceCnt\(5) & !\inst8|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: LCCOMB_X53_Y28_N22
\inst8|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~27_combout\ = (\inst8|Add0~10_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add0~10_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~27_combout\);

-- Location: LCCOMB_X53_Y28_N14
\inst8|s_debounceCnt[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt[7]~3_combout\ = (((\inst8|s_debounceCnt\(22)) # (\inst8|s_debounceCnt[7]~2_combout\)) # (!\inst8|s_previousIn~q\)) # (!\inst8|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_dirtyIn~q\,
	datab => \inst8|s_previousIn~q\,
	datac => \inst8|s_debounceCnt\(22),
	datad => \inst8|s_debounceCnt[7]~2_combout\,
	combout => \inst8|s_debounceCnt[7]~3_combout\);

-- Location: FF_X53_Y28_N23
\inst8|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~27_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(5));

-- Location: LCCOMB_X52_Y28_N22
\inst8|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = (\inst8|s_debounceCnt\(6) & ((GND) # (!\inst8|Add0~11\))) # (!\inst8|s_debounceCnt\(6) & (\inst8|Add0~11\ $ (GND)))
-- \inst8|Add0~13\ = CARRY((\inst8|s_debounceCnt\(6)) # (!\inst8|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: LCCOMB_X52_Y27_N2
\inst8|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~24_combout\ = (\inst8|s_debounceCnt\(12) & ((GND) # (!\inst8|Add0~23\))) # (!\inst8|s_debounceCnt\(12) & (\inst8|Add0~23\ $ (GND)))
-- \inst8|Add0~25\ = CARRY((\inst8|s_debounceCnt\(12)) # (!\inst8|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst8|Add0~23\,
	combout => \inst8|Add0~24_combout\,
	cout => \inst8|Add0~25\);

-- Location: LCCOMB_X52_Y27_N4
\inst8|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~26_combout\ = (\inst8|s_debounceCnt\(13) & (\inst8|Add0~25\ & VCC)) # (!\inst8|s_debounceCnt\(13) & (!\inst8|Add0~25\))
-- \inst8|Add0~27\ = CARRY((!\inst8|s_debounceCnt\(13) & !\inst8|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst8|Add0~25\,
	combout => \inst8|Add0~26_combout\,
	cout => \inst8|Add0~27\);

-- Location: LCCOMB_X54_Y28_N26
\inst8|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~11_combout\ = (\inst8|Add0~26_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~26_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~11_combout\);

-- Location: FF_X54_Y28_N27
\inst8|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~11_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(13));

-- Location: LCCOMB_X52_Y27_N6
\inst8|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~28_combout\ = (\inst8|s_debounceCnt\(14) & ((GND) # (!\inst8|Add0~27\))) # (!\inst8|s_debounceCnt\(14) & (\inst8|Add0~27\ $ (GND)))
-- \inst8|Add0~29\ = CARRY((\inst8|s_debounceCnt\(14)) # (!\inst8|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst8|Add0~27\,
	combout => \inst8|Add0~28_combout\,
	cout => \inst8|Add0~29\);

-- Location: LCCOMB_X54_Y28_N30
\inst8|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~17_combout\ = (\inst8|s_debounceCnt[7]~0_combout\ & ((\inst8|Add0~28_combout\) # (!\inst8|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt[7]~0_combout\,
	datac => \inst8|s_previousIn~q\,
	datad => \inst8|Add0~28_combout\,
	combout => \inst8|s_debounceCnt~17_combout\);

-- Location: FF_X54_Y28_N31
\inst8|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~17_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(14));

-- Location: LCCOMB_X52_Y27_N8
\inst8|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~30_combout\ = (\inst8|s_debounceCnt\(15) & (\inst8|Add0~29\ & VCC)) # (!\inst8|s_debounceCnt\(15) & (!\inst8|Add0~29\))
-- \inst8|Add0~31\ = CARRY((!\inst8|s_debounceCnt\(15) & !\inst8|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst8|Add0~29\,
	combout => \inst8|Add0~30_combout\,
	cout => \inst8|Add0~31\);

-- Location: LCCOMB_X54_Y28_N4
\inst8|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~5_combout\ = (\inst8|Add0~30_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~30_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~5_combout\);

-- Location: FF_X54_Y28_N5
\inst8|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~5_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(15));

-- Location: LCCOMB_X52_Y27_N10
\inst8|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~32_combout\ = (\inst8|s_debounceCnt\(16) & ((GND) # (!\inst8|Add0~31\))) # (!\inst8|s_debounceCnt\(16) & (\inst8|Add0~31\ $ (GND)))
-- \inst8|Add0~33\ = CARRY((\inst8|s_debounceCnt\(16)) # (!\inst8|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst8|Add0~31\,
	combout => \inst8|Add0~32_combout\,
	cout => \inst8|Add0~33\);

-- Location: LCCOMB_X54_Y28_N14
\inst8|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~6_combout\ = (\inst8|Add0~32_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~32_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~6_combout\);

-- Location: FF_X54_Y28_N15
\inst8|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~6_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(16));

-- Location: LCCOMB_X52_Y27_N12
\inst8|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~34_combout\ = (\inst8|s_debounceCnt\(17) & (\inst8|Add0~33\ & VCC)) # (!\inst8|s_debounceCnt\(17) & (!\inst8|Add0~33\))
-- \inst8|Add0~35\ = CARRY((!\inst8|s_debounceCnt\(17) & !\inst8|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst8|Add0~33\,
	combout => \inst8|Add0~34_combout\,
	cout => \inst8|Add0~35\);

-- Location: LCCOMB_X54_Y28_N2
\inst8|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~7_combout\ = (\inst8|Add0~34_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~34_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~7_combout\);

-- Location: FF_X54_Y28_N3
\inst8|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~7_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(17));

-- Location: LCCOMB_X52_Y27_N14
\inst8|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~36_combout\ = (\inst8|s_debounceCnt\(18) & ((GND) # (!\inst8|Add0~35\))) # (!\inst8|s_debounceCnt\(18) & (\inst8|Add0~35\ $ (GND)))
-- \inst8|Add0~37\ = CARRY((\inst8|s_debounceCnt\(18)) # (!\inst8|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst8|Add0~35\,
	combout => \inst8|Add0~36_combout\,
	cout => \inst8|Add0~37\);

-- Location: LCCOMB_X52_Y27_N24
\inst8|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt[18]~18_combout\ = (\inst8|s_debounceCnt[7]~3_combout\ & (\inst8|s_debounceCnt[7]~0_combout\ & ((\inst8|Add0~36_combout\) # (!\inst8|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_previousIn~q\,
	datab => \inst8|Add0~36_combout\,
	datac => \inst8|s_debounceCnt[7]~3_combout\,
	datad => \inst8|s_debounceCnt[7]~0_combout\,
	combout => \inst8|s_debounceCnt[18]~18_combout\);

-- Location: FF_X52_Y27_N25
\inst8|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(18));

-- Location: LCCOMB_X52_Y27_N16
\inst8|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~38_combout\ = (\inst8|s_debounceCnt\(19) & (\inst8|Add0~37\ & VCC)) # (!\inst8|s_debounceCnt\(19) & (!\inst8|Add0~37\))
-- \inst8|Add0~39\ = CARRY((!\inst8|s_debounceCnt\(19) & !\inst8|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst8|Add0~37\,
	combout => \inst8|Add0~38_combout\,
	cout => \inst8|Add0~39\);

-- Location: LCCOMB_X52_Y27_N26
\inst8|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt[19]~19_combout\ = (\inst8|s_debounceCnt[7]~3_combout\ & (\inst8|s_debounceCnt[7]~0_combout\ & ((\inst8|Add0~38_combout\) # (!\inst8|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_previousIn~q\,
	datab => \inst8|Add0~38_combout\,
	datac => \inst8|s_debounceCnt[7]~3_combout\,
	datad => \inst8|s_debounceCnt[7]~0_combout\,
	combout => \inst8|s_debounceCnt[19]~19_combout\);

-- Location: FF_X52_Y27_N27
\inst8|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(19));

-- Location: LCCOMB_X52_Y27_N18
\inst8|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~40_combout\ = (\inst8|s_debounceCnt\(20) & ((GND) # (!\inst8|Add0~39\))) # (!\inst8|s_debounceCnt\(20) & (\inst8|Add0~39\ $ (GND)))
-- \inst8|Add0~41\ = CARRY((\inst8|s_debounceCnt\(20)) # (!\inst8|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst8|Add0~39\,
	combout => \inst8|Add0~40_combout\,
	cout => \inst8|Add0~41\);

-- Location: LCCOMB_X54_Y28_N8
\inst8|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt[20]~8_combout\ = (\inst8|s_debounceCnt[7]~3_combout\ & (\inst8|Add0~40_combout\ & \inst8|s_debounceCnt[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt[7]~3_combout\,
	datac => \inst8|Add0~40_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt[20]~8_combout\);

-- Location: FF_X54_Y28_N9
\inst8|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(20));

-- Location: LCCOMB_X52_Y27_N20
\inst8|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~42_combout\ = (\inst8|s_debounceCnt\(21) & (\inst8|Add0~41\ & VCC)) # (!\inst8|s_debounceCnt\(21) & (!\inst8|Add0~41\))
-- \inst8|Add0~43\ = CARRY((!\inst8|s_debounceCnt\(21) & !\inst8|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst8|Add0~41\,
	combout => \inst8|Add0~42_combout\,
	cout => \inst8|Add0~43\);

-- Location: LCCOMB_X54_Y28_N0
\inst8|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt[21]~9_combout\ = (\inst8|s_debounceCnt[7]~3_combout\ & (\inst8|s_debounceCnt[7]~4_combout\ & \inst8|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt[7]~3_combout\,
	datab => \inst8|s_debounceCnt[7]~4_combout\,
	datad => \inst8|Add0~42_combout\,
	combout => \inst8|s_debounceCnt[21]~9_combout\);

-- Location: FF_X54_Y28_N1
\inst8|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(21));

-- Location: LCCOMB_X55_Y28_N28
\inst8|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~4_combout\ = (\inst8|s_debounceCnt\(16)) # ((\inst8|s_debounceCnt\(15)) # (\inst8|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(16),
	datac => \inst8|s_debounceCnt\(15),
	datad => \inst8|s_debounceCnt\(17),
	combout => \inst8|LessThan0~4_combout\);

-- Location: LCCOMB_X53_Y28_N0
\inst8|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~0_combout\ = (\inst8|s_debounceCnt\(6) & ((\inst8|s_debounceCnt\(5)) # ((\inst8|s_debounceCnt\(0)) # (!\inst8|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(5),
	datab => \inst8|s_debounceCnt\(0),
	datac => \inst8|s_debounceCnt\(6),
	datad => \inst8|s_pulsedOut~5_combout\,
	combout => \inst8|LessThan0~0_combout\);

-- Location: LCCOMB_X53_Y28_N10
\inst8|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~1_combout\ = (\inst8|s_debounceCnt\(9) & ((\inst8|s_debounceCnt\(7)) # (\inst8|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(9),
	datac => \inst8|s_debounceCnt\(7),
	datad => \inst8|LessThan0~0_combout\,
	combout => \inst8|LessThan0~1_combout\);

-- Location: LCCOMB_X53_Y28_N24
\inst8|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~2_combout\ = (\inst8|s_debounceCnt\(11) & ((\inst8|s_debounceCnt\(10)) # ((\inst8|s_debounceCnt\(8) & \inst8|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(11),
	datab => \inst8|s_debounceCnt\(10),
	datac => \inst8|s_debounceCnt\(8),
	datad => \inst8|LessThan0~1_combout\,
	combout => \inst8|LessThan0~2_combout\);

-- Location: LCCOMB_X53_Y28_N2
\inst8|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~3_combout\ = (\inst8|s_debounceCnt\(14) & ((\inst8|s_debounceCnt\(13)) # ((\inst8|s_debounceCnt\(12)) # (\inst8|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(13),
	datab => \inst8|s_debounceCnt\(14),
	datac => \inst8|s_debounceCnt\(12),
	datad => \inst8|LessThan0~2_combout\,
	combout => \inst8|LessThan0~3_combout\);

-- Location: LCCOMB_X53_Y28_N28
\inst8|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~5_combout\ = (\inst8|s_debounceCnt\(19) & ((\inst8|LessThan0~4_combout\) # (\inst8|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(19),
	datac => \inst8|LessThan0~4_combout\,
	datad => \inst8|LessThan0~3_combout\,
	combout => \inst8|LessThan0~5_combout\);

-- Location: LCCOMB_X54_Y28_N10
\inst8|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~6_combout\ = (\inst8|s_debounceCnt\(20)) # ((\inst8|s_debounceCnt\(21)) # ((\inst8|s_debounceCnt\(18) & \inst8|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(20),
	datab => \inst8|s_debounceCnt\(21),
	datac => \inst8|s_debounceCnt\(18),
	datad => \inst8|LessThan0~5_combout\,
	combout => \inst8|LessThan0~6_combout\);

-- Location: LCCOMB_X54_Y28_N16
\inst8|s_debounceCnt[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt[7]~0_combout\ = (\inst8|s_dirtyIn~q\ & ((!\inst8|LessThan0~6_combout\) # (!\inst8|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(22),
	datac => \inst8|s_dirtyIn~q\,
	datad => \inst8|LessThan0~6_combout\,
	combout => \inst8|s_debounceCnt[7]~0_combout\);

-- Location: LCCOMB_X53_Y28_N4
\inst8|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~1_combout\ = (\inst8|s_debounceCnt[7]~0_combout\ & ((\inst8|Add0~12_combout\) # (!\inst8|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add0~12_combout\,
	datac => \inst8|s_previousIn~q\,
	datad => \inst8|s_debounceCnt[7]~0_combout\,
	combout => \inst8|s_debounceCnt~1_combout\);

-- Location: FF_X53_Y28_N5
\inst8|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~1_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(6));

-- Location: LCCOMB_X52_Y28_N24
\inst8|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = (\inst8|s_debounceCnt\(7) & (\inst8|Add0~13\ & VCC)) # (!\inst8|s_debounceCnt\(7) & (!\inst8|Add0~13\))
-- \inst8|Add0~15\ = CARRY((!\inst8|s_debounceCnt\(7) & !\inst8|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\,
	cout => \inst8|Add0~15\);

-- Location: LCCOMB_X54_Y28_N12
\inst8|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~12_combout\ = (\inst8|Add0~14_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~14_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~12_combout\);

-- Location: FF_X54_Y28_N13
\inst8|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~12_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(7));

-- Location: LCCOMB_X52_Y28_N26
\inst8|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~16_combout\ = (\inst8|s_debounceCnt\(8) & ((GND) # (!\inst8|Add0~15\))) # (!\inst8|s_debounceCnt\(8) & (\inst8|Add0~15\ $ (GND)))
-- \inst8|Add0~17\ = CARRY((\inst8|s_debounceCnt\(8)) # (!\inst8|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst8|Add0~15\,
	combout => \inst8|Add0~16_combout\,
	cout => \inst8|Add0~17\);

-- Location: LCCOMB_X52_Y28_N6
\inst8|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~13_combout\ = (\inst8|s_debounceCnt[7]~0_combout\ & ((\inst8|Add0~16_combout\) # (!\inst8|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_previousIn~q\,
	datac => \inst8|Add0~16_combout\,
	datad => \inst8|s_debounceCnt[7]~0_combout\,
	combout => \inst8|s_debounceCnt~13_combout\);

-- Location: FF_X52_Y28_N7
\inst8|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~13_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(8));

-- Location: LCCOMB_X52_Y28_N28
\inst8|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~18_combout\ = (\inst8|s_debounceCnt\(9) & (\inst8|Add0~17\ & VCC)) # (!\inst8|s_debounceCnt\(9) & (!\inst8|Add0~17\))
-- \inst8|Add0~19\ = CARRY((!\inst8|s_debounceCnt\(9) & !\inst8|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst8|Add0~17\,
	combout => \inst8|Add0~18_combout\,
	cout => \inst8|Add0~19\);

-- Location: LCCOMB_X53_Y28_N26
\inst8|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~14_combout\ = (\inst8|s_debounceCnt[7]~0_combout\ & ((\inst8|Add0~18_combout\) # (!\inst8|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add0~18_combout\,
	datac => \inst8|s_previousIn~q\,
	datad => \inst8|s_debounceCnt[7]~0_combout\,
	combout => \inst8|s_debounceCnt~14_combout\);

-- Location: FF_X53_Y28_N27
\inst8|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~14_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(9));

-- Location: LCCOMB_X52_Y28_N30
\inst8|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~20_combout\ = (\inst8|s_debounceCnt\(10) & ((GND) # (!\inst8|Add0~19\))) # (!\inst8|s_debounceCnt\(10) & (\inst8|Add0~19\ $ (GND)))
-- \inst8|Add0~21\ = CARRY((\inst8|s_debounceCnt\(10)) # (!\inst8|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst8|Add0~19\,
	combout => \inst8|Add0~20_combout\,
	cout => \inst8|Add0~21\);

-- Location: LCCOMB_X54_Y28_N18
\inst8|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~15_combout\ = (\inst8|Add0~20_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~20_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~15_combout\);

-- Location: FF_X54_Y28_N19
\inst8|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~15_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(10));

-- Location: LCCOMB_X52_Y27_N0
\inst8|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~22_combout\ = (\inst8|s_debounceCnt\(11) & (\inst8|Add0~21\ & VCC)) # (!\inst8|s_debounceCnt\(11) & (!\inst8|Add0~21\))
-- \inst8|Add0~23\ = CARRY((!\inst8|s_debounceCnt\(11) & !\inst8|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst8|Add0~21\,
	combout => \inst8|Add0~22_combout\,
	cout => \inst8|Add0~23\);

-- Location: LCCOMB_X53_Y28_N16
\inst8|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~16_combout\ = (\inst8|s_debounceCnt[7]~0_combout\ & ((\inst8|Add0~22_combout\) # (!\inst8|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_previousIn~q\,
	datac => \inst8|Add0~22_combout\,
	datad => \inst8|s_debounceCnt[7]~0_combout\,
	combout => \inst8|s_debounceCnt~16_combout\);

-- Location: FF_X53_Y28_N17
\inst8|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~16_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(11));

-- Location: LCCOMB_X54_Y28_N6
\inst8|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~10_combout\ = (\inst8|Add0~24_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~24_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~10_combout\);

-- Location: FF_X54_Y28_N7
\inst8|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~10_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(12));

-- Location: LCCOMB_X54_Y28_N24
\inst8|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_pulsedOut~1_combout\ = (!\inst8|s_debounceCnt\(12) & (!\inst8|s_debounceCnt\(13) & (!\inst8|s_debounceCnt\(20) & !\inst8|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(12),
	datab => \inst8|s_debounceCnt\(13),
	datac => \inst8|s_debounceCnt\(20),
	datad => \inst8|s_debounceCnt\(21),
	combout => \inst8|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X52_Y28_N4
\inst8|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_pulsedOut~0_combout\ = (!\inst8|s_debounceCnt\(15) & (!\inst8|s_debounceCnt\(16) & (!\inst8|s_debounceCnt\(17) & !\inst8|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(15),
	datab => \inst8|s_debounceCnt\(16),
	datac => \inst8|s_debounceCnt\(17),
	datad => \inst8|s_debounceCnt\(6),
	combout => \inst8|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X53_Y27_N0
\inst8|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_pulsedOut~3_combout\ = (!\inst8|s_debounceCnt\(19) & (!\inst8|s_debounceCnt\(11) & (!\inst8|s_debounceCnt\(14) & !\inst8|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(19),
	datab => \inst8|s_debounceCnt\(11),
	datac => \inst8|s_debounceCnt\(14),
	datad => \inst8|s_debounceCnt\(18),
	combout => \inst8|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X52_Y28_N0
\inst8|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_pulsedOut~2_combout\ = (!\inst8|s_debounceCnt\(7) & (!\inst8|s_debounceCnt\(9) & (!\inst8|s_debounceCnt\(10) & !\inst8|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(7),
	datab => \inst8|s_debounceCnt\(9),
	datac => \inst8|s_debounceCnt\(10),
	datad => \inst8|s_debounceCnt\(8),
	combout => \inst8|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X52_Y28_N2
\inst8|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_pulsedOut~4_combout\ = (\inst8|s_pulsedOut~1_combout\ & (\inst8|s_pulsedOut~0_combout\ & (\inst8|s_pulsedOut~3_combout\ & \inst8|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_pulsedOut~1_combout\,
	datab => \inst8|s_pulsedOut~0_combout\,
	datac => \inst8|s_pulsedOut~3_combout\,
	datad => \inst8|s_pulsedOut~2_combout\,
	combout => \inst8|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X52_Y28_N8
\inst8|s_debounceCnt[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt[7]~2_combout\ = ((\inst8|s_debounceCnt\(5)) # ((\inst8|s_debounceCnt\(0)) # (!\inst8|s_pulsedOut~4_combout\))) # (!\inst8|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_pulsedOut~5_combout\,
	datab => \inst8|s_debounceCnt\(5),
	datac => \inst8|s_debounceCnt\(0),
	datad => \inst8|s_pulsedOut~4_combout\,
	combout => \inst8|s_debounceCnt[7]~2_combout\);

-- Location: LCCOMB_X54_Y28_N22
\inst8|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt[22]~25_combout\ = (\inst8|s_debounceCnt\(22) & (((!\inst8|LessThan0~6_combout\)))) # (!\inst8|s_debounceCnt\(22) & ((\inst8|s_debounceCnt[7]~2_combout\) # ((!\inst8|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(22),
	datab => \inst8|s_debounceCnt[7]~2_combout\,
	datac => \inst8|s_previousIn~q\,
	datad => \inst8|LessThan0~6_combout\,
	combout => \inst8|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X52_Y27_N22
\inst8|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~44_combout\ = \inst8|Add0~43\ $ (\inst8|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|s_debounceCnt\(22),
	cin => \inst8|Add0~43\,
	combout => \inst8|Add0~44_combout\);

-- Location: LCCOMB_X54_Y28_N20
\inst8|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt[22]~26_combout\ = (\inst8|s_dirtyIn~q\ & (\inst8|s_debounceCnt[22]~25_combout\ & ((\inst8|Add0~44_combout\) # (!\inst8|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_dirtyIn~q\,
	datab => \inst8|s_previousIn~q\,
	datac => \inst8|s_debounceCnt[22]~25_combout\,
	datad => \inst8|Add0~44_combout\,
	combout => \inst8|s_debounceCnt[22]~26_combout\);

-- Location: FF_X54_Y28_N21
\inst8|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(22));

-- Location: LCCOMB_X54_Y28_N28
\inst8|s_debounceCnt[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt[7]~4_combout\ = (\inst8|s_previousIn~q\ & (\inst8|s_dirtyIn~q\ & ((!\inst8|LessThan0~6_combout\) # (!\inst8|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(22),
	datab => \inst8|s_previousIn~q\,
	datac => \inst8|s_dirtyIn~q\,
	datad => \inst8|LessThan0~6_combout\,
	combout => \inst8|s_debounceCnt[7]~4_combout\);

-- Location: LCCOMB_X53_Y28_N20
\inst8|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~24_combout\ = (\inst8|Add0~0_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~24_combout\);

-- Location: FF_X53_Y28_N21
\inst8|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~24_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(0));

-- Location: LCCOMB_X52_Y28_N12
\inst8|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst8|s_debounceCnt\(1) & (\inst8|Add0~1\ & VCC)) # (!\inst8|s_debounceCnt\(1) & (!\inst8|Add0~1\))
-- \inst8|Add0~3\ = CARRY((!\inst8|s_debounceCnt\(1) & !\inst8|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: LCCOMB_X53_Y28_N30
\inst8|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~20_combout\ = (\inst8|Add0~2_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~2_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~20_combout\);

-- Location: FF_X53_Y28_N31
\inst8|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~20_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(1));

-- Location: LCCOMB_X52_Y28_N14
\inst8|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = (\inst8|s_debounceCnt\(2) & ((GND) # (!\inst8|Add0~3\))) # (!\inst8|s_debounceCnt\(2) & (\inst8|Add0~3\ $ (GND)))
-- \inst8|Add0~5\ = CARRY((\inst8|s_debounceCnt\(2)) # (!\inst8|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: LCCOMB_X53_Y28_N8
\inst8|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~21_combout\ = (\inst8|Add0~4_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~4_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~21_combout\);

-- Location: FF_X53_Y28_N9
\inst8|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~21_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(2));

-- Location: LCCOMB_X52_Y28_N16
\inst8|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst8|s_debounceCnt\(3) & (\inst8|Add0~5\ & VCC)) # (!\inst8|s_debounceCnt\(3) & (!\inst8|Add0~5\))
-- \inst8|Add0~7\ = CARRY((!\inst8|s_debounceCnt\(3) & !\inst8|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X53_Y28_N18
\inst8|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~22_combout\ = (\inst8|Add0~6_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~6_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~22_combout\);

-- Location: FF_X53_Y28_N19
\inst8|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~22_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(3));

-- Location: LCCOMB_X53_Y28_N12
\inst8|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_debounceCnt~23_combout\ = (\inst8|Add0~8_combout\ & \inst8|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~8_combout\,
	datad => \inst8|s_debounceCnt[7]~4_combout\,
	combout => \inst8|s_debounceCnt~23_combout\);

-- Location: FF_X53_Y28_N13
\inst8|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_debounceCnt~23_combout\,
	ena => \inst8|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_debounceCnt\(4));

-- Location: LCCOMB_X53_Y28_N6
\inst8|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_pulsedOut~5_combout\ = (!\inst8|s_debounceCnt\(4) & (!\inst8|s_debounceCnt\(2) & (!\inst8|s_debounceCnt\(1) & !\inst8|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(4),
	datab => \inst8|s_debounceCnt\(2),
	datac => \inst8|s_debounceCnt\(1),
	datad => \inst8|s_debounceCnt\(3),
	combout => \inst8|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X53_Y27_N6
\inst8|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_pulsedOut~6_combout\ = (\inst8|s_debounceCnt\(0) & (\inst8|s_previousIn~q\ & (!\inst8|s_debounceCnt\(22) & \inst8|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_debounceCnt\(0),
	datab => \inst8|s_previousIn~q\,
	datac => \inst8|s_debounceCnt\(22),
	datad => \inst8|s_dirtyIn~q\,
	combout => \inst8|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X56_Y25_N6
\inst8|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_pulsedOut~7_combout\ = (\inst8|s_pulsedOut~5_combout\ & (!\inst8|s_debounceCnt\(5) & (\inst8|s_pulsedOut~6_combout\ & \inst8|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_pulsedOut~5_combout\,
	datab => \inst8|s_debounceCnt\(5),
	datac => \inst8|s_pulsedOut~6_combout\,
	datad => \inst8|s_pulsedOut~4_combout\,
	combout => \inst8|s_pulsedOut~7_combout\);

-- Location: FF_X56_Y25_N7
\inst8|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst8|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_pulsedOut~q\);

-- Location: LCCOMB_X72_Y25_N10
\inst6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst6|s_debounceCnt\(0) $ (VCC)
-- \inst6|Add0~1\ = CARRY(\inst6|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst6|Add0~0_combout\,
	cout => \inst6|Add0~1\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X73_Y25_N13
\inst6|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_dirtyIn~q\);

-- Location: FF_X73_Y25_N27
\inst6|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst6|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_previousIn~q\);

-- Location: LCCOMB_X74_Y25_N2
\inst6|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_pulsedOut~5_combout\ = (!\inst6|s_debounceCnt\(2) & (!\inst6|s_debounceCnt\(4) & (!\inst6|s_debounceCnt\(3) & !\inst6|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(2),
	datab => \inst6|s_debounceCnt\(4),
	datac => \inst6|s_debounceCnt\(3),
	datad => \inst6|s_debounceCnt\(1),
	combout => \inst6|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X72_Y25_N20
\inst6|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~10_combout\ = (\inst6|s_debounceCnt\(5) & (\inst6|Add0~9\ & VCC)) # (!\inst6|s_debounceCnt\(5) & (!\inst6|Add0~9\))
-- \inst6|Add0~11\ = CARRY((!\inst6|s_debounceCnt\(5) & !\inst6|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst6|Add0~9\,
	combout => \inst6|Add0~10_combout\,
	cout => \inst6|Add0~11\);

-- Location: LCCOMB_X72_Y25_N22
\inst6|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~12_combout\ = (\inst6|s_debounceCnt\(6) & ((GND) # (!\inst6|Add0~11\))) # (!\inst6|s_debounceCnt\(6) & (\inst6|Add0~11\ $ (GND)))
-- \inst6|Add0~13\ = CARRY((\inst6|s_debounceCnt\(6)) # (!\inst6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst6|Add0~11\,
	combout => \inst6|Add0~12_combout\,
	cout => \inst6|Add0~13\);

-- Location: LCCOMB_X74_Y25_N30
\inst6|s_debounceCnt[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt[10]~3_combout\ = ((\inst6|s_debounceCnt\(22)) # ((\inst6|s_debounceCnt[10]~2_combout\) # (!\inst6|s_dirtyIn~q\))) # (!\inst6|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_previousIn~q\,
	datab => \inst6|s_debounceCnt\(22),
	datac => \inst6|s_dirtyIn~q\,
	datad => \inst6|s_debounceCnt[10]~2_combout\,
	combout => \inst6|s_debounceCnt[10]~3_combout\);

-- Location: LCCOMB_X72_Y25_N26
\inst6|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~16_combout\ = (\inst6|s_debounceCnt\(8) & ((GND) # (!\inst6|Add0~15\))) # (!\inst6|s_debounceCnt\(8) & (\inst6|Add0~15\ $ (GND)))
-- \inst6|Add0~17\ = CARRY((\inst6|s_debounceCnt\(8)) # (!\inst6|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst6|Add0~15\,
	combout => \inst6|Add0~16_combout\,
	cout => \inst6|Add0~17\);

-- Location: LCCOMB_X72_Y25_N28
\inst6|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~18_combout\ = (\inst6|s_debounceCnt\(9) & (\inst6|Add0~17\ & VCC)) # (!\inst6|s_debounceCnt\(9) & (!\inst6|Add0~17\))
-- \inst6|Add0~19\ = CARRY((!\inst6|s_debounceCnt\(9) & !\inst6|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst6|Add0~17\,
	combout => \inst6|Add0~18_combout\,
	cout => \inst6|Add0~19\);

-- Location: LCCOMB_X74_Y25_N4
\inst6|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~14_combout\ = (\inst6|s_debounceCnt[10]~0_combout\ & ((\inst6|Add0~18_combout\) # (!\inst6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_previousIn~q\,
	datac => \inst6|Add0~18_combout\,
	datad => \inst6|s_debounceCnt[10]~0_combout\,
	combout => \inst6|s_debounceCnt~14_combout\);

-- Location: FF_X74_Y25_N5
\inst6|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~14_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(9));

-- Location: LCCOMB_X72_Y25_N30
\inst6|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~20_combout\ = (\inst6|s_debounceCnt\(10) & ((GND) # (!\inst6|Add0~19\))) # (!\inst6|s_debounceCnt\(10) & (\inst6|Add0~19\ $ (GND)))
-- \inst6|Add0~21\ = CARRY((\inst6|s_debounceCnt\(10)) # (!\inst6|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst6|Add0~19\,
	combout => \inst6|Add0~20_combout\,
	cout => \inst6|Add0~21\);

-- Location: LCCOMB_X73_Y25_N2
\inst6|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~15_combout\ = (\inst6|Add0~20_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~20_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~15_combout\);

-- Location: FF_X73_Y25_N3
\inst6|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~15_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(10));

-- Location: LCCOMB_X72_Y24_N0
\inst6|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~22_combout\ = (\inst6|s_debounceCnt\(11) & (\inst6|Add0~21\ & VCC)) # (!\inst6|s_debounceCnt\(11) & (!\inst6|Add0~21\))
-- \inst6|Add0~23\ = CARRY((!\inst6|s_debounceCnt\(11) & !\inst6|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst6|Add0~21\,
	combout => \inst6|Add0~22_combout\,
	cout => \inst6|Add0~23\);

-- Location: LCCOMB_X73_Y25_N24
\inst6|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~16_combout\ = (\inst6|s_debounceCnt[10]~0_combout\ & ((\inst6|Add0~22_combout\) # (!\inst6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_previousIn~q\,
	datac => \inst6|Add0~22_combout\,
	datad => \inst6|s_debounceCnt[10]~0_combout\,
	combout => \inst6|s_debounceCnt~16_combout\);

-- Location: FF_X73_Y25_N25
\inst6|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~16_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(11));

-- Location: LCCOMB_X72_Y24_N2
\inst6|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~24_combout\ = (\inst6|s_debounceCnt\(12) & ((GND) # (!\inst6|Add0~23\))) # (!\inst6|s_debounceCnt\(12) & (\inst6|Add0~23\ $ (GND)))
-- \inst6|Add0~25\ = CARRY((\inst6|s_debounceCnt\(12)) # (!\inst6|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst6|Add0~23\,
	combout => \inst6|Add0~24_combout\,
	cout => \inst6|Add0~25\);

-- Location: LCCOMB_X72_Y24_N26
\inst6|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~10_combout\ = (\inst6|Add0~24_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~24_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~10_combout\);

-- Location: FF_X72_Y24_N27
\inst6|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~10_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(12));

-- Location: LCCOMB_X72_Y24_N4
\inst6|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~26_combout\ = (\inst6|s_debounceCnt\(13) & (\inst6|Add0~25\ & VCC)) # (!\inst6|s_debounceCnt\(13) & (!\inst6|Add0~25\))
-- \inst6|Add0~27\ = CARRY((!\inst6|s_debounceCnt\(13) & !\inst6|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst6|Add0~25\,
	combout => \inst6|Add0~26_combout\,
	cout => \inst6|Add0~27\);

-- Location: LCCOMB_X73_Y25_N4
\inst6|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~11_combout\ = (\inst6|Add0~26_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~26_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~11_combout\);

-- Location: FF_X73_Y25_N5
\inst6|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~11_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(13));

-- Location: LCCOMB_X72_Y24_N6
\inst6|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~28_combout\ = (\inst6|s_debounceCnt\(14) & ((GND) # (!\inst6|Add0~27\))) # (!\inst6|s_debounceCnt\(14) & (\inst6|Add0~27\ $ (GND)))
-- \inst6|Add0~29\ = CARRY((\inst6|s_debounceCnt\(14)) # (!\inst6|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst6|Add0~27\,
	combout => \inst6|Add0~28_combout\,
	cout => \inst6|Add0~29\);

-- Location: LCCOMB_X72_Y25_N4
\inst6|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~17_combout\ = (\inst6|s_debounceCnt[10]~0_combout\ & ((\inst6|Add0~28_combout\) # (!\inst6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~28_combout\,
	datab => \inst6|s_previousIn~q\,
	datad => \inst6|s_debounceCnt[10]~0_combout\,
	combout => \inst6|s_debounceCnt~17_combout\);

-- Location: FF_X72_Y25_N5
\inst6|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~17_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(14));

-- Location: LCCOMB_X72_Y24_N8
\inst6|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~30_combout\ = (\inst6|s_debounceCnt\(15) & (\inst6|Add0~29\ & VCC)) # (!\inst6|s_debounceCnt\(15) & (!\inst6|Add0~29\))
-- \inst6|Add0~31\ = CARRY((!\inst6|s_debounceCnt\(15) & !\inst6|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst6|Add0~29\,
	combout => \inst6|Add0~30_combout\,
	cout => \inst6|Add0~31\);

-- Location: LCCOMB_X72_Y24_N28
\inst6|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~5_combout\ = (\inst6|Add0~30_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~30_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~5_combout\);

-- Location: FF_X72_Y24_N29
\inst6|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~5_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(15));

-- Location: LCCOMB_X72_Y24_N10
\inst6|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~32_combout\ = (\inst6|s_debounceCnt\(16) & ((GND) # (!\inst6|Add0~31\))) # (!\inst6|s_debounceCnt\(16) & (\inst6|Add0~31\ $ (GND)))
-- \inst6|Add0~33\ = CARRY((\inst6|s_debounceCnt\(16)) # (!\inst6|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst6|Add0~31\,
	combout => \inst6|Add0~32_combout\,
	cout => \inst6|Add0~33\);

-- Location: LCCOMB_X72_Y24_N30
\inst6|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~6_combout\ = (\inst6|Add0~32_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~32_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~6_combout\);

-- Location: FF_X72_Y24_N31
\inst6|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~6_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(16));

-- Location: LCCOMB_X72_Y24_N12
\inst6|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~34_combout\ = (\inst6|s_debounceCnt\(17) & (\inst6|Add0~33\ & VCC)) # (!\inst6|s_debounceCnt\(17) & (!\inst6|Add0~33\))
-- \inst6|Add0~35\ = CARRY((!\inst6|s_debounceCnt\(17) & !\inst6|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst6|Add0~33\,
	combout => \inst6|Add0~34_combout\,
	cout => \inst6|Add0~35\);

-- Location: LCCOMB_X72_Y24_N24
\inst6|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~7_combout\ = (\inst6|Add0~34_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~34_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~7_combout\);

-- Location: FF_X72_Y24_N25
\inst6|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~7_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(17));

-- Location: LCCOMB_X72_Y24_N14
\inst6|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~36_combout\ = (\inst6|s_debounceCnt\(18) & ((GND) # (!\inst6|Add0~35\))) # (!\inst6|s_debounceCnt\(18) & (\inst6|Add0~35\ $ (GND)))
-- \inst6|Add0~37\ = CARRY((\inst6|s_debounceCnt\(18)) # (!\inst6|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst6|Add0~35\,
	combout => \inst6|Add0~36_combout\,
	cout => \inst6|Add0~37\);

-- Location: LCCOMB_X73_Y25_N10
\inst6|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt[18]~18_combout\ = (\inst6|s_debounceCnt[10]~0_combout\ & (\inst6|s_debounceCnt[10]~3_combout\ & ((\inst6|Add0~36_combout\) # (!\inst6|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt[10]~0_combout\,
	datab => \inst6|s_debounceCnt[10]~3_combout\,
	datac => \inst6|s_previousIn~q\,
	datad => \inst6|Add0~36_combout\,
	combout => \inst6|s_debounceCnt[18]~18_combout\);

-- Location: FF_X73_Y25_N11
\inst6|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(18));

-- Location: LCCOMB_X72_Y24_N16
\inst6|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~38_combout\ = (\inst6|s_debounceCnt\(19) & (\inst6|Add0~37\ & VCC)) # (!\inst6|s_debounceCnt\(19) & (!\inst6|Add0~37\))
-- \inst6|Add0~39\ = CARRY((!\inst6|s_debounceCnt\(19) & !\inst6|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst6|Add0~37\,
	combout => \inst6|Add0~38_combout\,
	cout => \inst6|Add0~39\);

-- Location: LCCOMB_X73_Y25_N6
\inst6|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt[19]~19_combout\ = (\inst6|s_debounceCnt[10]~0_combout\ & (\inst6|s_debounceCnt[10]~3_combout\ & ((\inst6|Add0~38_combout\) # (!\inst6|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt[10]~0_combout\,
	datab => \inst6|s_previousIn~q\,
	datac => \inst6|s_debounceCnt[10]~3_combout\,
	datad => \inst6|Add0~38_combout\,
	combout => \inst6|s_debounceCnt[19]~19_combout\);

-- Location: FF_X73_Y25_N7
\inst6|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(19));

-- Location: LCCOMB_X72_Y24_N18
\inst6|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~40_combout\ = (\inst6|s_debounceCnt\(20) & ((GND) # (!\inst6|Add0~39\))) # (!\inst6|s_debounceCnt\(20) & (\inst6|Add0~39\ $ (GND)))
-- \inst6|Add0~41\ = CARRY((\inst6|s_debounceCnt\(20)) # (!\inst6|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst6|Add0~39\,
	combout => \inst6|Add0~40_combout\,
	cout => \inst6|Add0~41\);

-- Location: LCCOMB_X72_Y25_N8
\inst6|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt[20]~8_combout\ = (\inst6|s_debounceCnt[10]~3_combout\ & (\inst6|s_debounceCnt[10]~4_combout\ & \inst6|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt[10]~3_combout\,
	datac => \inst6|s_debounceCnt[10]~4_combout\,
	datad => \inst6|Add0~40_combout\,
	combout => \inst6|s_debounceCnt[20]~8_combout\);

-- Location: FF_X72_Y25_N9
\inst6|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(20));

-- Location: LCCOMB_X72_Y24_N20
\inst6|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~42_combout\ = (\inst6|s_debounceCnt\(21) & (\inst6|Add0~41\ & VCC)) # (!\inst6|s_debounceCnt\(21) & (!\inst6|Add0~41\))
-- \inst6|Add0~43\ = CARRY((!\inst6|s_debounceCnt\(21) & !\inst6|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst6|Add0~41\,
	combout => \inst6|Add0~42_combout\,
	cout => \inst6|Add0~43\);

-- Location: LCCOMB_X73_Y25_N8
\inst6|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt[21]~9_combout\ = (\inst6|s_debounceCnt[10]~4_combout\ & (\inst6|s_debounceCnt[10]~3_combout\ & \inst6|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt[10]~4_combout\,
	datac => \inst6|s_debounceCnt[10]~3_combout\,
	datad => \inst6|Add0~42_combout\,
	combout => \inst6|s_debounceCnt[21]~9_combout\);

-- Location: FF_X73_Y25_N9
\inst6|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(21));

-- Location: LCCOMB_X73_Y24_N2
\inst6|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~4_combout\ = (\inst6|s_debounceCnt\(15)) # ((\inst6|s_debounceCnt\(17)) # (\inst6|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(15),
	datac => \inst6|s_debounceCnt\(17),
	datad => \inst6|s_debounceCnt\(16),
	combout => \inst6|LessThan0~4_combout\);

-- Location: LCCOMB_X74_Y25_N16
\inst6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~0_combout\ = (\inst6|s_debounceCnt\(6) & ((\inst6|s_debounceCnt\(5)) # ((\inst6|s_debounceCnt\(0)) # (!\inst6|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(5),
	datab => \inst6|s_debounceCnt\(0),
	datac => \inst6|s_debounceCnt\(6),
	datad => \inst6|s_pulsedOut~5_combout\,
	combout => \inst6|LessThan0~0_combout\);

-- Location: LCCOMB_X74_Y25_N6
\inst6|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~1_combout\ = (\inst6|s_debounceCnt\(9) & ((\inst6|s_debounceCnt\(7)) # (\inst6|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(9),
	datac => \inst6|s_debounceCnt\(7),
	datad => \inst6|LessThan0~0_combout\,
	combout => \inst6|LessThan0~1_combout\);

-- Location: LCCOMB_X73_Y25_N0
\inst6|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~2_combout\ = (\inst6|s_debounceCnt\(11) & ((\inst6|s_debounceCnt\(10)) # ((\inst6|s_debounceCnt\(8) & \inst6|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(10),
	datab => \inst6|s_debounceCnt\(11),
	datac => \inst6|s_debounceCnt\(8),
	datad => \inst6|LessThan0~1_combout\,
	combout => \inst6|LessThan0~2_combout\);

-- Location: LCCOMB_X73_Y25_N18
\inst6|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~3_combout\ = (\inst6|s_debounceCnt\(14) & ((\inst6|s_debounceCnt\(12)) # ((\inst6|s_debounceCnt\(13)) # (\inst6|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(12),
	datab => \inst6|s_debounceCnt\(13),
	datac => \inst6|s_debounceCnt\(14),
	datad => \inst6|LessThan0~2_combout\,
	combout => \inst6|LessThan0~3_combout\);

-- Location: LCCOMB_X73_Y25_N28
\inst6|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~5_combout\ = (\inst6|s_debounceCnt\(19) & ((\inst6|LessThan0~4_combout\) # (\inst6|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(19),
	datac => \inst6|LessThan0~4_combout\,
	datad => \inst6|LessThan0~3_combout\,
	combout => \inst6|LessThan0~5_combout\);

-- Location: LCCOMB_X73_Y25_N16
\inst6|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~6_combout\ = (\inst6|s_debounceCnt\(20)) # ((\inst6|s_debounceCnt\(21)) # ((\inst6|s_debounceCnt\(18) & \inst6|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(20),
	datab => \inst6|s_debounceCnt\(21),
	datac => \inst6|s_debounceCnt\(18),
	datad => \inst6|LessThan0~5_combout\,
	combout => \inst6|LessThan0~6_combout\);

-- Location: LCCOMB_X73_Y25_N12
\inst6|s_debounceCnt[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt[10]~0_combout\ = (\inst6|s_dirtyIn~q\ & ((!\inst6|LessThan0~6_combout\) # (!\inst6|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(22),
	datac => \inst6|s_dirtyIn~q\,
	datad => \inst6|LessThan0~6_combout\,
	combout => \inst6|s_debounceCnt[10]~0_combout\);

-- Location: LCCOMB_X74_Y25_N28
\inst6|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~1_combout\ = (\inst6|s_debounceCnt[10]~0_combout\ & ((\inst6|Add0~12_combout\) # (!\inst6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_previousIn~q\,
	datac => \inst6|Add0~12_combout\,
	datad => \inst6|s_debounceCnt[10]~0_combout\,
	combout => \inst6|s_debounceCnt~1_combout\);

-- Location: FF_X74_Y25_N29
\inst6|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~1_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(6));

-- Location: LCCOMB_X72_Y25_N24
\inst6|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~14_combout\ = (\inst6|s_debounceCnt\(7) & (\inst6|Add0~13\ & VCC)) # (!\inst6|s_debounceCnt\(7) & (!\inst6|Add0~13\))
-- \inst6|Add0~15\ = CARRY((!\inst6|s_debounceCnt\(7) & !\inst6|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst6|Add0~13\,
	combout => \inst6|Add0~14_combout\,
	cout => \inst6|Add0~15\);

-- Location: LCCOMB_X74_Y25_N14
\inst6|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~12_combout\ = (\inst6|Add0~14_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~14_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~12_combout\);

-- Location: FF_X74_Y25_N15
\inst6|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~12_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(7));

-- Location: LCCOMB_X73_Y25_N14
\inst6|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~13_combout\ = (\inst6|s_debounceCnt[10]~0_combout\ & ((\inst6|Add0~16_combout\) # (!\inst6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_previousIn~q\,
	datac => \inst6|Add0~16_combout\,
	datad => \inst6|s_debounceCnt[10]~0_combout\,
	combout => \inst6|s_debounceCnt~13_combout\);

-- Location: FF_X73_Y25_N15
\inst6|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~13_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(8));

-- Location: LCCOMB_X74_Y25_N26
\inst6|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_pulsedOut~2_combout\ = (!\inst6|s_debounceCnt\(8) & (!\inst6|s_debounceCnt\(9) & (!\inst6|s_debounceCnt\(7) & !\inst6|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(8),
	datab => \inst6|s_debounceCnt\(9),
	datac => \inst6|s_debounceCnt\(7),
	datad => \inst6|s_debounceCnt\(10),
	combout => \inst6|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X73_Y25_N22
\inst6|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_pulsedOut~3_combout\ = (!\inst6|s_debounceCnt\(19) & (!\inst6|s_debounceCnt\(14) & (!\inst6|s_debounceCnt\(18) & !\inst6|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(19),
	datab => \inst6|s_debounceCnt\(14),
	datac => \inst6|s_debounceCnt\(18),
	datad => \inst6|s_debounceCnt\(11),
	combout => \inst6|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X72_Y25_N6
\inst6|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_pulsedOut~1_combout\ = (!\inst6|s_debounceCnt\(13) & (!\inst6|s_debounceCnt\(20) & (!\inst6|s_debounceCnt\(21) & !\inst6|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(13),
	datab => \inst6|s_debounceCnt\(20),
	datac => \inst6|s_debounceCnt\(21),
	datad => \inst6|s_debounceCnt\(12),
	combout => \inst6|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X73_Y24_N16
\inst6|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_pulsedOut~0_combout\ = (!\inst6|s_debounceCnt\(17) & (!\inst6|s_debounceCnt\(15) & (!\inst6|s_debounceCnt\(16) & !\inst6|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(17),
	datab => \inst6|s_debounceCnt\(15),
	datac => \inst6|s_debounceCnt\(16),
	datad => \inst6|s_debounceCnt\(6),
	combout => \inst6|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X74_Y25_N0
\inst6|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_pulsedOut~4_combout\ = (\inst6|s_pulsedOut~2_combout\ & (\inst6|s_pulsedOut~3_combout\ & (\inst6|s_pulsedOut~1_combout\ & \inst6|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_pulsedOut~2_combout\,
	datab => \inst6|s_pulsedOut~3_combout\,
	datac => \inst6|s_pulsedOut~1_combout\,
	datad => \inst6|s_pulsedOut~0_combout\,
	combout => \inst6|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X74_Y25_N24
\inst6|s_debounceCnt[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt[10]~2_combout\ = ((\inst6|s_debounceCnt\(0)) # ((\inst6|s_debounceCnt\(5)) # (!\inst6|s_pulsedOut~4_combout\))) # (!\inst6|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_pulsedOut~5_combout\,
	datab => \inst6|s_debounceCnt\(0),
	datac => \inst6|s_debounceCnt\(5),
	datad => \inst6|s_pulsedOut~4_combout\,
	combout => \inst6|s_debounceCnt[10]~2_combout\);

-- Location: LCCOMB_X73_Y25_N26
\inst6|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt[22]~25_combout\ = (\inst6|s_debounceCnt\(22) & (((!\inst6|LessThan0~6_combout\)))) # (!\inst6|s_debounceCnt\(22) & ((\inst6|s_debounceCnt[10]~2_combout\) # ((!\inst6|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt[10]~2_combout\,
	datab => \inst6|s_debounceCnt\(22),
	datac => \inst6|s_previousIn~q\,
	datad => \inst6|LessThan0~6_combout\,
	combout => \inst6|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X72_Y24_N22
\inst6|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~44_combout\ = \inst6|s_debounceCnt\(22) $ (\inst6|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(22),
	cin => \inst6|Add0~43\,
	combout => \inst6|Add0~44_combout\);

-- Location: LCCOMB_X73_Y25_N30
\inst6|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt[22]~26_combout\ = (\inst6|s_dirtyIn~q\ & (\inst6|s_debounceCnt[22]~25_combout\ & ((\inst6|Add0~44_combout\) # (!\inst6|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_previousIn~q\,
	datab => \inst6|s_dirtyIn~q\,
	datac => \inst6|s_debounceCnt[22]~25_combout\,
	datad => \inst6|Add0~44_combout\,
	combout => \inst6|s_debounceCnt[22]~26_combout\);

-- Location: FF_X73_Y25_N31
\inst6|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(22));

-- Location: LCCOMB_X73_Y25_N20
\inst6|s_debounceCnt[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt[10]~4_combout\ = (\inst6|s_previousIn~q\ & (\inst6|s_dirtyIn~q\ & ((!\inst6|LessThan0~6_combout\) # (!\inst6|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(22),
	datab => \inst6|s_previousIn~q\,
	datac => \inst6|s_dirtyIn~q\,
	datad => \inst6|LessThan0~6_combout\,
	combout => \inst6|s_debounceCnt[10]~4_combout\);

-- Location: LCCOMB_X74_Y25_N20
\inst6|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~24_combout\ = (\inst6|Add0~0_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~0_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~24_combout\);

-- Location: FF_X74_Y25_N21
\inst6|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~24_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(0));

-- Location: LCCOMB_X72_Y25_N12
\inst6|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~2_combout\ = (\inst6|s_debounceCnt\(1) & (\inst6|Add0~1\ & VCC)) # (!\inst6|s_debounceCnt\(1) & (!\inst6|Add0~1\))
-- \inst6|Add0~3\ = CARRY((!\inst6|s_debounceCnt\(1) & !\inst6|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst6|Add0~1\,
	combout => \inst6|Add0~2_combout\,
	cout => \inst6|Add0~3\);

-- Location: LCCOMB_X74_Y25_N18
\inst6|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~20_combout\ = (\inst6|Add0~2_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~2_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~20_combout\);

-- Location: FF_X74_Y25_N19
\inst6|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~20_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(1));

-- Location: LCCOMB_X72_Y25_N14
\inst6|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~4_combout\ = (\inst6|s_debounceCnt\(2) & ((GND) # (!\inst6|Add0~3\))) # (!\inst6|s_debounceCnt\(2) & (\inst6|Add0~3\ $ (GND)))
-- \inst6|Add0~5\ = CARRY((\inst6|s_debounceCnt\(2)) # (!\inst6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst6|Add0~3\,
	combout => \inst6|Add0~4_combout\,
	cout => \inst6|Add0~5\);

-- Location: LCCOMB_X74_Y25_N12
\inst6|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~21_combout\ = (\inst6|Add0~4_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~4_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~21_combout\);

-- Location: FF_X74_Y25_N13
\inst6|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~21_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(2));

-- Location: LCCOMB_X72_Y25_N16
\inst6|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~6_combout\ = (\inst6|s_debounceCnt\(3) & (\inst6|Add0~5\ & VCC)) # (!\inst6|s_debounceCnt\(3) & (!\inst6|Add0~5\))
-- \inst6|Add0~7\ = CARRY((!\inst6|s_debounceCnt\(3) & !\inst6|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst6|Add0~5\,
	combout => \inst6|Add0~6_combout\,
	cout => \inst6|Add0~7\);

-- Location: LCCOMB_X74_Y25_N22
\inst6|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~22_combout\ = (\inst6|Add0~6_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~6_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~22_combout\);

-- Location: FF_X74_Y25_N23
\inst6|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~22_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(3));

-- Location: LCCOMB_X72_Y25_N18
\inst6|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~8_combout\ = (\inst6|s_debounceCnt\(4) & ((GND) # (!\inst6|Add0~7\))) # (!\inst6|s_debounceCnt\(4) & (\inst6|Add0~7\ $ (GND)))
-- \inst6|Add0~9\ = CARRY((\inst6|s_debounceCnt\(4)) # (!\inst6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst6|Add0~7\,
	combout => \inst6|Add0~8_combout\,
	cout => \inst6|Add0~9\);

-- Location: LCCOMB_X74_Y25_N8
\inst6|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~23_combout\ = (\inst6|Add0~8_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~8_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~23_combout\);

-- Location: FF_X74_Y25_N9
\inst6|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~23_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(4));

-- Location: LCCOMB_X74_Y25_N10
\inst6|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_debounceCnt~27_combout\ = (\inst6|Add0~10_combout\ & \inst6|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~10_combout\,
	datad => \inst6|s_debounceCnt[10]~4_combout\,
	combout => \inst6|s_debounceCnt~27_combout\);

-- Location: FF_X74_Y25_N11
\inst6|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_debounceCnt~27_combout\,
	ena => \inst6|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_debounceCnt\(5));

-- Location: LCCOMB_X72_Y25_N2
\inst6|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_pulsedOut~6_combout\ = (!\inst6|s_debounceCnt\(22) & (\inst6|s_dirtyIn~q\ & (\inst6|s_debounceCnt\(0) & \inst6|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(22),
	datab => \inst6|s_dirtyIn~q\,
	datac => \inst6|s_debounceCnt\(0),
	datad => \inst6|s_previousIn~q\,
	combout => \inst6|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X56_Y25_N4
\inst6|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_pulsedOut~7_combout\ = (!\inst6|s_debounceCnt\(5) & (\inst6|s_pulsedOut~5_combout\ & (\inst6|s_pulsedOut~6_combout\ & \inst6|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_debounceCnt\(5),
	datab => \inst6|s_pulsedOut~5_combout\,
	datac => \inst6|s_pulsedOut~6_combout\,
	datad => \inst6|s_pulsedOut~4_combout\,
	combout => \inst6|s_pulsedOut~7_combout\);

-- Location: FF_X56_Y25_N5
\inst6|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst6|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|s_pulsedOut~q\);

-- Location: LCCOMB_X27_Y34_N10
\inst7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|s_debounceCnt\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X28_Y33_N4
\inst7|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_dirtyIn~feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \inst7|s_dirtyIn~feeder_combout\);

-- Location: FF_X28_Y33_N5
\inst7|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_dirtyIn~q\);

-- Location: FF_X25_Y33_N31
\inst7|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst7|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_previousIn~q\);

-- Location: LCCOMB_X27_Y34_N12
\inst7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|s_debounceCnt\(1) & (\inst7|Add0~1\ & VCC)) # (!\inst7|s_debounceCnt\(1) & (!\inst7|Add0~1\))
-- \inst7|Add0~3\ = CARRY((!\inst7|s_debounceCnt\(1) & !\inst7|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: LCCOMB_X27_Y34_N14
\inst7|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|s_debounceCnt\(2) & ((GND) # (!\inst7|Add0~3\))) # (!\inst7|s_debounceCnt\(2) & (\inst7|Add0~3\ $ (GND)))
-- \inst7|Add0~5\ = CARRY((\inst7|s_debounceCnt\(2)) # (!\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: LCCOMB_X26_Y33_N16
\inst7|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~21_combout\ = (\inst7|Add0~4_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~4_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~21_combout\);

-- Location: LCCOMB_X28_Y33_N24
\inst7|s_debounceCnt[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt[20]~3_combout\ = (\inst7|s_debounceCnt\(22)) # (((\inst7|s_debounceCnt[20]~2_combout\) # (!\inst7|s_dirtyIn~q\)) # (!\inst7|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(22),
	datab => \inst7|s_previousIn~q\,
	datac => \inst7|s_dirtyIn~q\,
	datad => \inst7|s_debounceCnt[20]~2_combout\,
	combout => \inst7|s_debounceCnt[20]~3_combout\);

-- Location: FF_X26_Y33_N17
\inst7|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~21_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(2));

-- Location: LCCOMB_X27_Y34_N16
\inst7|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|s_debounceCnt\(3) & (\inst7|Add0~5\ & VCC)) # (!\inst7|s_debounceCnt\(3) & (!\inst7|Add0~5\))
-- \inst7|Add0~7\ = CARRY((!\inst7|s_debounceCnt\(3) & !\inst7|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: LCCOMB_X26_Y33_N14
\inst7|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~22_combout\ = (\inst7|Add0~6_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add0~6_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~22_combout\);

-- Location: FF_X26_Y33_N15
\inst7|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~22_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(3));

-- Location: LCCOMB_X27_Y34_N18
\inst7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|s_debounceCnt\(4) & ((GND) # (!\inst7|Add0~7\))) # (!\inst7|s_debounceCnt\(4) & (\inst7|Add0~7\ $ (GND)))
-- \inst7|Add0~9\ = CARRY((\inst7|s_debounceCnt\(4)) # (!\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: LCCOMB_X26_Y33_N8
\inst7|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~23_combout\ = (\inst7|Add0~8_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~8_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~23_combout\);

-- Location: FF_X26_Y33_N9
\inst7|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~23_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(4));

-- Location: LCCOMB_X27_Y34_N20
\inst7|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|s_debounceCnt\(5) & (\inst7|Add0~9\ & VCC)) # (!\inst7|s_debounceCnt\(5) & (!\inst7|Add0~9\))
-- \inst7|Add0~11\ = CARRY((!\inst7|s_debounceCnt\(5) & !\inst7|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: LCCOMB_X26_Y33_N30
\inst7|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~27_combout\ = (\inst7|Add0~10_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~10_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~27_combout\);

-- Location: FF_X26_Y33_N31
\inst7|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~27_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(5));

-- Location: LCCOMB_X27_Y34_N22
\inst7|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = (\inst7|s_debounceCnt\(6) & ((GND) # (!\inst7|Add0~11\))) # (!\inst7|s_debounceCnt\(6) & (\inst7|Add0~11\ $ (GND)))
-- \inst7|Add0~13\ = CARRY((\inst7|s_debounceCnt\(6)) # (!\inst7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: LCCOMB_X26_Y33_N4
\inst7|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~4_combout\ = (\inst7|s_debounceCnt\(17)) # ((\inst7|s_debounceCnt\(15)) # (\inst7|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(17),
	datac => \inst7|s_debounceCnt\(15),
	datad => \inst7|s_debounceCnt\(16),
	combout => \inst7|LessThan0~4_combout\);

-- Location: LCCOMB_X26_Y33_N12
\inst7|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~0_combout\ = (\inst7|s_debounceCnt\(6) & ((\inst7|s_debounceCnt\(5)) # ((\inst7|s_debounceCnt\(0)) # (!\inst7|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(5),
	datab => \inst7|s_debounceCnt\(6),
	datac => \inst7|s_debounceCnt\(0),
	datad => \inst7|s_pulsedOut~5_combout\,
	combout => \inst7|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y33_N10
\inst7|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~1_combout\ = (\inst7|s_debounceCnt\(9) & ((\inst7|s_debounceCnt\(7)) # (\inst7|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(7),
	datab => \inst7|s_debounceCnt\(9),
	datad => \inst7|LessThan0~0_combout\,
	combout => \inst7|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y33_N28
\inst7|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~2_combout\ = (\inst7|s_debounceCnt\(11) & ((\inst7|s_debounceCnt\(10)) # ((\inst7|s_debounceCnt\(8) & \inst7|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(10),
	datab => \inst7|s_debounceCnt\(8),
	datac => \inst7|s_debounceCnt\(11),
	datad => \inst7|LessThan0~1_combout\,
	combout => \inst7|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y33_N18
\inst7|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~3_combout\ = (\inst7|s_debounceCnt\(14) & ((\inst7|s_debounceCnt\(12)) # ((\inst7|s_debounceCnt\(13)) # (\inst7|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(14),
	datab => \inst7|s_debounceCnt\(12),
	datac => \inst7|s_debounceCnt\(13),
	datad => \inst7|LessThan0~2_combout\,
	combout => \inst7|LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y33_N22
\inst7|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~5_combout\ = (\inst7|s_debounceCnt\(19) & ((\inst7|LessThan0~4_combout\) # (\inst7|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_debounceCnt\(19),
	datac => \inst7|LessThan0~4_combout\,
	datad => \inst7|LessThan0~3_combout\,
	combout => \inst7|LessThan0~5_combout\);

-- Location: LCCOMB_X25_Y33_N10
\inst7|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~6_combout\ = (\inst7|s_debounceCnt\(21)) # ((\inst7|s_debounceCnt\(20)) # ((\inst7|s_debounceCnt\(18) & \inst7|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(21),
	datab => \inst7|s_debounceCnt\(18),
	datac => \inst7|s_debounceCnt\(20),
	datad => \inst7|LessThan0~5_combout\,
	combout => \inst7|LessThan0~6_combout\);

-- Location: LCCOMB_X25_Y33_N20
\inst7|s_debounceCnt[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt[20]~0_combout\ = (\inst7|s_dirtyIn~q\ & ((!\inst7|LessThan0~6_combout\) # (!\inst7|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_debounceCnt\(22),
	datac => \inst7|s_dirtyIn~q\,
	datad => \inst7|LessThan0~6_combout\,
	combout => \inst7|s_debounceCnt[20]~0_combout\);

-- Location: LCCOMB_X26_Y33_N20
\inst7|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~1_combout\ = (\inst7|s_debounceCnt[20]~0_combout\ & ((\inst7|Add0~12_combout\) # (!\inst7|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~12_combout\,
	datab => \inst7|s_previousIn~q\,
	datad => \inst7|s_debounceCnt[20]~0_combout\,
	combout => \inst7|s_debounceCnt~1_combout\);

-- Location: FF_X26_Y33_N21
\inst7|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~1_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(6));

-- Location: LCCOMB_X27_Y34_N24
\inst7|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst7|s_debounceCnt\(7) & (\inst7|Add0~13\ & VCC)) # (!\inst7|s_debounceCnt\(7) & (!\inst7|Add0~13\))
-- \inst7|Add0~15\ = CARRY((!\inst7|s_debounceCnt\(7) & !\inst7|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: LCCOMB_X25_Y33_N2
\inst7|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~12_combout\ = (\inst7|Add0~14_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~14_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~12_combout\);

-- Location: FF_X25_Y33_N3
\inst7|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~12_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(7));

-- Location: LCCOMB_X27_Y34_N26
\inst7|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst7|s_debounceCnt\(8) & ((GND) # (!\inst7|Add0~15\))) # (!\inst7|s_debounceCnt\(8) & (\inst7|Add0~15\ $ (GND)))
-- \inst7|Add0~17\ = CARRY((\inst7|s_debounceCnt\(8)) # (!\inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~16_combout\,
	cout => \inst7|Add0~17\);

-- Location: LCCOMB_X26_Y33_N2
\inst7|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~13_combout\ = (\inst7|s_debounceCnt[20]~0_combout\ & ((\inst7|Add0~16_combout\) # (!\inst7|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add0~16_combout\,
	datac => \inst7|s_previousIn~q\,
	datad => \inst7|s_debounceCnt[20]~0_combout\,
	combout => \inst7|s_debounceCnt~13_combout\);

-- Location: FF_X26_Y33_N3
\inst7|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~13_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(8));

-- Location: LCCOMB_X27_Y34_N28
\inst7|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~18_combout\ = (\inst7|s_debounceCnt\(9) & (\inst7|Add0~17\ & VCC)) # (!\inst7|s_debounceCnt\(9) & (!\inst7|Add0~17\))
-- \inst7|Add0~19\ = CARRY((!\inst7|s_debounceCnt\(9) & !\inst7|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst7|Add0~17\,
	combout => \inst7|Add0~18_combout\,
	cout => \inst7|Add0~19\);

-- Location: LCCOMB_X26_Y33_N24
\inst7|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~14_combout\ = (\inst7|s_debounceCnt[20]~0_combout\ & ((\inst7|Add0~18_combout\) # (!\inst7|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_previousIn~q\,
	datac => \inst7|Add0~18_combout\,
	datad => \inst7|s_debounceCnt[20]~0_combout\,
	combout => \inst7|s_debounceCnt~14_combout\);

-- Location: FF_X26_Y33_N25
\inst7|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~14_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(9));

-- Location: LCCOMB_X27_Y34_N30
\inst7|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~20_combout\ = (\inst7|s_debounceCnt\(10) & ((GND) # (!\inst7|Add0~19\))) # (!\inst7|s_debounceCnt\(10) & (\inst7|Add0~19\ $ (GND)))
-- \inst7|Add0~21\ = CARRY((\inst7|s_debounceCnt\(10)) # (!\inst7|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst7|Add0~19\,
	combout => \inst7|Add0~20_combout\,
	cout => \inst7|Add0~21\);

-- Location: LCCOMB_X25_Y33_N0
\inst7|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~15_combout\ = (\inst7|Add0~20_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~20_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~15_combout\);

-- Location: FF_X25_Y33_N1
\inst7|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~15_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(10));

-- Location: LCCOMB_X27_Y33_N0
\inst7|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~22_combout\ = (\inst7|s_debounceCnt\(11) & (\inst7|Add0~21\ & VCC)) # (!\inst7|s_debounceCnt\(11) & (!\inst7|Add0~21\))
-- \inst7|Add0~23\ = CARRY((!\inst7|s_debounceCnt\(11) & !\inst7|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst7|Add0~21\,
	combout => \inst7|Add0~22_combout\,
	cout => \inst7|Add0~23\);

-- Location: LCCOMB_X25_Y33_N6
\inst7|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~16_combout\ = (\inst7|s_debounceCnt[20]~0_combout\ & ((\inst7|Add0~22_combout\) # (!\inst7|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_previousIn~q\,
	datac => \inst7|Add0~22_combout\,
	datad => \inst7|s_debounceCnt[20]~0_combout\,
	combout => \inst7|s_debounceCnt~16_combout\);

-- Location: FF_X25_Y33_N7
\inst7|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~16_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(11));

-- Location: LCCOMB_X27_Y33_N2
\inst7|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~24_combout\ = (\inst7|s_debounceCnt\(12) & ((GND) # (!\inst7|Add0~23\))) # (!\inst7|s_debounceCnt\(12) & (\inst7|Add0~23\ $ (GND)))
-- \inst7|Add0~25\ = CARRY((\inst7|s_debounceCnt\(12)) # (!\inst7|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst7|Add0~23\,
	combout => \inst7|Add0~24_combout\,
	cout => \inst7|Add0~25\);

-- Location: LCCOMB_X25_Y33_N22
\inst7|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~10_combout\ = (\inst7|Add0~24_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~24_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~10_combout\);

-- Location: FF_X25_Y33_N23
\inst7|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~10_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(12));

-- Location: LCCOMB_X27_Y33_N4
\inst7|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~26_combout\ = (\inst7|s_debounceCnt\(13) & (\inst7|Add0~25\ & VCC)) # (!\inst7|s_debounceCnt\(13) & (!\inst7|Add0~25\))
-- \inst7|Add0~27\ = CARRY((!\inst7|s_debounceCnt\(13) & !\inst7|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst7|Add0~25\,
	combout => \inst7|Add0~26_combout\,
	cout => \inst7|Add0~27\);

-- Location: LCCOMB_X25_Y33_N4
\inst7|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~11_combout\ = (\inst7|Add0~26_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~26_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~11_combout\);

-- Location: FF_X25_Y33_N5
\inst7|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~11_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(13));

-- Location: LCCOMB_X27_Y33_N6
\inst7|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~28_combout\ = (\inst7|s_debounceCnt\(14) & ((GND) # (!\inst7|Add0~27\))) # (!\inst7|s_debounceCnt\(14) & (\inst7|Add0~27\ $ (GND)))
-- \inst7|Add0~29\ = CARRY((\inst7|s_debounceCnt\(14)) # (!\inst7|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst7|Add0~27\,
	combout => \inst7|Add0~28_combout\,
	cout => \inst7|Add0~29\);

-- Location: LCCOMB_X25_Y33_N28
\inst7|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~17_combout\ = (\inst7|s_debounceCnt[20]~0_combout\ & ((\inst7|Add0~28_combout\) # (!\inst7|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_previousIn~q\,
	datac => \inst7|Add0~28_combout\,
	datad => \inst7|s_debounceCnt[20]~0_combout\,
	combout => \inst7|s_debounceCnt~17_combout\);

-- Location: FF_X25_Y33_N29
\inst7|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~17_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(14));

-- Location: LCCOMB_X27_Y33_N8
\inst7|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~30_combout\ = (\inst7|s_debounceCnt\(15) & (\inst7|Add0~29\ & VCC)) # (!\inst7|s_debounceCnt\(15) & (!\inst7|Add0~29\))
-- \inst7|Add0~31\ = CARRY((!\inst7|s_debounceCnt\(15) & !\inst7|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst7|Add0~29\,
	combout => \inst7|Add0~30_combout\,
	cout => \inst7|Add0~31\);

-- Location: LCCOMB_X25_Y33_N16
\inst7|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~5_combout\ = (\inst7|Add0~30_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~30_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~5_combout\);

-- Location: FF_X25_Y33_N17
\inst7|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~5_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(15));

-- Location: LCCOMB_X27_Y33_N10
\inst7|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~32_combout\ = (\inst7|s_debounceCnt\(16) & ((GND) # (!\inst7|Add0~31\))) # (!\inst7|s_debounceCnt\(16) & (\inst7|Add0~31\ $ (GND)))
-- \inst7|Add0~33\ = CARRY((\inst7|s_debounceCnt\(16)) # (!\inst7|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst7|Add0~31\,
	combout => \inst7|Add0~32_combout\,
	cout => \inst7|Add0~33\);

-- Location: LCCOMB_X25_Y33_N14
\inst7|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~6_combout\ = (\inst7|Add0~32_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~32_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~6_combout\);

-- Location: FF_X25_Y33_N15
\inst7|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~6_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(16));

-- Location: LCCOMB_X27_Y33_N12
\inst7|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~34_combout\ = (\inst7|s_debounceCnt\(17) & (\inst7|Add0~33\ & VCC)) # (!\inst7|s_debounceCnt\(17) & (!\inst7|Add0~33\))
-- \inst7|Add0~35\ = CARRY((!\inst7|s_debounceCnt\(17) & !\inst7|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst7|Add0~33\,
	combout => \inst7|Add0~34_combout\,
	cout => \inst7|Add0~35\);

-- Location: LCCOMB_X25_Y33_N8
\inst7|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~7_combout\ = (\inst7|Add0~34_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~34_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~7_combout\);

-- Location: FF_X25_Y33_N9
\inst7|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~7_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(17));

-- Location: LCCOMB_X27_Y33_N14
\inst7|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~36_combout\ = (\inst7|s_debounceCnt\(18) & ((GND) # (!\inst7|Add0~35\))) # (!\inst7|s_debounceCnt\(18) & (\inst7|Add0~35\ $ (GND)))
-- \inst7|Add0~37\ = CARRY((\inst7|s_debounceCnt\(18)) # (!\inst7|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst7|Add0~35\,
	combout => \inst7|Add0~36_combout\,
	cout => \inst7|Add0~37\);

-- Location: LCCOMB_X27_Y33_N30
\inst7|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt[18]~18_combout\ = (\inst7|s_debounceCnt[20]~3_combout\ & (\inst7|s_debounceCnt[20]~0_combout\ & ((\inst7|Add0~36_combout\) # (!\inst7|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_previousIn~q\,
	datab => \inst7|s_debounceCnt[20]~3_combout\,
	datac => \inst7|Add0~36_combout\,
	datad => \inst7|s_debounceCnt[20]~0_combout\,
	combout => \inst7|s_debounceCnt[18]~18_combout\);

-- Location: FF_X27_Y33_N31
\inst7|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(18));

-- Location: LCCOMB_X27_Y33_N16
\inst7|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~38_combout\ = (\inst7|s_debounceCnt\(19) & (\inst7|Add0~37\ & VCC)) # (!\inst7|s_debounceCnt\(19) & (!\inst7|Add0~37\))
-- \inst7|Add0~39\ = CARRY((!\inst7|s_debounceCnt\(19) & !\inst7|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst7|Add0~37\,
	combout => \inst7|Add0~38_combout\,
	cout => \inst7|Add0~39\);

-- Location: LCCOMB_X27_Y33_N24
\inst7|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt[19]~19_combout\ = (\inst7|s_debounceCnt[20]~3_combout\ & (\inst7|s_debounceCnt[20]~0_combout\ & ((\inst7|Add0~38_combout\) # (!\inst7|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_previousIn~q\,
	datab => \inst7|s_debounceCnt[20]~3_combout\,
	datac => \inst7|Add0~38_combout\,
	datad => \inst7|s_debounceCnt[20]~0_combout\,
	combout => \inst7|s_debounceCnt[19]~19_combout\);

-- Location: FF_X27_Y33_N25
\inst7|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(19));

-- Location: LCCOMB_X27_Y33_N18
\inst7|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~40_combout\ = (\inst7|s_debounceCnt\(20) & ((GND) # (!\inst7|Add0~39\))) # (!\inst7|s_debounceCnt\(20) & (\inst7|Add0~39\ $ (GND)))
-- \inst7|Add0~41\ = CARRY((\inst7|s_debounceCnt\(20)) # (!\inst7|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst7|Add0~39\,
	combout => \inst7|Add0~40_combout\,
	cout => \inst7|Add0~41\);

-- Location: LCCOMB_X25_Y33_N26
\inst7|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt[20]~8_combout\ = (\inst7|s_debounceCnt[20]~3_combout\ & (\inst7|Add0~40_combout\ & \inst7|s_debounceCnt[20]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt[20]~3_combout\,
	datac => \inst7|Add0~40_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt[20]~8_combout\);

-- Location: FF_X25_Y33_N27
\inst7|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(20));

-- Location: LCCOMB_X27_Y33_N20
\inst7|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~42_combout\ = (\inst7|s_debounceCnt\(21) & (\inst7|Add0~41\ & VCC)) # (!\inst7|s_debounceCnt\(21) & (!\inst7|Add0~41\))
-- \inst7|Add0~43\ = CARRY((!\inst7|s_debounceCnt\(21) & !\inst7|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst7|Add0~41\,
	combout => \inst7|Add0~42_combout\,
	cout => \inst7|Add0~43\);

-- Location: LCCOMB_X25_Y33_N12
\inst7|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt[21]~9_combout\ = (\inst7|s_debounceCnt[20]~3_combout\ & (\inst7|Add0~42_combout\ & \inst7|s_debounceCnt[20]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt[20]~3_combout\,
	datac => \inst7|Add0~42_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt[21]~9_combout\);

-- Location: FF_X25_Y33_N13
\inst7|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(21));

-- Location: LCCOMB_X28_Y33_N22
\inst7|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_pulsedOut~1_combout\ = (!\inst7|s_debounceCnt\(21) & (!\inst7|s_debounceCnt\(20) & (!\inst7|s_debounceCnt\(13) & !\inst7|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(21),
	datab => \inst7|s_debounceCnt\(20),
	datac => \inst7|s_debounceCnt\(13),
	datad => \inst7|s_debounceCnt\(12),
	combout => \inst7|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X28_Y33_N18
\inst7|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_pulsedOut~0_combout\ = (!\inst7|s_debounceCnt\(6) & (!\inst7|s_debounceCnt\(17) & (!\inst7|s_debounceCnt\(15) & !\inst7|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(6),
	datab => \inst7|s_debounceCnt\(17),
	datac => \inst7|s_debounceCnt\(15),
	datad => \inst7|s_debounceCnt\(16),
	combout => \inst7|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X27_Y33_N26
\inst7|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_pulsedOut~3_combout\ = (!\inst7|s_debounceCnt\(18) & (!\inst7|s_debounceCnt\(19) & (!\inst7|s_debounceCnt\(14) & !\inst7|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(18),
	datab => \inst7|s_debounceCnt\(19),
	datac => \inst7|s_debounceCnt\(14),
	datad => \inst7|s_debounceCnt\(11),
	combout => \inst7|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X27_Y33_N28
\inst7|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_pulsedOut~2_combout\ = (!\inst7|s_debounceCnt\(8) & (!\inst7|s_debounceCnt\(9) & (!\inst7|s_debounceCnt\(10) & !\inst7|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(8),
	datab => \inst7|s_debounceCnt\(9),
	datac => \inst7|s_debounceCnt\(10),
	datad => \inst7|s_debounceCnt\(7),
	combout => \inst7|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X28_Y33_N10
\inst7|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_pulsedOut~4_combout\ = (\inst7|s_pulsedOut~1_combout\ & (\inst7|s_pulsedOut~0_combout\ & (\inst7|s_pulsedOut~3_combout\ & \inst7|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_pulsedOut~1_combout\,
	datab => \inst7|s_pulsedOut~0_combout\,
	datac => \inst7|s_pulsedOut~3_combout\,
	datad => \inst7|s_pulsedOut~2_combout\,
	combout => \inst7|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X28_Y33_N12
\inst7|s_debounceCnt[20]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt[20]~2_combout\ = (\inst7|s_debounceCnt\(5)) # (((\inst7|s_debounceCnt\(0)) # (!\inst7|s_pulsedOut~4_combout\)) # (!\inst7|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(5),
	datab => \inst7|s_pulsedOut~5_combout\,
	datac => \inst7|s_debounceCnt\(0),
	datad => \inst7|s_pulsedOut~4_combout\,
	combout => \inst7|s_debounceCnt[20]~2_combout\);

-- Location: LCCOMB_X25_Y33_N30
\inst7|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt[22]~25_combout\ = (\inst7|s_debounceCnt\(22) & (((!\inst7|LessThan0~6_combout\)))) # (!\inst7|s_debounceCnt\(22) & ((\inst7|s_debounceCnt[20]~2_combout\) # ((!\inst7|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt[20]~2_combout\,
	datab => \inst7|s_debounceCnt\(22),
	datac => \inst7|s_previousIn~q\,
	datad => \inst7|LessThan0~6_combout\,
	combout => \inst7|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X27_Y33_N22
\inst7|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~44_combout\ = \inst7|Add0~43\ $ (\inst7|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|s_debounceCnt\(22),
	cin => \inst7|Add0~43\,
	combout => \inst7|Add0~44_combout\);

-- Location: LCCOMB_X25_Y33_N24
\inst7|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt[22]~26_combout\ = (\inst7|s_dirtyIn~q\ & (\inst7|s_debounceCnt[22]~25_combout\ & ((\inst7|Add0~44_combout\) # (!\inst7|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_dirtyIn~q\,
	datab => \inst7|s_previousIn~q\,
	datac => \inst7|s_debounceCnt[22]~25_combout\,
	datad => \inst7|Add0~44_combout\,
	combout => \inst7|s_debounceCnt[22]~26_combout\);

-- Location: FF_X25_Y33_N25
\inst7|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(22));

-- Location: LCCOMB_X25_Y33_N18
\inst7|s_debounceCnt[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt[20]~4_combout\ = (\inst7|s_previousIn~q\ & (\inst7|s_dirtyIn~q\ & ((!\inst7|LessThan0~6_combout\) # (!\inst7|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(22),
	datab => \inst7|s_previousIn~q\,
	datac => \inst7|s_dirtyIn~q\,
	datad => \inst7|LessThan0~6_combout\,
	combout => \inst7|s_debounceCnt[20]~4_combout\);

-- Location: LCCOMB_X26_Y33_N0
\inst7|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~24_combout\ = (\inst7|Add0~0_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~0_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~24_combout\);

-- Location: FF_X26_Y33_N1
\inst7|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~24_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(0));

-- Location: LCCOMB_X26_Y33_N26
\inst7|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_debounceCnt~20_combout\ = (\inst7|Add0~2_combout\ & \inst7|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add0~2_combout\,
	datad => \inst7|s_debounceCnt[20]~4_combout\,
	combout => \inst7|s_debounceCnt~20_combout\);

-- Location: FF_X26_Y33_N27
\inst7|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_debounceCnt~20_combout\,
	ena => \inst7|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_debounceCnt\(1));

-- Location: LCCOMB_X26_Y33_N6
\inst7|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_pulsedOut~5_combout\ = (!\inst7|s_debounceCnt\(1) & (!\inst7|s_debounceCnt\(4) & (!\inst7|s_debounceCnt\(3) & !\inst7|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(1),
	datab => \inst7|s_debounceCnt\(4),
	datac => \inst7|s_debounceCnt\(3),
	datad => \inst7|s_debounceCnt\(2),
	combout => \inst7|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X28_Y33_N26
\inst7|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_pulsedOut~6_combout\ = (!\inst7|s_debounceCnt\(22) & (\inst7|s_debounceCnt\(0) & (\inst7|s_dirtyIn~q\ & \inst7|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_debounceCnt\(22),
	datab => \inst7|s_debounceCnt\(0),
	datac => \inst7|s_dirtyIn~q\,
	datad => \inst7|s_previousIn~q\,
	combout => \inst7|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X28_Y33_N20
\inst7|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_pulsedOut~7_combout\ = (\inst7|s_pulsedOut~5_combout\ & (\inst7|s_pulsedOut~6_combout\ & (!\inst7|s_debounceCnt\(5) & \inst7|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_pulsedOut~5_combout\,
	datab => \inst7|s_pulsedOut~6_combout\,
	datac => \inst7|s_debounceCnt\(5),
	datad => \inst7|s_pulsedOut~4_combout\,
	combout => \inst7|s_pulsedOut~7_combout\);

-- Location: FF_X28_Y33_N21
\inst7|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst7|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_pulsedOut~q\);

-- Location: LCCOMB_X77_Y30_N10
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|s_debounceCnt\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

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

-- Location: LCCOMB_X76_Y29_N28
\inst2|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_dirtyIn~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \inst2|s_dirtyIn~feeder_combout\);

-- Location: FF_X76_Y29_N29
\inst2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_dirtyIn~q\);

-- Location: FF_X75_Y30_N23
\inst2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_previousIn~q\);

-- Location: LCCOMB_X77_Y30_N12
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|s_debounceCnt\(1) & (\inst2|Add0~1\ & VCC)) # (!\inst2|s_debounceCnt\(1) & (!\inst2|Add0~1\))
-- \inst2|Add0~3\ = CARRY((!\inst2|s_debounceCnt\(1) & !\inst2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X76_Y30_N30
\inst2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~20_combout\ = (\inst2|Add0~2_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~2_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~20_combout\);

-- Location: LCCOMB_X76_Y29_N10
\inst2|s_debounceCnt[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[10]~3_combout\ = (\inst2|s_debounceCnt\(22)) # (((\inst2|s_debounceCnt[10]~2_combout\) # (!\inst2|s_previousIn~q\)) # (!\inst2|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(22),
	datab => \inst2|s_dirtyIn~q\,
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|s_debounceCnt[10]~2_combout\,
	combout => \inst2|s_debounceCnt[10]~3_combout\);

-- Location: FF_X76_Y30_N31
\inst2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~20_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(1));

-- Location: LCCOMB_X77_Y30_N14
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|s_debounceCnt\(2) & ((GND) # (!\inst2|Add0~3\))) # (!\inst2|s_debounceCnt\(2) & (\inst2|Add0~3\ $ (GND)))
-- \inst2|Add0~5\ = CARRY((\inst2|s_debounceCnt\(2)) # (!\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X76_Y30_N4
\inst2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~21_combout\ = (\inst2|Add0~4_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~21_combout\);

-- Location: FF_X76_Y30_N5
\inst2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~21_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(2));

-- Location: LCCOMB_X77_Y30_N16
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|s_debounceCnt\(3) & (\inst2|Add0~5\ & VCC)) # (!\inst2|s_debounceCnt\(3) & (!\inst2|Add0~5\))
-- \inst2|Add0~7\ = CARRY((!\inst2|s_debounceCnt\(3) & !\inst2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X77_Y30_N8
\inst2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~22_combout\ = (\inst2|Add0~6_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~6_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~22_combout\);

-- Location: FF_X77_Y30_N9
\inst2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~22_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(3));

-- Location: LCCOMB_X77_Y30_N18
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|s_debounceCnt\(4) & ((GND) # (!\inst2|Add0~7\))) # (!\inst2|s_debounceCnt\(4) & (\inst2|Add0~7\ $ (GND)))
-- \inst2|Add0~9\ = CARRY((\inst2|s_debounceCnt\(4)) # (!\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X77_Y30_N6
\inst2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~23_combout\ = (\inst2|Add0~8_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~8_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~23_combout\);

-- Location: FF_X77_Y30_N7
\inst2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~23_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(4));

-- Location: LCCOMB_X77_Y30_N20
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|s_debounceCnt\(5) & (\inst2|Add0~9\ & VCC)) # (!\inst2|s_debounceCnt\(5) & (!\inst2|Add0~9\))
-- \inst2|Add0~11\ = CARRY((!\inst2|s_debounceCnt\(5) & !\inst2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X76_Y30_N6
\inst2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~27_combout\ = (\inst2|Add0~10_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~27_combout\);

-- Location: FF_X76_Y30_N7
\inst2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~27_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(5));

-- Location: LCCOMB_X76_Y30_N2
\inst2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~5_combout\ = (!\inst2|s_debounceCnt\(1) & (!\inst2|s_debounceCnt\(2) & (!\inst2|s_debounceCnt\(3) & !\inst2|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(1),
	datab => \inst2|s_debounceCnt\(2),
	datac => \inst2|s_debounceCnt\(3),
	datad => \inst2|s_debounceCnt\(4),
	combout => \inst2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X77_Y30_N22
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|s_debounceCnt\(6) & ((GND) # (!\inst2|Add0~11\))) # (!\inst2|s_debounceCnt\(6) & (\inst2|Add0~11\ $ (GND)))
-- \inst2|Add0~13\ = CARRY((\inst2|s_debounceCnt\(6)) # (!\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X76_Y30_N16
\inst2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~1_combout\ = (\inst2|s_debounceCnt[10]~0_combout\ & ((\inst2|Add0~12_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[10]~0_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|s_debounceCnt~1_combout\);

-- Location: FF_X76_Y30_N17
\inst2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~1_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(6));

-- Location: LCCOMB_X77_Y30_N24
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|s_debounceCnt\(7) & (\inst2|Add0~13\ & VCC)) # (!\inst2|s_debounceCnt\(7) & (!\inst2|Add0~13\))
-- \inst2|Add0~15\ = CARRY((!\inst2|s_debounceCnt\(7) & !\inst2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X75_Y30_N26
\inst2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~12_combout\ = (\inst2|Add0~14_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~14_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~12_combout\);

-- Location: FF_X75_Y30_N27
\inst2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~12_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(7));

-- Location: LCCOMB_X77_Y30_N26
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|s_debounceCnt\(8) & ((GND) # (!\inst2|Add0~15\))) # (!\inst2|s_debounceCnt\(8) & (\inst2|Add0~15\ $ (GND)))
-- \inst2|Add0~17\ = CARRY((\inst2|s_debounceCnt\(8)) # (!\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X76_Y30_N14
\inst2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~13_combout\ = (\inst2|s_debounceCnt[10]~0_combout\ & ((\inst2|Add0~16_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[10]~0_combout\,
	datad => \inst2|Add0~16_combout\,
	combout => \inst2|s_debounceCnt~13_combout\);

-- Location: FF_X76_Y30_N15
\inst2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~13_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(8));

-- Location: LCCOMB_X77_Y30_N28
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|s_debounceCnt\(9) & (\inst2|Add0~17\ & VCC)) # (!\inst2|s_debounceCnt\(9) & (!\inst2|Add0~17\))
-- \inst2|Add0~19\ = CARRY((!\inst2|s_debounceCnt\(9) & !\inst2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X77_Y30_N30
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|s_debounceCnt\(10) & ((GND) # (!\inst2|Add0~19\))) # (!\inst2|s_debounceCnt\(10) & (\inst2|Add0~19\ $ (GND)))
-- \inst2|Add0~21\ = CARRY((\inst2|s_debounceCnt\(10)) # (!\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X75_Y30_N8
\inst2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~15_combout\ = (\inst2|Add0~20_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~20_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~15_combout\);

-- Location: FF_X75_Y30_N9
\inst2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~15_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(10));

-- Location: LCCOMB_X77_Y29_N0
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|s_debounceCnt\(11) & (\inst2|Add0~21\ & VCC)) # (!\inst2|s_debounceCnt\(11) & (!\inst2|Add0~21\))
-- \inst2|Add0~23\ = CARRY((!\inst2|s_debounceCnt\(11) & !\inst2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X76_Y30_N20
\inst2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~16_combout\ = (\inst2|s_debounceCnt[10]~0_combout\ & ((\inst2|Add0~22_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[10]~0_combout\,
	datad => \inst2|Add0~22_combout\,
	combout => \inst2|s_debounceCnt~16_combout\);

-- Location: FF_X76_Y30_N21
\inst2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~16_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(11));

-- Location: LCCOMB_X77_Y29_N2
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|s_debounceCnt\(12) & ((GND) # (!\inst2|Add0~23\))) # (!\inst2|s_debounceCnt\(12) & (\inst2|Add0~23\ $ (GND)))
-- \inst2|Add0~25\ = CARRY((\inst2|s_debounceCnt\(12)) # (!\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X75_Y30_N30
\inst2|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~10_combout\ = (\inst2|Add0~24_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~10_combout\);

-- Location: FF_X75_Y30_N31
\inst2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~10_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(12));

-- Location: LCCOMB_X77_Y29_N4
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|s_debounceCnt\(13) & (\inst2|Add0~25\ & VCC)) # (!\inst2|s_debounceCnt\(13) & (!\inst2|Add0~25\))
-- \inst2|Add0~27\ = CARRY((!\inst2|s_debounceCnt\(13) & !\inst2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X75_Y30_N28
\inst2|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~11_combout\ = (\inst2|Add0~26_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~26_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~11_combout\);

-- Location: FF_X75_Y30_N29
\inst2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~11_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(13));

-- Location: LCCOMB_X77_Y29_N6
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|s_debounceCnt\(14) & ((GND) # (!\inst2|Add0~27\))) # (!\inst2|s_debounceCnt\(14) & (\inst2|Add0~27\ $ (GND)))
-- \inst2|Add0~29\ = CARRY((\inst2|s_debounceCnt\(14)) # (!\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X75_Y30_N6
\inst2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~17_combout\ = (\inst2|s_debounceCnt[10]~0_combout\ & ((\inst2|Add0~28_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|Add0~28_combout\,
	datad => \inst2|s_debounceCnt[10]~0_combout\,
	combout => \inst2|s_debounceCnt~17_combout\);

-- Location: FF_X75_Y30_N7
\inst2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~17_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(14));

-- Location: LCCOMB_X77_Y29_N8
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|s_debounceCnt\(15) & (\inst2|Add0~29\ & VCC)) # (!\inst2|s_debounceCnt\(15) & (!\inst2|Add0~29\))
-- \inst2|Add0~31\ = CARRY((!\inst2|s_debounceCnt\(15) & !\inst2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X75_Y30_N4
\inst2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~5_combout\ = (\inst2|Add0~30_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~30_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~5_combout\);

-- Location: FF_X75_Y30_N5
\inst2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~5_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(15));

-- Location: LCCOMB_X77_Y29_N10
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|s_debounceCnt\(16) & ((GND) # (!\inst2|Add0~31\))) # (!\inst2|s_debounceCnt\(16) & (\inst2|Add0~31\ $ (GND)))
-- \inst2|Add0~33\ = CARRY((\inst2|s_debounceCnt\(16)) # (!\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X75_Y30_N14
\inst2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~6_combout\ = (\inst2|Add0~32_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~32_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~6_combout\);

-- Location: FF_X75_Y30_N15
\inst2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~6_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(16));

-- Location: LCCOMB_X77_Y29_N12
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|s_debounceCnt\(17) & (\inst2|Add0~33\ & VCC)) # (!\inst2|s_debounceCnt\(17) & (!\inst2|Add0~33\))
-- \inst2|Add0~35\ = CARRY((!\inst2|s_debounceCnt\(17) & !\inst2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X75_Y30_N12
\inst2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~7_combout\ = (\inst2|Add0~34_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~34_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~7_combout\);

-- Location: FF_X75_Y30_N13
\inst2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~7_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(17));

-- Location: LCCOMB_X77_Y29_N14
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|s_debounceCnt\(18) & ((GND) # (!\inst2|Add0~35\))) # (!\inst2|s_debounceCnt\(18) & (\inst2|Add0~35\ $ (GND)))
-- \inst2|Add0~37\ = CARRY((\inst2|s_debounceCnt\(18)) # (!\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X75_Y30_N20
\inst2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[18]~18_combout\ = (\inst2|s_debounceCnt[10]~3_combout\ & (\inst2|s_debounceCnt[10]~0_combout\ & ((\inst2|Add0~36_combout\) # (!\inst2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|s_debounceCnt[10]~3_combout\,
	datac => \inst2|Add0~36_combout\,
	datad => \inst2|s_debounceCnt[10]~0_combout\,
	combout => \inst2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X75_Y30_N21
\inst2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(18));

-- Location: LCCOMB_X77_Y29_N16
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|s_debounceCnt\(19) & (\inst2|Add0~37\ & VCC)) # (!\inst2|s_debounceCnt\(19) & (!\inst2|Add0~37\))
-- \inst2|Add0~39\ = CARRY((!\inst2|s_debounceCnt\(19) & !\inst2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X76_Y29_N14
\inst2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[19]~19_combout\ = (\inst2|s_debounceCnt[10]~3_combout\ & (\inst2|s_debounceCnt[10]~0_combout\ & ((\inst2|Add0~38_combout\) # (!\inst2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt[10]~3_combout\,
	datab => \inst2|Add0~38_combout\,
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|s_debounceCnt[10]~0_combout\,
	combout => \inst2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X76_Y29_N15
\inst2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(19));

-- Location: LCCOMB_X77_Y29_N18
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|s_debounceCnt\(20) & ((GND) # (!\inst2|Add0~39\))) # (!\inst2|s_debounceCnt\(20) & (\inst2|Add0~39\ $ (GND)))
-- \inst2|Add0~41\ = CARRY((\inst2|s_debounceCnt\(20)) # (!\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X75_Y30_N10
\inst2|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[20]~8_combout\ = (\inst2|s_debounceCnt[10]~3_combout\ & (\inst2|Add0~40_combout\ & \inst2|s_debounceCnt[10]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt[10]~3_combout\,
	datac => \inst2|Add0~40_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt[20]~8_combout\);

-- Location: FF_X75_Y30_N11
\inst2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(20));

-- Location: LCCOMB_X77_Y29_N20
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|s_debounceCnt\(21) & (\inst2|Add0~41\ & VCC)) # (!\inst2|s_debounceCnt\(21) & (!\inst2|Add0~41\))
-- \inst2|Add0~43\ = CARRY((!\inst2|s_debounceCnt\(21) & !\inst2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X75_Y30_N16
\inst2|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[21]~9_combout\ = (\inst2|s_debounceCnt[10]~4_combout\ & (\inst2|s_debounceCnt[10]~3_combout\ & \inst2|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt[10]~4_combout\,
	datac => \inst2|s_debounceCnt[10]~3_combout\,
	datad => \inst2|Add0~42_combout\,
	combout => \inst2|s_debounceCnt[21]~9_combout\);

-- Location: FF_X75_Y30_N17
\inst2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(21));

-- Location: LCCOMB_X76_Y30_N12
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst2|s_debounceCnt\(17)) # ((\inst2|s_debounceCnt\(15)) # (\inst2|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(17),
	datac => \inst2|s_debounceCnt\(15),
	datad => \inst2|s_debounceCnt\(16),
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X76_Y30_N24
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|s_debounceCnt\(6) & ((\inst2|s_debounceCnt\(5)) # ((\inst2|s_debounceCnt\(0)) # (!\inst2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(5),
	datab => \inst2|s_debounceCnt\(6),
	datac => \inst2|s_debounceCnt\(0),
	datad => \inst2|s_pulsedOut~5_combout\,
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X76_Y30_N18
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst2|s_debounceCnt\(9) & ((\inst2|s_debounceCnt\(7)) # (\inst2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(9),
	datac => \inst2|s_debounceCnt\(7),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X76_Y30_N28
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (\inst2|s_debounceCnt\(11) & ((\inst2|s_debounceCnt\(10)) # ((\inst2|s_debounceCnt\(8) & \inst2|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(10),
	datab => \inst2|s_debounceCnt\(11),
	datac => \inst2|s_debounceCnt\(8),
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X76_Y30_N10
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (\inst2|s_debounceCnt\(14) & ((\inst2|s_debounceCnt\(13)) # ((\inst2|s_debounceCnt\(12)) # (\inst2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(13),
	datab => \inst2|s_debounceCnt\(12),
	datac => \inst2|s_debounceCnt\(14),
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X76_Y30_N22
\inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = (\inst2|s_debounceCnt\(19) & ((\inst2|LessThan0~4_combout\) # (\inst2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~4_combout\,
	datac => \inst2|s_debounceCnt\(19),
	datad => \inst2|LessThan0~3_combout\,
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X75_Y30_N18
\inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (\inst2|s_debounceCnt\(20)) # ((\inst2|s_debounceCnt\(21)) # ((\inst2|s_debounceCnt\(18) & \inst2|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(20),
	datab => \inst2|s_debounceCnt\(21),
	datac => \inst2|s_debounceCnt\(18),
	datad => \inst2|LessThan0~5_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X75_Y30_N0
\inst2|s_debounceCnt[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[10]~0_combout\ = (\inst2|s_dirtyIn~q\ & ((!\inst2|LessThan0~6_combout\) # (!\inst2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(22),
	datac => \inst2|s_dirtyIn~q\,
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|s_debounceCnt[10]~0_combout\);

-- Location: LCCOMB_X76_Y30_N0
\inst2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~14_combout\ = (\inst2|s_debounceCnt[10]~0_combout\ & ((\inst2|Add0~18_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[10]~0_combout\,
	datad => \inst2|Add0~18_combout\,
	combout => \inst2|s_debounceCnt~14_combout\);

-- Location: FF_X76_Y30_N1
\inst2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~14_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(9));

-- Location: LCCOMB_X76_Y30_N26
\inst2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~2_combout\ = (!\inst2|s_debounceCnt\(9) & (!\inst2|s_debounceCnt\(8) & (!\inst2|s_debounceCnt\(7) & !\inst2|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(9),
	datab => \inst2|s_debounceCnt\(8),
	datac => \inst2|s_debounceCnt\(7),
	datad => \inst2|s_debounceCnt\(10),
	combout => \inst2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X76_Y29_N4
\inst2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~1_combout\ = (!\inst2|s_debounceCnt\(13) & (!\inst2|s_debounceCnt\(21) & (!\inst2|s_debounceCnt\(12) & !\inst2|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(13),
	datab => \inst2|s_debounceCnt\(21),
	datac => \inst2|s_debounceCnt\(12),
	datad => \inst2|s_debounceCnt\(20),
	combout => \inst2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X76_Y29_N8
\inst2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~3_combout\ = (!\inst2|s_debounceCnt\(11) & (!\inst2|s_debounceCnt\(19) & (!\inst2|s_debounceCnt\(18) & !\inst2|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(11),
	datab => \inst2|s_debounceCnt\(19),
	datac => \inst2|s_debounceCnt\(18),
	datad => \inst2|s_debounceCnt\(14),
	combout => \inst2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X76_Y29_N18
\inst2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~0_combout\ = (!\inst2|s_debounceCnt\(6) & (!\inst2|s_debounceCnt\(16) & (!\inst2|s_debounceCnt\(17) & !\inst2|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(6),
	datab => \inst2|s_debounceCnt\(16),
	datac => \inst2|s_debounceCnt\(17),
	datad => \inst2|s_debounceCnt\(15),
	combout => \inst2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X76_Y29_N6
\inst2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~4_combout\ = (\inst2|s_pulsedOut~2_combout\ & (\inst2|s_pulsedOut~1_combout\ & (\inst2|s_pulsedOut~3_combout\ & \inst2|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~2_combout\,
	datab => \inst2|s_pulsedOut~1_combout\,
	datac => \inst2|s_pulsedOut~3_combout\,
	datad => \inst2|s_pulsedOut~0_combout\,
	combout => \inst2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X76_Y29_N12
\inst2|s_debounceCnt[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[10]~2_combout\ = (\inst2|s_debounceCnt\(0)) # ((\inst2|s_debounceCnt\(5)) # ((!\inst2|s_pulsedOut~4_combout\) # (!\inst2|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(0),
	datab => \inst2|s_debounceCnt\(5),
	datac => \inst2|s_pulsedOut~5_combout\,
	datad => \inst2|s_pulsedOut~4_combout\,
	combout => \inst2|s_debounceCnt[10]~2_combout\);

-- Location: LCCOMB_X75_Y30_N22
\inst2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[22]~25_combout\ = (\inst2|s_debounceCnt\(22) & (((!\inst2|LessThan0~6_combout\)))) # (!\inst2|s_debounceCnt\(22) & ((\inst2|s_debounceCnt[10]~2_combout\) # ((!\inst2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt[10]~2_combout\,
	datab => \inst2|s_debounceCnt\(22),
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X77_Y29_N22
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = \inst2|Add0~43\ $ (\inst2|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_debounceCnt\(22),
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\);

-- Location: LCCOMB_X75_Y30_N24
\inst2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[22]~26_combout\ = (\inst2|s_dirtyIn~q\ & (\inst2|s_debounceCnt[22]~25_combout\ & ((\inst2|Add0~44_combout\) # (!\inst2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|s_dirtyIn~q\,
	datac => \inst2|s_debounceCnt[22]~25_combout\,
	datad => \inst2|Add0~44_combout\,
	combout => \inst2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X75_Y30_N25
\inst2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(22));

-- Location: LCCOMB_X75_Y30_N2
\inst2|s_debounceCnt[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[10]~4_combout\ = (\inst2|s_previousIn~q\ & (\inst2|s_dirtyIn~q\ & ((!\inst2|LessThan0~6_combout\) # (!\inst2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_previousIn~q\,
	datab => \inst2|s_debounceCnt\(22),
	datac => \inst2|s_dirtyIn~q\,
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|s_debounceCnt[10]~4_combout\);

-- Location: LCCOMB_X76_Y30_N8
\inst2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~24_combout\ = (\inst2|Add0~0_combout\ & \inst2|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|s_debounceCnt[10]~4_combout\,
	combout => \inst2|s_debounceCnt~24_combout\);

-- Location: FF_X76_Y30_N9
\inst2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~24_combout\,
	ena => \inst2|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(0));

-- Location: LCCOMB_X76_Y29_N26
\inst2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~6_combout\ = (\inst2|s_debounceCnt\(0) & (\inst2|s_dirtyIn~q\ & (\inst2|s_previousIn~q\ & !\inst2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(0),
	datab => \inst2|s_dirtyIn~q\,
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|s_debounceCnt\(22),
	combout => \inst2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X76_Y29_N24
\inst2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~7_combout\ = (\inst2|s_pulsedOut~6_combout\ & (!\inst2|s_debounceCnt\(5) & (\inst2|s_pulsedOut~5_combout\ & \inst2|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~6_combout\,
	datab => \inst2|s_debounceCnt\(5),
	datac => \inst2|s_pulsedOut~5_combout\,
	datad => \inst2|s_pulsedOut~4_combout\,
	combout => \inst2|s_pulsedOut~7_combout\);

-- Location: FF_X76_Y29_N25
\inst2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_pulsedOut~q\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X62_Y26_N25
\inst4|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_dirtyIn~q\);

-- Location: FF_X62_Y26_N9
\inst4|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_previousIn~q\);

-- Location: LCCOMB_X60_Y26_N10
\inst4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|s_debounceCnt\(0) $ (VCC)
-- \inst4|Add0~1\ = CARRY(\inst4|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCCOMB_X61_Y26_N20
\inst4|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~24_combout\ = (\inst4|Add0~0_combout\ & \inst4|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~0_combout\,
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	combout => \inst4|s_debounceCnt~24_combout\);

-- Location: LCCOMB_X61_Y26_N30
\inst4|s_debounceCnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[2]~3_combout\ = (\inst4|s_debounceCnt\(22)) # (((\inst4|s_debounceCnt[2]~2_combout\) # (!\inst4|s_dirtyIn~q\)) # (!\inst4|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(22),
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|s_dirtyIn~q\,
	datad => \inst4|s_debounceCnt[2]~2_combout\,
	combout => \inst4|s_debounceCnt[2]~3_combout\);

-- Location: FF_X61_Y26_N21
\inst4|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~24_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(0));

-- Location: LCCOMB_X60_Y26_N12
\inst4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst4|s_debounceCnt\(1) & (\inst4|Add0~1\ & VCC)) # (!\inst4|s_debounceCnt\(1) & (!\inst4|Add0~1\))
-- \inst4|Add0~3\ = CARRY((!\inst4|s_debounceCnt\(1) & !\inst4|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: LCCOMB_X61_Y26_N22
\inst4|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~20_combout\ = (\inst4|Add0~2_combout\ & \inst4|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~2_combout\,
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	combout => \inst4|s_debounceCnt~20_combout\);

-- Location: FF_X61_Y26_N23
\inst4|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~20_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(1));

-- Location: LCCOMB_X60_Y26_N14
\inst4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = (\inst4|s_debounceCnt\(2) & ((GND) # (!\inst4|Add0~3\))) # (!\inst4|s_debounceCnt\(2) & (\inst4|Add0~3\ $ (GND)))
-- \inst4|Add0~5\ = CARRY((\inst4|s_debounceCnt\(2)) # (!\inst4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\,
	cout => \inst4|Add0~5\);

-- Location: LCCOMB_X61_Y26_N4
\inst4|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~21_combout\ = (\inst4|Add0~4_combout\ & \inst4|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~4_combout\,
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	combout => \inst4|s_debounceCnt~21_combout\);

-- Location: FF_X61_Y26_N5
\inst4|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~21_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(2));

-- Location: LCCOMB_X60_Y26_N16
\inst4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = (\inst4|s_debounceCnt\(3) & (\inst4|Add0~5\ & VCC)) # (!\inst4|s_debounceCnt\(3) & (!\inst4|Add0~5\))
-- \inst4|Add0~7\ = CARRY((!\inst4|s_debounceCnt\(3) & !\inst4|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst4|Add0~5\,
	combout => \inst4|Add0~6_combout\,
	cout => \inst4|Add0~7\);

-- Location: LCCOMB_X61_Y26_N2
\inst4|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~22_combout\ = (\inst4|Add0~6_combout\ & \inst4|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~6_combout\,
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	combout => \inst4|s_debounceCnt~22_combout\);

-- Location: FF_X61_Y26_N3
\inst4|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~22_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(3));

-- Location: LCCOMB_X60_Y26_N18
\inst4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|s_debounceCnt\(4) & ((GND) # (!\inst4|Add0~7\))) # (!\inst4|s_debounceCnt\(4) & (\inst4|Add0~7\ $ (GND)))
-- \inst4|Add0~9\ = CARRY((\inst4|s_debounceCnt\(4)) # (!\inst4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst4|Add0~7\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCCOMB_X61_Y26_N0
\inst4|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~23_combout\ = (\inst4|Add0~8_combout\ & \inst4|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~8_combout\,
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	combout => \inst4|s_debounceCnt~23_combout\);

-- Location: FF_X61_Y26_N1
\inst4|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~23_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(4));

-- Location: LCCOMB_X61_Y26_N18
\inst4|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~5_combout\ = (!\inst4|s_debounceCnt\(1) & (!\inst4|s_debounceCnt\(4) & (!\inst4|s_debounceCnt\(2) & !\inst4|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(1),
	datab => \inst4|s_debounceCnt\(4),
	datac => \inst4|s_debounceCnt\(2),
	datad => \inst4|s_debounceCnt\(3),
	combout => \inst4|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X60_Y26_N20
\inst4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst4|s_debounceCnt\(5) & (\inst4|Add0~9\ & VCC)) # (!\inst4|s_debounceCnt\(5) & (!\inst4|Add0~9\))
-- \inst4|Add0~11\ = CARRY((!\inst4|s_debounceCnt\(5) & !\inst4|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: LCCOMB_X60_Y26_N22
\inst4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = (\inst4|s_debounceCnt\(6) & ((GND) # (!\inst4|Add0~11\))) # (!\inst4|s_debounceCnt\(6) & (\inst4|Add0~11\ $ (GND)))
-- \inst4|Add0~13\ = CARRY((\inst4|s_debounceCnt\(6)) # (!\inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: LCCOMB_X60_Y26_N30
\inst4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~20_combout\ = (\inst4|s_debounceCnt\(10) & ((GND) # (!\inst4|Add0~19\))) # (!\inst4|s_debounceCnt\(10) & (\inst4|Add0~19\ $ (GND)))
-- \inst4|Add0~21\ = CARRY((\inst4|s_debounceCnt\(10)) # (!\inst4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst4|Add0~19\,
	combout => \inst4|Add0~20_combout\,
	cout => \inst4|Add0~21\);

-- Location: LCCOMB_X60_Y25_N0
\inst4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~22_combout\ = (\inst4|s_debounceCnt\(11) & (\inst4|Add0~21\ & VCC)) # (!\inst4|s_debounceCnt\(11) & (!\inst4|Add0~21\))
-- \inst4|Add0~23\ = CARRY((!\inst4|s_debounceCnt\(11) & !\inst4|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst4|Add0~21\,
	combout => \inst4|Add0~22_combout\,
	cout => \inst4|Add0~23\);

-- Location: LCCOMB_X62_Y26_N14
\inst4|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~16_combout\ = (\inst4|s_debounceCnt[2]~0_combout\ & ((\inst4|Add0~22_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~22_combout\,
	datad => \inst4|s_debounceCnt[2]~0_combout\,
	combout => \inst4|s_debounceCnt~16_combout\);

-- Location: FF_X62_Y26_N15
\inst4|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~16_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(11));

-- Location: LCCOMB_X60_Y25_N2
\inst4|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~24_combout\ = (\inst4|s_debounceCnt\(12) & ((GND) # (!\inst4|Add0~23\))) # (!\inst4|s_debounceCnt\(12) & (\inst4|Add0~23\ $ (GND)))
-- \inst4|Add0~25\ = CARRY((\inst4|s_debounceCnt\(12)) # (!\inst4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst4|Add0~23\,
	combout => \inst4|Add0~24_combout\,
	cout => \inst4|Add0~25\);

-- Location: LCCOMB_X62_Y26_N22
\inst4|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~10_combout\ = (\inst4|s_debounceCnt[2]~4_combout\ & \inst4|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	datad => \inst4|Add0~24_combout\,
	combout => \inst4|s_debounceCnt~10_combout\);

-- Location: FF_X62_Y26_N23
\inst4|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~10_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(12));

-- Location: LCCOMB_X60_Y25_N4
\inst4|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~26_combout\ = (\inst4|s_debounceCnt\(13) & (\inst4|Add0~25\ & VCC)) # (!\inst4|s_debounceCnt\(13) & (!\inst4|Add0~25\))
-- \inst4|Add0~27\ = CARRY((!\inst4|s_debounceCnt\(13) & !\inst4|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst4|Add0~25\,
	combout => \inst4|Add0~26_combout\,
	cout => \inst4|Add0~27\);

-- Location: LCCOMB_X62_Y26_N6
\inst4|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~11_combout\ = (\inst4|s_debounceCnt[2]~4_combout\ & \inst4|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	datad => \inst4|Add0~26_combout\,
	combout => \inst4|s_debounceCnt~11_combout\);

-- Location: FF_X62_Y26_N7
\inst4|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~11_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(13));

-- Location: LCCOMB_X60_Y25_N6
\inst4|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~28_combout\ = (\inst4|s_debounceCnt\(14) & ((GND) # (!\inst4|Add0~27\))) # (!\inst4|s_debounceCnt\(14) & (\inst4|Add0~27\ $ (GND)))
-- \inst4|Add0~29\ = CARRY((\inst4|s_debounceCnt\(14)) # (!\inst4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst4|Add0~27\,
	combout => \inst4|Add0~28_combout\,
	cout => \inst4|Add0~29\);

-- Location: LCCOMB_X62_Y26_N20
\inst4|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~17_combout\ = (\inst4|s_debounceCnt[2]~0_combout\ & ((\inst4|Add0~28_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~28_combout\,
	datad => \inst4|s_debounceCnt[2]~0_combout\,
	combout => \inst4|s_debounceCnt~17_combout\);

-- Location: FF_X62_Y26_N21
\inst4|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~17_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(14));

-- Location: LCCOMB_X60_Y25_N8
\inst4|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~30_combout\ = (\inst4|s_debounceCnt\(15) & (\inst4|Add0~29\ & VCC)) # (!\inst4|s_debounceCnt\(15) & (!\inst4|Add0~29\))
-- \inst4|Add0~31\ = CARRY((!\inst4|s_debounceCnt\(15) & !\inst4|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst4|Add0~29\,
	combout => \inst4|Add0~30_combout\,
	cout => \inst4|Add0~31\);

-- Location: LCCOMB_X60_Y25_N24
\inst4|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~5_combout\ = (\inst4|Add0~30_combout\ & \inst4|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~30_combout\,
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	combout => \inst4|s_debounceCnt~5_combout\);

-- Location: FF_X60_Y25_N25
\inst4|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~5_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(15));

-- Location: LCCOMB_X60_Y25_N10
\inst4|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~32_combout\ = (\inst4|s_debounceCnt\(16) & ((GND) # (!\inst4|Add0~31\))) # (!\inst4|s_debounceCnt\(16) & (\inst4|Add0~31\ $ (GND)))
-- \inst4|Add0~33\ = CARRY((\inst4|s_debounceCnt\(16)) # (!\inst4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst4|Add0~31\,
	combout => \inst4|Add0~32_combout\,
	cout => \inst4|Add0~33\);

-- Location: LCCOMB_X60_Y25_N26
\inst4|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~6_combout\ = (\inst4|s_debounceCnt[2]~4_combout\ & \inst4|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	datad => \inst4|Add0~32_combout\,
	combout => \inst4|s_debounceCnt~6_combout\);

-- Location: FF_X60_Y25_N27
\inst4|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~6_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(16));

-- Location: LCCOMB_X60_Y25_N12
\inst4|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~34_combout\ = (\inst4|s_debounceCnt\(17) & (\inst4|Add0~33\ & VCC)) # (!\inst4|s_debounceCnt\(17) & (!\inst4|Add0~33\))
-- \inst4|Add0~35\ = CARRY((!\inst4|s_debounceCnt\(17) & !\inst4|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst4|Add0~33\,
	combout => \inst4|Add0~34_combout\,
	cout => \inst4|Add0~35\);

-- Location: LCCOMB_X60_Y25_N28
\inst4|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~7_combout\ = (\inst4|s_debounceCnt[2]~4_combout\ & \inst4|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	datad => \inst4|Add0~34_combout\,
	combout => \inst4|s_debounceCnt~7_combout\);

-- Location: FF_X60_Y25_N29
\inst4|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~7_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(17));

-- Location: LCCOMB_X60_Y25_N14
\inst4|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~36_combout\ = (\inst4|s_debounceCnt\(18) & ((GND) # (!\inst4|Add0~35\))) # (!\inst4|s_debounceCnt\(18) & (\inst4|Add0~35\ $ (GND)))
-- \inst4|Add0~37\ = CARRY((\inst4|s_debounceCnt\(18)) # (!\inst4|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst4|Add0~35\,
	combout => \inst4|Add0~36_combout\,
	cout => \inst4|Add0~37\);

-- Location: LCCOMB_X61_Y26_N16
\inst4|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[18]~18_combout\ = (\inst4|s_debounceCnt[2]~3_combout\ & (\inst4|s_debounceCnt[2]~0_combout\ & ((\inst4|Add0~36_combout\) # (!\inst4|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~36_combout\,
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[2]~3_combout\,
	datad => \inst4|s_debounceCnt[2]~0_combout\,
	combout => \inst4|s_debounceCnt[18]~18_combout\);

-- Location: FF_X61_Y26_N17
\inst4|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(18));

-- Location: LCCOMB_X60_Y25_N16
\inst4|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~38_combout\ = (\inst4|s_debounceCnt\(19) & (\inst4|Add0~37\ & VCC)) # (!\inst4|s_debounceCnt\(19) & (!\inst4|Add0~37\))
-- \inst4|Add0~39\ = CARRY((!\inst4|s_debounceCnt\(19) & !\inst4|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst4|Add0~37\,
	combout => \inst4|Add0~38_combout\,
	cout => \inst4|Add0~39\);

-- Location: LCCOMB_X61_Y26_N10
\inst4|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[19]~19_combout\ = (\inst4|s_debounceCnt[2]~3_combout\ & (\inst4|s_debounceCnt[2]~0_combout\ & ((\inst4|Add0~38_combout\) # (!\inst4|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt[2]~3_combout\,
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~38_combout\,
	datad => \inst4|s_debounceCnt[2]~0_combout\,
	combout => \inst4|s_debounceCnt[19]~19_combout\);

-- Location: FF_X61_Y26_N11
\inst4|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(19));

-- Location: LCCOMB_X60_Y25_N18
\inst4|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~40_combout\ = (\inst4|s_debounceCnt\(20) & ((GND) # (!\inst4|Add0~39\))) # (!\inst4|s_debounceCnt\(20) & (\inst4|Add0~39\ $ (GND)))
-- \inst4|Add0~41\ = CARRY((\inst4|s_debounceCnt\(20)) # (!\inst4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst4|Add0~39\,
	combout => \inst4|Add0~40_combout\,
	cout => \inst4|Add0~41\);

-- Location: LCCOMB_X62_Y26_N10
\inst4|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[20]~8_combout\ = (\inst4|s_debounceCnt[2]~3_combout\ & (\inst4|s_debounceCnt[2]~4_combout\ & \inst4|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt[2]~3_combout\,
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	datad => \inst4|Add0~40_combout\,
	combout => \inst4|s_debounceCnt[20]~8_combout\);

-- Location: FF_X62_Y26_N11
\inst4|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(20));

-- Location: LCCOMB_X60_Y25_N20
\inst4|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~42_combout\ = (\inst4|s_debounceCnt\(21) & (\inst4|Add0~41\ & VCC)) # (!\inst4|s_debounceCnt\(21) & (!\inst4|Add0~41\))
-- \inst4|Add0~43\ = CARRY((!\inst4|s_debounceCnt\(21) & !\inst4|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst4|Add0~41\,
	combout => \inst4|Add0~42_combout\,
	cout => \inst4|Add0~43\);

-- Location: LCCOMB_X62_Y26_N26
\inst4|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[21]~9_combout\ = (\inst4|s_debounceCnt[2]~3_combout\ & (\inst4|s_debounceCnt[2]~4_combout\ & \inst4|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt[2]~3_combout\,
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	datad => \inst4|Add0~42_combout\,
	combout => \inst4|s_debounceCnt[21]~9_combout\);

-- Location: FF_X62_Y26_N27
\inst4|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(21));

-- Location: LCCOMB_X61_Y25_N0
\inst4|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~4_combout\ = (\inst4|s_debounceCnt\(17)) # ((\inst4|s_debounceCnt\(16)) # (\inst4|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(17),
	datac => \inst4|s_debounceCnt\(16),
	datad => \inst4|s_debounceCnt\(15),
	combout => \inst4|LessThan0~4_combout\);

-- Location: LCCOMB_X61_Y26_N28
\inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (\inst4|s_debounceCnt\(6) & ((\inst4|s_debounceCnt\(5)) # ((\inst4|s_debounceCnt\(0)) # (!\inst4|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(5),
	datab => \inst4|s_debounceCnt\(0),
	datac => \inst4|s_debounceCnt\(6),
	datad => \inst4|s_pulsedOut~5_combout\,
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y26_N14
\inst4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_combout\ = (\inst4|s_debounceCnt\(9) & ((\inst4|s_debounceCnt\(7)) # (\inst4|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(7),
	datac => \inst4|s_debounceCnt\(9),
	datad => \inst4|LessThan0~0_combout\,
	combout => \inst4|LessThan0~1_combout\);

-- Location: LCCOMB_X62_Y26_N2
\inst4|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~2_combout\ = (\inst4|s_debounceCnt\(11) & ((\inst4|s_debounceCnt\(10)) # ((\inst4|s_debounceCnt\(8) & \inst4|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(8),
	datab => \inst4|s_debounceCnt\(10),
	datac => \inst4|s_debounceCnt\(11),
	datad => \inst4|LessThan0~1_combout\,
	combout => \inst4|LessThan0~2_combout\);

-- Location: LCCOMB_X62_Y26_N18
\inst4|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_combout\ = (\inst4|s_debounceCnt\(14) & ((\inst4|s_debounceCnt\(13)) # ((\inst4|s_debounceCnt\(12)) # (\inst4|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(13),
	datab => \inst4|s_debounceCnt\(14),
	datac => \inst4|s_debounceCnt\(12),
	datad => \inst4|LessThan0~2_combout\,
	combout => \inst4|LessThan0~3_combout\);

-- Location: LCCOMB_X62_Y26_N0
\inst4|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_combout\ = (\inst4|s_debounceCnt\(19) & ((\inst4|LessThan0~4_combout\) # (\inst4|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(19),
	datac => \inst4|LessThan0~4_combout\,
	datad => \inst4|LessThan0~3_combout\,
	combout => \inst4|LessThan0~5_combout\);

-- Location: LCCOMB_X62_Y26_N28
\inst4|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~6_combout\ = (\inst4|s_debounceCnt\(20)) # ((\inst4|s_debounceCnt\(21)) # ((\inst4|s_debounceCnt\(18) & \inst4|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(20),
	datab => \inst4|s_debounceCnt\(18),
	datac => \inst4|s_debounceCnt\(21),
	datad => \inst4|LessThan0~5_combout\,
	combout => \inst4|LessThan0~6_combout\);

-- Location: LCCOMB_X62_Y26_N24
\inst4|s_debounceCnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[2]~0_combout\ = (\inst4|s_dirtyIn~q\ & ((!\inst4|LessThan0~6_combout\) # (!\inst4|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(22),
	datac => \inst4|s_dirtyIn~q\,
	datad => \inst4|LessThan0~6_combout\,
	combout => \inst4|s_debounceCnt[2]~0_combout\);

-- Location: LCCOMB_X60_Y26_N6
\inst4|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~1_combout\ = (\inst4|s_debounceCnt[2]~0_combout\ & ((\inst4|Add0~12_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~12_combout\,
	datad => \inst4|s_debounceCnt[2]~0_combout\,
	combout => \inst4|s_debounceCnt~1_combout\);

-- Location: FF_X60_Y26_N7
\inst4|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~1_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(6));

-- Location: LCCOMB_X60_Y26_N24
\inst4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = (\inst4|s_debounceCnt\(7) & (\inst4|Add0~13\ & VCC)) # (!\inst4|s_debounceCnt\(7) & (!\inst4|Add0~13\))
-- \inst4|Add0~15\ = CARRY((!\inst4|s_debounceCnt\(7) & !\inst4|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\,
	cout => \inst4|Add0~15\);

-- Location: LCCOMB_X61_Y26_N8
\inst4|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~12_combout\ = (\inst4|Add0~14_combout\ & \inst4|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~14_combout\,
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	combout => \inst4|s_debounceCnt~12_combout\);

-- Location: FF_X61_Y26_N9
\inst4|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~12_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(7));

-- Location: LCCOMB_X60_Y26_N26
\inst4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = (\inst4|s_debounceCnt\(8) & ((GND) # (!\inst4|Add0~15\))) # (!\inst4|s_debounceCnt\(8) & (\inst4|Add0~15\ $ (GND)))
-- \inst4|Add0~17\ = CARRY((\inst4|s_debounceCnt\(8)) # (!\inst4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst4|Add0~15\,
	combout => \inst4|Add0~16_combout\,
	cout => \inst4|Add0~17\);

-- Location: LCCOMB_X62_Y26_N12
\inst4|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~13_combout\ = (\inst4|s_debounceCnt[2]~0_combout\ & ((\inst4|Add0~16_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~16_combout\,
	datad => \inst4|s_debounceCnt[2]~0_combout\,
	combout => \inst4|s_debounceCnt~13_combout\);

-- Location: FF_X62_Y26_N13
\inst4|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~13_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(8));

-- Location: LCCOMB_X60_Y26_N28
\inst4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|s_debounceCnt\(9) & (\inst4|Add0~17\ & VCC)) # (!\inst4|s_debounceCnt\(9) & (!\inst4|Add0~17\))
-- \inst4|Add0~19\ = CARRY((!\inst4|s_debounceCnt\(9) & !\inst4|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst4|Add0~17\,
	combout => \inst4|Add0~18_combout\,
	cout => \inst4|Add0~19\);

-- Location: LCCOMB_X61_Y26_N26
\inst4|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~14_combout\ = (\inst4|s_debounceCnt[2]~0_combout\ & ((\inst4|Add0~18_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~18_combout\,
	datad => \inst4|s_debounceCnt[2]~0_combout\,
	combout => \inst4|s_debounceCnt~14_combout\);

-- Location: FF_X61_Y26_N27
\inst4|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~14_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(9));

-- Location: LCCOMB_X62_Y26_N16
\inst4|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~15_combout\ = (\inst4|s_debounceCnt[2]~4_combout\ & \inst4|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	datad => \inst4|Add0~20_combout\,
	combout => \inst4|s_debounceCnt~15_combout\);

-- Location: FF_X62_Y26_N17
\inst4|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~15_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(10));

-- Location: LCCOMB_X60_Y26_N8
\inst4|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~2_combout\ = (!\inst4|s_debounceCnt\(10) & (!\inst4|s_debounceCnt\(7) & (!\inst4|s_debounceCnt\(8) & !\inst4|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(10),
	datab => \inst4|s_debounceCnt\(7),
	datac => \inst4|s_debounceCnt\(8),
	datad => \inst4|s_debounceCnt\(9),
	combout => \inst4|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X63_Y26_N4
\inst4|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~1_combout\ = (!\inst4|s_debounceCnt\(20) & (!\inst4|s_debounceCnt\(13) & (!\inst4|s_debounceCnt\(21) & !\inst4|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(20),
	datab => \inst4|s_debounceCnt\(13),
	datac => \inst4|s_debounceCnt\(21),
	datad => \inst4|s_debounceCnt\(12),
	combout => \inst4|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X63_Y26_N26
\inst4|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~3_combout\ = (!\inst4|s_debounceCnt\(11) & (!\inst4|s_debounceCnt\(14) & (!\inst4|s_debounceCnt\(18) & !\inst4|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(11),
	datab => \inst4|s_debounceCnt\(14),
	datac => \inst4|s_debounceCnt\(18),
	datad => \inst4|s_debounceCnt\(19),
	combout => \inst4|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X60_Y25_N30
\inst4|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~0_combout\ = (!\inst4|s_debounceCnt\(16) & (!\inst4|s_debounceCnt\(17) & (!\inst4|s_debounceCnt\(6) & !\inst4|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(16),
	datab => \inst4|s_debounceCnt\(17),
	datac => \inst4|s_debounceCnt\(6),
	datad => \inst4|s_debounceCnt\(15),
	combout => \inst4|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X61_Y26_N24
\inst4|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~4_combout\ = (\inst4|s_pulsedOut~2_combout\ & (\inst4|s_pulsedOut~1_combout\ & (\inst4|s_pulsedOut~3_combout\ & \inst4|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_pulsedOut~2_combout\,
	datab => \inst4|s_pulsedOut~1_combout\,
	datac => \inst4|s_pulsedOut~3_combout\,
	datad => \inst4|s_pulsedOut~0_combout\,
	combout => \inst4|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X61_Y26_N12
\inst4|s_debounceCnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[2]~2_combout\ = (\inst4|s_debounceCnt\(5)) # ((\inst4|s_debounceCnt\(0)) # ((!\inst4|s_pulsedOut~4_combout\) # (!\inst4|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(5),
	datab => \inst4|s_debounceCnt\(0),
	datac => \inst4|s_pulsedOut~5_combout\,
	datad => \inst4|s_pulsedOut~4_combout\,
	combout => \inst4|s_debounceCnt[2]~2_combout\);

-- Location: LCCOMB_X62_Y26_N8
\inst4|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[22]~25_combout\ = (\inst4|s_debounceCnt\(22) & (((!\inst4|LessThan0~6_combout\)))) # (!\inst4|s_debounceCnt\(22) & ((\inst4|s_debounceCnt[2]~2_combout\) # ((!\inst4|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt[2]~2_combout\,
	datab => \inst4|s_debounceCnt\(22),
	datac => \inst4|s_previousIn~q\,
	datad => \inst4|LessThan0~6_combout\,
	combout => \inst4|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X60_Y25_N22
\inst4|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~44_combout\ = \inst4|Add0~43\ $ (\inst4|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|s_debounceCnt\(22),
	cin => \inst4|Add0~43\,
	combout => \inst4|Add0~44_combout\);

-- Location: LCCOMB_X62_Y26_N4
\inst4|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[22]~26_combout\ = (\inst4|s_debounceCnt[22]~25_combout\ & (\inst4|s_dirtyIn~q\ & ((\inst4|Add0~44_combout\) # (!\inst4|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[22]~25_combout\,
	datac => \inst4|s_dirtyIn~q\,
	datad => \inst4|Add0~44_combout\,
	combout => \inst4|s_debounceCnt[22]~26_combout\);

-- Location: FF_X62_Y26_N5
\inst4|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(22));

-- Location: LCCOMB_X62_Y26_N30
\inst4|s_debounceCnt[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[2]~4_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_dirtyIn~q\ & ((!\inst4|LessThan0~6_combout\) # (!\inst4|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt\(22),
	datac => \inst4|s_dirtyIn~q\,
	datad => \inst4|LessThan0~6_combout\,
	combout => \inst4|s_debounceCnt[2]~4_combout\);

-- Location: LCCOMB_X61_Y26_N6
\inst4|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~27_combout\ = (\inst4|s_debounceCnt[2]~4_combout\ & \inst4|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_debounceCnt[2]~4_combout\,
	datad => \inst4|Add0~10_combout\,
	combout => \inst4|s_debounceCnt~27_combout\);

-- Location: FF_X61_Y26_N7
\inst4|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~27_combout\,
	ena => \inst4|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(5));

-- Location: LCCOMB_X60_Y26_N2
\inst4|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~6_combout\ = (\inst4|s_debounceCnt\(0) & (\inst4|s_previousIn~q\ & (\inst4|s_dirtyIn~q\ & !\inst4|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(0),
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|s_dirtyIn~q\,
	datad => \inst4|s_debounceCnt\(22),
	combout => \inst4|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X60_Y26_N0
\inst4|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~7_combout\ = (!\inst4|s_debounceCnt\(5) & (\inst4|s_pulsedOut~5_combout\ & (\inst4|s_pulsedOut~4_combout\ & \inst4|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(5),
	datab => \inst4|s_pulsedOut~5_combout\,
	datac => \inst4|s_pulsedOut~4_combout\,
	datad => \inst4|s_pulsedOut~6_combout\,
	combout => \inst4|s_pulsedOut~7_combout\);

-- Location: FF_X60_Y26_N1
\inst4|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_pulsedOut~q\);

-- Location: LCCOMB_X57_Y25_N20
\GHFGHFGF|Airfryer_FSM_inst|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\ & (!\inst2|s_pulsedOut~q\ & !\inst4|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datac => \inst2|s_pulsedOut~q\,
	datad => \inst4|s_pulsedOut~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\);

-- Location: LCCOMB_X56_Y25_N24
\GHFGHFGF|Airfryer_FSM_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\ = (!\inst7|s_pulsedOut~q\ & (!\inst6|s_pulsedOut~q\ & !\inst8|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_pulsedOut~q\,
	datac => \inst6|s_pulsedOut~q\,
	datad => \inst8|s_pulsedOut~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y25_N20
\GHFGHFGF|Airfryer_FSM_inst|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~14_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\ & (\GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\ & ((!\inst4|s_pulsedOut~q\) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \inst4|s_pulsedOut~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~14_combout\);

-- Location: LCCOMB_X56_Y25_N18
\GHFGHFGF|Airfryer_FSM_inst|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~15_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState~12_combout\ & ((\GHFGHFGF|Airfryer_FSM_inst|s_currentState~14_combout\ & (\GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\)) # 
-- (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState~14_combout\ & ((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~12_combout\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~14_combout\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~15_combout\);

-- Location: FF_X56_Y25_N19
\GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\);

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

-- Location: FF_X63_Y30_N9
\inst|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dirtyIn~q\);

-- Location: FF_X61_Y30_N15
\inst|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_previousIn~q\);

-- Location: LCCOMB_X63_Y30_N12
\inst|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~5_combout\ = (!\inst|s_debounceCnt\(2) & (!\inst|s_debounceCnt\(4) & (!\inst|s_debounceCnt\(3) & !\inst|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(2),
	datab => \inst|s_debounceCnt\(4),
	datac => \inst|s_debounceCnt\(3),
	datad => \inst|s_debounceCnt\(1),
	combout => \inst|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X62_Y30_N10
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|s_debounceCnt\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X63_Y30_N26
\inst|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~24_combout\ = (\inst|s_debounceCnt[12]~4_combout\ & \inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_debounceCnt[12]~4_combout\,
	datad => \inst|Add0~0_combout\,
	combout => \inst|s_debounceCnt~24_combout\);

-- Location: LCCOMB_X63_Y30_N8
\inst|s_debounceCnt[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[12]~3_combout\ = ((\inst|s_debounceCnt\(22)) # ((\inst|s_debounceCnt[12]~2_combout\) # (!\inst|s_dirtyIn~q\))) # (!\inst|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_debounceCnt\(22),
	datac => \inst|s_dirtyIn~q\,
	datad => \inst|s_debounceCnt[12]~2_combout\,
	combout => \inst|s_debounceCnt[12]~3_combout\);

-- Location: FF_X63_Y30_N27
\inst|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~24_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(0));

-- Location: LCCOMB_X62_Y30_N20
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|s_debounceCnt\(5) & (\inst|Add0~9\ & VCC)) # (!\inst|s_debounceCnt\(5) & (!\inst|Add0~9\))
-- \inst|Add0~11\ = CARRY((!\inst|s_debounceCnt\(5) & !\inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X62_Y30_N22
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|s_debounceCnt\(6) & ((GND) # (!\inst|Add0~11\))) # (!\inst|s_debounceCnt\(6) & (\inst|Add0~11\ $ (GND)))
-- \inst|Add0~13\ = CARRY((\inst|s_debounceCnt\(6)) # (!\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X62_Y29_N18
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|s_debounceCnt\(20) & ((GND) # (!\inst|Add0~39\))) # (!\inst|s_debounceCnt\(20) & (\inst|Add0~39\ $ (GND)))
-- \inst|Add0~41\ = CARRY((\inst|s_debounceCnt\(20)) # (!\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X62_Y29_N20
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|s_debounceCnt\(21) & (\inst|Add0~41\ & VCC)) # (!\inst|s_debounceCnt\(21) & (!\inst|Add0~41\))
-- \inst|Add0~43\ = CARRY((!\inst|s_debounceCnt\(21) & !\inst|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X61_Y30_N22
\inst|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[21]~9_combout\ = (\inst|s_debounceCnt[12]~3_combout\ & (\inst|s_debounceCnt[12]~4_combout\ & \inst|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt[12]~3_combout\,
	datac => \inst|s_debounceCnt[12]~4_combout\,
	datad => \inst|Add0~42_combout\,
	combout => \inst|s_debounceCnt[21]~9_combout\);

-- Location: FF_X61_Y30_N23
\inst|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(21));

-- Location: LCCOMB_X62_Y29_N26
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|s_debounceCnt\(17)) # ((\inst|s_debounceCnt\(15)) # (\inst|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(17),
	datab => \inst|s_debounceCnt\(15),
	datac => \inst|s_debounceCnt\(16),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X63_Y30_N16
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|s_debounceCnt\(6) & ((\inst|s_debounceCnt\(0)) # ((\inst|s_debounceCnt\(5)) # (!\inst|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(0),
	datab => \inst|s_debounceCnt\(6),
	datac => \inst|s_debounceCnt\(5),
	datad => \inst|s_pulsedOut~5_combout\,
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y30_N18
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|s_debounceCnt\(9) & ((\inst|s_debounceCnt\(7)) # (\inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(9),
	datac => \inst|s_debounceCnt\(7),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y30_N20
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|s_debounceCnt\(11) & ((\inst|s_debounceCnt\(10)) # ((\inst|s_debounceCnt\(8) & \inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(10),
	datab => \inst|s_debounceCnt\(11),
	datac => \inst|s_debounceCnt\(8),
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X61_Y30_N10
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|s_debounceCnt\(14) & ((\inst|s_debounceCnt\(13)) # ((\inst|s_debounceCnt\(12)) # (\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(13),
	datab => \inst|s_debounceCnt\(12),
	datac => \inst|s_debounceCnt\(14),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X61_Y30_N12
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (\inst|s_debounceCnt\(19) & ((\inst|LessThan0~4_combout\) # (\inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(19),
	datac => \inst|LessThan0~4_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X61_Y30_N2
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (\inst|s_debounceCnt\(20)) # ((\inst|s_debounceCnt\(21)) # ((\inst|s_debounceCnt\(18) & \inst|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(18),
	datab => \inst|s_debounceCnt\(20),
	datac => \inst|s_debounceCnt\(21),
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X61_Y30_N24
\inst|s_debounceCnt[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[12]~0_combout\ = (\inst|s_dirtyIn~q\ & ((!\inst|LessThan0~6_combout\) # (!\inst|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_dirtyIn~q\,
	datac => \inst|s_debounceCnt\(22),
	datad => \inst|LessThan0~6_combout\,
	combout => \inst|s_debounceCnt[12]~0_combout\);

-- Location: LCCOMB_X63_Y30_N28
\inst|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~1_combout\ = (\inst|s_debounceCnt[12]~0_combout\ & ((\inst|Add0~12_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|Add0~12_combout\,
	datad => \inst|s_debounceCnt[12]~0_combout\,
	combout => \inst|s_debounceCnt~1_combout\);

-- Location: FF_X63_Y30_N29
\inst|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~1_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(6));

-- Location: LCCOMB_X62_Y30_N24
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|s_debounceCnt\(7) & (\inst|Add0~13\ & VCC)) # (!\inst|s_debounceCnt\(7) & (!\inst|Add0~13\))
-- \inst|Add0~15\ = CARRY((!\inst|s_debounceCnt\(7) & !\inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X61_Y30_N8
\inst|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~12_combout\ = (\inst|s_debounceCnt[12]~4_combout\ & \inst|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_debounceCnt[12]~4_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|s_debounceCnt~12_combout\);

-- Location: FF_X61_Y30_N9
\inst|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~12_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(7));

-- Location: LCCOMB_X62_Y30_N26
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|s_debounceCnt\(8) & ((GND) # (!\inst|Add0~15\))) # (!\inst|s_debounceCnt\(8) & (\inst|Add0~15\ $ (GND)))
-- \inst|Add0~17\ = CARRY((\inst|s_debounceCnt\(8)) # (!\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X62_Y30_N0
\inst|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~13_combout\ = (\inst|s_debounceCnt[12]~0_combout\ & ((\inst|Add0~16_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datac => \inst|Add0~16_combout\,
	datad => \inst|s_debounceCnt[12]~0_combout\,
	combout => \inst|s_debounceCnt~13_combout\);

-- Location: FF_X62_Y30_N1
\inst|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~13_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(8));

-- Location: LCCOMB_X62_Y30_N28
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|s_debounceCnt\(9) & (\inst|Add0~17\ & VCC)) # (!\inst|s_debounceCnt\(9) & (!\inst|Add0~17\))
-- \inst|Add0~19\ = CARRY((!\inst|s_debounceCnt\(9) & !\inst|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X62_Y30_N6
\inst|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~14_combout\ = (\inst|s_debounceCnt[12]~0_combout\ & ((\inst|Add0~18_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|Add0~18_combout\,
	datad => \inst|s_debounceCnt[12]~0_combout\,
	combout => \inst|s_debounceCnt~14_combout\);

-- Location: FF_X62_Y30_N7
\inst|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~14_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(9));

-- Location: LCCOMB_X62_Y30_N30
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|s_debounceCnt\(10) & ((GND) # (!\inst|Add0~19\))) # (!\inst|s_debounceCnt\(10) & (\inst|Add0~19\ $ (GND)))
-- \inst|Add0~21\ = CARRY((\inst|s_debounceCnt\(10)) # (!\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X61_Y30_N6
\inst|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~15_combout\ = (\inst|Add0~20_combout\ & \inst|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~20_combout\,
	datac => \inst|s_debounceCnt[12]~4_combout\,
	combout => \inst|s_debounceCnt~15_combout\);

-- Location: FF_X61_Y30_N7
\inst|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~15_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(10));

-- Location: LCCOMB_X62_Y29_N0
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|s_debounceCnt\(11) & (\inst|Add0~21\ & VCC)) # (!\inst|s_debounceCnt\(11) & (!\inst|Add0~21\))
-- \inst|Add0~23\ = CARRY((!\inst|s_debounceCnt\(11) & !\inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X61_Y30_N28
\inst|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~16_combout\ = (\inst|s_debounceCnt[12]~0_combout\ & ((\inst|Add0~22_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datac => \inst|Add0~22_combout\,
	datad => \inst|s_debounceCnt[12]~0_combout\,
	combout => \inst|s_debounceCnt~16_combout\);

-- Location: FF_X61_Y30_N29
\inst|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~16_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(11));

-- Location: LCCOMB_X62_Y29_N2
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|s_debounceCnt\(12) & ((GND) # (!\inst|Add0~23\))) # (!\inst|s_debounceCnt\(12) & (\inst|Add0~23\ $ (GND)))
-- \inst|Add0~25\ = CARRY((\inst|s_debounceCnt\(12)) # (!\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X61_Y30_N4
\inst|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~10_combout\ = (\inst|Add0~24_combout\ & \inst|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~24_combout\,
	datac => \inst|s_debounceCnt[12]~4_combout\,
	combout => \inst|s_debounceCnt~10_combout\);

-- Location: FF_X61_Y30_N5
\inst|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~10_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(12));

-- Location: LCCOMB_X62_Y29_N4
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|s_debounceCnt\(13) & (\inst|Add0~25\ & VCC)) # (!\inst|s_debounceCnt\(13) & (!\inst|Add0~25\))
-- \inst|Add0~27\ = CARRY((!\inst|s_debounceCnt\(13) & !\inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X61_Y30_N26
\inst|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~11_combout\ = (\inst|s_debounceCnt[12]~4_combout\ & \inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_debounceCnt[12]~4_combout\,
	datad => \inst|Add0~26_combout\,
	combout => \inst|s_debounceCnt~11_combout\);

-- Location: FF_X61_Y30_N27
\inst|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~11_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(13));

-- Location: LCCOMB_X62_Y29_N6
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|s_debounceCnt\(14) & ((GND) # (!\inst|Add0~27\))) # (!\inst|s_debounceCnt\(14) & (\inst|Add0~27\ $ (GND)))
-- \inst|Add0~29\ = CARRY((\inst|s_debounceCnt\(14)) # (!\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X63_Y30_N30
\inst|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~17_combout\ = (\inst|s_debounceCnt[12]~0_combout\ & ((\inst|Add0~28_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datac => \inst|Add0~28_combout\,
	datad => \inst|s_debounceCnt[12]~0_combout\,
	combout => \inst|s_debounceCnt~17_combout\);

-- Location: FF_X63_Y30_N31
\inst|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~17_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(14));

-- Location: LCCOMB_X62_Y29_N8
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|s_debounceCnt\(15) & (\inst|Add0~29\ & VCC)) # (!\inst|s_debounceCnt\(15) & (!\inst|Add0~29\))
-- \inst|Add0~31\ = CARRY((!\inst|s_debounceCnt\(15) & !\inst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X62_Y29_N24
\inst|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~5_combout\ = (\inst|Add0~30_combout\ & \inst|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~30_combout\,
	datad => \inst|s_debounceCnt[12]~4_combout\,
	combout => \inst|s_debounceCnt~5_combout\);

-- Location: FF_X62_Y29_N25
\inst|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~5_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(15));

-- Location: LCCOMB_X62_Y29_N10
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|s_debounceCnt\(16) & ((GND) # (!\inst|Add0~31\))) # (!\inst|s_debounceCnt\(16) & (\inst|Add0~31\ $ (GND)))
-- \inst|Add0~33\ = CARRY((\inst|s_debounceCnt\(16)) # (!\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X62_Y30_N8
\inst|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~6_combout\ = (\inst|Add0~32_combout\ & \inst|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~32_combout\,
	datad => \inst|s_debounceCnt[12]~4_combout\,
	combout => \inst|s_debounceCnt~6_combout\);

-- Location: FF_X62_Y30_N9
\inst|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~6_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(16));

-- Location: LCCOMB_X62_Y29_N12
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|s_debounceCnt\(17) & (\inst|Add0~33\ & VCC)) # (!\inst|s_debounceCnt\(17) & (!\inst|Add0~33\))
-- \inst|Add0~35\ = CARRY((!\inst|s_debounceCnt\(17) & !\inst|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X62_Y29_N30
\inst|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~7_combout\ = (\inst|Add0~34_combout\ & \inst|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~34_combout\,
	datad => \inst|s_debounceCnt[12]~4_combout\,
	combout => \inst|s_debounceCnt~7_combout\);

-- Location: FF_X62_Y29_N31
\inst|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~7_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(17));

-- Location: LCCOMB_X62_Y29_N14
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|s_debounceCnt\(18) & ((GND) # (!\inst|Add0~35\))) # (!\inst|s_debounceCnt\(18) & (\inst|Add0~35\ $ (GND)))
-- \inst|Add0~37\ = CARRY((\inst|s_debounceCnt\(18)) # (!\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X63_Y30_N20
\inst|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[18]~18_combout\ = (\inst|s_debounceCnt[12]~3_combout\ & (\inst|s_debounceCnt[12]~0_combout\ & ((\inst|Add0~36_combout\) # (!\inst|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_debounceCnt[12]~3_combout\,
	datac => \inst|Add0~36_combout\,
	datad => \inst|s_debounceCnt[12]~0_combout\,
	combout => \inst|s_debounceCnt[18]~18_combout\);

-- Location: FF_X63_Y30_N21
\inst|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(18));

-- Location: LCCOMB_X62_Y29_N16
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|s_debounceCnt\(19) & (\inst|Add0~37\ & VCC)) # (!\inst|s_debounceCnt\(19) & (!\inst|Add0~37\))
-- \inst|Add0~39\ = CARRY((!\inst|s_debounceCnt\(19) & !\inst|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X63_Y30_N14
\inst|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[19]~19_combout\ = (\inst|s_debounceCnt[12]~3_combout\ & (\inst|s_debounceCnt[12]~0_combout\ & ((\inst|Add0~38_combout\) # (!\inst|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_debounceCnt[12]~3_combout\,
	datac => \inst|Add0~38_combout\,
	datad => \inst|s_debounceCnt[12]~0_combout\,
	combout => \inst|s_debounceCnt[19]~19_combout\);

-- Location: FF_X63_Y30_N15
\inst|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(19));

-- Location: LCCOMB_X61_Y30_N16
\inst|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[20]~8_combout\ = (\inst|s_debounceCnt[12]~3_combout\ & (\inst|s_debounceCnt[12]~4_combout\ & \inst|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt[12]~3_combout\,
	datac => \inst|s_debounceCnt[12]~4_combout\,
	datad => \inst|Add0~40_combout\,
	combout => \inst|s_debounceCnt[20]~8_combout\);

-- Location: FF_X61_Y30_N17
\inst|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(20));

-- Location: LCCOMB_X62_Y30_N2
\inst|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~1_combout\ = (!\inst|s_debounceCnt\(20) & (!\inst|s_debounceCnt\(12) & (!\inst|s_debounceCnt\(13) & !\inst|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(20),
	datab => \inst|s_debounceCnt\(12),
	datac => \inst|s_debounceCnt\(13),
	datad => \inst|s_debounceCnt\(21),
	combout => \inst|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X62_Y30_N4
\inst|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~2_combout\ = (!\inst|s_debounceCnt\(9) & (!\inst|s_debounceCnt\(8) & (!\inst|s_debounceCnt\(10) & !\inst|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(9),
	datab => \inst|s_debounceCnt\(8),
	datac => \inst|s_debounceCnt\(10),
	datad => \inst|s_debounceCnt\(7),
	combout => \inst|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X62_Y29_N28
\inst|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~0_combout\ = (!\inst|s_debounceCnt\(17) & (!\inst|s_debounceCnt\(15) & (!\inst|s_debounceCnt\(16) & !\inst|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(17),
	datab => \inst|s_debounceCnt\(15),
	datac => \inst|s_debounceCnt\(16),
	datad => \inst|s_debounceCnt\(6),
	combout => \inst|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X63_Y30_N24
\inst|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~3_combout\ = (!\inst|s_debounceCnt\(14) & (!\inst|s_debounceCnt\(18) & (!\inst|s_debounceCnt\(19) & !\inst|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(14),
	datab => \inst|s_debounceCnt\(18),
	datac => \inst|s_debounceCnt\(19),
	datad => \inst|s_debounceCnt\(11),
	combout => \inst|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X63_Y30_N10
\inst|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~4_combout\ = (\inst|s_pulsedOut~1_combout\ & (\inst|s_pulsedOut~2_combout\ & (\inst|s_pulsedOut~0_combout\ & \inst|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~1_combout\,
	datab => \inst|s_pulsedOut~2_combout\,
	datac => \inst|s_pulsedOut~0_combout\,
	datad => \inst|s_pulsedOut~3_combout\,
	combout => \inst|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X63_Y30_N6
\inst|s_debounceCnt[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[12]~2_combout\ = ((\inst|s_debounceCnt\(5)) # ((\inst|s_debounceCnt\(0)) # (!\inst|s_pulsedOut~4_combout\))) # (!\inst|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~5_combout\,
	datab => \inst|s_debounceCnt\(5),
	datac => \inst|s_debounceCnt\(0),
	datad => \inst|s_pulsedOut~4_combout\,
	combout => \inst|s_debounceCnt[12]~2_combout\);

-- Location: LCCOMB_X61_Y30_N14
\inst|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[22]~25_combout\ = (\inst|s_debounceCnt\(22) & (((!\inst|LessThan0~6_combout\)))) # (!\inst|s_debounceCnt\(22) & ((\inst|s_debounceCnt[12]~2_combout\) # ((!\inst|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt[12]~2_combout\,
	datab => \inst|s_debounceCnt\(22),
	datac => \inst|s_previousIn~q\,
	datad => \inst|LessThan0~6_combout\,
	combout => \inst|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X62_Y29_N22
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = \inst|Add0~43\ $ (\inst|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_debounceCnt\(22),
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\);

-- Location: LCCOMB_X61_Y30_N0
\inst|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[22]~26_combout\ = (\inst|s_dirtyIn~q\ & (\inst|s_debounceCnt[22]~25_combout\ & ((\inst|Add0~44_combout\) # (!\inst|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_dirtyIn~q\,
	datac => \inst|s_debounceCnt[22]~25_combout\,
	datad => \inst|Add0~44_combout\,
	combout => \inst|s_debounceCnt[22]~26_combout\);

-- Location: FF_X61_Y30_N1
\inst|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(22));

-- Location: LCCOMB_X61_Y30_N30
\inst|s_debounceCnt[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[12]~4_combout\ = (\inst|s_previousIn~q\ & (\inst|s_dirtyIn~q\ & ((!\inst|LessThan0~6_combout\) # (!\inst|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_dirtyIn~q\,
	datac => \inst|s_debounceCnt\(22),
	datad => \inst|LessThan0~6_combout\,
	combout => \inst|s_debounceCnt[12]~4_combout\);

-- Location: LCCOMB_X62_Y30_N12
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|s_debounceCnt\(1) & (\inst|Add0~1\ & VCC)) # (!\inst|s_debounceCnt\(1) & (!\inst|Add0~1\))
-- \inst|Add0~3\ = CARRY((!\inst|s_debounceCnt\(1) & !\inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X63_Y30_N0
\inst|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~20_combout\ = (\inst|s_debounceCnt[12]~4_combout\ & \inst|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_debounceCnt[12]~4_combout\,
	datad => \inst|Add0~2_combout\,
	combout => \inst|s_debounceCnt~20_combout\);

-- Location: FF_X63_Y30_N1
\inst|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~20_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(1));

-- Location: LCCOMB_X62_Y30_N14
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|s_debounceCnt\(2) & ((GND) # (!\inst|Add0~3\))) # (!\inst|s_debounceCnt\(2) & (\inst|Add0~3\ $ (GND)))
-- \inst|Add0~5\ = CARRY((\inst|s_debounceCnt\(2)) # (!\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X63_Y30_N22
\inst|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~21_combout\ = (\inst|Add0~4_combout\ & \inst|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datac => \inst|s_debounceCnt[12]~4_combout\,
	combout => \inst|s_debounceCnt~21_combout\);

-- Location: FF_X63_Y30_N23
\inst|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~21_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(2));

-- Location: LCCOMB_X62_Y30_N16
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|s_debounceCnt\(3) & (\inst|Add0~5\ & VCC)) # (!\inst|s_debounceCnt\(3) & (!\inst|Add0~5\))
-- \inst|Add0~7\ = CARRY((!\inst|s_debounceCnt\(3) & !\inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X63_Y30_N4
\inst|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~22_combout\ = (\inst|Add0~6_combout\ & \inst|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datac => \inst|s_debounceCnt[12]~4_combout\,
	combout => \inst|s_debounceCnt~22_combout\);

-- Location: FF_X63_Y30_N5
\inst|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~22_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(3));

-- Location: LCCOMB_X62_Y30_N18
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|s_debounceCnt\(4) & ((GND) # (!\inst|Add0~7\))) # (!\inst|s_debounceCnt\(4) & (\inst|Add0~7\ $ (GND)))
-- \inst|Add0~9\ = CARRY((\inst|s_debounceCnt\(4)) # (!\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X63_Y30_N2
\inst|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~23_combout\ = (\inst|Add0~8_combout\ & \inst|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~8_combout\,
	datac => \inst|s_debounceCnt[12]~4_combout\,
	combout => \inst|s_debounceCnt~23_combout\);

-- Location: FF_X63_Y30_N3
\inst|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~23_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(4));

-- Location: LCCOMB_X63_Y30_N18
\inst|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~27_combout\ = (\inst|Add0~10_combout\ & \inst|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~10_combout\,
	datac => \inst|s_debounceCnt[12]~4_combout\,
	combout => \inst|s_debounceCnt~27_combout\);

-- Location: FF_X63_Y30_N19
\inst|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~27_combout\,
	ena => \inst|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(5));

-- Location: LCCOMB_X60_Y30_N8
\inst|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~6_combout\ = (\inst|s_debounceCnt\(0) & (\inst|s_previousIn~q\ & (!\inst|s_debounceCnt\(22) & \inst|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(0),
	datab => \inst|s_previousIn~q\,
	datac => \inst|s_debounceCnt\(22),
	datad => \inst|s_dirtyIn~q\,
	combout => \inst|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X57_Y25_N0
\inst|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~7_combout\ = (!\inst|s_debounceCnt\(5) & (\inst|s_pulsedOut~5_combout\ & (\inst|s_pulsedOut~4_combout\ & \inst|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(5),
	datab => \inst|s_pulsedOut~5_combout\,
	datac => \inst|s_pulsedOut~4_combout\,
	datad => \inst|s_pulsedOut~6_combout\,
	combout => \inst|s_pulsedOut~7_combout\);

-- Location: FF_X57_Y25_N1
\inst|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pulsedOut~q\);

-- Location: LCCOMB_X58_Y25_N14
\GHFGHFGF|Airfryer_FSM_inst|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~9_combout\ = (\inst|s_pulsedOut~q\ & !\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pulsedOut~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~9_combout\);

-- Location: LCCOMB_X56_Y25_N26
\GHFGHFGF|Airfryer_FSM_inst|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~12_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState~9_combout\ & (((!\GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\)) # 
-- (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~9_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~12_combout\);

-- Location: LCCOMB_X56_Y25_N12
\GHFGHFGF|Airfryer_FSM_inst|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~16_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState~14_combout\ & ((!\GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\))) # (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState~14_combout\ & 
-- (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~14_combout\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~16_combout\);

-- Location: LCCOMB_X57_Y25_N26
\GHFGHFGF|Airfryer_FSM_inst|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~11_combout\ = (!\inst8|s_pulsedOut~q\ & (!\inst6|s_pulsedOut~q\ & (\inst2|s_pulsedOut~q\ & !\inst7|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_pulsedOut~q\,
	datab => \inst6|s_pulsedOut~q\,
	datac => \inst2|s_pulsedOut~q\,
	datad => \inst7|s_pulsedOut~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~11_combout\);

-- Location: LCCOMB_X56_Y25_N10
\GHFGHFGF|Airfryer_FSM_inst|s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~18_combout\ = (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & (\inst|s_pulsedOut~q\ & ((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\) # (\GHFGHFGF|Airfryer_FSM_inst|s_currentState~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datab => \inst|s_pulsedOut~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~11_combout\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~18_combout\);

-- Location: FF_X56_Y25_N11
\GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\);

-- Location: LCCOMB_X56_Y25_N30
\GHFGHFGF|Airfryer_FSM_inst|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~17_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState~12_combout\ & ((\GHFGHFGF|Airfryer_FSM_inst|s_currentState~16_combout\) # ((!\GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\ & 
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~12_combout\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~16_combout\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~11_combout\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~17_combout\);

-- Location: FF_X56_Y25_N31
\GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\);

-- Location: LCCOMB_X56_Y25_N28
\GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\ = (!\inst6|s_pulsedOut~q\ & (!\inst7|s_pulsedOut~q\ & (\inst|s_pulsedOut~q\ & !\inst8|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|s_pulsedOut~q\,
	datab => \inst7|s_pulsedOut~q\,
	datac => \inst|s_pulsedOut~q\,
	datad => \inst8|s_pulsedOut~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\);

-- Location: LCCOMB_X57_Y25_N30
\GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\ & (((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\ & \GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\)) # 
-- (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0_combout\);

-- Location: LCCOMB_X57_Y25_N10
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~5_combout\ = \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0) $ (VCC)
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~6\ = CARRY(\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => VCC,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~5_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~6\);

-- Location: LCCOMB_X63_Y24_N6
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~0_combout\ = \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(0) $ (VCC)
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~1\ = CARRY(\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(0),
	datad => VCC,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~0_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~1\);

-- Location: FF_X63_Y24_N7
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(0));

-- Location: LCCOMB_X63_Y24_N8
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~2_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(1) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~1\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(1) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~1\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~3\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~1\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(1),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~1\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~2_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~3\);

-- Location: FF_X63_Y24_N9
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(1));

-- Location: LCCOMB_X63_Y24_N10
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~4_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(2) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~3\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(2) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~3\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~5\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(2) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(2),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~3\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~4_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~5\);

-- Location: FF_X63_Y24_N11
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(2));

-- Location: LCCOMB_X63_Y24_N12
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~6_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(3) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~5\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(3) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~5\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~7\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~5\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(3),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~5\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~6_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~7\);

-- Location: FF_X63_Y24_N13
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(3));

-- Location: LCCOMB_X63_Y24_N14
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~8_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(4) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~7\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(4) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~7\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~9\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(4) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(4),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~7\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~8_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~9\);

-- Location: FF_X63_Y24_N15
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(4));

-- Location: LCCOMB_X63_Y24_N16
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~10_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(5) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~9\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(5) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~9\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~11\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~9\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(5),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~9\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~10_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~11\);

-- Location: FF_X63_Y24_N17
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(5));

-- Location: LCCOMB_X63_Y24_N18
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~12_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(6) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~11\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(6) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~11\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~13\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(6) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(6),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~11\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~12_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~13\);

-- Location: FF_X63_Y24_N19
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(6));

-- Location: LCCOMB_X63_Y24_N20
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~14_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(7) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~13\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(7) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~13\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~15\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~13\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(7),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~13\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~14_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~15\);

-- Location: LCCOMB_X62_Y23_N28
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~5_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~14_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~5_combout\);

-- Location: FF_X62_Y23_N29
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(7));

-- Location: LCCOMB_X63_Y24_N22
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~16_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(8) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~15\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(8) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~15\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~17\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(8) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(8),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~15\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~16_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~17\);

-- Location: FF_X63_Y24_N23
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(8));

-- Location: LCCOMB_X63_Y24_N24
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~18_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(9) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~17\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(9) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~17\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~19\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~17\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(9),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~17\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~18_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~19\);

-- Location: FF_X63_Y24_N25
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(9));

-- Location: LCCOMB_X63_Y24_N26
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~20_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(10) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~19\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(10) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~19\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~21\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(10) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(10),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~19\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~20_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~21\);

-- Location: FF_X63_Y24_N27
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(10));

-- Location: LCCOMB_X63_Y24_N28
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~22_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(11) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~21\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(11) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~21\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~23\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~21\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(11),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~21\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~22_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~23\);

-- Location: FF_X63_Y24_N29
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(11));

-- Location: LCCOMB_X63_Y24_N30
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~24_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(12) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~23\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(12) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~23\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~25\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(12) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(12),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~23\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~24_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~25\);

-- Location: LCCOMB_X62_Y23_N0
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~4_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~24_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~4_combout\);

-- Location: FF_X62_Y23_N1
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(12));

-- Location: LCCOMB_X63_Y23_N0
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~26_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(13) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~25\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(13) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~25\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~27\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~25\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(13),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~25\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~26_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~27\);

-- Location: LCCOMB_X62_Y23_N26
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~3_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~26_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~3_combout\);

-- Location: FF_X62_Y23_N27
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(13));

-- Location: LCCOMB_X63_Y23_N2
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~28_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(14) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~27\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(14) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~27\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~29\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(14) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(14),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~27\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~28_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~29\);

-- Location: LCCOMB_X62_Y23_N6
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~2_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~28_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~2_combout\);

-- Location: FF_X62_Y23_N7
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(14));

-- Location: LCCOMB_X63_Y23_N4
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~30_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(15) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~29\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(15) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~29\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~31\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~29\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(15),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~29\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~30_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~31\);

-- Location: LCCOMB_X62_Y23_N16
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~1_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~30_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~1_combout\);

-- Location: FF_X62_Y23_N17
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(15));

-- Location: LCCOMB_X63_Y23_N6
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~32_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(16) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~31\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(16) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~31\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~33\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(16) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(16),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~31\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~32_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~33\);

-- Location: FF_X63_Y23_N7
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(16));

-- Location: LCCOMB_X63_Y23_N8
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~34_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(17) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~33\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(17) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~33\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~35\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~33\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(17),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~33\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~34_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~35\);

-- Location: LCCOMB_X62_Y23_N30
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~0_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~34_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~0_combout\);

-- Location: FF_X62_Y23_N31
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(17));

-- Location: LCCOMB_X63_Y23_N10
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~36_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(18) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~35\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(18) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~35\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~37\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(18) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(18),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~35\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~36_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~37\);

-- Location: FF_X63_Y23_N11
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(18));

-- Location: LCCOMB_X63_Y23_N12
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~38_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(19) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~37\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(19) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~37\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~39\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~37\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(19),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~37\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~38_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~39\);

-- Location: LCCOMB_X63_Y23_N26
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~6_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~38_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~6_combout\);

-- Location: FF_X63_Y23_N27
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(19));

-- Location: LCCOMB_X63_Y23_N14
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~40_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(20) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~39\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(20) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~39\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~41\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(20) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(20),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~39\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~40_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~41\);

-- Location: LCCOMB_X62_Y23_N18
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~7_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~40_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~7_combout\);

-- Location: FF_X62_Y23_N19
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(20));

-- Location: LCCOMB_X63_Y23_N16
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~42_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(21) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~41\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(21) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~41\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~43\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~41\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(21),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~41\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~42_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~43\);

-- Location: LCCOMB_X62_Y23_N12
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~8_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~42_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~8_combout\);

-- Location: FF_X62_Y23_N13
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(21));

-- Location: LCCOMB_X63_Y23_N18
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~44_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(22) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~43\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(22) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~43\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~45\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(22) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(22),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~43\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~44_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~45\);

-- Location: LCCOMB_X62_Y23_N2
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~9_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~44_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~9_combout\);

-- Location: FF_X62_Y23_N3
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(22));

-- Location: LCCOMB_X63_Y23_N20
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~46_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(23) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~45\)) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(23) & 
-- ((\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~45\) # (GND)))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~47\ = CARRY((!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~45\) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(23),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~45\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~46_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~47\);

-- Location: LCCOMB_X63_Y23_N28
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~10_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~46_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~10_combout\);

-- Location: FF_X63_Y23_N29
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(23));

-- Location: LCCOMB_X63_Y23_N22
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~48_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(24) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~47\ $ (GND))) # (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(24) & 
-- (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~47\ & VCC))
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~49\ = CARRY((\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(24) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(24),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~47\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~48_combout\,
	cout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~49\);

-- Location: FF_X63_Y23_N23
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(24));

-- Location: LCCOMB_X63_Y23_N24
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~50_combout\ = \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(25) $ (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(25),
	cin => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~49\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~50_combout\);

-- Location: LCCOMB_X63_Y23_N30
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~11_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ & \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Add0~50_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~11_combout\);

-- Location: FF_X63_Y23_N31
\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(25));

-- Location: LCCOMB_X62_Y23_N8
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~7_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(25) & !\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(25),
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(24),
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~7_combout\);

-- Location: LCCOMB_X62_Y23_N20
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~6_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(21) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(20) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(22) & 
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(21),
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(20),
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(22),
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(23),
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~6_combout\);

-- Location: LCCOMB_X62_Y23_N4
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~5_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(19) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(18) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(0) & 
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(19),
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(18),
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(0),
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(1),
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y23_N22
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~1_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(13) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(12) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(11) & 
-- !\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(13),
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(12),
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(11),
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(10),
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y23_N24
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~0_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(14) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(15) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(17) & 
-- !\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(14),
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(15),
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(17),
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(16),
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y24_N2
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~3_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(2) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(5) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(4) & 
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(2),
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(5),
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(4),
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(3),
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~3_combout\);

-- Location: LCCOMB_X63_Y24_N0
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~2_combout\ = (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(8) & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(6) & (!\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(9) & 
-- !\GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(8),
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(6),
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(9),
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|s_cnt\(7),
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~2_combout\);

-- Location: LCCOMB_X62_Y23_N10
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~4_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~1_combout\ & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~0_combout\ & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~3_combout\ & 
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~1_combout\,
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~0_combout\,
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~3_combout\,
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~2_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~4_combout\);

-- Location: LCCOMB_X62_Y23_N14
\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~7_combout\ & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~6_combout\ & (\GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~5_combout\ & 
-- \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~7_combout\,
	datab => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~6_combout\,
	datac => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~5_combout\,
	datad => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~4_combout\,
	combout => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\);

-- Location: FF_X62_Y23_N9
\GHFGHFGF|TimeModule_inst|PulseGen_inst|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GHFGHFGF|TimeModule_inst|PulseGen_inst|Equal0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|PulseGen_inst|pulse~q\);

-- Location: LCCOMB_X57_Y25_N22
\GHFGHFGF|TimeModule_inst|Counter_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~0_combout\ = (\GHFGHFGF|TimeModule_inst|PulseGen_inst|pulse~q\ & (\inst2|s_pulsedOut~q\ & ((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\) # (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|PulseGen_inst|pulse~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\,
	datac => \inst2|s_pulsedOut~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~0_combout\);

-- Location: LCCOMB_X57_Y25_N28
\GHFGHFGF|TimeModule_inst|Counter_inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~1_combout\ = (\inst|s_pulsedOut~q\ & !\inst7|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pulsedOut~q\,
	datad => \inst7|s_pulsedOut~q\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~1_combout\);

-- Location: LCCOMB_X57_Y25_N24
\GHFGHFGF|TimeModule_inst|Counter_inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~2_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|process_0~0_combout\ & (!\inst8|s_pulsedOut~q\ & (!\inst6|s_pulsedOut~q\ & \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~0_combout\,
	datab => \inst8|s_pulsedOut~q\,
	datac => \inst6|s_pulsedOut~q\,
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~1_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~2_combout\);

-- Location: LCCOMB_X57_Y25_N2
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~15_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\ & ((!\GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\) # (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~13_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~15_combout\);

-- Location: LCCOMB_X57_Y25_N4
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~16_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|process_0~2_combout\ & (((\GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\ & !\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~15_combout\)) # 
-- (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~14_combout\))) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|process_0~2_combout\ & (((\GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\ & 
-- !\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~2_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~14_combout\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~15_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~16_combout\);

-- Location: FF_X57_Y25_N11
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~5_combout\,
	asdata => VCC,
	sload => \GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0_combout\,
	ena => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0));

-- Location: LCCOMB_X57_Y25_N12
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~7_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1) & (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~6\ & VCC)) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1) & 
-- (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~6\))
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~8\ = CARRY((!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1) & !\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~6\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~7_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~8\);

-- Location: FF_X57_Y25_N13
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~7_combout\,
	asdata => VCC,
	sload => \GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0_combout\,
	ena => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1));

-- Location: LCCOMB_X57_Y25_N14
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~9_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2) & ((GND) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~8\))) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2) & 
-- (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~8\ $ (GND)))
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~10\ = CARRY((\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2)) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[1]~8\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~9_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~10\);

-- Location: LCCOMB_X56_Y25_N14
\GHFGHFGF|Airfryer_FSM_inst|tempo[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~3_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\ & ((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\) # (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~3_combout\);

-- Location: LCCOMB_X56_Y25_N8
\GHFGHFGF|Airfryer_FSM_inst|tempo[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|tempo\(2) = (\GHFGHFGF|Airfryer_FSM_inst|tempo[4]~3_combout\ & ((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\))) # (!\GHFGHFGF|Airfryer_FSM_inst|tempo[4]~3_combout\ & (\GHFGHFGF|Airfryer_FSM_inst|tempo\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~3_combout\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|tempo\(2),
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|tempo\(2));

-- Location: FF_X57_Y25_N15
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~9_combout\,
	asdata => \GHFGHFGF|Airfryer_FSM_inst|tempo\(2),
	sload => \GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0_combout\,
	ena => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2));

-- Location: LCCOMB_X57_Y25_N16
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]~11_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~10\ & VCC)) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & 
-- (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~10\))
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]~12\ = CARRY((!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & !\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[2]~10\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]~11_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]~12\);

-- Location: FF_X57_Y25_N17
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]~11_combout\,
	asdata => \GHFGHFGF|Airfryer_FSM_inst|tempo\(2),
	sload => \GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0_combout\,
	ena => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3));

-- Location: LCCOMB_X57_Y25_N18
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[4]~17_combout\ = \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) $ (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4),
	cin => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[3]~12\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[4]~17_combout\);

-- Location: LCCOMB_X57_Y18_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X57_Y25_N19
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[4]~17_combout\,
	asdata => \~GND~combout\,
	sload => \GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0_combout\,
	ena => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4));

-- Location: LCCOMB_X57_Y25_N6
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~13_combout\ = (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2) & 
-- !\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4),
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3),
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2),
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1),
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~13_combout\);

-- Location: LCCOMB_X57_Y25_N8
\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~14_combout\ = (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0) & \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~13_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~14_combout\);

-- Location: LCCOMB_X58_Y25_N6
\GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~0_combout\ = (!\GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0_combout\ & ((\GHFGHFGF|TimeModule_inst|Counter_inst|process_0~2_combout\ & (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~14_combout\)) 
-- # (!\GHFGHFGF|TimeModule_inst|Counter_inst|process_0~2_combout\ & ((\GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|Carregar_Tempo~0_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue[0]~14_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|process_0~2_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~0_combout\);

-- Location: FF_X58_Y25_N7
\GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\);

-- Location: LCCOMB_X58_Y25_N24
\GHFGHFGF|Airfryer_FSM_inst|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState~10_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\ & (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\ & (\inst|s_pulsedOut~q\ & \GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\,
	datac => \inst|s_pulsedOut~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~10_combout\);

-- Location: LCCOMB_X58_Y25_N26
\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~feeder_combout\ = \GHFGHFGF|Airfryer_FSM_inst|s_currentState~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~10_combout\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~feeder_combout\);

-- Location: FF_X58_Y25_N27
\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\);

-- Location: LCCOMB_X56_Y25_N16
\GHFGHFGF|Airfryer_FSM_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\) # ((!\inst8|s_pulsedOut~q\ & (!\inst6|s_pulsedOut~q\ & !\inst7|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_pulsedOut~q\,
	datab => \inst6|s_pulsedOut~q\,
	datac => \inst7|s_pulsedOut~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\);

-- Location: LCCOMB_X79_Y26_N20
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\ = (((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & \inst|s_pulsedOut~q\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\ = CARRY((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & \inst|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datab => \inst|s_pulsedOut~q\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\);

-- Location: LCCOMB_X79_Y26_N22
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\ & 
-- (((!\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\)) # (!\inst|s_pulsedOut~q\))) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\ & (((\inst|s_pulsedOut~q\ & 
-- \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\)) # (GND)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~3\ = CARRY(((!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\) # 
-- (!\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\)) # (!\inst|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~3\);

-- Location: LCCOMB_X79_Y26_N24
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ = \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\);

-- Location: LCCOMB_X79_Y26_N26
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ & (\inst|s_pulsedOut~q\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	datac => \inst|s_pulsedOut~q\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\);

-- Location: LCCOMB_X79_Y26_N0
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~11_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~11_combout\);

-- Location: LCCOMB_X79_Y26_N30
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & (\inst|s_pulsedOut~q\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datac => \inst|s_pulsedOut~q\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\);

-- Location: LCCOMB_X79_Y26_N16
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~13_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~13_combout\);

-- Location: LCCOMB_X79_Y26_N28
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst|s_pulsedOut~q\ & \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_pulsedOut~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\);

-- Location: LCCOMB_X79_Y26_N2
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~14_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~14_combout\);

-- Location: LCCOMB_X79_Y26_N4
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~0_combout\ = (((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~14_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~1\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~14_combout\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~1\);

-- Location: LCCOMB_X79_Y26_N6
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\ & 
-- (((!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~1\)))) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~13_combout\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~1\)) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~13_combout\ & ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~1\) # (GND)))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~3\ = CARRY(((!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~13_combout\)) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~13_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~3\);

-- Location: LCCOMB_X79_Y26_N8
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~4_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~3\ & 
-- ((((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~11_combout\))))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~3\ & ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\) # 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~11_combout\) # (GND))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~5\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\) # 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~11_combout\) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[54]~11_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~4_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~5\);

-- Location: LCCOMB_X79_Y26_N10
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ = !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~5\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\);

-- Location: LCCOMB_X79_Y26_N12
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~25_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~25_combout\);

-- Location: LCCOMB_X79_Y26_N14
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~24_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~24_combout\);

-- Location: LCCOMB_X80_Y26_N28
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~15_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~4_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~15_combout\);

-- Location: LCCOMB_X80_Y26_N2
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~16_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~2_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~2_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~16_combout\);

-- Location: LCCOMB_X80_Y26_N20
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~17_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~0_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~0_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~17_combout\);

-- Location: LCCOMB_X79_Y26_N18
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~26_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[52]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~26_combout\);

-- Location: LCCOMB_X80_Y26_N12
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~17_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~26_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~17_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~17_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~26_combout\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X80_Y26_N14
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~25_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~16_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~25_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~16_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~25_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~16_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~25_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~16_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X80_Y26_N16
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~24_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~15_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~24_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~15_combout\)))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~24_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~24_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~15_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X80_Y26_N18
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X80_Y26_N10
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~47_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~25_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~2_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[62]~25_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~2_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~47_combout\);

-- Location: LCCOMB_X80_Y26_N0
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~46_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~24_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~4_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~4_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[63]~24_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~46_combout\);

-- Location: LCCOMB_X80_Y26_N6
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~28_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~28_combout\);

-- Location: LCCOMB_X81_Y26_N4
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~29_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X81_Y26_N6
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~30_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X80_Y26_N24
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~48_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~26_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[61]~26_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~0_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~48_combout\);

-- Location: LCCOMB_X83_Y26_N14
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~8_combout\ = (((\inst|s_pulsedOut~q\ & \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~9\ = CARRY((\inst|s_pulsedOut~q\ & \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~8_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~9\);

-- Location: LCCOMB_X83_Y26_N16
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10_combout\ = \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~9\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10_combout\);

-- Location: LCCOMB_X83_Y26_N28
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~19_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~19_combout\);

-- Location: LCCOMB_X83_Y26_N24
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\);

-- Location: LCCOMB_X82_Y26_N4
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~49_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~19_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~19_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~49_combout\);

-- Location: LCCOMB_X83_Y26_N22
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~18_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~18_combout\);

-- Location: LCCOMB_X82_Y26_N24
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~19_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~19_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[60]~18_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X81_Y26_N16
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~31_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~31_combout\);

-- Location: LCCOMB_X81_Y26_N22
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~49_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~31_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~49_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~49_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~31_combout\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X81_Y26_N24
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~30_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~48_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~48_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~48_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~48_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X81_Y26_N26
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~47_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~29_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~47_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~29_combout\)))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~47_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~47_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X81_Y26_N28
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~46_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~28_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~46_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[18]~28_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X81_Y26_N30
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X81_Y26_N10
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~50_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~47_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[17]~47_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~50_combout\);

-- Location: LCCOMB_X81_Y26_N18
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~32_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~32_combout\);

-- Location: LCCOMB_X81_Y26_N12
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~51_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~48_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[16]~48_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~51_combout\);

-- Location: LCCOMB_X81_Y26_N20
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~33_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~33_combout\);

-- Location: LCCOMB_X81_Y26_N14
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~52_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~49_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[15]~49_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~52_combout\);

-- Location: LCCOMB_X82_Y26_N0
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~34_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~34_combout\);

-- Location: LCCOMB_X83_Y26_N30
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~27_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~27_combout\);

-- Location: LCCOMB_X83_Y26_N10
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\);

-- Location: LCCOMB_X83_Y26_N6
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[50]~20_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\);

-- Location: LCCOMB_X82_Y26_N12
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~53_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~27_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~27_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~53_combout\);

-- Location: LCCOMB_X82_Y26_N26
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~21_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~21_combout\);

-- Location: LCCOMB_X82_Y26_N2
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~27_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~27_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[59]~21_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X82_Y26_N8
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~35_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~35_combout\);

-- Location: LCCOMB_X82_Y26_N14
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~53_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~35_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~53_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~53_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~35_combout\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X82_Y26_N16
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~52_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~34_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~52_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~34_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~52_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~34_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~52_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~34_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X82_Y26_N18
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~51_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~33_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~51_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~33_combout\)))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~51_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~51_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~33_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X82_Y26_N20
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~50_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~32_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~50_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[23]~32_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X82_Y26_N22
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X82_Y26_N10
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~36_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~36_combout\);

-- Location: LCCOMB_X82_Y26_N6
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~54_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~51_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[22]~51_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~54_combout\);

-- Location: LCCOMB_X82_Y26_N28
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~52_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[21]~52_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X86_Y26_N0
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~37_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~37_combout\);

-- Location: LCCOMB_X82_Y26_N30
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~53_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[20]~53_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X86_Y26_N26
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~38_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~38_combout\);

-- Location: LCCOMB_X87_Y26_N2
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~40_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~40_combout\);

-- Location: LCCOMB_X87_Y26_N0
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~39_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~39_combout\);

-- Location: LCCOMB_X86_Y26_N4
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~40_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~39_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~40_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~40_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[25]~39_combout\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X86_Y26_N6
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~56_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~38_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~56_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~38_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~56_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~38_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~38_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X86_Y26_N8
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~55_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~37_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~37_combout\)))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~55_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~37_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X86_Y26_N10
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~36_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~54_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~36_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[28]~54_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X86_Y26_N12
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X86_Y26_N24
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~41_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X86_Y26_N28
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~57_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~55_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~57_combout\);

-- Location: LCCOMB_X86_Y26_N30
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~58_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~56_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~58_combout\);

-- Location: LCCOMB_X85_Y26_N4
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~42_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~42_combout\);

-- Location: LCCOMB_X87_Y26_N4
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~43_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~43_combout\);

-- Location: LCCOMB_X86_Y26_N2
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~44_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~44_combout\);

-- Location: LCCOMB_X83_Y26_N20
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\ = (\inst|s_pulsedOut~q\ & \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\);

-- Location: LCCOMB_X83_Y26_N12
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~28_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~28_combout\);

-- Location: LCCOMB_X83_Y26_N0
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~22_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~22_combout\);

-- Location: LCCOMB_X83_Y26_N18
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[53]~12_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[48]~22_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\);

-- Location: LCCOMB_X83_Y26_N26
\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~23_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~23_combout\);

-- Location: LCCOMB_X83_Y26_N8
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~28_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~28_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~23_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X83_Y26_N4
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~45_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~45_combout\);

-- Location: LCCOMB_X83_Y26_N2
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~28_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|StageOut[57]~28_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X86_Y26_N14
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~45_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~45_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X86_Y26_N16
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~43_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~44_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~43_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[31]~44_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X86_Y26_N18
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~58_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~58_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[32]~42_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X86_Y26_N20
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~41_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~57_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|StageOut[33]~57_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X86_Y26_N22
\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X87_Y26_N14
\GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[6]~0_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X87_Y26_N20
\GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[5]~1_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X87_Y26_N22
\GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[4]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X87_Y26_N12
\GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[3]~3_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X87_Y26_N30
\GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|Equal7~0_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|Equal7~0_combout\);

-- Location: LCCOMB_X87_Y26_N24
\GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[1]~4_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[1]~4_combout\);

-- Location: LCCOMB_X87_Y26_N10
\GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[0]~5_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex1_decoder|decOut_n[0]~5_combout\);

-- Location: LCCOMB_X83_Y24_N16
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~30_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & \inst|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datad => \inst|s_pulsedOut~q\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~30_combout\);

-- Location: LCCOMB_X81_Y23_N28
\GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[5]~2_combout\ = (!\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\) # (!\inst|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_pulsedOut~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[5]~2_combout\);

-- Location: LCCOMB_X58_Y25_N4
\GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~3_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\ & !\GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~3_combout\);

-- Location: LCCOMB_X58_Y25_N12
\GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~4_combout\ = (((\GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~3_combout\ & !\GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\)) # 
-- (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState~9_combout\)) # (!\GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~3_combout\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState~9_combout\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X65_Y23_N2
\GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~5_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\) # ((!\inst|s_pulsedOut~q\) # (!\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	datad => \inst|s_pulsedOut~q\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[0]~5_combout\);

-- Location: LCCOMB_X65_Y23_N16
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\ = (((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & \inst|s_pulsedOut~q\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\ = CARRY((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & \inst|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datab => \inst|s_pulsedOut~q\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\);

-- Location: LCCOMB_X65_Y23_N18
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\ & (((!\inst|s_pulsedOut~q\)) # 
-- (!\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\))) # (!\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\ & (((\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ & \inst|s_pulsedOut~q\)) # (GND)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~3\ = CARRY(((!\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\) # (!\inst|s_pulsedOut~q\)) # 
-- (!\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	datab => \inst|s_pulsedOut~q\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~3\);

-- Location: LCCOMB_X65_Y23_N20
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ = \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\);

-- Location: LCCOMB_X65_Y23_N10
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ & (\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ 
-- & \inst|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	datad => \inst|s_pulsedOut~q\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X65_Y23_N8
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X65_Y23_N6
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & (\inst|s_pulsedOut~q\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datab => \inst|s_pulsedOut~q\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X65_Y23_N0
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X65_Y23_N12
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst|s_pulsedOut~q\ & \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pulsedOut~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\);

-- Location: LCCOMB_X65_Y23_N14
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X65_Y23_N24
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~1_cout\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~1_cout\);

-- Location: LCCOMB_X65_Y23_N26
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~3_cout\ = CARRY(((!\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\)) # (!\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~1_cout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~3_cout\);

-- Location: LCCOMB_X65_Y23_N28
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5_cout\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\) # 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\) # (!\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~3_cout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5_cout\);

-- Location: LCCOMB_X65_Y23_N30
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ = !\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5_cout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\);

-- Location: LCCOMB_X65_Y23_N4
\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~0_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Div0|auto_generated|divider|divider|op_6~0_combout\);

-- Location: LCCOMB_X60_Y22_N12
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2) $ (VCC)
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2),
	datad => VCC,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X60_Y22_N14
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X60_Y22_N16
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) 
-- # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X60_Y22_N18
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X60_Y22_N26
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~6_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: LCCOMB_X60_Y22_N28
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\);

-- Location: LCCOMB_X60_Y22_N24
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~1_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: LCCOMB_X61_Y22_N28
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~0_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~0_combout\);

-- Location: LCCOMB_X60_Y22_N8
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~3_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~3_combout\);

-- Location: LCCOMB_X60_Y22_N6
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2) & \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\);

-- Location: LCCOMB_X61_Y22_N12
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~5_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1) & !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~5_combout\);

-- Location: LCCOMB_X61_Y22_N2
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~4_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1) & \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~4_combout\);

-- Location: LCCOMB_X61_Y22_N18
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~5_combout\) # 
-- (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~4_combout\)))
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~5_combout\) # 
-- (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~5_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[15]~4_combout\,
	datad => VCC,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X61_Y22_N20
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~3_combout\) # (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\)))) # 
-- (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~3_combout\ & 
-- (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\)))
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~3_combout\ & 
-- (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\ & !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~3_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X61_Y22_N22
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~1_combout\) # (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~0_combout\)))) # 
-- (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~1_combout\) # 
-- (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~0_combout\)))))
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~1_combout\) # (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~0_combout\,
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X61_Y22_N24
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~6_combout\ & 
-- (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ & !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~6_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\,
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y22_N26
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X61_Y22_N8
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1))) # 
-- (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1),
	datac => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\);

-- Location: LCCOMB_X61_Y22_N10
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~3_combout\) # ((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\)))) # 
-- (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~3_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\);

-- Location: LCCOMB_X61_Y22_N30
\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~1_combout\) # (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~0_combout\)))) # 
-- (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[17]~0_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\);

-- Location: LCCOMB_X76_Y4_N24
\GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[6]~0_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & ((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\) # 
-- ((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ & \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0))))) # (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ $ (((!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X76_Y4_N6
\GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[5]~1_combout\ = (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\ & ((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- ((\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0)) # (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\))) # (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ & \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X76_Y4_N12
\GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[4]~2_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & (((\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0) & 
-- !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\)))) # (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- ((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ & ((!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\))) # 
-- (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ & (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X76_Y4_N18
\GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[3]~3_combout\ = (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\ & ((\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ & \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0))) # (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & 
-- (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ $ (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X76_Y4_N20
\GHFGHFGF|TimeModule_inst|Hex4_decoder|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex4_decoder|Equal7~0_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ & 
-- (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0) & !\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Hex4_decoder|Equal7~0_combout\);

-- Location: LCCOMB_X76_Y4_N10
\GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[1]~4_combout\ = (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ & (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\ & 
-- (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ $ (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[1]~4_combout\);

-- Location: LCCOMB_X76_Y4_N4
\GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[0]~5_combout\ = (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ & (!\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\ & 
-- (\GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\ $ (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[22]~10_combout\,
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(0),
	datad => \GHFGHFGF|TimeModule_inst|Mod0|auto_generated|divider|divider|StageOut[23]~8_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Hex4_decoder|decOut_n[0]~5_combout\);

-- Location: LCCOMB_X60_Y22_N10
\GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[6]~0_combout\ = ((!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & !\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2))) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4),
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3),
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2),
	combout => \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X62_Y22_N24
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2) $ (VCC)
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2),
	datad => VCC,
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X62_Y22_N26
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & (\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & (!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & !\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X62_Y22_N28
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & (\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) 
-- # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & (!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & !\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4),
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X62_Y22_N30
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X62_Y22_N6
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = (!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LCCOMB_X62_Y22_N8
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4),
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X61_Y22_N16
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3) & \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3),
	datac => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X62_Y22_N4
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LCCOMB_X62_Y22_N10
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = (\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2),
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LCCOMB_X62_Y22_N0
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X62_Y22_N22
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1),
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X62_Y22_N2
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1),
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X62_Y22_N12
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\) # 
-- (\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datad => VCC,
	cout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X62_Y22_N14
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ & 
-- (!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & !\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X62_Y22_N16
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & 
-- ((\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\) # (\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X62_Y22_N18
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ & 
-- (!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & !\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\,
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datad => VCC,
	cin => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X62_Y22_N20
\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X63_Y18_N20
\GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[5]~1_combout\ = (\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X60_Y22_N4
\GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[4]~2_combout\ = (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2) & (((\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & !\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1))) # 
-- (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3)))) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2) & ((\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & (\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3))) # 
-- (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4) & ((!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1)) # (!\GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(2),
	datab => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(4),
	datac => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(3),
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|s_cntValue\(1),
	combout => \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X63_Y18_N22
\GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[3]~3_combout\ = (!\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Hex5_decoder|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X63_Y18_N28
\GHFGHFGF|TimeModule_inst|Hex5_decoder|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|TimeModule_inst|Hex5_decoder|Equal7~0_combout\ = (\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- !\GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \GHFGHFGF|TimeModule_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|TimeModule_inst|Hex5_decoder|Equal7~0_combout\);

-- Location: LCCOMB_X58_Y24_N0
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ & \inst|s_pulsedOut~q\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ & \inst|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	datab => \inst|s_pulsedOut~q\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X58_Y24_N2
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & ((\inst|s_pulsedOut~q\ & 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|s_pulsedOut~q\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))) # 
-- (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & (((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & ((!\inst|s_pulsedOut~q\) # 
-- (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datab => \inst|s_pulsedOut~q\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X58_Y24_N4
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- (\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ & (\inst|s_pulsedOut~q\ & VCC))) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ & 
-- \inst|s_pulsedOut~q\)))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ & (\inst|s_pulsedOut~q\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	datab => \inst|s_pulsedOut~q\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X58_Y24_N6
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X58_Y24_N12
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~32_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~32_combout\);

-- Location: LCCOMB_X58_Y24_N18
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\ = (\inst|s_pulsedOut~q\ & (\GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pulsedOut~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|Selector1~0_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\);

-- Location: LCCOMB_X58_Y24_N30
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & (\inst|s_pulsedOut~q\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datab => \inst|s_pulsedOut~q\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\);

-- Location: LCCOMB_X58_Y24_N8
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\);

-- Location: LCCOMB_X58_Y24_N22
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\ = (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\);

-- Location: LCCOMB_X58_Y24_N24
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~32_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~32_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~3\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~32_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~32_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~3\);

-- Location: LCCOMB_X58_Y24_N26
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ = \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\);

-- Location: LCCOMB_X59_Y24_N10
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~35_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~35_combout\);

-- Location: LCCOMB_X58_Y24_N28
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\);

-- Location: LCCOMB_X59_Y24_N12
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~36_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~36_combout\);

-- Location: LCCOMB_X58_Y24_N20
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[26]~33_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\);

-- Location: LCCOMB_X58_Y24_N14
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~60_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~60_combout\);

-- Location: LCCOMB_X58_Y24_N10
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X58_Y24_N16
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\);

-- Location: LCCOMB_X59_Y24_N2
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~38_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~38_combout\);

-- Location: LCCOMB_X59_Y24_N4
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~8_combout\ = (\inst|s_pulsedOut~q\ & \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~8_combout\);

-- Location: LCCOMB_X59_Y24_N6
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~8_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X59_Y24_N16
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\ = (\inst|s_pulsedOut~q\ & (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\);

-- Location: LCCOMB_X59_Y24_N20
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X59_Y24_N22
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X59_Y24_N24
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~60_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~38_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~60_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~38_combout\)))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~60_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~60_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~38_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X59_Y24_N26
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~36_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~36_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~36_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~36_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X59_Y24_N28
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & 
-- ((((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~35_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\))))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~35_combout\) # 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\) # (GND))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~35_combout\) # 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~35_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X59_Y24_N30
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X59_Y23_N10
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~41_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~41_combout\);

-- Location: LCCOMB_X59_Y24_N0
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\);

-- Location: LCCOMB_X59_Y23_N12
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~42_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~42_combout\);

-- Location: LCCOMB_X59_Y24_N18
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\);

-- Location: LCCOMB_X59_Y23_N22
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~43_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~43_combout\);

-- Location: LCCOMB_X59_Y24_N8
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~60_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[34]~60_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\);

-- Location: LCCOMB_X59_Y23_N26
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~45_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~45_combout\);

-- Location: LCCOMB_X59_Y23_N24
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~44_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~44_combout\);

-- Location: LCCOMB_X59_Y23_N0
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\ = (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~45_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~44_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~45_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~45_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[42]~44_combout\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\);

-- Location: LCCOMB_X59_Y23_N2
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~43_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~43_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~43_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~43_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\);

-- Location: LCCOMB_X59_Y23_N4
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ & 
-- ((((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~42_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\))))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ & ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~42_combout\) # 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\) # (GND))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~42_combout\) # 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~42_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\);

-- Location: LCCOMB_X59_Y23_N6
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~41_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~41_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~41_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~41_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\);

-- Location: LCCOMB_X59_Y23_N8
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ = \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\);

-- Location: LCCOMB_X59_Y23_N28
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~66_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[45]~61_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~66_combout\);

-- Location: LCCOMB_X59_Y23_N16
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~50_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~50_combout\);

-- Location: LCCOMB_X58_Y23_N26
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~51_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~51_combout\);

-- Location: LCCOMB_X59_Y23_N14
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~67_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~67_combout\);

-- Location: LCCOMB_X59_Y23_N20
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~68_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~68_combout\);

-- Location: LCCOMB_X58_Y23_N4
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~52_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~52_combout\);

-- Location: LCCOMB_X59_Y23_N30
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~69_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\)) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~69_combout\);

-- Location: LCCOMB_X59_Y23_N18
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~53_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~53_combout\);

-- Location: LCCOMB_X59_Y24_N14
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~64_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[32]~39_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~64_combout\);

-- Location: LCCOMB_X60_Y23_N18
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~46_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~46_combout\);

-- Location: LCCOMB_X60_Y23_N28
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~10_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~64_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~64_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~46_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~10_combout\);

-- Location: LCCOMB_X60_Y23_N8
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~47_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~10_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~47_combout\);

-- Location: LCCOMB_X60_Y23_N10
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~65_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~64_combout\) # ((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[41]~64_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~65_combout\);

-- Location: LCCOMB_X58_Y23_N6
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & \inst|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datad => \inst|s_pulsedOut~q\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\);

-- Location: LCCOMB_X58_Y23_N28
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\ & \inst|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datad => \inst|s_pulsedOut~q\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\);

-- Location: LCCOMB_X58_Y23_N0
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~12_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\);

-- Location: LCCOMB_X58_Y23_N8
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\)))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\,
	datad => VCC,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X58_Y23_N10
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & VCC)) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & 
-- !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X58_Y23_N12
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~47_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~65_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~47_combout\) # 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~65_combout\)))))
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~47_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~47_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~65_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X58_Y23_N14
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~69_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~53_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~69_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[51]~53_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y23_N16
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~68_combout\) # 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~52_combout\) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~68_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[52]~52_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X58_Y23_N18
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~51_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~67_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~51_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[53]~67_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X58_Y23_N20
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~66_combout\) # 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~50_combout\) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~66_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[54]~50_combout\,
	datad => VCC,
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X58_Y23_N22
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X58_Y23_N24
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\);

-- Location: LCCOMB_X58_Y23_N30
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~65_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~47_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~65_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[50]~47_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\);

-- Location: LCCOMB_X58_Y25_N20
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = (\inst|s_pulsedOut~q\ & \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pulsedOut~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X58_Y25_N22
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst|s_pulsedOut~q\ & 
-- (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\))) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \inst|s_pulsedOut~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\);

-- Location: LCCOMB_X58_Y23_N2
\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\);

-- Location: LCCOMB_X57_Y4_N24
\GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[6]~0_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\) # ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\)))) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ & 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\ $ (((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X57_Y4_N22
\GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[5]~1_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ & (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\)) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\) # (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X57_Y4_N28
\GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[4]~2_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\ & 
-- (((!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\ & \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\)))) # 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\ & ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\)) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X57_Y4_N10
\GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[3]~3_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\ & 
-- ((\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ & (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\ $ 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\))) # (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ & 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\ & !\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X57_Y4_N0
\GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|Equal7~0_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\ & (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\ & 
-- \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|Equal7~0_combout\);

-- Location: LCCOMB_X57_Y4_N26
\GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[1]~4_combout\ = (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\ & (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\ $ 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[1]~4_combout\);

-- Location: LCCOMB_X57_Y4_N12
\GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~5_combout\ = (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\ & 
-- (!\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\ & (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\ $ 
-- (\GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[58]~55_combout\,
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[59]~54_combout\,
	datac => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[56]~57_combout\,
	datad => \GHFGHFGF|Dividir_Temperatura_inst|Mod1|auto_generated|divider|divider|StageOut[57]~56_combout\,
	combout => \GHFGHFGF|Dividir_Temperatura_inst|Hex0_decoder|decOut_n[0]~5_combout\);

-- Location: LCCOMB_X58_Y25_N28
\GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~2_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\ & (\inst4|s_pulsedOut~q\ & \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datac => \inst4|s_pulsedOut~q\,
	datad => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~2_combout\);

-- Location: LCCOMB_X58_Y25_N0
\GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~4_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\ & ((\GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~2_combout\) # ((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\ & !\inst2|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\,
	datac => \inst2|s_pulsedOut~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~2_combout\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|luz_verde[1]~4_combout\);

-- Location: LCCOMB_X58_Y25_N8
\GHFGHFGF|Airfryer_FSM_inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|Selector11~0_combout\ = (!\inst2|s_pulsedOut~q\ & \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_pulsedOut~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|Selector11~0_combout\);

-- Location: LCCOMB_X58_Y25_N2
\GHFGHFGF|Airfryer_FSM_inst|luz_verde[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|luz_verde[0]~3_combout\ = (\GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\ & ((\GHFGHFGF|Airfryer_FSM_inst|Selector11~0_combout\) # ((\GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\ & 
-- \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|Selector11~0_combout\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|tempo[4]~2_combout\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|luz_verde[0]~3_combout\);

-- Location: LCCOMB_X56_Y25_N22
\GHFGHFGF|Airfryer_FSM_inst|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|Selector17~0_combout\ = (!\GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\ & ((\GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\) # (\GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GHFGHFGF|Airfryer_FSM_inst|Equal0~0_combout\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.COOK~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|Selector17~0_combout\);

-- Location: CLKCTRL_G19
\GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\);

-- Location: LCCOMB_X58_Y25_N18
\GHFGHFGF|Airfryer_FSM_inst|luz_vermelha[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(2) = (\inst|s_pulsedOut~q\ & ((GLOBAL(\GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\) & (\GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(2))) # (!GLOBAL(\GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\) 
-- & ((!\GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(2),
	datab => \inst|s_pulsedOut~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.FINISH~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(2));

-- Location: LCCOMB_X58_Y25_N30
\GHFGHFGF|Airfryer_FSM_inst|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|Selector11~1_combout\ = ((\GHFGHFGF|Airfryer_FSM_inst|Selector11~0_combout\) # ((!\GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\ & \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\))) # 
-- (!\GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|TimeModule_inst|Counter_inst|s_Time_Status~q\,
	datab => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.IDLE~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|Selector11~0_combout\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|s_currentState.PREHEAT~q\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|Selector11~1_combout\);

-- Location: LCCOMB_X58_Y25_N16
\GHFGHFGF|Airfryer_FSM_inst|luz_vermelha[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(1) = (\inst|s_pulsedOut~q\ & ((GLOBAL(\GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\) & (\GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(1))) # (!GLOBAL(\GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\) 
-- & ((\GHFGHFGF|Airfryer_FSM_inst|Selector11~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(1),
	datab => \inst|s_pulsedOut~q\,
	datac => \GHFGHFGF|Airfryer_FSM_inst|Selector11~1_combout\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(1));

-- Location: LCCOMB_X58_Y25_N10
\GHFGHFGF|Airfryer_FSM_inst|luz_vermelha[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(0) = (\inst|s_pulsedOut~q\ & ((GLOBAL(\GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\) & (\GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(0))) # (!GLOBAL(\GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\) 
-- & ((!\GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(0),
	datab => \GHFGHFGF|Dividir_Temperatura_inst|Hex2_decoder|decOut_n[4]~3_combout\,
	datac => \inst|s_pulsedOut~q\,
	datad => \GHFGHFGF|Airfryer_FSM_inst|Selector17~0clkctrl_outclk\,
	combout => \GHFGHFGF|Airfryer_FSM_inst|luz_vermelha\(0));

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEXO(6) <= \HEXO[6]~output_o\;

ww_HEXO(5) <= \HEXO[5]~output_o\;

ww_HEXO(4) <= \HEXO[4]~output_o\;

ww_HEXO(3) <= \HEXO[3]~output_o\;

ww_HEXO(2) <= \HEXO[2]~output_o\;

ww_HEXO(1) <= \HEXO[1]~output_o\;

ww_HEXO(0) <= \HEXO[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


